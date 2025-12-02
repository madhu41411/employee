const cds = require('@sap/cds');

module.exports = cds.service.impl(async function () {
    // Add custom logic here
    const { Employee } = this.entities;

    this.before('CREATE', 'Employee', async (req) => {
        console.log('Creating employee:', req.data);
    });
});
