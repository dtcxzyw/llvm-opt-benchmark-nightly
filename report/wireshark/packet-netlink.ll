Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-netlink?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0
%struct._header_field_info = type { ptr, ptr, i32, i32, ptr, i64, ptr, i32, i32, i32, i32, ptr }
%struct.packet_netlink_data = type { i32, i32, i16 }

@.str = private unnamed_addr constant [20 x i8] c"netlink_family_vals\00", align 1
@netlink_family_vals_ext = hidden global %struct._value_string_ext { ptr @_try_val_to_str_ext_init, i32 0, i32 23, ptr @netlink_family_vals, ptr @.str, ptr null }, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"%s:%u: failed assertion \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"epan/dissectors/packet-netlink.c\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"ett_attrib > 0\00", align 1
@ett_netlink_msghdr = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"Netlink message header\00", align 1
@hf_netlink_hdr_len = internal global i32 0, align 4
@hf_netlink_hdr_type = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"Message type: Protocol-specific (0x%04x)\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c" (type: %s)\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"0x%04x\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c" (type: 0x%04x)\00", align 1
@hf_netlink_hdr_flags = internal global i32 0, align 4
@ett_netlink_hdr_flags = internal global i32 0, align 4
@netlink_header_get_flags = internal constant [10 x ptr] [ptr @hf_netlink_hdr_flag_request, ptr @hf_netlink_hdr_flag_multi, ptr @hf_netlink_hdr_flag_ack, ptr @hf_netlink_hdr_flag_echo, ptr @hf_netlink_hdr_flag_dumpintr, ptr @hf_netlink_hdr_flag_dumpfiltered, ptr @hf_netlink_hdr_flag_root, ptr @hf_netlink_hdr_flag_match, ptr @hf_netlink_hdr_flag_atomic, ptr null], align 16
@netlink_header_new_flags = internal constant [11 x ptr] [ptr @hf_netlink_hdr_flag_request, ptr @hf_netlink_hdr_flag_multi, ptr @hf_netlink_hdr_flag_ack, ptr @hf_netlink_hdr_flag_echo, ptr @hf_netlink_hdr_flag_dumpintr, ptr @hf_netlink_hdr_flag_dumpfiltered, ptr @hf_netlink_hdr_flag_replace, ptr @hf_netlink_hdr_flag_excl, ptr @hf_netlink_hdr_flag_create, ptr @hf_netlink_hdr_flag_append, ptr null], align 16
@netlink_header_standard_flags = internal constant [7 x ptr] [ptr @hf_netlink_hdr_flag_request, ptr @hf_netlink_hdr_flag_multi, ptr @hf_netlink_hdr_flag_ack, ptr @hf_netlink_hdr_flag_echo, ptr @hf_netlink_hdr_flag_dumpintr, ptr @hf_netlink_hdr_flag_dumpfiltered, ptr null], align 16
@hf_netlink_hdr_seq = internal global i32 0, align 4
@hf_netlink_hdr_pid = internal global i32 0, align 4
@proto_register_netlink.hf = internal global [28 x %struct.hf_register_info] [%struct.hf_register_info { ptr @hf_netlink_hatype, %struct._header_field_info { ptr @.str.9, ptr @.str.10, i32 5, i32 1, ptr @ha_types, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_netlink_family, %struct._header_field_info { ptr @.str.11, ptr @.str.12, i32 5, i32 514, ptr @netlink_family_vals_ext, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_netlink_hdr_len, %struct._header_field_info { ptr @.str.13, ptr @.str.14, i32 7, i32 1, ptr null, i64 0, ptr @.str.15, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_netlink_hdr_type, %struct._header_field_info { ptr @.str.16, ptr @.str.17, i32 5, i32 2, ptr @type_vals, i64 0, ptr @.str.18, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_netlink_hdr_flags, %struct._header_field_info { ptr @.str.19, ptr @.str.20, i32 5, i32 2, ptr null, i64 0, ptr @.str.21, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_netlink_hdr_flag_dumpfiltered, %struct._header_field_info { ptr @.str.22, ptr @.str.23, i32 5, i32 1, ptr null, i64 32, ptr @.str.24, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_netlink_hdr_flag_dumpintr, %struct._header_field_info { ptr @.str.25, ptr @.str.26, i32 5, i32 1, ptr null, i64 16, ptr @.str.27, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_netlink_hdr_flag_echo, %struct._header_field_info { ptr @.str.28, ptr @.str.29, i32 5, i32 1, ptr null, i64 8, ptr @.str.30, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_netlink_hdr_flag_ack, %struct._header_field_info { ptr @.str.31, ptr @.str.32, i32 5, i32 1, ptr null, i64 4, ptr @.str.33, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_netlink_hdr_flag_multi, %struct._header_field_info { ptr @.str.34, ptr @.str.35, i32 5, i32 1, ptr null, i64 2, ptr @.str.36, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_netlink_hdr_flag_request, %struct._header_field_info { ptr @.str.37, ptr @.str.38, i32 5, i32 1, ptr null, i64 1, ptr @.str.39, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_netlink_hdr_flag_root, %struct._header_field_info { ptr @.str.40, ptr @.str.41, i32 5, i32 1, ptr null, i64 256, ptr @.str.42, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_netlink_hdr_flag_match, %struct._header_field_info { ptr @.str.43, ptr @.str.44, i32 5, i32 1, ptr null, i64 512, ptr @.str.45, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_netlink_hdr_flag_atomic, %struct._header_field_info { ptr @.str.46, ptr @.str.47, i32 5, i32 1, ptr null, i64 1024, ptr @.str.48, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_netlink_hdr_flag_replace, %struct._header_field_info { ptr @.str.49, ptr @.str.50, i32 5, i32 1, ptr null, i64 256, ptr @.str.51, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_netlink_hdr_flag_excl, %struct._header_field_info { ptr @.str.52, ptr @.str.53, i32 5, i32 1, ptr null, i64 512, ptr @.str.54, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_netlink_hdr_flag_create, %struct._header_field_info { ptr @.str.55, ptr @.str.56, i32 5, i32 1, ptr null, i64 1024, ptr @.str.57, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_netlink_hdr_flag_append, %struct._header_field_info { ptr @.str.58, ptr @.str.59, i32 5, i32 1, ptr null, i64 2048, ptr @.str.60, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_netlink_hdr_seq, %struct._header_field_info { ptr @.str.61, ptr @.str.62, i32 7, i32 1, ptr null, i64 0, ptr @.str.63, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_netlink_hdr_pid, %struct._header_field_info { ptr @.str.64, ptr @.str.65, i32 7, i32 1, ptr null, i64 0, ptr @.str.66, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_netlink_attr_len, %struct._header_field_info { ptr @.str.67, ptr @.str.68, i32 5, i32 1, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_netlink_attr_type, %struct._header_field_info { ptr @.str.69, ptr @.str.70, i32 5, i32 2, ptr null, i64 0, ptr @.str.71, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_netlink_attr_type_nested, %struct._header_field_info { ptr @.str.72, ptr @.str.73, i32 2, i32 16, ptr null, i64 32768, ptr @.str.74, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_netlink_attr_type_net_byteorder, %struct._header_field_info { ptr @.str.75, ptr @.str.76, i32 2, i32 16, ptr null, i64 16384, ptr @.str.77, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_netlink_attr_index, %struct._header_field_info { ptr @.str.78, ptr @.str.79, i32 5, i32 1, ptr null, i64 0, ptr @.str.80, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_netlink_attr_data, %struct._header_field_info { ptr @.str.81, ptr @.str.82, i32 30, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_netlink_error, %struct._header_field_info { ptr @.str.83, ptr @.str.84, i32 15, i32 513, ptr @linux_negative_errno_vals_ext, i64 0, ptr @.str.85, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_netlink_padding, %struct._header_field_info { ptr @.str.86, ptr @.str.87, i32 30, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }], align 16
@hf_netlink_hatype = internal global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"Link-layer address type\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"netlink.hatype\00", align 1
@hf_netlink_family = internal global i32 0, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"Family\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"netlink.family\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"Length\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"netlink.hdr_len\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"Length of message including header\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"Message type\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"netlink.hdr_type\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"Type of message content\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"Flags\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"netlink.hdr_flags\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"Additional flags\00", align 1
@hf_netlink_hdr_flag_dumpfiltered = internal global i32 0, align 4
@.str.22 = private unnamed_addr constant [14 x i8] c"Dump filtered\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"netlink.hdr_flags.dump_filtered\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"Dump was filtered as requested\00", align 1
@hf_netlink_hdr_flag_dumpintr = internal global i32 0, align 4
@.str.25 = private unnamed_addr constant [18 x i8] c"Dump inconsistent\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"netlink.hdr_flags.dump_intr\00", align 1
@.str.27 = private unnamed_addr constant [45 x i8] c"Dump was inconsistent due to sequence change\00", align 1
@hf_netlink_hdr_flag_echo = internal global i32 0, align 4
@.str.28 = private unnamed_addr constant [5 x i8] c"Echo\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"netlink.hdr_flags.echo\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"Echo this request\00", align 1
@hf_netlink_hdr_flag_ack = internal global i32 0, align 4
@.str.31 = private unnamed_addr constant [4 x i8] c"Ack\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"netlink.hdr_flags.ack\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"Asking for an ack\00", align 1
@hf_netlink_hdr_flag_multi = internal global i32 0, align 4
@.str.34 = private unnamed_addr constant [18 x i8] c"Multipart message\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"netlink.hdr_flags.multi\00", align 1
@.str.36 = private unnamed_addr constant [52 x i8] c"Part of multi-part message terminated by NLMSG_DONE\00", align 1
@hf_netlink_hdr_flag_request = internal global i32 0, align 4
@.str.37 = private unnamed_addr constant [8 x i8] c"Request\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"netlink.hdr_flags.request\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"It is a request message\00", align 1
@hf_netlink_hdr_flag_root = internal global i32 0, align 4
@.str.40 = private unnamed_addr constant [18 x i8] c"Specify tree root\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"netlink.hdr_flags.root\00", align 1
@.str.42 = private unnamed_addr constant [52 x i8] c"Return the complete table instead of a single entry\00", align 1
@hf_netlink_hdr_flag_match = internal global i32 0, align 4
@.str.43 = private unnamed_addr constant [20 x i8] c"Return all matching\00", align 1
@.str.44 = private unnamed_addr constant [24 x i8] c"netlink.hdr_flags.match\00", align 1
@.str.45 = private unnamed_addr constant [48 x i8] c"Return all entries matching criteria in request\00", align 1
@hf_netlink_hdr_flag_atomic = internal global i32 0, align 4
@.str.46 = private unnamed_addr constant [7 x i8] c"Atomic\00", align 1
@.str.47 = private unnamed_addr constant [25 x i8] c"netlink.hdr_flags.atomic\00", align 1
@.str.48 = private unnamed_addr constant [39 x i8] c"Return an atomic snapshot of the table\00", align 1
@hf_netlink_hdr_flag_replace = internal global i32 0, align 4
@.str.49 = private unnamed_addr constant [8 x i8] c"Replace\00", align 1
@.str.50 = private unnamed_addr constant [26 x i8] c"netlink.hdr_flags.replace\00", align 1
@.str.51 = private unnamed_addr constant [25 x i8] c"Replace existing objects\00", align 1
@hf_netlink_hdr_flag_excl = internal global i32 0, align 4
@.str.52 = private unnamed_addr constant [5 x i8] c"Excl\00", align 1
@.str.53 = private unnamed_addr constant [23 x i8] c"netlink.hdr_flags.excl\00", align 1
@.str.54 = private unnamed_addr constant [32 x i8] c"Do not replace existing objects\00", align 1
@hf_netlink_hdr_flag_create = internal global i32 0, align 4
@.str.55 = private unnamed_addr constant [7 x i8] c"Create\00", align 1
@.str.56 = private unnamed_addr constant [25 x i8] c"netlink.hdr_flags.create\00", align 1
@.str.57 = private unnamed_addr constant [44 x i8] c"Create objects if it does not already exist\00", align 1
@hf_netlink_hdr_flag_append = internal global i32 0, align 4
@.str.58 = private unnamed_addr constant [7 x i8] c"Append\00", align 1
@.str.59 = private unnamed_addr constant [25 x i8] c"netlink.hdr_flags.append\00", align 1
@.str.60 = private unnamed_addr constant [26 x i8] c"Add to end of object list\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"Sequence\00", align 1
@.str.62 = private unnamed_addr constant [16 x i8] c"netlink.hdr_seq\00", align 1
@.str.63 = private unnamed_addr constant [16 x i8] c"Sequence number\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"Port ID\00", align 1
@.str.65 = private unnamed_addr constant [16 x i8] c"netlink.hdr_pid\00", align 1
@.str.66 = private unnamed_addr constant [15 x i8] c"Sender port ID\00", align 1
@hf_netlink_attr_len = internal global i32 0, align 4
@.str.67 = private unnamed_addr constant [4 x i8] c"Len\00", align 1
@.str.68 = private unnamed_addr constant [17 x i8] c"netlink.attr_len\00", align 1
@hf_netlink_attr_type = internal global i32 0, align 4
@.str.69 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.70 = private unnamed_addr constant [18 x i8] c"netlink.attr_type\00", align 1
@.str.71 = private unnamed_addr constant [23 x i8] c"Netlink Attribute type\00", align 1
@hf_netlink_attr_type_nested = internal global i32 0, align 4
@.str.72 = private unnamed_addr constant [7 x i8] c"Nested\00", align 1
@.str.73 = private unnamed_addr constant [25 x i8] c"netlink.attr_type.nested\00", align 1
@.str.74 = private unnamed_addr constant [26 x i8] c"Carries nested attributes\00", align 1
@hf_netlink_attr_type_net_byteorder = internal global i32 0, align 4
@.str.75 = private unnamed_addr constant [19 x i8] c"Network byte order\00", align 1
@.str.76 = private unnamed_addr constant [32 x i8] c"netlink.attr_type.net_byteorder\00", align 1
@.str.77 = private unnamed_addr constant [45 x i8] c"Payload stored in host or network byte order\00", align 1
@hf_netlink_attr_index = internal global i32 0, align 4
@.str.78 = private unnamed_addr constant [6 x i8] c"Index\00", align 1
@.str.79 = private unnamed_addr constant [19 x i8] c"netlink.attr_index\00", align 1
@.str.80 = private unnamed_addr constant [37 x i8] c"Netlink Attribute type (array index)\00", align 1
@hf_netlink_attr_data = internal global i32 0, align 4
@.str.81 = private unnamed_addr constant [5 x i8] c"Data\00", align 1
@.str.82 = private unnamed_addr constant [18 x i8] c"netlink.attr_data\00", align 1
@hf_netlink_error = internal global i32 0, align 4
@.str.83 = private unnamed_addr constant [11 x i8] c"Error code\00", align 1
@.str.84 = private unnamed_addr constant [14 x i8] c"netlink.error\00", align 1
@linux_negative_errno_vals_ext = external global %struct._value_string_ext, align 8
@.str.85 = private unnamed_addr constant [41 x i8] c"Negative errno or 0 for acknowledgements\00", align 1
@hf_netlink_padding = internal global i32 0, align 4
@.str.86 = private unnamed_addr constant [8 x i8] c"Padding\00", align 1
@.str.87 = private unnamed_addr constant [16 x i8] c"netlink.padding\00", align 1
@proto_register_netlink.ett = internal global [5 x ptr] [ptr @ett_netlink_cooked, ptr @ett_netlink_msghdr, ptr @ett_netlink_msg, ptr @ett_netlink_hdr_flags, ptr @ett_netlink_attr_type], align 16
@ett_netlink_cooked = internal global i32 0, align 4
@ett_netlink_msg = internal global i32 0, align 4
@ett_netlink_attr_type = internal global i32 0, align 4
@.str.88 = private unnamed_addr constant [23 x i8] c"Linux netlink protocol\00", align 1
@.str.89 = private unnamed_addr constant [8 x i8] c"NETLINK\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c"netlink\00", align 1
@proto_netlink = internal unnamed_addr global i32 0, align 4
@netlink_handle = internal unnamed_addr global ptr null, align 8
@.str.91 = private unnamed_addr constant [17 x i8] c"netlink.protocol\00", align 1
@.str.92 = private unnamed_addr constant [28 x i8] c"Linux netlink protocol type\00", align 1
@netlink_dissector_table = internal unnamed_addr global ptr null, align 8
@.str.93 = private unnamed_addr constant [11 x i8] c"wtap_encap\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"Route\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"Unused\00", align 1
@.str.96 = private unnamed_addr constant [27 x i8] c"User-mode socket protocols\00", align 1
@.str.97 = private unnamed_addr constant [28 x i8] c"Unused (formerly: ip_queue)\00", align 1
@.str.98 = private unnamed_addr constant [18 x i8] c"Socket monitoring\00", align 1
@.str.99 = private unnamed_addr constant [15 x i8] c"Netfilter ULOG\00", align 1
@.str.100 = private unnamed_addr constant [6 x i8] c"IPsec\00", align 1
@.str.101 = private unnamed_addr constant [15 x i8] c"SELinux events\00", align 1
@.str.102 = private unnamed_addr constant [11 x i8] c"Open-iSCSI\00", align 1
@.str.103 = private unnamed_addr constant [9 x i8] c"Auditing\00", align 1
@.str.104 = private unnamed_addr constant [11 x i8] c"FIB lookup\00", align 1
@.str.105 = private unnamed_addr constant [17 x i8] c"Kernel connector\00", align 1
@.str.106 = private unnamed_addr constant [10 x i8] c"Netfilter\00", align 1
@.str.107 = private unnamed_addr constant [29 x i8] c"Unused (formerly: ip6_queue)\00", align 1
@.str.108 = private unnamed_addr constant [24 x i8] c"DECnet routing messages\00", align 1
@.str.109 = private unnamed_addr constant [29 x i8] c"Kernel messages to userspace\00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c"Generic\00", align 1
@.str.111 = private unnamed_addr constant [11 x i8] c"DM Events?\00", align 1
@.str.112 = private unnamed_addr constant [16 x i8] c"SCSI Transports\00", align 1
@.str.113 = private unnamed_addr constant [9 x i8] c"ecryptfs\00", align 1
@.str.114 = private unnamed_addr constant [5 x i8] c"RDMA\00", align 1
@.str.115 = private unnamed_addr constant [13 x i8] c"Crypto layer\00", align 1
@.str.116 = private unnamed_addr constant [15 x i8] c"SMC monitoring\00", align 1
@netlink_family_vals = internal constant [24 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.94 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.95 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.96 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.97 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.98 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.99 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.100 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.101 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.102 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.103 }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.104 }, { i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.105 }, { i32, [4 x i8], ptr } { i32 12, [4 x i8] zeroinitializer, ptr @.str.106 }, { i32, [4 x i8], ptr } { i32 13, [4 x i8] zeroinitializer, ptr @.str.107 }, { i32, [4 x i8], ptr } { i32 14, [4 x i8] zeroinitializer, ptr @.str.108 }, { i32, [4 x i8], ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.109 }, { i32, [4 x i8], ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.110 }, { i32, [4 x i8], ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.111 }, { i32, [4 x i8], ptr } { i32 18, [4 x i8] zeroinitializer, ptr @.str.112 }, { i32, [4 x i8], ptr } { i32 19, [4 x i8] zeroinitializer, ptr @.str.113 }, { i32, [4 x i8], ptr } { i32 20, [4 x i8] zeroinitializer, ptr @.str.114 }, { i32, [4 x i8], ptr } { i32 21, [4 x i8] zeroinitializer, ptr @.str.115 }, { i32, [4 x i8], ptr } { i32 22, [4 x i8] zeroinitializer, ptr @.str.116 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.118 = private unnamed_addr constant [8 x i8] c"nl_data\00", align 1
@.str.119 = private unnamed_addr constant [10 x i8] c"Attribute\00", align 1
@.str.120 = private unnamed_addr constant [9 x i8] c", Nested\00", align 1
@.str.121 = private unnamed_addr constant [10 x i8] c", %s (%d)\00", align 1
@.str.122 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@.str.123 = private unnamed_addr constant [4 x i8] c" %u\00", align 1
@.str.124 = private unnamed_addr constant [8 x i8] c"Netlink\00", align 1
@ha_types = internal constant [2 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 824, [4 x i8] zeroinitializer, ptr @.str.124 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.126 = private unnamed_addr constant [8 x i8] c"Nothing\00", align 1
@.str.127 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.128 = private unnamed_addr constant [14 x i8] c"End of a dump\00", align 1
@.str.129 = private unnamed_addr constant [10 x i8] c"Data lost\00", align 1
@type_vals = internal constant [5 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.126 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.127 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.128 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.129 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.131 = private unnamed_addr constant [30 x i8] c"Linux netlink (cooked header)\00", align 1
@.str.132 = private unnamed_addr constant [16 x i8] c"Netlink message\00", align 1

; Function Attrs: null_pointer_is_valid
declare ptr @_try_val_to_str_ext_init(i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden i32 @dissect_netlink_attributes(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef readonly captures(none) %8) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc i32 @dissect_netlink_attributes_common(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef -1, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dissect_netlink_attributes_common(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 -1, -2147483648) %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, ptr nofree noundef readonly captures(none) %9) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = sub i32 0, %7
  %i.c = and i32 %i.b, 3                          ; 3 uses
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 166, ptr noundef @.str.118) #6
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %5, i64 4          ; 3 uses
  %i.e = load i32, ptr %i.d, align 4              ; 8 uses
  %i.f = icmp slt i32 %8, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @except_throw(i64 noundef 1, i64 noundef 3, ptr noundef null) #6
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = icmp samesign ult i32 %8, %i.c
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @except_throw(i64 noundef 1, i64 noundef 3, ptr noundef null) #6
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.h = add i32 %i.c, %7                         ; 2 uses
  %i.i = sub nuw nsw i32 %8, %i.c                 ; 2 uses
  %i.j = icmp samesign ugt i32 %i.i, 3
  br i1 %i.j, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.g
  %i.k = icmp slt i32 %3, 1
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.aa
  %.0121145 = phi i32 [ %i.i, %.lr.ph ], [ %i.bl, %bb.aa ] ; 3 uses
  %.0122144 = phi i32 [ %i.h, %.lr.ph ], [ %i.bk, %bb.aa ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.l = call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %.0122144, i32 noundef %i.e) ; 2 uses
  %i.m = icmp ult i16 %i.l, 4
  br i1 %i.m, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.n = zext i16 %i.l to i32                     ; 2 uses
  %i.o = call i32 @llvm.umin.i32(i32 %.0121145, i32 %i.n) ; 6 uses
  %i.p = call ptr @proto_tree_add_subtree(ptr noundef %6, ptr noundef %0, i32 noundef %.0122144, i32 noundef %i.o, i32 noundef %2, ptr noundef nonnull %i.a, ptr noundef @.str.119) ; 7 uses
  %i.q = load i32, ptr @hf_netlink_attr_len, align 4
  %i.r = call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.q, ptr noundef %0, i32 noundef %.0122144, i32 noundef 2, i32 noundef %i.e) ; 0 uses
  %i.s = add i32 %.0122144, 2                     ; 6 uses
  %i.t = call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.s, i32 noundef %i.e) ; 2 uses
  %i.u = zext i16 %i.t to i32                     ; 4 uses
  br i1 %i.k, label %bb.j, label %bb.x

bb.j:                                             ; preds = %bb.i
  %i.v = and i32 %i.u, 16383                      ; 4 uses
  %i.w = load i32, ptr @hf_netlink_attr_type, align 4
  %i.x = call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.w, ptr noundef %0, i32 noundef %i.s, i32 noundef 2, i32 noundef %i.e) ; 3 uses
  %i.y = load i32, ptr @ett_netlink_attr_type, align 4
  %i.z = call ptr @proto_item_add_subtree(ptr noundef %i.x, i32 noundef %i.y) ; 3 uses
  %i.aa = load i32, ptr @hf_netlink_attr_type_nested, align 4
  %i.ab = call ptr @proto_tree_add_item(ptr noundef %i.z, i32 noundef %i.aa, ptr noundef %0, i32 noundef %i.s, i32 noundef 2, i32 noundef %i.e) ; 0 uses
  %i.ac = load i32, ptr @hf_netlink_attr_type_net_byteorder, align 4
  %i.ad = call ptr @proto_tree_add_item(ptr noundef %i.z, i32 noundef %i.ac, ptr noundef %0, i32 noundef %i.s, i32 noundef 2, i32 noundef %i.e) ; 0 uses
  %i.ae = call ptr @proto_tree_add_uint(ptr noundef %i.z, i32 noundef %1, ptr noundef %0, i32 noundef %i.s, i32 noundef 2, i32 noundef %i.v) ; 0 uses
  %i.af = add i32 %.0122144, 4                    ; 4 uses
  %.not133 = icmp sgt i16 %i.t, -1
  br i1 %.not133, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.x, ptr noundef @.str.120)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ag = call ptr @proto_registrar_get_nth(i32 noundef %1) ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8            ; 3 uses
  %.not134 = icmp eq ptr %i.ai, null
  br i1 %.not134, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr i8, ptr %i.ag, i64 20
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = and i32 %i.ak, 512
  %.not135 = icmp eq i32 %i.al, 0
  br i1 %.not135, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = call ptr @try_val_to_str_ext(i32 noundef %i.v, ptr noundef nonnull %i.ai)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.an = call ptr @try_val_to_str(i32 noundef %i.v, ptr noundef nonnull %i.ai)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0 = phi ptr [ %i.am, %bb.n ], [ %i.an, %bb.o ] ; 3 uses
  %.not136 = icmp eq ptr %.0, null
  br i1 %.not136, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.x, ptr noundef @.str.121, ptr noundef nonnull %.0, i32 noundef %i.v)
  %i.ao = load ptr, ptr %i.a, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ao, ptr noundef @.str.122, ptr noundef nonnull %.0)
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.l
  %i.ap = and i32 %i.u, 16384
  %.not137 = icmp eq i32 %i.ap, 0                 ; 2 uses
  br i1 %.not137, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.d, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.aq = add nsw i32 %i.o, -4                    ; 2 uses
  %i.ar = call i32 %9(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %i.p, i32 noundef %i.u, i32 noundef %i.af, i32 noundef %i.aq)
  %.not138 = icmp eq i32 %i.ar, 0
  br i1 %.not138, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.as = load i32, ptr @hf_netlink_attr_data, align 4
  %i.at = call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.as, ptr noundef %0, i32 noundef %i.af, i32 noundef %i.aq, i32 noundef 0) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  br i1 %.not137, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 %i.e, ptr %i.d, align 4
  br label %bb.y

bb.x:                                             ; preds = %bb.i
  %i.au = load i32, ptr @hf_netlink_attr_index, align 4
  %i.av = call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.au, ptr noundef %0, i32 noundef %i.s, i32 noundef 2, i32 noundef %i.e) ; 0 uses
  %i.aw = add i32 %.0122144, 4                    ; 2 uses
  %i.ax = load ptr, ptr %i.a, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ax, ptr noundef @.str.123, i32 noundef %i.u)
  %i.ay = add nsw i32 %i.o, -4
  %i.az = call fastcc i32 @dissect_netlink_attributes_common(ptr noundef %0, i32 noundef %1, i32 noundef %3, i32 noundef -1, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %i.p, i32 noundef %i.aw, i32 noundef %i.ay, ptr noundef %9), !inline_history !6 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %bb.w, %bb.x
  %.1123 = phi i32 [ %i.af, %bb.w ], [ %i.af, %bb.v ], [ %i.aw, %bb.x ] ; 2 uses
  %i.ba = add nuw nsw i32 %i.o, 3
  %i.bb = and i32 %i.ba, 131068
  %i.bc = call i32 @llvm.umin.i32(i32 %i.bb, i32 %.0121145) ; 4 uses
  %i.bd = icmp samesign ugt i32 %i.bc, %i.n
  br i1 %i.bd, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.be = load i32, ptr @hf_netlink_padding, align 4
  %i.bf = add nsw i32 %i.o, -4
  %i.bg = add i32 %i.bf, %.1123
  %i.bh = sub nuw nsw i32 %i.bc, %i.o
  %i.bi = call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.be, ptr noundef %0, i32 noundef %i.bg, i32 noundef %i.bh, i32 noundef 0) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bj = add i32 %.1123, -4
  %i.bk = add i32 %i.bj, %i.bc                    ; 2 uses
  %i.bl = sub nuw nsw i32 %.0121145, %i.bc        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.bm = icmp ugt i32 %i.bl, 3
  br i1 %i.bm, label %bb.h, label %.loopexit

.loopexit:                                        ; preds = %bb.aa, %bb.g, %.thread
  %.0122143 = phi i32 [ %.0122144, %.thread ], [ %i.h, %bb.g ], [ %i.bk, %bb.aa ]
  ret i32 %.0122143
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden i32 @dissect_netlink_attributes_to_end(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr nofree noundef readonly captures(none) %7) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @tvb_ensure_reported_length_remaining(ptr noundef %0, i32 noundef %6)
  %i.b = tail call fastcc i32 @dissect_netlink_attributes_common(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef -1, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %i.a, ptr noundef %7)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_ensure_reported_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden i32 @dissect_netlink_attributes_array(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, ptr nofree noundef readonly captures(none) %9) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 309, ptr noundef @.str.3) #6
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = tail call fastcc i32 @dissect_netlink_attributes_common(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9)
  ret i32 %i.b
}

; Function Attrs: noreturn null_pointer_is_valid
declare void @proto_report_dissector_bug(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden noundef i32 @dissect_netlink_header(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr @ett_netlink_msghdr, align 4
  %i.b = tail call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef %3, i32 noundef 16, i32 noundef %i.a, ptr noundef null, ptr noundef @.str.4) ; 12 uses
  %i.c = load i32, ptr @hf_netlink_hdr_len, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.c, ptr noundef %0, i32 noundef %3, i32 noundef 4, i32 noundef %4) ; 0 uses
  %i.e = add i32 %3, 4                            ; 4 uses
  %i.f = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.e, i32 noundef %4) ; 2 uses
  %i.g = zext i16 %i.f to i32                     ; 4 uses
  %i.h = icmp ult i16 %i.f, 16
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr @hf_netlink_hdr_type, align 4 ; 2 uses
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.i, ptr noundef %0, i32 noundef %i.e, i32 noundef 2, i32 noundef %4)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.k = icmp sgt i32 %5, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %5, ptr noundef %0, i32 noundef %i.e, i32 noundef 2, i32 noundef %4)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = load i32, ptr @hf_netlink_hdr_type, align 4 ; 2 uses
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.m, ptr noundef %0, i32 noundef %i.e, i32 noundef 2, i32 noundef %4) ; 2 uses
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.n, ptr noundef @.str.5, i32 noundef %i.g)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.076 = phi i32 [ %i.i, %bb.b ], [ %5, %bb.d ], [ %i.m, %bb.e ]
  %.0 = phi ptr [ %i.j, %bb.b ], [ %i.l, %bb.d ], [ %i.n, %bb.e ]
  %i.o = tail call ptr @proto_registrar_get_nth(i32 noundef %.076) ; 2 uses
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %.0, ptr %6, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = getelementptr i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %.not82 = icmp eq ptr %i.q, null
  br i1 %.not82, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr i8, ptr %i.o, i64 20
  %i.s = load i32, ptr %i.r, align 4
  %i.t = and i32 %i.s, 512
  %.not83 = icmp eq i32 %i.t, 0
  %i.u = getelementptr i8, ptr %1, i64 416
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  br i1 %.not83, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = tail call ptr @val_to_str_ext(ptr noundef %i.v, i32 noundef %i.g, ptr noundef nonnull %i.q, ptr noundef @.str.7)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.b, ptr noundef @.str.6, ptr noundef %i.w)
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.x = tail call ptr @val_to_str(ptr noundef %i.v, i32 noundef %i.g, ptr noundef nonnull %i.q, ptr noundef @.str.7)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.b, ptr noundef @.str.6, ptr noundef %i.x)
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.b, ptr noundef @.str.8, i32 noundef %i.g)
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  %i.y = add i32 %3, 6                            ; 4 uses
  %i.z = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.y, i32 noundef %4)
  %i.aa = zext i16 %i.z to i32                    ; 2 uses
  %i.ab = and i32 %i.aa, 1
  %.not85 = icmp eq i32 %i.ab, 0
  %i.ac = and i32 %i.aa, 3840
  %.not86 = icmp eq i32 %i.ac, 0
  %or.cond = or i1 %.not85, %.not86
  %i.ad = load i32, ptr @hf_netlink_hdr_flags, align 4 ; 2 uses
  %i.ae = load i32, ptr @ett_netlink_hdr_flags, align 4 ; 2 uses
  br i1 %or.cond, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.b, ptr noundef %0, i32 noundef %i.y, i32 noundef %i.ad, i32 noundef %i.ae, ptr noundef @netlink_header_get_flags, i32 noundef %4) ; 0 uses
  %i.ag = load i32, ptr @hf_netlink_hdr_flags, align 4
  %i.ah = load i32, ptr @ett_netlink_hdr_flags, align 4
  %i.ai = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.b, ptr noundef %0, i32 noundef %i.y, i32 noundef %i.ag, i32 noundef %i.ah, ptr noundef @netlink_header_new_flags, i32 noundef %4) ; 0 uses
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.aj = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.b, ptr noundef %0, i32 noundef %i.y, i32 noundef %i.ad, i32 noundef %i.ae, ptr noundef @netlink_header_standard_flags, i32 noundef %4) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ak = add i32 %3, 8
  %i.al = load i32, ptr @hf_netlink_hdr_seq, align 4
  %i.am = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.al, ptr noundef %0, i32 noundef %i.ak, i32 noundef 4, i32 noundef %4) ; 0 uses
  %i.an = add i32 %3, 12
  %i.ao = load i32, ptr @hf_netlink_hdr_pid, align 4
  %i.ap = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.ao, ptr noundef %0, i32 noundef %i.an, i32 noundef 4, i32 noundef %4) ; 0 uses
  %i.aq = add i32 %3, 16
  ret i32 %i.aq
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_uint16(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @proto_item_set_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_registrar_get_nth(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @proto_item_append_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_ext(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bitmask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_netlink() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef @.str.88, ptr noundef @.str.89, ptr noundef @.str.90) ; 2 uses
  store i32 %i.a, ptr @proto_netlink, align 4
  tail call void @proto_register_field_array(i32 noundef %i.a, ptr noundef @proto_register_netlink.hf, i32 noundef 28)
  tail call void @proto_register_subtree_array(ptr noundef @proto_register_netlink.ett, i32 noundef 5)
  %i.b = load i32, ptr @proto_netlink, align 4
  %i.c = tail call ptr @register_dissector(ptr noundef @.str.90, ptr noundef @dissect_netlink, i32 noundef %i.b)
  store ptr %i.c, ptr @netlink_handle, align 8
  %i.d = load i32, ptr @proto_netlink, align 4
  %i.e = tail call ptr @register_dissector_table(ptr noundef @.str.91, ptr noundef @.str.92, i32 noundef %i.d, i32 noundef 5, i32 noundef 2)
  store ptr %i.e, ptr @netlink_dissector_table, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_netlink(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #1 {
bb.a:
  %4 = alloca %struct.packet_netlink_data, align 4 ; 6 uses
  %i.a = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 2)
  %.not = icmp eq i16 %i.a, 824
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @col_set_str(ptr noundef %i.c, i32 noundef 35, ptr noundef @.str.124)
  %i.d = load ptr, ptr %i.b, align 8
  tail call void @col_clear(ptr noundef %i.d, i32 noundef 25)
  %i.e = load i32, ptr @proto_netlink, align 4
  %i.f = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_protocol_format(ptr noundef %2, i32 noundef %i.e, ptr noundef %0, i32 noundef 0, i32 noundef 16, ptr noundef @.str.131)
  %i.g = load i32, ptr @ett_netlink_cooked, align 4
  %i.h = tail call ptr @proto_item_add_subtree(ptr noundef %i.f, i32 noundef %i.g) ; 2 uses
  %i.i = load i32, ptr @hf_netlink_hatype, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.i, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.k = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 14)
  %i.l = load i32, ptr @hf_netlink_family, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.l, ptr noundef %0, i32 noundef 14, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.n = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 16) ; 2 uses
  %i.o = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 16)
  %i.p = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef 16)
  %i.q = sub nsw i32 %i.p, %i.n
  %5 = tail call i32 @llvm.abs.i32(i32 %i.q, i1 true)
  %i.r = sub nsw i32 %i.o, %i.n
  %6 = tail call i32 @llvm.abs.i32(i32 %i.r, i1 true)
  %i.s = icmp samesign ult i32 %5, %6
  %.0102 = select i1 %i.s, i32 0, i32 -2147483648 ; 8 uses
  %i.t = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 16)
  %i.u = icmp ugt i32 %i.t, 15
  br i1 %i.u, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.v = getelementptr i8, ptr %1, i64 356
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.y = zext i16 %i.k to i32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.i
  %.0103117 = phi i32 [ 16, %.lr.ph ], [ %i.aa, %bb.i ] ; 10 uses
  %i.z = call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %.0103117, i32 noundef %.0102) ; 6 uses
  %i.aa = add i32 %i.z, %.0103117                 ; 3 uses
  %i.ab = icmp ult i32 %i.z, 16
  br i1 %i.ab, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.ac = load i32, ptr @ett_netlink_msghdr, align 4
  %i.ad = call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef %.0103117, i32 noundef 4, i32 noundef %i.ac, ptr noundef null, ptr noundef @.str.4)
  %i.ae = load i32, ptr @hf_netlink_hdr_len, align 4
  %i.af = call ptr @proto_tree_add_item(ptr noundef %i.ad, i32 noundef %i.ae, ptr noundef %0, i32 noundef %.0103117, i32 noundef 4, i32 noundef %.0102) ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.ag = add i32 %.0103117, 4
  %i.ah = call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.ag, i32 noundef %.0102) ; 3 uses
  %i.ai = add i32 %.0103117, 12
  %i.aj = call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %i.ai, i32 noundef %.0102)
  %i.ak = icmp ne i32 %i.aj, 0
  %spec.select = zext i1 %i.ak to i32
  store i32 %spec.select, ptr %i.v, align 4
  %i.al = icmp ugt i16 %i.ah, 15
  %i.am = icmp ne i32 %i.z, 16                    ; 2 uses
  %or.cond = and i1 %i.am, %i.al
  br i1 %or.cond, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  store i32 1247464654, ptr %4, align 4
  store i32 %.0102, ptr %i.w, align 4
  store i16 %i.ah, ptr %i.x, align 4
  %i.an = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %.0103117, i32 noundef %i.z)
  %i.ao = load ptr, ptr @netlink_dissector_table, align 8
  %i.ap = call i32 @dissector_try_uint_with_data(ptr noundef %i.ao, i32 noundef %i.y, ptr noundef %i.an, ptr noundef %1, ptr noundef %2, i1 noundef zeroext true, ptr noundef nonnull %4)
  %.not113.not = icmp eq i32 %i.ap, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br i1 %.not113.not, label %.critedge, label %bb.i

.critedge:                                        ; preds = %bb.d, %bb.e
  %i.aq = load i32, ptr @ett_netlink_msg, align 4
  %i.ar = call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef %.0103117, i32 noundef %i.z, i32 noundef %i.aq, ptr noundef null, ptr noundef @.str.132) ; 4 uses
  %i.as = call i32 @dissect_netlink_header(ptr noundef %0, ptr noundef %1, ptr noundef %i.ar, i32 noundef %.0103117, i32 noundef %.0102, i32 noundef -1, ptr noundef null) ; 3 uses
  %i.at = icmp eq i16 %i.ah, 2
  br i1 %i.at, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.critedge
  %i.au = load i32, ptr @hf_netlink_error, align 4
  %i.av = call ptr @proto_tree_add_item(ptr noundef %i.ar, i32 noundef %i.au, ptr noundef %0, i32 noundef %i.as, i32 noundef 4, i32 noundef range(i32 0, -2147483647) %.0102) ; 0 uses
  %i.aw = add i32 %i.as, 4
  %i.ax = call i32 @dissect_netlink_header(ptr noundef %0, ptr noundef readonly %1, ptr noundef %i.ar, i32 noundef %i.aw, i32 noundef range(i32 0, -2147483647) %.0102, i32 noundef -1, ptr noundef null) ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %.critedge
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ay = add i32 %i.z, -16
  %i.az = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.as, i32 noundef %i.ay)
  %i.ba = call i32 @call_data_dissector(ptr noundef %i.az, ptr noundef %1, ptr noundef %i.ar) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.g, %bb.h, %bb.f
  %i.bb = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.aa)
  %i.bc = icmp ugt i32 %i.bb, 15
  br i1 %i.bc, label %bb.c, label %.loopexit

.loopexit:                                        ; preds = %bb.i, %bb.b, %.thread, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %.0103117, %.thread ], [ 16, %bb.b ], [ %i.aa, %bb.i ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector_table(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_netlink() local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @netlink_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.93, i32 noundef 158, ptr noundef %i.a)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: noreturn null_pointer_is_valid
declare void @except_throw(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @try_val_to_str_ext(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @try_val_to_str(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_ntohs(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_protocol_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_letohl(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_ntohl(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_uint32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_length(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare i32 @dissector_try_uint_with_data(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare i32 @call_data_dissector(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

attributes #0 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { noreturn }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{ptr @dissect_netlink_attributes}
end_hunk_0
