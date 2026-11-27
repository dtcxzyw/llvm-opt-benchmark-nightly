Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-h223?download=true
inline.NumInlined: 27
inline.NumDeleted: 22
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0

%struct.hf_register_info = type { ptr, %struct._header_field_info }
%struct._header_field_info = type { ptr, ptr, i32, i32, ptr, i64, ptr, i32, i32, i32, i32, ptr }
%struct._value_string = type { i32, ptr }
%struct.expert_field = type { i32, i32 }
%struct.except_id_t = type { i64, i64 }
%struct._fragment_items = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.except_stacknode = type { ptr, i32, %union.anon }
%union.anon = type { ptr }
%struct.except_catch = type { ptr, i64, %struct.except_t, [1 x %struct.__jmp_buf_tag] }
%struct.except_t = type { %struct.except_id_t, ptr, ptr }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.circuit_chain_key = type { ptr, i32 }

@proto_register_h223.hf = internal global [40 x %struct.hf_register_info] [%struct.hf_register_info { ptr @hf_h223_mux_stuffing_pdu, %struct._header_field_info { ptr @.str, ptr @.str.1, i32 0, i32 0, ptr null, i64 0, ptr @.str.2, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_h223_mux_pdu, %struct._header_field_info { ptr @.str.3, ptr @.str.4, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_h223_mux_header, %struct._header_field_info { ptr @.str.5, ptr @.str.6, i32 0, i32 0, ptr null, i64 0, ptr @.str.7, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_h223_mux_rawhdr, %struct._header_field_info { ptr @.str.8, ptr @.str.9, i32 6, i32 2, ptr null, i64 0, ptr @.str.10, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_h223_mux_correctedhdr, %struct._header_field_info { ptr @.str.11, ptr @.str.12, i32 6, i32 2, ptr null, i64 0, ptr @.str.13, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_h223_mux_mc, %struct._header_field_info { ptr @.str.14, ptr @.str.15, i32 4, i32 1, ptr null, i64 15, ptr @.str.16, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_h223_mux_mpl, %struct._header_field_info { ptr @.str.17, ptr @.str.18, i32 5, i32 1, ptr null, i64 61455, ptr @.str.19, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_h223_mux_deact, %struct._header_field_info { ptr @.str.20, ptr @.str.21, i32 0, i32 0, ptr null, i64 0, ptr @.str.22, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_h223_mux_vc, %struct._header_field_info { ptr @.str.23, ptr @.str.24, i32 5, i32 1, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_h223_mux_extra, %struct._header_field_info { ptr @.str.25, ptr @.str.26, i32 0, i32 0, ptr null, i64 0, ptr @.str.27, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_h223_mux_hdlc2, %struct._header_field_info { ptr @.str.28, ptr @.str.29, i32 5, i32 2, ptr null, i64 0, ptr @.str.30, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_h223_mux_fragment_overlap, %struct._header_field_info { ptr @.str.31, ptr @.str.32, i32 2, i32 0, ptr null, i64 0, ptr @.str.33, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_h223_mux_fragment_overlap_conflict, %struct._header_field_info { ptr @.str.34, ptr @.str.35, i32 2, i32 0, ptr null, i64 0, ptr @.str.36, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_h223_mux_fragment_multiple_tails, %struct._header_field_info { ptr @.str.37, ptr @.str.38, i32 2, i32 0, ptr null, i64 0, ptr @.str.39, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_h223_mux_fragment_too_long_fragment, %struct._header_field_info { ptr @.str.40, ptr @.str.41, i32 2, i32 0, ptr null, i64 0, ptr @.str.42, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_h223_mux_fragment_error, %struct._header_field_info { ptr @.str.43, ptr @.str.44, i32 35, i32 0, ptr null, i64 0, ptr @.str.45, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_h223_mux_fragment_count, %struct._header_field_info { ptr @.str.46, ptr @.str.47, i32 7, i32 1, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_h223_mux_fragment, %struct._header_field_info { ptr @.str.48, ptr @.str.49, i32 35, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_h223_mux_fragments, %struct._header_field_info { ptr @.str.50, ptr @.str.51, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_h223_mux_reassembled_in, %struct._header_field_info { ptr @.str.52, ptr @.str.53, i32 35, i32 0, ptr null, i64 0, ptr @.str.54, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_h223_mux_reassembled_length, %struct._header_field_info { ptr @.str.55, ptr @.str.56, i32 7, i32 1, ptr null, i64 0, ptr @.str.57, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_h223_al_fragment_overlap, %struct._header_field_info { ptr @.str.31, ptr @.str.58, i32 2, i32 0, ptr null, i64 0, ptr @.str.33, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_h223_al_fragment_overlap_conflict, %struct._header_field_info { ptr @.str.34, ptr @.str.59, i32 2, i32 0, ptr null, i64 0, ptr @.str.36, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_h223_al_fragment_multiple_tails, %struct._header_field_info { ptr @.str.37, ptr @.str.60, i32 2, i32 0, ptr null, i64 0, ptr @.str.39, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_h223_al_fragment_too_long_fragment, %struct._header_field_info { ptr @.str.40, ptr @.str.61, i32 2, i32 0, ptr null, i64 0, ptr @.str.42, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_h223_al_fragment_error, %struct._header_field_info { ptr @.str.43, ptr @.str.62, i32 35, i32 0, ptr null, i64 0, ptr @.str.45, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_h223_al_fragment_count, %struct._header_field_info { ptr @.str.46, ptr @.str.63, i32 7, i32 1, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_h223_al_fragment, %struct._header_field_info { ptr @.str.64, ptr @.str.65, i32 35, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_h223_al_fragments, %struct._header_field_info { ptr @.str.66, ptr @.str.67, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_h223_al_reassembled_in, %struct._header_field_info { ptr @.str.68, ptr @.str.69, i32 35, i32 0, ptr null, i64 0, ptr @.str.70, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_h223_al_reassembled_length, %struct._header_field_info { ptr @.str.71, ptr @.str.72, i32 7, i32 1, ptr null, i64 0, ptr @.str.57, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_h223_al1, %struct._header_field_info { ptr @.str.73, ptr @.str.74, i32 0, i32 0, ptr null, i64 0, ptr @.str.75, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_h223_al1_framed, %struct._header_field_info { ptr @.str.76, ptr @.str.77, i32 2, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_h223_al2, %struct._header_field_info { ptr @.str.78, ptr @.str.79, i32 2, i32 0, ptr null, i64 0, ptr @.str.80, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_h223_al2_sequenced, %struct._header_field_info { ptr @.str.81, ptr @.str.82, i32 0, i32 0, ptr null, i64 0, ptr @.str.83, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_h223_al2_unsequenced, %struct._header_field_info { ptr @.str.84, ptr @.str.85, i32 0, i32 0, ptr null, i64 0, ptr @.str.86, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_h223_al2_seqno, %struct._header_field_info { ptr @.str.87, ptr @.str.88, i32 4, i32 1, ptr null, i64 0, ptr @.str.89, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_h223_al2_crc, %struct._header_field_info { ptr @.str.90, ptr @.str.91, i32 4, i32 2, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_h223_al2_crc_status, %struct._header_field_info { ptr @.str.92, ptr @.str.93, i32 4, i32 0, ptr @proto_checksum_vals, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_h223_al_payload, %struct._header_field_info { ptr @.str.94, ptr @.str.95, i32 0, i32 0, ptr null, i64 0, ptr @.str.96, i32 -1, i32 0, i32 0, i32 -1, ptr null } }], align 16
@hf_h223_mux_stuffing_pdu = internal global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"H.223 stuffing PDU\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"h223.mux.stuffing\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Empty PDU used for stuffing when no data available\00", align 1
@hf_h223_mux_pdu = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"H.223 MUX-PDU\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"h223.mux\00", align 1
@hf_h223_mux_header = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"Header\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"h223.mux.header\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"H.223 MUX header\00", align 1
@hf_h223_mux_rawhdr = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"Raw value\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"h223.mux.rawhdr\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Raw header bytes\00", align 1
@hf_h223_mux_correctedhdr = internal global i32 0, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"Corrected value\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"h223.mux.correctedhdr\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"Corrected header bytes\00", align 1
@hf_h223_mux_mc = internal global i32 0, align 4
@.str.14 = private unnamed_addr constant [15 x i8] c"Multiplex Code\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"h223.mux.mc\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"H.223 MUX multiplex code\00", align 1
@hf_h223_mux_mpl = internal global i32 0, align 4
@.str.17 = private unnamed_addr constant [25 x i8] c"Multiplex Payload Length\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"h223.mux.mpl\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"H.223 MUX multiplex Payload Length\00", align 1
@hf_h223_mux_deact = internal global i32 0, align 4
@.str.20 = private unnamed_addr constant [34 x i8] c"Deactivated multiplex table entry\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"h223.mux.deactivated\00", align 1
@.str.22 = private unnamed_addr constant [66 x i8] c"mpl refers to an entry in the multiplex table which is not active\00", align 1
@hf_h223_mux_vc = internal global i32 0, align 4
@.str.23 = private unnamed_addr constant [22 x i8] c"H.223 virtual circuit\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"h223.mux.vc\00", align 1
@hf_h223_mux_extra = internal global i32 0, align 4
@.str.25 = private unnamed_addr constant [16 x i8] c"Extraneous data\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"h223.mux.extra\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"data beyond mpl\00", align 1
@hf_h223_mux_hdlc2 = internal global i32 0, align 4
@.str.28 = private unnamed_addr constant [10 x i8] c"HDLC flag\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"h223.mux.hdlc\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"framing flag\00", align 1
@hf_h223_mux_fragment_overlap = internal global i32 0, align 4
@.str.31 = private unnamed_addr constant [17 x i8] c"Fragment overlap\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"h223.mux.fragment.overlap\00", align 1
@.str.33 = private unnamed_addr constant [39 x i8] c"Fragment overlaps with other fragments\00", align 1
@hf_h223_mux_fragment_overlap_conflict = internal global i32 0, align 4
@.str.34 = private unnamed_addr constant [37 x i8] c"Conflicting data in fragment overlap\00", align 1
@.str.35 = private unnamed_addr constant [35 x i8] c"h223.mux.fragment.overlap.conflict\00", align 1
@.str.36 = private unnamed_addr constant [49 x i8] c"Overlapping fragments contained conflicting data\00", align 1
@hf_h223_mux_fragment_multiple_tails = internal global i32 0, align 4
@.str.37 = private unnamed_addr constant [30 x i8] c"Multiple tail fragments found\00", align 1
@.str.38 = private unnamed_addr constant [32 x i8] c"h223.mux.fragment.multipletails\00", align 1
@.str.39 = private unnamed_addr constant [55 x i8] c"Several tails were found when defragmenting the packet\00", align 1
@hf_h223_mux_fragment_too_long_fragment = internal global i32 0, align 4
@.str.40 = private unnamed_addr constant [18 x i8] c"Fragment too long\00", align 1
@.str.41 = private unnamed_addr constant [34 x i8] c"h223.mux.fragment.toolongfragment\00", align 1
@.str.42 = private unnamed_addr constant [43 x i8] c"Fragment contained data past end of packet\00", align 1
@hf_h223_mux_fragment_error = internal global i32 0, align 4
@.str.43 = private unnamed_addr constant [22 x i8] c"Defragmentation error\00", align 1
@.str.44 = private unnamed_addr constant [24 x i8] c"h223.mux.fragment.error\00", align 1
@.str.45 = private unnamed_addr constant [47 x i8] c"Defragmentation error due to illegal fragments\00", align 1
@hf_h223_mux_fragment_count = internal global i32 0, align 4
@.str.46 = private unnamed_addr constant [15 x i8] c"Fragment count\00", align 1
@.str.47 = private unnamed_addr constant [24 x i8] c"h223.mux.fragment.count\00", align 1
@hf_h223_mux_fragment = internal global i32 0, align 4
@.str.48 = private unnamed_addr constant [23 x i8] c"H.223 MUX-PDU Fragment\00", align 1
@.str.49 = private unnamed_addr constant [18 x i8] c"h223.mux.fragment\00", align 1
@hf_h223_mux_fragments = internal global i32 0, align 4
@.str.50 = private unnamed_addr constant [24 x i8] c"H.223 MUX-PDU Fragments\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"h223.mux.fragments\00", align 1
@hf_h223_mux_reassembled_in = internal global i32 0, align 4
@.str.52 = private unnamed_addr constant [39 x i8] c"MUX-PDU fragment, reassembled in frame\00", align 1
@.str.53 = private unnamed_addr constant [24 x i8] c"h223.mux.reassembled_in\00", align 1
@.str.54 = private unnamed_addr constant [55 x i8] c"This H.223 MUX-PDU packet is reassembled in this frame\00", align 1
@hf_h223_mux_reassembled_length = internal global i32 0, align 4
@.str.55 = private unnamed_addr constant [33 x i8] c"Reassembled H.223 MUX-PDU length\00", align 1
@.str.56 = private unnamed_addr constant [28 x i8] c"h223.mux.reassembled.length\00", align 1
@.str.57 = private unnamed_addr constant [44 x i8] c"The total length of the reassembled payload\00", align 1
@hf_h223_al_fragment_overlap = internal global i32 0, align 4
@.str.58 = private unnamed_addr constant [25 x i8] c"h223.al.fragment.overlap\00", align 1
@hf_h223_al_fragment_overlap_conflict = internal global i32 0, align 4
@.str.59 = private unnamed_addr constant [34 x i8] c"h223.al.fragment.overlap.conflict\00", align 1
@hf_h223_al_fragment_multiple_tails = internal global i32 0, align 4
@.str.60 = private unnamed_addr constant [31 x i8] c"h223.al.fragment.multipletails\00", align 1
@hf_h223_al_fragment_too_long_fragment = internal global i32 0, align 4
@.str.61 = private unnamed_addr constant [33 x i8] c"h223.al.fragment.toolongfragment\00", align 1
@hf_h223_al_fragment_error = internal global i32 0, align 4
@.str.62 = private unnamed_addr constant [23 x i8] c"h223.al.fragment.error\00", align 1
@hf_h223_al_fragment_count = internal global i32 0, align 4
@.str.63 = private unnamed_addr constant [23 x i8] c"h223.al.fragment.count\00", align 1
@hf_h223_al_fragment = internal global i32 0, align 4
@.str.64 = private unnamed_addr constant [22 x i8] c"H.223 AL-PDU Fragment\00", align 1
@.str.65 = private unnamed_addr constant [17 x i8] c"h223.al.fragment\00", align 1
@hf_h223_al_fragments = internal global i32 0, align 4
@.str.66 = private unnamed_addr constant [23 x i8] c"H.223 AL-PDU Fragments\00", align 1
@.str.67 = private unnamed_addr constant [18 x i8] c"h223.al.fragments\00", align 1
@hf_h223_al_reassembled_in = internal global i32 0, align 4
@.str.68 = private unnamed_addr constant [38 x i8] c"AL-PDU fragment, reassembled in frame\00", align 1
@.str.69 = private unnamed_addr constant [23 x i8] c"h223.al.reassembled_in\00", align 1
@.str.70 = private unnamed_addr constant [54 x i8] c"This H.223 AL-PDU packet is reassembled in this frame\00", align 1
@hf_h223_al_reassembled_length = internal global i32 0, align 4
@.str.71 = private unnamed_addr constant [32 x i8] c"Reassembled H.223 AL-PDU length\00", align 1
@.str.72 = private unnamed_addr constant [27 x i8] c"h223.al.reassembled.length\00", align 1
@hf_h223_al1 = internal global i32 0, align 4
@.str.73 = private unnamed_addr constant [10 x i8] c"H.223 AL1\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"h223.al1\00", align 1
@.str.75 = private unnamed_addr constant [23 x i8] c"H.223 AL-PDU using AL1\00", align 1
@hf_h223_al1_framed = internal global i32 0, align 4
@.str.76 = private unnamed_addr constant [18 x i8] c"H.223 AL1 framing\00", align 1
@.str.77 = private unnamed_addr constant [16 x i8] c"h223.al1.framed\00", align 1
@hf_h223_al2 = internal global i32 0, align 4
@.str.78 = private unnamed_addr constant [10 x i8] c"H.223 AL2\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c"h223.al2\00", align 1
@.str.80 = private unnamed_addr constant [23 x i8] c"H.223 AL-PDU using AL2\00", align 1
@hf_h223_al2_sequenced = internal global i32 0, align 4
@.str.81 = private unnamed_addr constant [20 x i8] c"H.223 sequenced AL2\00", align 1
@.str.82 = private unnamed_addr constant [19 x i8] c"h223.sequenced_al2\00", align 1
@.str.83 = private unnamed_addr constant [45 x i8] c"H.223 AL-PDU using AL2 with sequence numbers\00", align 1
@hf_h223_al2_unsequenced = internal global i32 0, align 4
@.str.84 = private unnamed_addr constant [22 x i8] c"H.223 unsequenced AL2\00", align 1
@.str.85 = private unnamed_addr constant [21 x i8] c"h223.unsequenced_al2\00", align 1
@.str.86 = private unnamed_addr constant [48 x i8] c"H.223 AL-PDU using AL2 without sequence numbers\00", align 1
@hf_h223_al2_seqno = internal global i32 0, align 4
@.str.87 = private unnamed_addr constant [16 x i8] c"Sequence Number\00", align 1
@.str.88 = private unnamed_addr constant [15 x i8] c"h223.al2.seqno\00", align 1
@.str.89 = private unnamed_addr constant [26 x i8] c"H.223 AL2 sequence number\00", align 1
@hf_h223_al2_crc = internal global i32 0, align 4
@.str.90 = private unnamed_addr constant [4 x i8] c"CRC\00", align 1
@.str.91 = private unnamed_addr constant [13 x i8] c"h223.al2.crc\00", align 1
@hf_h223_al2_crc_status = internal global i32 0, align 4
@.str.92 = private unnamed_addr constant [11 x i8] c"CRC Status\00", align 1
@.str.93 = private unnamed_addr constant [20 x i8] c"h223.al2.crc.status\00", align 1
@proto_checksum_vals = external constant [0 x %struct._value_string], align 8
@hf_h223_al_payload = internal global i32 0, align 4
@.str.94 = private unnamed_addr constant [17 x i8] c"H.223 AL Payload\00", align 1
@.str.95 = private unnamed_addr constant [16 x i8] c"h223.al.payload\00", align 1
@.str.96 = private unnamed_addr constant [21 x i8] c"H.223 AL-PDU Payload\00", align 1
@proto_register_h223.ett = internal global [15 x ptr] [ptr @ett_h223, ptr @ett_h223_non_h223_data, ptr @ett_h223_mux_stuffing_pdu, ptr @ett_h223_mux_pdu, ptr @ett_h223_mux_header, ptr @ett_h223_mux_deact, ptr @ett_h223_mux_vc, ptr @ett_h223_mux_extra, ptr @ett_h223_mux_fragments, ptr @ett_h223_mux_fragment, ptr @ett_h223_al_fragments, ptr @ett_h223_al_fragment, ptr @ett_h223_al1, ptr @ett_h223_al2, ptr @ett_h223_al_payload], align 16
@ett_h223 = internal global i32 0, align 4
@ett_h223_non_h223_data = internal global i32 0, align 4
@ett_h223_mux_stuffing_pdu = internal global i32 0, align 4
@ett_h223_mux_pdu = internal global i32 0, align 4
@ett_h223_mux_header = internal global i32 0, align 4
@ett_h223_mux_deact = internal global i32 0, align 4
@ett_h223_mux_vc = internal global i32 0, align 4
@ett_h223_mux_extra = internal global i32 0, align 4
@ett_h223_mux_fragments = internal global i32 0, align 4
@ett_h223_mux_fragment = internal global i32 0, align 4
@ett_h223_al_fragments = internal global i32 0, align 4
@ett_h223_al_fragment = internal global i32 0, align 4
@ett_h223_al1 = internal global i32 0, align 4
@ett_h223_al2 = internal global i32 0, align 4
@ett_h223_al_payload = internal global i32 0, align 4
@proto_register_h223.ei = internal global [1 x { ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } }] [{ ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } } { ptr @ei_h223_al2_crc, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } { ptr @.str.97, i32 16777216, i32 8388608, ptr @.str.98, i32 0, [4 x i8] zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, %struct.hf_register_info { ptr null, %struct._header_field_info { ptr null, ptr null, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } } } }], align 16
@ei_h223_al2_crc = internal global %struct.expert_field zeroinitializer, align 4
@.str.97 = private unnamed_addr constant [18 x i8] c"h223.bad_checksum\00", align 1
@.str.98 = private unnamed_addr constant [13 x i8] c"Bad checksum\00", align 1
@.str.99 = private unnamed_addr constant [27 x i8] c"ITU-T Recommendation H.223\00", align 1
@.str.100 = private unnamed_addr constant [6 x i8] c"H.223\00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c"h223\00", align 1
@proto_h223 = internal unnamed_addr global i32 0, align 4
@.str.102 = private unnamed_addr constant [40 x i8] c"ITU-T Recommendation H.223 (Bitswapped)\00", align 1
@.str.103 = private unnamed_addr constant [19 x i8] c"H.223 (Bitswapped)\00", align 1
@.str.104 = private unnamed_addr constant [16 x i8] c"h223_bitswapped\00", align 1
@proto_h223_bitswapped = internal unnamed_addr global i32 0, align 4
@h223_bitswapped = internal unnamed_addr global ptr null, align 8
@circuit_chain_hashtable = internal unnamed_addr global ptr null, align 8
@.str.105 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@data_handle = internal unnamed_addr global ptr null, align 8
@.str.106 = private unnamed_addr constant [4 x i8] c"srp\00", align 1
@srp_handle = internal unnamed_addr global ptr null, align 8
@.str.107 = private unnamed_addr constant [9 x i8] c"tcp.port\00", align 1
@.str.108 = private unnamed_addr constant [21 x i8] c"rtp_dyn_payload_type\00", align 1
@.str.109 = private unnamed_addr constant [10 x i8] c"CLEARMODE\00", align 1
@.str.110 = private unnamed_addr constant [7 x i8] c"rtp.pt\00", align 1
@.str.111 = private unnamed_addr constant [16 x i8] c"iax2.dataformat\00", align 1
@.str.112 = private unnamed_addr constant [29 x i8] c"%s:%u: failed assertion \22%s\22\00", align 1
@.str.113 = private unnamed_addr constant [30 x i8] c"epan/dissectors/packet-h223.c\00", align 1
@.str.114 = private unnamed_addr constant [19 x i8] c"(No complete PDUs)\00", align 1
@.str.115 = private unnamed_addr constant [8 x i8] c"mc < 16\00", align 1
@pdu_offset = internal unnamed_addr global i32 0, align 4
@circuit_chain_count = internal unnamed_addr global i32 1, align 4
@.str.116 = private unnamed_addr constant [5 x i8] c"conv\00", align 1
@attempt_mux_header_parse = internal unnamed_addr constant [4 x ptr] [ptr @attempt_mux_level0_header_parse, ptr @attempt_mux_level1_header_parse, ptr @attempt_mux_level2_3_header_parse, ptr @attempt_mux_level2_3_header_parse], align 16
@dissect_mux_pdu_fragment.catch_spec = internal constant [1 x %struct.except_id_t] [%struct.except_id_t { i64 1, i64 0 }], align 16
@.str.117 = private unnamed_addr constant [55 x i8] c"%s:%u: failed assertion \22DISSECTOR_ASSERT_NOT_REACHED\22\00", align 1
@.str.118 = private unnamed_addr constant [11 x i8] c"len >= mpl\00", align 1
@.str.119 = private unnamed_addr constant [30 x i8] c"0x%06x (uncorrectable errors)\00", align 1
@.str.120 = private unnamed_addr constant [17 x i8] c"0x%06x (correct)\00", align 1
@.str.121 = private unnamed_addr constant [27 x i8] c"0x%06x (errors are 0x%06x)\00", align 1
@.str.122 = private unnamed_addr constant [12 x i8] c"length != 0\00", align 1
@dissect_mux_sdu_fragment.catch_spec = internal constant [1 x %struct.except_id_t] [%struct.except_id_t { i64 1, i64 0 }], align 16
@.str.123 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.124 = private unnamed_addr constant [55 x i8] c"Frame %d: Subcircuit id %d not found for call %p VC %d\00", align 1
@.str.125 = private unnamed_addr constant [25 x i8] c"Reassembled H.223 AL-PDU\00", align 1
@h223_al_frag_items = internal constant %struct._fragment_items { ptr @ett_h223_al_fragment, ptr @ett_h223_al_fragments, ptr @hf_h223_al_fragments, ptr @hf_h223_al_fragment, ptr @hf_h223_al_fragment_overlap, ptr @hf_h223_al_fragment_overlap_conflict, ptr @hf_h223_al_fragment_multiple_tails, ptr @hf_h223_al_fragment_too_long_fragment, ptr @hf_h223_al_fragment_error, ptr @hf_h223_al_fragment_count, ptr @hf_h223_al_reassembled_in, ptr @hf_h223_al_reassembled_length, ptr null, ptr @.str.126 }, align 8
@.str.126 = private unnamed_addr constant [10 x i8] c"fragments\00", align 1
@.str.127 = private unnamed_addr constant [21 x i8] c"H.223 AL1 (%sframed)\00", align 1
@.str.128 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@.str.129 = private unnamed_addr constant [30 x i8] c"tvb_reported_length(tvb) >= 1\00", align 1
@crctable = internal unnamed_addr constant [256 x i8] c"\00\91\E3r\07\96\E4u\0E\9F\ED|\09\98\EA{\1C\8D\FFn\1B\8A\F8i\12\83\F1`\15\84\F6g8\A9\DBJ?\AE\DCM6\A7\D5D1\A0\D2C$\B5\C7V#\B2\C0Q*\BB\C9X-\BC\CE_p\E1\93\02w\E6\94\05~\EF\9D\0Cy\E8\9A\0Bl\FD\8F\1Ek\FA\88\19b\F3\81\10e\F4\86\17H\D9\AB:O\DE\AC=F\D7\A54A\D0\A23T\C5\B7&S\C2\B0!Z\CB\B9(]\CC\BE/\E0q\03\92\E7v\04\95\EE\7F\0D\9C\E9x\0A\9B\FCm\1F\8E\FBj\18\89\F2c\11\80\F5d\16\87\D8I;\AA\DFN<\AD\D6G5\A4\D1@2\A3\C4U'\B6\C3R \B1\CA[)\B8\CD\\.\BF\90\01s\E2\97\06t\E5\9E\0F}\EC\99\08z\EB\8C\1Do\FE\8B\1Ah\F9\82\13a\F0\85\14f\F7\A89K\DA\AF>L\DD\A67E\D4\A10B\D3\B4%W\C6\B3\22P\C1\BA+Y\C8\BD,^\CF", align 16
@.str.130 = private unnamed_addr constant [24 x i8] c"Bit-swapped H.223 frame\00", align 1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_h223() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef @.str.99, ptr noundef @.str.100, ptr noundef @.str.101) ; 2 uses
  store i32 %i.a, ptr @proto_h223, align 4
  %i.b = tail call i32 @proto_register_protocol_in_name_only(ptr noundef @.str.102, ptr noundef @.str.103, ptr noundef @.str.104, i32 noundef %i.a, i32 noundef 1)
  store i32 %i.b, ptr @proto_h223_bitswapped, align 4
  %i.c = load i32, ptr @proto_h223, align 4
  tail call void @proto_register_field_array(i32 noundef %i.c, ptr noundef @proto_register_h223.hf, i32 noundef 40)
  tail call void @proto_register_subtree_array(ptr noundef @proto_register_h223.ett, i32 noundef 15)
  %i.d = load i32, ptr @proto_h223, align 4
  %i.e = tail call ptr @expert_register_protocol(i32 noundef %i.d)
  tail call void @expert_register_field_array(ptr noundef %i.e, ptr noundef @proto_register_h223.ei, i32 noundef 1)
  %i.f = load i32, ptr @proto_h223, align 4
  %i.g = tail call ptr @register_dissector(ptr noundef @.str.101, ptr noundef @dissect_h223_circuit_data, i32 noundef %i.f) ; 0 uses
  %i.h = load i32, ptr @proto_h223_bitswapped, align 4
  %i.i = tail call ptr @register_dissector(ptr noundef @.str.104, ptr noundef @dissect_h223_bitswapped, i32 noundef %i.h)
  store ptr %i.i, ptr @h223_bitswapped, align 8
  tail call void @register_init_routine(ptr noundef @circuit_chain_init)
  %i.j = tail call ptr @wmem_epan_scope()
  %i.k = tail call ptr @wmem_file_scope()
  %i.l = tail call ptr @wmem_map_new_autoreset(ptr noundef %i.j, ptr noundef %i.k, ptr noundef @circuit_chain_hash, ptr noundef @circuit_chain_equal)
  store ptr %i.l, ptr @circuit_chain_hashtable, align 8
  tail call void @h245_set_h223_set_mc_handle(ptr noundef @h223_set_mc)
  tail call void @h245_set_h223_add_lc_handle(ptr noundef @h223_add_lc)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol_in_name_only(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_register_protocol(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @expert_register_field_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_h223_circuit_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) #0 {
bb.a:
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.112, ptr noundef @.str.113, i32 noundef 1343, ptr noundef @.str.105) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load i32, ptr %3, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4
  tail call fastcc void @dissect_h223_common(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %.sroa.0.0.copyload, i32 noundef %.sroa.4.0.copyload)
  %i.a = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_h223_bitswapped(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length(ptr noundef %0) ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 416
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = zext i32 %i.a to i64                     ; 2 uses
  %i.e = tail call ptr @tvb_memdup(ptr noundef %i.c, ptr noundef %0, i32 noundef 0, i64 noundef %i.d) ; 2 uses
  tail call void @bitswap_buf_inplace(ptr noundef %i.e, i64 noundef %i.d)
  %i.f = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.g = tail call ptr @tvb_new_child_real_data(ptr noundef %0, ptr noundef %i.e, i32 noundef %i.a, i32 noundef %i.f) ; 2 uses
  %i.h = tail call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.g, ptr noundef @.str.130) ; 0 uses
  tail call fastcc void @dissect_h223_common(ptr noundef %i.g, ptr noundef %1, ptr noundef %2, i32 noundef 0, i32 noundef 0)
  %i.i = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.i
}

; Function Attrs: null_pointer_is_valid
declare void @register_init_routine(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @circuit_chain_init() #3 {
bb.a:
  store i32 1, ptr @circuit_chain_count, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_map_new_autoreset(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_epan_scope() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_file_scope() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define internal i32 @circuit_chain_hash(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = trunc i64 %i.b to i32
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8
  %i.f = shl i32 %i.e, 16
  %i.g = xor i32 %i.f, %i.c
  ret i32 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @circuit_chain_equal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.e, %i.g
  %i.i = zext i1 %i.h to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi i32 [ 0, %bb.a ], [ %i.i, %bb.b ]
  ret i32 %i.j
}

; Function Attrs: null_pointer_is_valid
declare void @h245_set_h223_set_mc_handle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @h223_set_mc(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call ptr @find_conversation_pinfo(ptr noundef %0, i32 noundef 0) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %add_h223_mux_element.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @proto_h223, align 4
  %i.c = tail call ptr @conversation_get_proto_data(ptr noundef nonnull %i.a, i32 noundef %i.b) ; 2 uses
  %.not9 = icmp eq ptr %i.c, null
  br i1 %.not9, label %add_h223_mux_element.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4              ; 3 uses
  %i.f = icmp ult i8 %1, 16
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.112, ptr noundef @.str.113, i32 noundef 281, ptr noundef @.str.115) #14
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %i.c, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 40
  %i.j = getelementptr i8, ptr %0, i64 356
  %i.k = load i32, ptr %i.j, align 4
  %.not10 = icmp eq i32 %i.k, 0
  %i.l = zext i1 %.not10 to i64
  %i.m = getelementptr [128 x i8], ptr %i.i, i64 %i.l
  %i.n = tail call ptr @wmem_file_scope()
  %i.o = tail call noalias dereferenceable_or_null(24) ptr @wmem_alloc(ptr noundef %i.n, i64 noundef 24) #15 ; 7 uses
  %i.p = zext nneg i8 %1 to i64
  %i.q = getelementptr [8 x i8], ptr %i.m, i64 %i.p ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  store ptr %i.o, ptr %i.q, align 8
  br label %bb.m

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.028.i = phi ptr [ %i.s, %.preheader.i ], [ %i.q, %bb.e ]
  %.0.i = phi ptr [ %i.t, %.preheader.i ], [ %i.r, %bb.e ] ; 3 uses
  %i.s = getelementptr i8, ptr %.0.i, i64 16      ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not33.i = icmp eq ptr %i.t, null
  br i1 %.not33.i, label %bb.g, label %.preheader.i, !llvm.loop !7

bb.g:                                             ; preds = %.preheader.i
  %i.u = getelementptr i8, ptr %.0.i, i64 8
  %i.v = load i32, ptr %i.u, align 8              ; 2 uses
  %i.w = icmp ult i32 %i.e, %i.v
  br i1 %i.w, label %add_h223_mux_element.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = icmp eq i32 %i.e, %i.v
  br i1 %i.x, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.y = load i32, ptr @pdu_offset, align 4       ; 2 uses
  %i.z = getelementptr i8, ptr %.0.i, i64 12
  %i.aa = load i32, ptr %i.z, align 4             ; 2 uses
  %i.ab = icmp ult i32 %i.y, %i.aa
  br i1 %i.ab, label %add_h223_mux_element.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp eq i32 %i.y, %i.aa
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr %i.o, ptr %.028.i, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.h
  store ptr %i.o, ptr %i.s, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.f
  %i.ad = getelementptr i8, ptr %i.o, i64 8
  store i32 %i.e, ptr %i.ad, align 8
  %i.ae = load i32, ptr @pdu_offset, align 4
  %i.af = getelementptr i8, ptr %i.o, i64 12
  store i32 %i.ae, ptr %i.af, align 4
  %i.ag = getelementptr i8, ptr %i.o, i64 16
  store ptr null, ptr %i.ag, align 8
  store ptr %2, ptr %i.o, align 8
  br label %add_h223_mux_element.exit

add_h223_mux_element.exit:                        ; preds = %bb.m, %bb.i, %bb.g, %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @h245_set_h223_add_lc_handle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @h223_add_lc(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call ptr @find_conversation_pinfo(ptr noundef %0, i32 noundef 0) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @proto_h223, align 4
  %i.c = tail call ptr @conversation_get_proto_data(ptr noundef nonnull %i.a, i32 noundef %i.b) ; 2 uses
  %.not9 = icmp eq ptr %i.c, null
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4
  %i.f = getelementptr i8, ptr %i.c, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = zext i16 %1 to i32
  %i.i = getelementptr i8, ptr %0, i64 356
  %i.j = load i32, ptr %i.i, align 4
  tail call fastcc void @init_logical_channel(i32 noundef %i.e, ptr noundef %i.g, i32 noundef %i.h, i32 noundef %i.j, ptr noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_h223() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @find_dissector(ptr noundef @.str.105)
  store ptr %i.a, ptr @data_handle, align 8
  %i.b = tail call ptr @find_dissector(ptr noundef @.str.106)
  store ptr %i.b, ptr @srp_handle, align 8
  %i.c = load i32, ptr @proto_h223, align 4
  %i.d = tail call ptr @create_dissector_handle(ptr noundef @dissect_h223, i32 noundef %i.c)
  tail call void @dissector_add_for_decode_as_with_preference(ptr noundef @.str.107, ptr noundef %i.d)
  %i.e = load ptr, ptr @h223_bitswapped, align 8
  tail call void @dissector_add_for_decode_as_with_preference(ptr noundef @.str.107, ptr noundef %i.e)
  %i.f = load ptr, ptr @h223_bitswapped, align 8
  tail call void @dissector_add_string(ptr noundef @.str.108, ptr noundef @.str.109, ptr noundef %i.f)
  %i.g = load ptr, ptr @h223_bitswapped, align 8
  tail call void @dissector_add_for_decode_as(ptr noundef @.str.110, ptr noundef %i.g)
  %i.h = load i32, ptr @proto_h223_bitswapped, align 4
  %i.i = tail call ptr @create_dissector_handle(ptr noundef @dissect_h223_bitswapped_circuit_data, i32 noundef %i.h)
  tail call void @dissector_add_uint(ptr noundef @.str.111, i32 noundef 2, ptr noundef %i.i)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @find_dissector(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_for_decode_as_with_preference(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @create_dissector_handle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_h223(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  tail call fastcc void @dissect_h223_common(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0, i32 noundef 0)
  %i.a = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_for_decode_as(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_h223_bitswapped_circuit_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) #0 {
bb.a:
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.112, ptr noundef @.str.113, i32 noundef 1393, ptr noundef @.str.105) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load i32, ptr %3, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4
  %i.a = tail call i32 @tvb_reported_length(ptr noundef %0) ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 416
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = zext i32 %i.a to i64                     ; 2 uses
  %i.e = tail call ptr @tvb_memdup(ptr noundef %i.c, ptr noundef %0, i32 noundef 0, i64 noundef %i.d) ; 2 uses
  tail call void @bitswap_buf_inplace(ptr noundef %i.e, i64 noundef %i.d)
  %i.f = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.g = tail call ptr @tvb_new_child_real_data(ptr noundef %0, ptr noundef %i.e, i32 noundef %i.a, i32 noundef %i.f) ; 2 uses
  %i.h = tail call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.g, ptr noundef @.str.130) ; 0 uses
  tail call fastcc void @dissect_h223_common(ptr noundef %i.g, ptr noundef %1, ptr noundef %2, i32 noundef %.sroa.0.0.copyload, i32 noundef %.sroa.4.0.copyload)
  %i.i = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.i
}

; Function Attrs: noreturn null_pointer_is_valid
declare void @proto_report_dissector_bug(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_h223_common(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @col_set_str(ptr noundef %i.b, i32 noundef 35, ptr noundef @.str.100)
  %i.c = load ptr, ptr %i.a, align 8
  tail call void @col_clear(ptr noundef %i.c, i32 noundef 25)
  %.not.i.i = icmp eq i32 %3, 0
  br i1 %.not.i.i, label %find_or_create_call_info_circ.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 20         ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = tail call ptr @find_conversation_by_id(i32 noundef %i.e, i32 noundef %3, i32 noundef %4) ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %find_or_create_call_info_circ.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr @proto_h223, align 4
  %i.i = tail call ptr @conversation_get_proto_data(ptr noundef nonnull %i.f, i32 noundef %i.h) ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.d, align 4
  %i.l = tail call fastcc ptr @create_call_info(i32 noundef %i.k) ; 2 uses
  %i.m = load i32, ptr @proto_h223, align 4
  tail call void @conversation_add_proto_data(ptr noundef nonnull %i.f, i32 noundef %i.m, ptr noundef %i.l)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.014.i.i = phi ptr [ %i.l, %bb.d ], [ %i.i, %bb.c ] ; 2 uses
  %i.n = getelementptr i8, ptr %1, i64 356        ; 2 uses
  %i.o = load i32, ptr %i.n, align 4
  %or.cond.i.i = icmp ugt i32 %i.o, 1
  br i1 %or.cond.i.i, label %bb.f, label %find_or_create_call_info_circ.exit.i

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.n, align 4
  br label %find_or_create_call_info_circ.exit.i

find_or_create_call_info_circ.exit.i:             ; preds = %bb.f, %bb.e
  %i.p = icmp eq ptr %.014.i.i, null
  br i1 %i.p, label %find_or_create_call_info_circ.exit.thread.i, label %find_or_create_call_info.exit

find_or_create_call_info_circ.exit.thread.i:      ; preds = %find_or_create_call_info_circ.exit.i, %bb.b, %bb.a
  %i.q = tail call ptr @find_conversation_pinfo(ptr noundef %1, i32 noundef 0) ; 4 uses
  %.not.i6.i = icmp eq ptr %i.q, null
  br i1 %.not.i6.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %find_or_create_call_info_circ.exit.thread.i
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.112, ptr noundef @.str.113, i32 noundef 485, ptr noundef @.str.116) #14
  unreachable

bb.h:                                             ; preds = %find_or_create_call_info_circ.exit.thread.i
  %i.r = load i32, ptr @proto_h223, align 4
  %i.s = tail call ptr @conversation_get_proto_data(ptr noundef nonnull %i.q, i32 noundef %i.r) ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr i8, ptr %1, i64 284
  %i.v = load i32, ptr %i.u, align 4
  %i.w = icmp eq i32 %i.v, 3
  br i1 %i.w, label %bb.j, label %.thread.i.i

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr i8, ptr %1, i64 20
  %i.y = load i32, ptr %i.x, align 4
  %i.z = getelementptr i8, ptr %1, i64 232
  %i.aa = getelementptr i8, ptr %1, i64 208
  %i.ab = tail call i32 @conversation_pt_to_conversation_type(i32 noundef 3)
  %i.ac = getelementptr i8, ptr %1, i64 292
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = getelementptr i8, ptr %1, i64 288
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = tail call ptr @find_conversation(i32 noundef %i.y, ptr noundef %i.z, ptr noundef %i.aa, i32 noundef %i.ab, i32 noundef %i.ad, i32 noundef %i.af, i32 noundef 0) ; 2 uses
  %.not36.i.i = icmp eq ptr %i.ag, null
  br i1 %.not36.i.i, label %.thread.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = load i32, ptr @proto_h223, align 4
  %i.ai = tail call ptr @conversation_get_proto_data(ptr noundef nonnull %i.ag, i32 noundef %i.ah) ; 3 uses
  %.not37.i.i = icmp eq ptr %i.ai, null
  br i1 %.not37.i.i, label %.thread.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = load i32, ptr @proto_h223, align 4
  tail call void @conversation_add_proto_data(ptr noundef nonnull %i.q, i32 noundef %i.aj, ptr noundef nonnull %i.ai)
  br label %bb.n

.thread.i.i:                                      ; preds = %bb.k, %bb.j, %bb.i
  %i.ak = getelementptr i8, ptr %1, i64 20
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = tail call fastcc ptr @create_call_info(i32 noundef %i.al) ; 7 uses
  %i.an = load i32, ptr @proto_h223, align 4
  tail call void @conversation_add_proto_data(ptr noundef nonnull %i.q, i32 noundef %i.an, ptr noundef %i.am)
  %i.ao = tail call ptr @wmem_file_scope()
  %i.ap = getelementptr i8, ptr %i.am, i64 8      ; 2 uses
  %i.aq = getelementptr i8, ptr %1, i64 208
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = getelementptr i8, ptr %1, i64 212
  %i.at = load i32, ptr %i.as, align 4            ; 3 uses
  %i.au = getelementptr i8, ptr %1, i64 216
  %i.av = load ptr, ptr %i.au, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false)
  store i32 %i.ar, ptr %i.ap, align 8
  %i.aw = icmp eq i32 %i.at, 0
  br i1 %i.aw, label %copy_address_wmem.exit.i.i, label %bb.m

bb.m:                                             ; preds = %.thread.i.i
  %i.ax = sext i32 %i.at to i64
  %i.ay = tail call ptr @wmem_memdup(ptr noundef %i.ao, ptr noundef %i.av, i64 noundef %i.ax) #16 ; 2 uses
  %i.az = getelementptr i8, ptr %i.am, i64 24
  store ptr %i.ay, ptr %i.az, align 8
  %i.ba = getelementptr i8, ptr %i.am, i64 16
  store ptr %i.ay, ptr %i.ba, align 8
  %i.bb = getelementptr i8, ptr %i.am, i64 12
  store i32 %i.at, ptr %i.bb, align 4
  br label %copy_address_wmem.exit.i.i

copy_address_wmem.exit.i.i:                       ; preds = %bb.m, %.thread.i.i
  %i.bc = getelementptr i8, ptr %1, i64 288
  %i.bd = load i32, ptr %i.bc, align 8
  %i.be = getelementptr i8, ptr %i.am, i64 32
  store i32 %i.bd, ptr %i.be, align 8
  br label %bb.n

bb.n:                                             ; preds = %copy_address_wmem.exit.i.i, %bb.l, %bb.h
  %.2.i.i = phi ptr [ %i.am, %copy_address_wmem.exit.i.i ], [ %i.s, %bb.h ], [ %i.ai, %bb.l ] ; 5 uses
  %i.bf = getelementptr i8, ptr %1, i64 208
  %i.bg = getelementptr i8, ptr %.2.i.i, i64 8
  %i.bh = load i32, ptr %i.bf, align 8
  %i.bi = load i32, ptr %i.bg, align 8
  %i.bj = icmp eq i32 %i.bh, %i.bi
  br i1 %i.bj, label %bb.o, label %addresses_equal.exit.i.i

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr i8, ptr %1, i64 212
  %i.bl = load i32, ptr %i.bk, align 4            ; 3 uses
  %i.bm = getelementptr i8, ptr %.2.i.i, i64 12
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = icmp eq i32 %i.bl, %i.bn
  br i1 %i.bo, label %bb.p, label %addresses_equal.exit.i.i

bb.p:                                             ; preds = %bb.o
  %i.bp = icmp eq i32 %i.bl, 0
  br i1 %i.bp, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bq = getelementptr i8, ptr %1, i64 216
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = getelementptr i8, ptr %.2.i.i, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = sext i32 %i.bl to i64
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.br, ptr %i.bt, i64 %i.bu)
  %i.bv = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bv, label %bb.r, label %addresses_equal.exit.i.i

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bw = getelementptr i8, ptr %1, i64 288
  %i.bx = load i32, ptr %i.bw, align 8
  %i.by = getelementptr i8, ptr %.2.i.i, i64 32
  %i.bz = load i32, ptr %i.by, align 8
  %i.ca = icmp eq i32 %i.bx, %i.bz
  br i1 %i.ca, label %find_or_create_call_info_conv.exit.i, label %addresses_equal.exit.i.i

addresses_equal.exit.i.i:                         ; preds = %bb.r, %bb.q, %bb.o, %bb.n
  br label %find_or_create_call_info_conv.exit.i

find_or_create_call_info_conv.exit.i:             ; preds = %addresses_equal.exit.i.i, %bb.r
  %.sink.i.i = phi i32 [ 1, %addresses_equal.exit.i.i ], [ 0, %bb.r ]
  %i.cb = getelementptr i8, ptr %1, i64 356
  store i32 %.sink.i.i, ptr %i.cb, align 4
  br label %find_or_create_call_info.exit

find_or_create_call_info.exit:                    ; preds = %find_or_create_call_info_circ.exit.i, %find_or_create_call_info_conv.exit.i
  %.0.i = phi ptr [ %.2.i.i, %find_or_create_call_info_conv.exit.i ], [ %.014.i.i, %find_or_create_call_info_circ.exit.i ]
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %find_or_create_call_info.exit
  %i.cc = load i32, ptr @proto_h223, align 4
  %i.cd = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.cc, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 2 uses
  %i.ce = load i32, ptr @ett_h223, align 4
  %i.cf = tail call ptr @proto_item_add_subtree(ptr noundef %i.cd, i32 noundef %i.ce)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %find_or_create_call_info.exit
  %.031 = phi ptr [ %i.cf, %bb.s ], [ null, %find_or_create_call_info.exit ]
  %.030 = phi ptr [ %i.cd, %bb.s ], [ null, %find_or_create_call_info.exit ] ; 2 uses
  %i.cg = tail call i32 @tvb_reported_length(ptr noundef %0)
  %.not38 = icmp eq i32 %i.cg, 0
  br i1 %.not38, label %.thread, label %.lr.ph

bb.u:                                             ; preds = %.lr.ph
  %i.ch = add i32 %i.ck, %.02937                  ; 2 uses
  %i.ci = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.cj = icmp ult i32 %i.ch, %i.ci
  br i1 %i.cj, label %.lr.ph, label %.thread, !llvm.loop !8

.lr.ph:                                           ; preds = %bb.t, %bb.u
  %.02937 = phi i32 [ %i.ch, %bb.u ], [ 0, %bb.t ] ; 5 uses
  %i.ck = tail call fastcc i32 @dissect_mux_pdu_fragment(ptr noundef %0, i32 noundef %.02937, ptr noundef %1, ptr noundef %.031, ptr noundef %.0.i, i32 noundef %3, i32 noundef %4) ; 2 uses
  %i.cl = icmp sgt i32 %i.ck, 0
  br i1 %i.cl, label %bb.u, label %bb.v

bb.v:                                             ; preds = %.lr.ph
  %i.cm = getelementptr i8, ptr %1, i64 340
  store i32 %.02937, ptr %i.cm, align 4
  %i.cn = getelementptr i8, ptr %1, i64 344
  store i32 268435455, ptr %i.cn, align 8
  %.not34 = icmp eq ptr %.030, null
  br i1 %.not34, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @proto_item_set_len(ptr noundef nonnull %.030, i32 noundef %.02937)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.co = icmp eq i32 %.02937, 0
  br i1 %i.co, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.cp = load ptr, ptr %i.a, align 8
  tail call void @col_set_str(ptr noundef %i.cp, i32 noundef 25, ptr noundef @.str.114)
  br label %.thread

.thread:                                          ; preds = %bb.u, %bb.t, %bb.y, %bb.x
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dissect_mux_pdu_fragment(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %7 = alloca i32, align 4                        ; 15 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 13 uses
  %i.d = alloca i32, align 4                      ; 13 uses
  %8 = alloca %struct.except_stacknode, align 8   ; 3 uses
  %9 = alloca %struct.except_catch, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store volatile i32 %1, ptr %7, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 0, ptr %i.b, align 4
  %.0..0..0..0.29105 = load volatile i32, ptr %7, align 4
  %i.e = call i32 @tvb_reported_length(ptr noundef %0)
  %i.f = icmp ult i32 %.0..0..0..0.29105, %i.e
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %h223_mux_check_hdlc.exit.thread
  %.06789108 = phi i1 [ %.16881, %h223_mux_check_hdlc.exit.thread ], [ false, %bb.a ]
  %.06690107 = phi i32 [ %.1, %h223_mux_check_hdlc.exit.thread ], [ 0, %bb.a ] ; 2 uses
  %.06591106 = phi i32 [ %i.o, %h223_mux_check_hdlc.exit.thread ], [ 0, %bb.a ]
  %.0..0..0..0.30 = load volatile i32, ptr %7, align 4 ; 2 uses
  %i.g = add i32 %.0..0..0..0.30, 1
  store volatile i32 %i.g, ptr %7, align 4
  %i.h = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.0..0..0..0.30)
  %.0..0..0..0.31 = load volatile i32, ptr %7, align 4
  %i.i = sub i32 %.0..0..0..0.31, %1
  %i.j = icmp ult i32 %i.i, 5
  %i.k = shl i32 %.06690107, 8
  %i.l = zext i8 %i.h to i32                      ; 2 uses
  %i.m = or disjoint i32 %i.k, %i.l
  %.1 = select i1 %i.j, i32 %i.m, i32 %.06690107  ; 2 uses
  %i.n = shl i32 %.06591106, 8
  %i.o = or disjoint i32 %i.n, %i.l               ; 3 uses
  br i1 %.06789108, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %10 = load i32, ptr %4, align 8
  %11 = sext i32 %10 to i64
  %12 = getelementptr [8 x i8], ptr @attempt_mux_header_parse, i64 %11
  %13 = load ptr, ptr %12, align 8
  %.0..0..0..0.32 = load volatile i32, ptr %7, align 4
  %14 = sub i32 %.0..0..0..0.32, %1
  %15 = call zeroext i1 %13(i32 noundef %14, i32 noundef %.1, ptr noundef nonnull %i.b)
  br i1 %15, label %.thread, label %h223_mux_check_hdlc.exit.thread

.thread:                                          ; preds = %.lr.ph, %bb.b
  %.0..0..0..0.33 = load volatile i32, ptr %7, align 4
  %16 = sub i32 %.0..0..0..0.33, %1
  %17 = load i32, ptr %i.b, align 4
  %.not77 = icmp ult i32 %16, %17
  br i1 %.not77, label %h223_mux_check_hdlc.exit.thread, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.p = load i32, ptr %4, align 8
  %.0..0..0..0.34 = load volatile i32, ptr %7, align 4
  %i.q = sub i32 %.0..0..0..0.34, %1              ; 2 uses
  switch i32 %i.p, label %bb.f [
    i32 0, label %bb.d
    i32 1, label %.split
    i32 2, label %bb.e
    i32 3, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.117, ptr noundef @.str.113, i32 noundef 1157) #14
  unreachable

.split:                                           ; preds = %bb.c
  %i.r = and i32 %i.o, 65535
  %i.s = icmp ugt i32 %i.q, 1
  %i.t = icmp eq i32 %i.r, 57677
  %i.u = and i1 %i.t, %i.s
  %cond.fr85 = freeze i1 %i.u
  br i1 %cond.fr85, label %.critedge78.critedge, label %h223_mux_check_hdlc.exit.thread

bb.e:                                             ; preds = %bb.c, %bb.c
  %i.v = icmp ugt i32 %i.q, 1
  br i1 %i.v, label %h223_mux_check_hdlc.exit, label %h223_mux_check_hdlc.exit.thread

bb.f:                                             ; preds = %bb.c
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.117, ptr noundef @.str.113, i32 noundef 1169) #14
  unreachable

h223_mux_check_hdlc.exit:                         ; preds = %bb.e
  %i.w = and i32 %i.o, 65535                      ; 2 uses
  %i.x = icmp eq i32 %i.w, 57677
  %i.y = icmp eq i32 %i.w, 7858
  %i.z = or i1 %i.x, %i.y
  %cond.fr = freeze i1 %i.z
  br i1 %cond.fr, label %.critedge78.critedge, label %h223_mux_check_hdlc.exit.thread

.critedge78.critedge:                             ; preds = %.split, %h223_mux_check_hdlc.exit
  %.0..0..0..0.37 = load volatile i32, ptr %7, align 4
  %i.aa = sub i32 %.0..0..0..0.37, %1
  %i.ab = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %1, i32 noundef %i.aa)
  store volatile ptr %i.ab, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store volatile i32 0, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @except_setup_try(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef @dissect_mux_pdu_fragment.catch_spec, i64 noundef 1)
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.ad = call i32 @_setjmp(ptr noundef nonnull %i.ac) #18
  %.not = icmp eq i32 %i.ad, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sink = select i1 %.not, ptr null, ptr %i.ae
  store volatile ptr %.sink, ptr %i.c, align 8
  %.0..0..0..0. = load volatile i32, ptr %i.d, align 4
  %i.af = and i32 %.0..0..0..0., 1
  %.not71 = icmp eq i32 %i.af, 0
  br i1 %.not71, label %bb.i, label %bb.h

h223_mux_check_hdlc.exit.thread:                  ; preds = %bb.e, %h223_mux_check_hdlc.exit, %.split, %.thread, %bb.b
  %.16881 = phi i1 [ false, %bb.b ], [ true, %.thread ], [ true, %bb.e ], [ true, %h223_mux_check_hdlc.exit ], [ true, %.split ]
  %.0..0..0..0.29 = load volatile i32, ptr %7, align 4
  %i.ag = call i32 @tvb_reported_length(ptr noundef %0)
  %i.ah = icmp ult i32 %.0..0..0..0.29, %i.ag
  br i1 %i.ah, label %.lr.ph, label %.critedge, !llvm.loop !9

.critedge:                                        ; preds = %h223_mux_check_hdlc.exit.thread, %bb.a
  %18 = load i32, ptr %i.b, align 4               ; 2 uses
  %.0..0..0..0.35 = load volatile i32, ptr %7, align 4
  %i.ai = sub i32 %.0..0..0..0.35, %1
  %.not75 = icmp ugt i32 %18, %i.ai
  br i1 %.not75, label %bb.g, label %bb.bb

bb.g:                                             ; preds = %.critedge
  %.0..0..0..0.36 = load volatile i32, ptr %7, align 4
  %i.aj = add i32 %18, %1
  %.neg76 = sub i32 %.0..0..0..0.36, %i.aj
  br label %bb.bb

bb.h:                                             ; preds = %.critedge78.critedge
  %.0..0..0..0.1 = load volatile i32, ptr %i.d, align 4
  %i.ak = or i32 %.0..0..0..0.1, 2
  store volatile i32 %i.ak, ptr %i.d, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.critedge78.critedge
  %.0..0..0..0.2 = load volatile i32, ptr %i.d, align 4
  %i.al = and i32 %.0..0..0..0.2, -2
  store volatile i32 %i.al, ptr %i.d, align 4
  %.0..0..0..0.3 = load volatile i32, ptr %i.d, align 4
  %i.am = icmp eq i32 %.0..0..0..0.3, 0
  br i1 %i.am, label %bb.j, label %dissect_mux_pdu.exit

bb.j:                                             ; preds = %bb.i
  %.0..0..0..0.7 = load volatile ptr, ptr %i.c, align 8
  %i.an = icmp eq ptr %.0..0..0..0.7, null
  br i1 %i.an, label %bb.k, label %dissect_mux_pdu.exit

bb.k:                                             ; preds = %bb.j
  %.0..0..0..0.39 = load volatile ptr, ptr %i.a, align 8 ; 19 uses
  %i.ao = load i32, ptr %4, align 8
  switch i32 %i.ao, label %bb.q [
    i32 0, label %bb.l
    i32 1, label %bb.l
    i32 2, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  %i.ap = call zeroext i8 @tvb_get_uint8(ptr noundef %.0..0..0..0.39, i32 noundef 0) ; 3 uses
  %i.aq = zext i8 %i.ap to i32
  %i.ar = lshr i8 %i.ap, 1
  %i.as = and i8 %i.ar, 15
  %i.at = call i32 @tvb_reported_length_remaining(ptr noundef %.0..0..0..0.39, i32 noundef 1)
  %i.au = load i32, ptr %4, align 8
  %.neg.i = xor i32 %i.au, -1
  %i.av = add i32 %i.at, %.neg.i                  ; 2 uses
  %i.aw = and i32 %i.av, 255
  %i.ax = trunc i8 %i.ap to i1
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.ay = call i32 @tvb_get_letoh24(ptr noundef %.0..0..0..0.39, i32 noundef 0) ; 4 uses
  %i.az = call i32 @golay_errors(i32 noundef %i.ay) ; 3 uses
  %i.ba = call i32 @tvb_reported_length_remaining(ptr noundef %.0..0..0..0.39, i32 noundef 3) ; 2 uses
  %i.bb = add i32 %i.ba, -2                       ; 4 uses
  %.not.i = icmp eq i32 %i.az, -1
  br i1 %.not.i, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = xor i32 %i.az, %i.ay                    ; 3 uses
  %i.bd = lshr i32 %i.bc, 4                       ; 2 uses
  %i.be = and i32 %i.bd, 255
  %.not121.i = icmp ult i32 %i.bb, %i.be
  br i1 %.not121.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.112, ptr noundef @.str.113, i32 noundef 986, ptr noundef @.str.118) #14
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bf = trunc i32 %i.bc to i8
  %i.bg = and i8 %i.bf, 15
  %i.bh = add i32 %i.ba, 1
  %i.bi = call zeroext i16 @tvb_get_ntohs(ptr noundef %.0..0..0..0.39, i32 noundef %i.bh)
  %i.bj = icmp eq i16 %i.bi, 7858
  br label %bb.r

bb.q:                                             ; preds = %bb.k
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.117, ptr noundef @.str.113, i32 noundef 999) #14
  unreachable

bb.r:                                             ; preds = %bb.p, %bb.m, %bb.l
  %.0114.i = phi i32 [ %i.aw, %bb.l ], [ %i.bb, %bb.p ], [ %i.bb, %bb.m ] ; 5 uses
  %.0113.i = phi i32 [ %i.aq, %bb.l ], [ %i.ay, %bb.p ], [ %i.ay, %bb.m ] ; 6 uses
  %.0112.i = phi i32 [ 0, %bb.l ], [ %i.bc, %bb.p ], [ 0, %bb.m ]
  %.0111.i = phi i32 [ 0, %bb.l ], [ %i.az, %bb.p ], [ -1, %bb.m ] ; 3 uses
  %.0110.i = phi i8 [ %i.as, %bb.l ], [ %i.bg, %bb.p ], [ 0, %bb.m ] ; 3 uses
  %.0109.in.i = phi i32 [ %i.av, %bb.l ], [ %i.bd, %bb.p ], [ %i.bb, %bb.m ]
  %.0108.i = phi i1 [ %i.ax, %bb.l ], [ %i.bj, %bb.p ], [ false, %bb.m ]
  %.0.i79 = phi i32 [ 1, %bb.l ], [ 3, %bb.p ], [ 3, %bb.m ] ; 9 uses
  %.not122.i = icmp eq ptr %3, null
  %.pre.i = and i32 %.0109.in.i, 255              ; 7 uses
  br i1 %.not122.i, label %.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bk = icmp eq i32 %.pre.i, 0                  ; 3 uses
  %hf_h223_mux_stuffing_pdu.val.i = load i32, ptr @hf_h223_mux_stuffing_pdu, align 4
  %hf_h223_mux_pdu.val.i = load i32, ptr @hf_h223_mux_pdu, align 4
  %i.bl = select i1 %i.bk, i32 %hf_h223_mux_stuffing_pdu.val.i, i32 %hf_h223_mux_pdu.val.i
  %i.bm = call ptr @proto_tree_add_item(ptr noundef nonnull %3, i32 noundef %i.bl, ptr noundef %.0..0..0..0.39, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %ett_h223_mux_stuffing_pdu.val.i = load i32, ptr @ett_h223_mux_stuffing_pdu, align 4
  %ett_h223_mux_pdu.val.i = load i32, ptr @ett_h223_mux_pdu, align 4
  %i.bn = select i1 %i.bk, i32 %ett_h223_mux_stuffing_pdu.val.i, i32 %ett_h223_mux_pdu.val.i
  %i.bo = call ptr @proto_item_add_subtree(ptr noundef %i.bm, i32 noundef %i.bn) ; 7 uses
  %.not123.i = icmp eq ptr %i.bo, null
  br i1 %.not123.i, label %.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bp = load i32, ptr @hf_h223_mux_header, align 4
  %i.bq = call ptr @proto_tree_add_item(ptr noundef nonnull %i.bo, i32 noundef %i.bp, ptr noundef %.0..0..0..0.39, i32 noundef 0, i32 noundef %.0.i79, i32 noundef 0)
  %i.br = load i32, ptr @ett_h223_mux_header, align 4
  %i.bs = call ptr @proto_item_add_subtree(ptr noundef %i.bq, i32 noundef %i.br) ; 7 uses
  %i.bt = load i32, ptr %4, align 8
  switch i32 %i.bt, label %bb.ab [
    i32 0, label %bb.u
    i32 1, label %bb.u
    i32 2, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t, %bb.t
  %i.bu = load i32, ptr @hf_h223_mux_mc, align 4
  %i.bv = zext nneg i8 %.0110.i to i32
  %i.bw = call ptr @proto_tree_add_uint(ptr noundef %i.bs, i32 noundef %i.bu, ptr noundef %.0..0..0..0.39, i32 noundef 0, i32 noundef 1, i32 noundef %i.bv) ; 0 uses
  br label %.thread.i

bb.v:                                             ; preds = %bb.t
  %i.bx = load i32, ptr @hf_h223_mux_rawhdr, align 4 ; 3 uses
  switch i32 %.0111.i, label %bb.x [
    i32 -1, label %.thread.thread.i
    i32 0, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  %i.by = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.bs, i32 noundef %i.bx, ptr noundef %.0..0..0..0.39, i32 noundef 0, i32 noundef 3, i32 noundef %.0113.i, ptr noundef @.str.120, i32 noundef %.0113.i) ; 0 uses
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.bz = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.bs, i32 noundef %i.bx, ptr noundef %.0..0..0..0.39, i32 noundef 0, i32 noundef 3, i32 noundef %.0113.i, ptr noundef @.str.121, i32 noundef %.0113.i, i32 noundef %.0111.i) ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ca = load i32, ptr @hf_h223_mux_correctedhdr, align 4
  %i.cb = call ptr @proto_tree_add_uint(ptr noundef %i.bs, i32 noundef %i.ca, ptr noundef %.0..0..0..0.39, i32 noundef 0, i32 noundef 3, i32 noundef %.0112.i) ; 2 uses
  %.not.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i, label %proto_item_set_generated.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cc = getelementptr i8, ptr %i.cb, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8            ; 2 uses
  %.not5.i.i = icmp eq ptr %i.cd, null
  br i1 %.not5.i.i, label %proto_item_set_generated.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ce = getelementptr i8, ptr %i.cd, i64 28     ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4
  %i.cg = or i32 %i.cf, 2
  store i32 %i.cg, ptr %i.ce, align 4
  br label %proto_item_set_generated.exit.i

proto_item_set_generated.exit.i:                  ; preds = %bb.aa, %bb.z, %bb.y
  %i.ch = load i32, ptr @hf_h223_mux_mc, align 4
  %i.ci = zext nneg i8 %.0110.i to i32
  %i.cj = call ptr @proto_tree_add_uint(ptr noundef %i.bs, i32 noundef %i.ch, ptr noundef %.0..0..0..0.39, i32 noundef 0, i32 noundef 1, i32 noundef %i.ci) ; 0 uses
  %i.ck = load i32, ptr @hf_h223_mux_mpl, align 4
  %i.cl = call ptr @proto_tree_add_uint(ptr noundef %i.bs, i32 noundef %i.ck, ptr noundef %.0..0..0..0.39, i32 noundef 0, i32 noundef 2, i32 noundef %.pre.i) ; 0 uses
  br label %.thread.i

bb.ab:                                            ; preds = %bb.t
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.117, ptr noundef @.str.113, i32 noundef 1049) #14
  unreachable

.thread.i:                                        ; preds = %proto_item_set_generated.exit.i, %bb.u, %bb.s, %bb.r
  %.not123133.i = phi i1 [ true, %bb.s ], [ false, %bb.u ], [ false, %proto_item_set_generated.exit.i ], [ true, %bb.r ] ; 5 uses
  %.0107130.i = phi ptr [ null, %bb.s ], [ %i.bo, %bb.u ], [ %i.bo, %proto_item_set_generated.exit.i ], [ null, %bb.r ] ; 6 uses
  %.not124.i = icmp eq i32 %.pre.i, 0
  br i1 %.not124.i, label %bb.ao, label %bb.ac

.thread.thread.i:                                 ; preds = %bb.v
  %i.cm = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.bs, i32 noundef %i.bx, ptr noundef %.0..0..0..0.39, i32 noundef 0, i32 noundef 3, i32 noundef %.0113.i, ptr noundef @.str.119, i32 noundef %.0113.i) ; 0 uses
  br i1 %i.bk, label %.thread166.i, label %.thread156.i

.thread156.i:                                     ; preds = %.thread.thread.i
  %i.cn = call ptr @tvb_new_subset_length(ptr noundef %.0..0..0..0.39, i32 noundef %.0.i79, i32 noundef %.pre.i)
  br label %bb.an

bb.ac:                                            ; preds = %.thread.i
  %i.co = call ptr @tvb_new_subset_length(ptr noundef %.0..0..0..0.39, i32 noundef %.0.i79, i32 noundef %.pre.i) ; 5 uses
  %.not125.i = icmp eq i32 %.0111.i, -1
  br i1 %.not125.i, label %bb.an, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cp = add i32 %.0.i79, %1                     ; 2 uses
  %i.cq = call i32 @tvb_reported_length(ptr noundef %i.co)
  %i.cr = getelementptr i8, ptr %4, i64 40
  %i.cs = getelementptr i8, ptr %2, i64 356
  %i.ct = load i32, ptr %i.cs, align 4
  %.not.i127.i = icmp eq i32 %i.ct, 0
  %i.cu = zext i1 %.not.i127.i to i64
  %i.cv = getelementptr [128 x i8], ptr %i.cr, i64 %i.cu
  %i.cw = getelementptr i8, ptr %2, i64 20
  %i.cx = load i32, ptr %i.cw, align 4            ; 2 uses
  %i.cy = zext nneg i8 %.0110.i to i64
  %i.cz = getelementptr [8 x i8], ptr %i.cv, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ag, %bb.ad
  %.0.i.i.i = phi ptr [ %i.da, %bb.ad ], [ %i.dc, %bb.ag ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not.i.i.i, label %.critedge.i.i.i.preheader, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.db = getelementptr i8, ptr %.0.i.i.i, i64 16
  %i.dc = load ptr, ptr %i.db, align 8            ; 3 uses
  %.not22.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not22.i.i.i, label %.critedge.i.i.i.preheader, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dd = getelementptr i8, ptr %i.dc, i64 8
  %i.de = load i32, ptr %i.dd, align 8
  %i.df = icmp ult i32 %i.de, %i.cx
  br i1 %i.df, label %bb.ae, label %.critedge.i.i.i.preheader, !llvm.loop !10

.critedge.i.i.i.preheader:                        ; preds = %bb.ag, %bb.af, %bb.ae
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.critedge.i.i.i.preheader, %bb.aj
  %.1.i.i.i = phi ptr [ %i.dh, %bb.aj ], [ %.0.i.i.i, %.critedge.i.i.i.preheader ] ; 3 uses
  %.not23.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not23.i.i.i, label %find_h223_mux_element.exit.thread.i.i, label %bb.ah

bb.ah:                                            ; preds = %.critedge.i.i.i
  %i.dg = getelementptr i8, ptr %.1.i.i.i, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8            ; 4 uses
  %.not24.i.i.i = icmp eq ptr %i.dh, null
  br i1 %.not24.i.i.i, label %find_h223_mux_element.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.di = getelementptr i8, ptr %i.dh, i64 8
  %i.dj = load i32, ptr %i.di, align 8
  %i.dk = icmp eq i32 %i.dj, %i.cx
  br i1 %i.dk, label %bb.aj, label %find_h223_mux_element.exit.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.dl = getelementptr i8, ptr %i.dh, i64 12
  %i.dm = load i32, ptr %i.dl, align 4
  %i.dn = icmp ult i32 %i.dm, %i.cp
  br i1 %i.dn, label %.critedge.i.i.i, label %find_h223_mux_element.exit.i.i, !llvm.loop !11

find_h223_mux_element.exit.i.i:                   ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.do = load ptr, ptr %.1.i.i.i, align 8        ; 2 uses
  %.not25.i.i = icmp eq ptr %i.do, null
  br i1 %.not25.i.i, label %find_h223_mux_element.exit.thread.i.i, label %bb.ak

bb.ak:                                            ; preds = %find_h223_mux_element.exit.i.i
  %i.dp = call fastcc i32 @dissect_mux_payload_by_me_list(ptr noundef %i.co, ptr noundef %2, i32 noundef %i.cp, ptr noundef %.0107130.i, ptr noundef %4, ptr noundef nonnull %i.do, i32 noundef 0, i1 noundef zeroext %.0108.i, i32 noundef %5, i32 noundef %6) ; 0 uses
  br label %dissect_mux_payload.exit.i

find_h223_mux_element.exit.thread.i.i:            ; preds = %.critedge.i.i.i, %find_h223_mux_element.exit.i.i
  br i1 %.not123133.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %find_h223_mux_element.exit.thread.i.i
  %i.dq = load i32, ptr @hf_h223_mux_deact, align 4
  %i.dr = call ptr @proto_tree_add_item(ptr noundef nonnull %.0107130.i, i32 noundef %i.dq, ptr noundef %i.co, i32 noundef 0, i32 noundef %i.cq, i32 noundef 0)
  %i.ds = load i32, ptr @ett_h223_mux_deact, align 4
  %i.dt = call ptr @proto_item_add_subtree(ptr noundef %i.dr, i32 noundef %i.ds)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %find_h223_mux_element.exit.thread.i.i
  %.0.i.i = phi ptr [ %i.dt, %bb.al ], [ null, %find_h223_mux_element.exit.thread.i.i ]
  %i.du = load ptr, ptr @data_handle, align 8
  %i.dv = call i32 @call_dissector(ptr noundef %i.du, ptr noundef %i.co, ptr noundef %2, ptr noundef %.0.i.i) ; 0 uses
  br label %dissect_mux_payload.exit.i

bb.an:                                            ; preds = %bb.ac, %.thread156.i
  %i.dw = phi ptr [ %i.cn, %.thread156.i ], [ %i.co, %bb.ac ]
  %.not123133150163.i = phi i1 [ false, %.thread156.i ], [ %.not123133.i, %bb.ac ]
  %.0107130152161.i = phi ptr [ %i.bo, %.thread156.i ], [ %.0107130.i, %bb.ac ] ; 2 uses
  %i.dx = load ptr, ptr @data_handle, align 8
  %i.dy = call i32 @call_dissector(ptr noundef %i.dx, ptr noundef %i.dw, ptr noundef %2, ptr noundef %.0107130152161.i) ; 0 uses
  br label %dissect_mux_payload.exit.i

dissect_mux_payload.exit.i:                       ; preds = %bb.an, %bb.am, %bb.ak
  %.not123133150162.i = phi i1 [ %.not123133.i, %bb.am ], [ %.not123133.i, %bb.ak ], [ %.not123133150163.i, %bb.an ]
  %.0107130154.i = phi ptr [ %.0107130.i, %bb.am ], [ %.0107130.i, %bb.ak ], [ %.0107130152161.i, %bb.an ]
  %i.dz = add nuw nsw i32 %.0.i79, %.pre.i
  br label %bb.ao

bb.ao:                                            ; preds = %dissect_mux_payload.exit.i, %.thread.i
  %.0107130153.i = phi ptr [ %.0107130154.i, %dissect_mux_payload.exit.i ], [ %.0107130.i, %.thread.i ] ; 2 uses
  %.not123133151.i = phi i1 [ %.not123133150162.i, %dissect_mux_payload.exit.i ], [ %.not123133.i, %.thread.i ] ; 2 uses
  %.pre-phi149.i = phi i32 [ %.pre.i, %dissect_mux_payload.exit.i ], [ 0, %.thread.i ] ; 2 uses
  %.1.i = phi i32 [ %i.dz, %dissect_mux_payload.exit.i ], [ %.0.i79, %.thread.i ] ; 3 uses
  %.not126.i = icmp eq i32 %.0114.i, %.pre-phi149.i
  br i1 %.not126.i, label %bb.aq, label %bb.ap

.thread166.i:                                     ; preds = %.thread.thread.i
  %.not126171.i = icmp eq i32 %.0114.i, 0
  br i1 %.not126171.i, label %.thread186.i, label %.thread176.i

.thread176.i:                                     ; preds = %.thread166.i
  %i.ea = call ptr @tvb_new_subset_length(ptr noundef %.0..0..0..0.39, i32 noundef %.0.i79, i32 noundef %.0114.i)
  br label %.split.i

bb.ap:                                            ; preds = %bb.ao
  %i.eb = sub i32 %.0114.i, %.pre-phi149.i        ; 2 uses
  %i.ec = call ptr @tvb_new_subset_length(ptr noundef %.0..0..0..0.39, i32 noundef %.1.i, i32 noundef %i.eb) ; 2 uses
  br i1 %.not123133151.i, label %.split.thread.i, label %.split.i

.split.thread.i:                                  ; preds = %bb.ap
  %i.ed = load ptr, ptr @data_handle, align 8
  %i.ee = call i32 @call_dissector(ptr noundef %i.ed, ptr noundef %i.ec, ptr noundef %2, ptr noundef null) ; 0 uses
  br label %dissect_mux_pdu.exit

.split.i:                                         ; preds = %bb.ap, %.thread176.i
  %i.ef = phi ptr [ %i.ea, %.thread176.i ], [ %i.ec, %bb.ap ] ; 2 uses
  %.0107130153172184.i = phi ptr [ %i.bo, %.thread176.i ], [ %.0107130153.i, %bb.ap ] ; 2 uses
  %.1175180.i = phi i32 [ %.0.i79, %.thread176.i ], [ %.1.i, %bb.ap ]
  %i.eg = phi i32 [ %.0114.i, %.thread176.i ], [ %i.eb, %bb.ap ] ; 2 uses
  %i.eh = load i32, ptr @hf_h223_mux_extra, align 4
  %i.ei = call ptr @proto_tree_add_item(ptr noundef nonnull %.0107130153172184.i, i32 noundef %i.eh, ptr noundef %i.ef, i32 noundef 0, i32 noundef %i.eg, i32 noundef 0)
  %i.ej = load i32, ptr @ett_h223_mux_deact, align 4
  %i.ek = call ptr @proto_item_add_subtree(ptr noundef %i.ei, i32 noundef %i.ej)
  %i.el = load ptr, ptr @data_handle, align 8
  %i.em = call i32 @call_dissector(ptr noundef %i.el, ptr noundef %i.ef, ptr noundef %2, ptr noundef %i.ek) ; 0 uses
  %i.en = add i32 %i.eg, %.1175180.i
  br label %.thread186.i

bb.aq:                                            ; preds = %bb.ao
  br i1 %.not123133151.i, label %dissect_mux_pdu.exit, label %.thread186.i

.thread186.i:                                     ; preds = %bb.aq, %.split.i, %.thread166.i
  %.2191.i = phi i32 [ %i.en, %.split.i ], [ %.1.i, %bb.aq ], [ %.0.i79, %.thread166.i ]
  %.0107130155190.i = phi ptr [ %.0107130153172184.i, %.split.i ], [ %.0107130153.i, %bb.aq ], [ %i.bo, %.thread166.i ]
  %i.eo = load i32, ptr @hf_h223_mux_hdlc2, align 4
  %i.ep = call ptr @proto_tree_add_item(ptr noundef nonnull %.0107130155190.i, i32 noundef %i.eo, ptr noundef %.0..0..0..0.39, i32 noundef %.2191.i, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %dissect_mux_pdu.exit

dissect_mux_pdu.exit:                             ; preds = %.thread186.i, %bb.aq, %.split.thread.i, %bb.j, %bb.i
  %.0..0..0..0.4 = load volatile i32, ptr %i.d, align 4
  %i.eq = icmp eq i32 %.0..0..0..0.4, 0
  br i1 %i.eq, label %bb.ar, label %bb.ax

bb.ar:                                            ; preds = %dissect_mux_pdu.exit
  %.0..0..0..0.8 = load volatile ptr, ptr %i.c, align 8
  %.not72 = icmp eq ptr %.0..0..0..0.8, null
  br i1 %.not72, label %bb.ax, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.0..0..0..0.9 = load volatile ptr, ptr %i.c, align 8
  %i.er = getelementptr i8, ptr %.0..0..0..0.9, i64 8
  %i.es = load volatile i64, ptr %i.er, align 8
  %i.et = icmp eq i64 %i.es, 3
  br i1 %i.et, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.0..0..0..0.10 = load volatile ptr, ptr %i.c, align 8
  %i.eu = getelementptr i8, ptr %.0..0..0..0.10, i64 8
  %i.ev = load volatile i64, ptr %i.eu, align 8
  %i.ew = icmp eq i64 %i.ev, 2
  br i1 %i.ew, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.0..0..0..0.11 = load volatile ptr, ptr %i.c, align 8
  %i.ex = getelementptr i8, ptr %.0..0..0..0.11, i64 8
  %i.ey = load volatile i64, ptr %i.ex, align 8
  %i.ez = icmp eq i64 %i.ey, 7
  br i1 %i.ez, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.0..0..0..0.12 = load volatile ptr, ptr %i.c, align 8
  %i.fa = getelementptr i8, ptr %.0..0..0..0.12, i64 8
  %i.fb = load volatile i64, ptr %i.fa, align 8
  %i.fc = icmp eq i64 %i.fb, 9
  br i1 %i.fc, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at, %bb.as
  %.0..0..0..0.5 = load volatile i32, ptr %i.d, align 4
  %i.fd = or i32 %.0..0..0..0.5, 1
  store volatile i32 %i.fd, ptr %i.d, align 4
  %.0..0..0..0.13 = load volatile ptr, ptr %i.c, align 8
  %i.fe = getelementptr i8, ptr %.0..0..0..0.13, i64 8
  %i.ff = load volatile i64, ptr %i.fe, align 8
  %.0..0..0..0.14 = load volatile ptr, ptr %i.c, align 8
  %i.fg = getelementptr i8, ptr %.0..0..0..0.14, i64 16
  %i.fh = load volatile ptr, ptr %i.fg, align 8
  call void @show_exception(ptr noundef %0, ptr noundef %2, ptr noundef %3, i64 noundef %i.ff, ptr noundef %i.fh)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.ar, %dissect_mux_pdu.exit
  %.0..0..0..0.6 = load volatile i32, ptr %i.d, align 4
  %i.fi = and i32 %.0..0..0..0.6, 1
  %.not73 = icmp eq i32 %i.fi, 0
  br i1 %.not73, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %.0..0..0..0.15 = load volatile ptr, ptr %i.c, align 8
  %.not74 = icmp eq ptr %.0..0..0..0.15, null
  br i1 %.not74, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.0..0..0..0.16 = load volatile ptr, ptr %i.c, align 8
  call void @except_rethrow(ptr noundef %.0..0..0..0.16) #14
  unreachable

bb.ba:                                            ; preds = %bb.ay, %bb.ax
  %i.fj = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.fk = load volatile ptr, ptr %i.fj, align 8
  call void @except_free(ptr noundef %i.fk)
  %i.fl = call ptr @except_pop()                  ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.0..0..0..0.38 = load volatile i32, ptr %7, align 4
  %i.fm = sub i32 %.0..0..0..0.38, %1
  br label %bb.bb

bb.bb:                                            ; preds = %.critedge, %bb.ba, %bb.g
  %.0 = phi i32 [ %i.fm, %bb.ba ], [ %.neg76, %bb.g ], [ 0, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare void @proto_item_set_len(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @find_conversation_by_id(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @conversation_get_proto_data(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef ptr @create_call_info(i32 noundef %0) unnamed_addr #0 {
init_direction_data.exit20:
  %i.a = tail call ptr @wmem_file_scope()
  %i.b = tail call noalias dereferenceable_or_null(296) ptr @wmem_alloc(ptr noundef %i.a, i64 noundef 296) #15 ; 6 uses
  %i.c = getelementptr i8, ptr %i.b, i64 40       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(128) %i.c, i8 0, i64 128, i1 false)
  %i.d = tail call ptr @wmem_file_scope()
  %i.e = tail call noalias dereferenceable_or_null(24) ptr @wmem_alloc(ptr noundef %i.d, i64 noundef 24) #15 ; 5 uses
  %i.f = tail call ptr @wmem_file_scope()
  %i.g = tail call noalias dereferenceable_or_null(24) ptr @wmem_alloc(ptr noundef %i.f, i64 noundef 24) #15 ; 5 uses
  store ptr %i.g, ptr %i.c, align 8
  %.pre.i = load i32, ptr @pdu_offset, align 4
  %i.h = getelementptr i8, ptr %i.g, i64 8
  store i32 0, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %i.g, i64 12
  store i32 %.pre.i, ptr %i.i, align 4
  %i.j = getelementptr i8, ptr %i.g, i64 16
  store ptr null, ptr %i.j, align 8
  store ptr %i.e, ptr %i.g, align 8
  store ptr null, ptr %i.e, align 8
  %i.k = getelementptr i8, ptr %i.e, i64 8
  store i16 0, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %i.e, i64 10
  store i16 0, ptr %i.l, align 2
  %i.m = getelementptr i8, ptr %i.e, i64 16
  store ptr null, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %i.b, i64 168      ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(128) %i.n, i8 0, i64 128, i1 false)
  %i.o = tail call ptr @wmem_file_scope()
  %i.p = tail call noalias dereferenceable_or_null(24) ptr @wmem_alloc(ptr noundef %i.o, i64 noundef 24) #15 ; 5 uses
  %i.q = tail call ptr @wmem_file_scope()
  %i.r = tail call noalias dereferenceable_or_null(24) ptr @wmem_alloc(ptr noundef %i.q, i64 noundef 24) #15 ; 5 uses
  store ptr %i.r, ptr %i.n, align 8
  %.pre.i19 = load i32, ptr @pdu_offset, align 4
  %i.s = getelementptr i8, ptr %i.r, i64 8
  store i32 0, ptr %i.s, align 8
  %i.t = getelementptr i8, ptr %i.r, i64 12
  store i32 %.pre.i19, ptr %i.t, align 4
  %i.u = getelementptr i8, ptr %i.r, i64 16
  store ptr null, ptr %i.u, align 8
  store ptr %i.p, ptr %i.r, align 8
  store ptr null, ptr %i.p, align 8
  %i.v = getelementptr i8, ptr %i.p, i64 8
  store i16 0, ptr %i.v, align 8
  %i.w = getelementptr i8, ptr %i.p, i64 10
  store i16 0, ptr %i.w, align 2
  %i.x = getelementptr i8, ptr %i.p, i64 16
  store ptr null, ptr %i.x, align 8
  store i32 2, ptr %i.b, align 8
  %i.y = tail call ptr @wmem_file_scope()
  %i.z = tail call noalias dereferenceable_or_null(32) ptr @wmem_alloc(ptr noundef %i.y, i64 noundef 32) #15 ; 6 uses
  store i32 1, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  store ptr null, ptr %i.aa, align 8
  %i.ab = getelementptr i8, ptr %i.z, i64 16
  store i8 1, ptr %i.ab, align 8
  %i.ac = load ptr, ptr @srp_handle, align 8
  %i.ad = getelementptr i8, ptr %i.z, i64 24
  store ptr %i.ac, ptr %i.ad, align 8
  tail call fastcc void @init_logical_channel(i32 noundef %0, ptr noundef %i.b, i32 noundef 0, i32 noundef 0, ptr noundef %i.z)
  tail call fastcc void @init_logical_channel(i32 noundef %0, ptr noundef %i.b, i32 noundef 0, i32 noundef 1, ptr noundef %i.z)
  ret ptr %i.b
}

; Function Attrs: null_pointer_is_valid
declare void @conversation_add_proto_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @init_logical_channel(i32 noundef %0, ptr noundef %1, i32 noundef range(i32 0, 65536) %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.circuit_chain_key, align 8  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store ptr %1, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %2, ptr %i.a, align 8
  %i.b = load ptr, ptr @circuit_chain_hashtable, align 8
  %i.c = call ptr @wmem_map_lookup(ptr noundef %i.b, ptr noundef nonnull %5)
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %circuit_chain_lookup.exit

bb.b:                                             ; preds = %bb.a
  %i.g = call ptr @wmem_file_scope()
  %i.h = call noalias dereferenceable_or_null(16) ptr @wmem_alloc(ptr noundef %i.g, i64 noundef 16) #15 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  %i.i = load i32, ptr @circuit_chain_count, align 4
  %i.j = add i32 %i.i, 1                          ; 3 uses
  store i32 %i.j, ptr @circuit_chain_count, align 4
  %i.k = load ptr, ptr @circuit_chain_hashtable, align 8
  %i.l = zext i32 %i.j to i64
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = call ptr @wmem_map_insert(ptr noundef %i.k, ptr noundef %i.h, ptr noundef %i.m) ; 0 uses
  br label %circuit_chain_lookup.exit

circuit_chain_lookup.exit:                        ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.j, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.o = call ptr @find_conversation_by_id(i32 noundef %0, i32 noundef 20, i32 noundef %.0.i) ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %circuit_chain_lookup.exit
  %i.q = call ptr @conversation_new_by_id(i32 noundef %0, i32 noundef 20, i32 noundef %.0.i)
  %i.r = call ptr @wmem_file_scope()
  %i.s = call noalias noundef dereferenceable_or_null(24) ptr @wmem_alloc(ptr noundef %i.r, i64 noundef 24) #15 ; 4 uses
  %i.t = getelementptr i8, ptr %i.s, i64 16
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store ptr %1, ptr %i.t, align 8
  %i.u = load i32, ptr @proto_h223, align 4
  call void @conversation_add_proto_data(ptr noundef %i.q, i32 noundef %i.u, ptr noundef %i.s)
  br label %bb.e

bb.d:                                             ; preds = %circuit_chain_lookup.exit
  %i.v = load i32, ptr @proto_h223, align 4
  %i.w = call ptr @conversation_get_proto_data(ptr noundef nonnull %i.o, i32 noundef %i.v)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi ptr [ %i.s, %bb.c ], [ %i.w, %bb.d ]  ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %add_h223_lc_params.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = call ptr @wmem_file_scope()
  %i.y = call noalias dereferenceable_or_null(24) ptr @wmem_alloc(ptr noundef %i.x, i64 noundef 24) #15 ; 7 uses
  %.not.i = icmp eq i32 %3, 0
  %i.z = zext i1 %.not.i to i64
  %i.aa = getelementptr [8 x i8], ptr %.0, i64 %i.z ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not30.i = icmp eq ptr %i.ab, null
  br i1 %.not30.i, label %bb.g, label %.preheader.i

bb.g:                                             ; preds = %bb.f
  store ptr %i.y, ptr %i.aa, align 8
  br label %bb.l

.preheader.i:                                     ; preds = %bb.f, %.preheader.i
  %.025.i = phi ptr [ %i.ac, %.preheader.i ], [ %i.aa, %bb.f ]
  %.0.i16 = phi ptr [ %i.ad, %.preheader.i ], [ %i.ab, %bb.f ] ; 3 uses
  %i.ac = getelementptr i8, ptr %.0.i16, i64 16   ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not31.i = icmp eq ptr %i.ad, null
  br i1 %.not31.i, label %bb.h, label %.preheader.i, !llvm.loop !12

bb.h:                                             ; preds = %.preheader.i
  %i.ae = getelementptr i8, ptr %.0.i16, i64 8
  %i.af = load i32, ptr %i.ae, align 8            ; 2 uses
  %i.ag = icmp ult i32 %0, %i.af
  br i1 %i.ag, label %add_h223_lc_params.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = icmp eq i32 %0, %i.af
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr %i.y, ptr %.025.i, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store ptr %i.y, ptr %i.ac, align 8
  %i.ai = add i32 %0, -1
  %i.aj = getelementptr i8, ptr %.0.i16, i64 12
  store i32 %i.ai, ptr %i.aj, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.g
  %i.ak = getelementptr i8, ptr %i.y, i64 8
  store i32 %0, ptr %i.ak, align 8
  %i.al = getelementptr i8, ptr %i.y, i64 12
  store i32 0, ptr %i.al, align 4
  %i.am = getelementptr i8, ptr %i.y, i64 16
  store ptr null, ptr %i.am, align 8
  store ptr %4, ptr %i.y, align 8
  br label %add_h223_lc_params.exit

add_h223_lc_params.exit:                          ; preds = %bb.l, %bb.h, %bb.e
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @conversation_new_by_id(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_map_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_map_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @find_conversation_pinfo(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @find_conversation(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @conversation_pt_to_conversation_type(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare ptr @wmem_memdup(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_length(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @except_setup_try(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid returns_twice
declare i32 @_setjmp(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare void @show_exception(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn null_pointer_is_valid
declare void @except_rethrow(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @except_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @except_pop() local_unnamed_addr #2

; Function Attrs: noreturn null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @attempt_mux_level0_header_parse(i32 %0, i32 %1, ptr nofree readnone captures(none) %2) #9 {
bb.a:
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.117, ptr noundef @.str.113, i32 noundef 1095) #14
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @attempt_mux_level1_header_parse(i32 noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) #10 {
  %4 = icmp ult i32 %0, 2
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = and i32 %1, 65535                          ; 2 uses
  %7 = icmp eq i32 %6, 57677
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = lshr i32 %6, 12
  %10 = add nuw nsw i32 %9, 3
  store i32 %10, ptr %2, align 4
  br label %11

11:                                               ; preds = %5, %3, %8
  %.0 = phi i1 [ true, %8 ], [ false, %3 ], [ false, %5 ]
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @attempt_mux_level2_3_header_parse(i32 noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2) #0 {
  %4 = icmp ugt i32 %0, 2                         ; 2 uses
  br i1 %4, label %5, label %20

5:                                                ; preds = %3
  store i32 5, ptr %2, align 4
  %6 = lshr i32 %1, 16
  %7 = and i32 %6, 255
  %8 = and i32 %1, 65280
  %9 = or disjoint i32 %7, %8                     ; 2 uses
  %10 = shl i32 %1, 16
  %11 = and i32 %10, 16711680
  %12 = or disjoint i32 %9, %11
  %13 = tail call i32 @golay_errors(i32 noundef %12) ; 2 uses
  %.not = icmp eq i32 %13, -1
  br i1 %.not, label %20, label %14

14:                                               ; preds = %5
  %15 = xor i32 %13, %9
  %16 = lshr i32 %15, 4
  %17 = and i32 %16, 255
  %18 = load i32, ptr %2, align 4
  %19 = add i32 %18, %17
  store i32 %19, ptr %2, align 4
  br label %20

20:                                               ; preds = %5, %14, %3
  ret i1 %4
}

; Function Attrs: null_pointer_is_valid
declare i32 @golay_errors(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_letoh24(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_ntohs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @call_dissector(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dissect_mux_payload_by_me_list(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, i32 noundef %6, i1 noundef zeroext %7, i32 noundef %8, i32 noundef %9) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length(ptr noundef %0) ; 4 uses
  tail call void @increment_dissection_depth(ptr noundef %1)
  %.not73 = icmp eq ptr %5, null
  br i1 %.not73, label %._crit_edge, label %.lr.ph76

.lr.ph76:                                         ; preds = %bb.a, %.loopexit
  %.075 = phi ptr [ %i.aa, %.loopexit ], [ %5, %bb.a ] ; 6 uses
  %.06074 = phi i32 [ %.3, %.loopexit ], [ %6, %bb.a ] ; 9 uses
  %i.b = load ptr, ptr %.075, align 8             ; 2 uses
  %.not63 = icmp eq ptr %i.b, null
  %i.c = getelementptr i8, ptr %.075, i64 10      ; 2 uses
  %i.d = load i16, ptr %i.c, align 2              ; 2 uses
  %i.e = icmp eq i16 %i.d, 0                      ; 2 uses
  br i1 %.not63, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph76
  br i1 %i.e, label %bb.c, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.f = tail call fastcc i32 @mux_element_sublist_size(ptr noundef %1, ptr noundef %i.b) ; 2 uses
  %i.g = add i32 %.06074, %i.f
  %.not6569 = icmp ugt i32 %i.g, %i.a
  br i1 %.not6569, label %.loopexit, label %.lr.ph71

.lr.ph71:                                         ; preds = %bb.c, %.lr.ph71
  %.170 = phi i32 [ %i.i, %.lr.ph71 ], [ %.06074, %bb.c ]
  %i.h = load ptr, ptr %.075, align 8
  %i.i = tail call fastcc i32 @dissect_mux_payload_by_me_list(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %i.h, i32 noundef %.170, i1 noundef zeroext %7, i32 noundef %8, i32 noundef %9) ; 3 uses
  %i.j = add i32 %i.i, %i.f
  %.not65 = icmp ugt i32 %i.j, %i.a
  br i1 %.not65, label %.loopexit, label %.lr.ph71, !llvm.loop !13

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.05868 = phi i32 [ %i.m, %.lr.ph ], [ 0, %bb.b ]
  %.267 = phi i32 [ %i.l, %.lr.ph ], [ %.06074, %bb.b ]
  %i.k = load ptr, ptr %.075, align 8
  %i.l = tail call fastcc i32 @dissect_mux_payload_by_me_list(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %i.k, i32 noundef %.267, i1 noundef zeroext %7, i32 noundef %8, i32 noundef %9) ; 2 uses
  %i.m = add nuw nsw i32 %.05868, 1               ; 2 uses
  %i.n = load i16, ptr %i.c, align 2
  %i.o = zext i16 %i.n to i32
  %i.p = icmp samesign ult i32 %i.m, %i.o
  br i1 %i.p, label %.lr.ph, label %.loopexit, !llvm.loop !14

bb.d:                                             ; preds = %.lr.ph76
  %i.q = sub i32 %i.a, %.06074
  %i.r = zext i16 %i.d to i32
  %.059 = select i1 %i.e, i32 %i.q, i32 %i.r      ; 3 uses
  %.not64 = icmp eq i32 %.059, 0
  br i1 %.not64, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = tail call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %.06074, i32 noundef %.059)
  %i.t = add i32 %.06074, %2
  %i.u = getelementptr i8, ptr %.075, i64 8
  %i.v = load i16, ptr %i.u, align 8
  %i.w = add i32 %.059, %.06074                   ; 2 uses
  %i.x = icmp eq i32 %i.w, %i.a
  %i.y = and i1 %7, %i.x
  tail call fastcc void @dissect_mux_sdu_fragment(ptr noundef %i.s, ptr noundef %1, i32 noundef %i.t, ptr noundef %3, ptr noundef %4, i16 noundef zeroext %i.v, i1 noundef zeroext %i.y, i32 noundef %8, i32 noundef %9)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph71, %bb.c, %bb.d, %bb.e
  %.3 = phi i32 [ %.06074, %bb.d ], [ %i.i, %.lr.ph71 ], [ %i.w, %bb.e ], [ %.06074, %bb.c ], [ %i.l, %.lr.ph ] ; 2 uses
  %i.z = getelementptr i8, ptr %.075, i64 16
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %._crit_edge, label %.lr.ph76, !llvm.loop !15

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.060.lcssa = phi i32 [ %6, %bb.a ], [ %.3, %.loopexit ]
  tail call void @decrement_dissection_depth(ptr noundef %1)
  ret i32 %.060.lcssa
}

; Function Attrs: null_pointer_is_valid
declare void @increment_dissection_depth(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 1, 0) i32 @mux_element_sublist_size(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  tail call void @increment_dissection_depth(ptr noundef %0)
  %.not17 = icmp eq ptr %i.b, null
  br i1 %.not17, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  tail call void @decrement_dissection_depth(ptr noundef %0)
  br label %bb.d

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.019 = phi i32 [ %.1, %bb.c ], [ 0, %bb.a ]
  %.01318 = phi ptr [ %i.j, %bb.c ], [ %i.b, %bb.a ] ; 3 uses
  %i.c = load ptr, ptr %.01318, align 8           ; 2 uses
  %.not16 = icmp eq ptr %i.c, null
  %i.d = getelementptr i8, ptr %.01318, i64 10
  %i.e = load i16, ptr %i.d, align 2
  %i.f = zext i16 %i.e to i32                     ; 2 uses
  br i1 %.not16, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = tail call fastcc i32 @mux_element_sublist_size(ptr noundef %0, ptr noundef %i.c)
  %i.h = mul i32 %i.g, %i.f
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.pn = phi i32 [ %i.h, %bb.b ], [ %i.f, %.lr.ph ]
  %.1 = add i32 %.pn, %.019                       ; 3 uses
  %i.i = getelementptr i8, ptr %.01318, i64 16
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !16

._crit_edge:                                      ; preds = %bb.c
  tail call void @decrement_dissection_depth(ptr noundef %0)
  %.not15 = icmp eq i32 %.1, 0
  br i1 %.not15, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.thread, %._crit_edge
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.112, ptr noundef @.str.113, i32 noundef 822, ptr noundef @.str.122) #14
  unreachable

bb.e:                                             ; preds = %._crit_edge
  ret i32 %.1
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_mux_sdu_fragment(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i16 noundef zeroext %5, i1 noundef zeroext %6, i32 noundef %7, i32 noundef %8) unnamed_addr #0 {
bb.a:
  %9 = alloca %struct.circuit_chain_key, align 8  ; 6 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 13 uses
  %10 = alloca %struct.except_stacknode, align 8  ; 3 uses
  %11 = alloca %struct.except_catch, align 8      ; 6 uses
  store volatile ptr %0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store volatile i32 0, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  call void @except_setup_try(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef @dissect_mux_sdu_fragment.catch_spec, i64 noundef 1)
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.e = call i32 @_setjmp(ptr noundef nonnull %i.d) #18
  %.not = icmp eq i32 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.sink = select i1 %.not, ptr null, ptr %i.f
  store volatile ptr %.sink, ptr %i.b, align 8
  %.0..0..0..0.21 = load volatile i32, ptr %i.c, align 4
  %i.g = and i32 %.0..0..0..0.21, 1
  %.not70 = icmp eq i32 %i.g, 0
  br i1 %.not70, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.0..0..0..0.22 = load volatile i32, ptr %i.c, align 4
  %i.h = or i32 %.0..0..0..0.22, 2
  store volatile i32 %i.h, ptr %i.c, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0..0..0..0.23 = load volatile i32, ptr %i.c, align 4
  %i.i = and i32 %.0..0..0..0.23, -2
  store volatile i32 %i.i, ptr %i.c, align 4
  %.0..0..0..0.24 = load volatile i32, ptr %i.c, align 4
  %i.j = icmp eq i32 %.0..0..0..0.24, 0
  br i1 %i.j, label %bb.d, label %dissect_mux_al_pdu.exit

bb.d:                                             ; preds = %bb.c
  %.0..0..0..0.28 = load volatile ptr, ptr %i.b, align 8
  %i.k = icmp eq ptr %.0..0..0..0.28, null
  br i1 %i.k, label %bb.e, label %dissect_mux_al_pdu.exit

bb.e:                                             ; preds = %bb.d
  %i.l = zext i16 %5 to i32                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  store ptr %4, ptr %9, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %i.l, ptr %i.m, align 8
  %i.n = load ptr, ptr @circuit_chain_hashtable, align 8
  %i.o = call ptr @wmem_map_lookup(ptr noundef %i.n, ptr noundef nonnull %9)
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = trunc i64 %i.p to i32                    ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %circuit_chain_lookup.exit

bb.f:                                             ; preds = %bb.e
  %i.s = call ptr @wmem_file_scope()
  %i.t = call noalias dereferenceable_or_null(16) ptr @wmem_alloc(ptr noundef %i.s, i64 noundef 16) #15 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false)
  %i.u = load i32, ptr @circuit_chain_count, align 4
  %i.v = add i32 %i.u, 1                          ; 3 uses
  store i32 %i.v, ptr @circuit_chain_count, align 4
  %i.w = load ptr, ptr @circuit_chain_hashtable, align 8
  %i.x = zext i32 %i.v to i64
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = call ptr @wmem_map_insert(ptr noundef %i.w, ptr noundef %i.t, ptr noundef %i.y) ; 0 uses
  br label %circuit_chain_lookup.exit

circuit_chain_lookup.exit:                        ; preds = %bb.e, %bb.f
  %.0.i = phi i32 [ %i.v, %bb.f ], [ %i.q, %bb.e ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @conversation_set_elements_by_id(ptr noundef %1, i32 noundef 20, i32 noundef %.0.i)
  %i.aa = getelementptr i8, ptr %1, i64 20        ; 5 uses
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = call ptr @find_conversation_by_id(i32 noundef %i.ab, i32 noundef 20, i32 noundef %.0.i) ; 4 uses
  %i.ad = load i32, ptr @hf_h223_mux_vc, align 4
  %.0..0..0..0.57 = load volatile ptr, ptr %i.a, align 8
  %.0..0..0..0.58 = load volatile ptr, ptr %i.a, align 8
  %i.ae = call i32 @tvb_reported_length(ptr noundef %.0..0..0..0.58)
  %i.af = call ptr @proto_tree_add_uint(ptr noundef %3, i32 noundef %i.ad, ptr noundef %.0..0..0..0.57, i32 noundef 0, i32 noundef %i.ae, i32 noundef %i.l)
  %i.ag = load i32, ptr @ett_h223_mux_vc, align 4
  %i.ah = call ptr @proto_item_add_subtree(ptr noundef %i.af, i32 noundef %i.ag) ; 6 uses
  %i.ai = icmp eq ptr %i.ac, null
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %circuit_chain_lookup.exit
  %i.aj = load i32, ptr %i.aa, align 4
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef @.str.123, i32 noundef 4, ptr noundef null, i64 noundef -1, ptr noundef null, ptr noundef @.str.124, i32 noundef %i.aj, i32 noundef %.0.i, ptr noundef %4, i32 noundef %i.l)
  br label %find_h223_lc_params.exit.thread

bb.h:                                             ; preds = %circuit_chain_lookup.exit
  %i.ak = load i32, ptr @proto_h223, align 4
  %i.al = call ptr @conversation_get_proto_data(ptr noundef nonnull %i.ac, i32 noundef %i.ak) ; 2 uses
  %.not71 = icmp eq ptr %i.al, null
  br i1 %.not71, label %find_h223_lc_params.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr i8, ptr %1, i64 356       ; 2 uses
  %i.an = load i32, ptr %i.am, align 4            ; 2 uses
  %i.ao = load i32, ptr %i.aa, align 4
  %.not.i = icmp eq i32 %i.an, 0
  %i.ap = zext i1 %.not.i to i64
  %i.aq = getelementptr [8 x i8], ptr %i.al, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  %.0.i78 = phi ptr [ %i.ar, %bb.i ], [ %i.at, %bb.l ] ; 3 uses
  %.not11.i = icmp eq ptr %.0.i78, null
  br i1 %.not11.i, label %find_h223_lc_params.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr i8, ptr %.0.i78, i64 16
  %i.at = load ptr, ptr %i.as, align 8            ; 3 uses
  %.not12.i = icmp eq ptr %i.at, null
  br i1 %.not12.i, label %find_h223_lc_params.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr i8, ptr %i.at, i64 8
  %i.av = load i32, ptr %i.au, align 8
  %.not13.i = icmp ugt i32 %i.av, %i.ao
  br i1 %.not13.i, label %find_h223_lc_params.exit, label %bb.j, !llvm.loop !17

find_h223_lc_params.exit:                         ; preds = %bb.k, %bb.l
  %i.aw = load ptr, ptr %.0.i78, align 8          ; 6 uses
  %.not72 = icmp eq ptr %i.aw, null
  br i1 %.not72, label %find_h223_lc_params.exit.thread, label %bb.m

bb.m:                                             ; preds = %find_h223_lc_params.exit
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  %i.ay = load i8, ptr %i.ax, align 8, !range !20, !noundef !21
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.ba = load i32, ptr %i.aw, align 8
  %.not73 = icmp eq i32 %i.ba, 2
  br i1 %.not73, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = call ptr @find_stream(ptr noundef nonnull %i.ac, i32 noundef %i.an) ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bd = load i32, ptr %i.am, align 4
  %i.be = call ptr @stream_new(ptr noundef nonnull %i.ac, i32 noundef %i.bd)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.064 = phi ptr [ %i.be, %bb.p ], [ %i.bb, %bb.o ] ; 2 uses
  %i.bf = load i32, ptr %i.aa, align 4
  %i.bg = call ptr @stream_find_frag(ptr noundef %.064, i32 noundef %i.bf, i32 noundef %2) ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bi = load i32, ptr %i.aa, align 4
  %.0..0..0..0.59 = load volatile ptr, ptr %i.a, align 8
  %i.bj = xor i1 %6, true
  %i.bk = call ptr @stream_add_frag(ptr noundef %.064, i32 noundef %i.bi, i32 noundef %2, ptr noundef %.0..0..0..0.59, ptr noundef %1, i1 noundef zeroext %i.bj)
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %.0 = phi ptr [ %i.bk, %bb.r ], [ %i.bg, %bb.q ]
  %.0..0..0..0.60 = load volatile ptr, ptr %i.a, align 8
  %i.bl = call ptr @stream_process_reassembled(ptr noundef %.0..0..0..0.60, i32 noundef 0, ptr noundef %1, ptr noundef @.str.125, ptr noundef %.0, ptr noundef @h223_al_frag_items, ptr noundef null, ptr noundef %i.ah)
  store volatile ptr %i.bl, ptr %i.a, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n, %bb.m
  %.0..0..0..0.61 = load volatile ptr, ptr %i.a, align 8
  %.not74 = icmp eq ptr %.0..0..0..0.61, null
  br i1 %.not74, label %dissect_mux_al_pdu.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 %2, ptr @pdu_offset, align 4
  %.0..0..0..0.62 = load volatile ptr, ptr %i.a, align 8 ; 15 uses
  %i.bm = getelementptr i8, ptr %i.aw, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  %i.bo = call i32 @tvb_reported_length(ptr noundef %.0..0..0..0.62) ; 2 uses
  %i.bp = load i32, ptr %i.aw, align 8            ; 2 uses
  switch i32 %i.bp, label %bb.ai [
    i32 1, label %bb.v
    i32 2, label %bb.v
    i32 4, label %bb.z
    i32 3, label %bb.aa
  ]

bb.v:                                             ; preds = %bb.u, %bb.u
  %i.bq = load i32, ptr @hf_h223_al1, align 4
  %i.br = icmp eq i32 %i.bp, 1
  %i.bs = select i1 %i.br, ptr @.str.123, ptr @.str.128
  %i.bt = call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_none_format(ptr noundef %i.ah, i32 noundef %i.bq, ptr noundef %.0..0..0..0.62, i32 noundef 0, i32 noundef -1, ptr noundef @.str.127, ptr noundef nonnull %i.bs)
  %i.bu = load i32, ptr @ett_h223_al1, align 4
  %i.bv = call ptr @proto_item_add_subtree(ptr noundef %i.bt, i32 noundef %i.bu) ; 2 uses
  %i.bw = load i32, ptr %i.aw, align 8
  %i.bx = icmp eq i32 %i.bw, 1
  br i1 %i.bx, label %bb.w, label %proto_item_set_hidden.exit.i

bb.w:                                             ; preds = %bb.v
  %i.by = load i32, ptr @hf_h223_al1_framed, align 4
  %i.bz = call ptr @proto_tree_add_boolean(ptr noundef %i.bv, i32 noundef %i.by, ptr noundef %.0..0..0..0.62, i32 noundef 0, i32 noundef 1, i64 noundef 1) ; 2 uses
  %.not.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i, label %proto_item_set_hidden.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ca = getelementptr i8, ptr %i.bz, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8            ; 2 uses
  %.not5.i.i = icmp eq ptr %i.cb, null
  br i1 %.not5.i.i, label %proto_item_set_hidden.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cc = getelementptr i8, ptr %i.cb, i64 28     ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = or i32 %i.cd, 1
  store i32 %i.ce, ptr %i.cc, align 4
  br label %proto_item_set_hidden.exit.i

proto_item_set_hidden.exit.i:                     ; preds = %bb.y, %bb.x, %bb.w, %bb.v
  %i.cf = load i32, ptr @hf_h223_al_payload, align 4
  %i.cg = call ptr @proto_tree_add_item(ptr noundef %i.bv, i32 noundef %i.cf, ptr noundef %.0..0..0..0.62, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %.pre.i = load ptr, ptr @data_handle, align 8
  br label %bb.aj

bb.z:                                             ; preds = %bb.u
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.u
  %.051.i = phi i1 [ true, %bb.z ], [ false, %bb.u ] ; 3 uses
  %i.ch = load i32, ptr @hf_h223_al2, align 4
  %i.ci = call ptr @proto_tree_add_boolean(ptr noundef %i.ah, i32 noundef %i.ch, ptr noundef %.0..0..0..0.62, i32 noundef 0, i32 noundef 0, i64 noundef 1) ; 2 uses
  %i.cj = load i32, ptr @hf_h223_al2_sequenced, align 4
  %i.ck = load i32, ptr @hf_h223_al2_unsequenced, align 4
  %spec.select = select i1 %.051.i, i32 %i.cj, i32 %i.ck
  %i.cl = call ptr @proto_tree_add_item(ptr noundef %i.ah, i32 noundef %spec.select, ptr noundef %.0..0..0..0.62, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.cm = load i32, ptr @ett_h223_al2, align 4
  %i.cn = call ptr @proto_item_add_subtree(ptr noundef %i.cl, i32 noundef %i.cm) ; 3 uses
  %.not.i58.i = icmp eq ptr %i.ci, null
  br i1 %.not.i58.i, label %proto_item_set_generated.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.co = getelementptr i8, ptr %i.ci, i64 40
  %i.cp = load ptr, ptr %i.co, align 8            ; 2 uses
  %.not5.i59.i = icmp eq ptr %i.cp, null
  br i1 %.not5.i59.i, label %proto_item_set_generated.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cq = getelementptr i8, ptr %i.cp, i64 28     ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = or i32 %i.cr, 2
  store i32 %i.cs, ptr %i.cq, align 4
  br label %proto_item_set_generated.exit.i

proto_item_set_generated.exit.i:                  ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.ct = select i1 %.051.i, i32 2, i32 1
  %i.cu = icmp ult i32 %i.bo, %i.ct
  br i1 %i.cu, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %proto_item_set_generated.exit.i
  call void @except_throw(i64 noundef 1, i64 noundef 1, ptr noundef null) #14
  unreachable

bb.ae:                                            ; preds = %proto_item_set_generated.exit.i
  br i1 %.051.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cv = load i32, ptr @hf_h223_al2_seqno, align 4
  %i.cw = call ptr @proto_tree_add_item(ptr noundef %i.cn, i32 noundef %i.cv, ptr noundef %.0..0..0..0.62, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.0.i79 = phi i32 [ 1, %bb.af ], [ 0, %bb.ae ]  ; 2 uses
  %i.cx = add i32 %i.bo, -1                       ; 3 uses
  %i.cy = sub i32 %i.cx, %.0.i79
  %i.cz = call ptr @tvb_new_subset_length(ptr noundef %.0..0..0..0.62, i32 noundef %.0.i79, i32 noundef %i.cy) ; 2 uses
  %i.da = load i32, ptr @hf_h223_al_payload, align 4
  %i.db = call ptr @proto_tree_add_item(ptr noundef %i.cn, i32 noundef %i.da, ptr noundef %i.cz, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.dc = call i32 @tvb_reported_length(ptr noundef %.0..0..0..0.62) ; 2 uses
  %i.dd = add i32 %i.dc, -1                       ; 4 uses
  %i.de = call ptr @tvb_get_ptr(ptr noundef %.0..0..0..0.62, i32 noundef 0, i32 noundef %i.dd) ; 5 uses
  %i.df = call i32 @tvb_reported_length(ptr noundef %.0..0..0..0.62)
  %.not.i60.i = icmp eq i32 %i.df, 0
  br i1 %.not.i60.i, label %bb.ah, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ag
  %.not1011.i.i = icmp eq i32 %i.dd, 0
  br i1 %.not1011.i.i, label %h223_al2_crc8bit.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.preheader.i.i
  %i.dg = add i32 %i.dc, -2
  %xtraiter = and i32 %i.dd, 3                    ; 3 uses
  %i.dh = icmp ult i32 %i.dg, 3
  br i1 %i.dh, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.dd, -4
  br label %.lr.ph.i.i

bb.ah:                                            ; preds = %bb.ag
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.112, ptr noundef @.str.113, i32 noundef 619, ptr noundef @.str.129) #14
  unreachable

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ] ; 5 uses
  %.0813.i.i = phi i8 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.ei, %.lr.ph.i.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.di = getelementptr i8, ptr %i.de, i64 %indvars.iv.i.i
  %i.dj = load i8, ptr %i.di, align 1
  %i.dk = xor i8 %i.dj, %.0813.i.i
  %i.dl = zext i8 %i.dk to i64
  %i.dm = getelementptr i8, ptr @crctable, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1
  %i.do = getelementptr i8, ptr %i.de, i64 %indvars.iv.i.i
  %i.dp = getelementptr i8, ptr %i.do, i64 1
  %i.dq = load i8, ptr %i.dp, align 1
  %i.dr = xor i8 %i.dq, %i.dn
  %i.ds = zext i8 %i.dr to i64
  %i.dt = getelementptr i8, ptr @crctable, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1
  %i.dv = getelementptr i8, ptr %i.de, i64 %indvars.iv.i.i
  %i.dw = getelementptr i8, ptr %i.dv, i64 2
  %i.dx = load i8, ptr %i.dw, align 1
  %i.dy = xor i8 %i.dx, %i.du
  %i.dz = zext i8 %i.dy to i64
  %i.ea = getelementptr i8, ptr @crctable, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %i.ec = getelementptr i8, ptr %i.de, i64 %indvars.iv.i.i
  %i.ed = getelementptr i8, ptr %i.ec, i64 3
  %i.ee = load i8, ptr %i.ed, align 1
  %i.ef = xor i8 %i.ee, %i.eb
  %i.eg = zext i8 %i.ef to i64
  %i.eh = getelementptr i8, ptr @crctable, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1             ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %h223_al2_crc8bit.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !18

h223_al2_crc8bit.exit.i.loopexit.unr-lcssa:       ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %h223_al2_crc8bit.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %h223_al2_crc8bit.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.3, %h223_al2_crc8bit.exit.i.loopexit.unr-lcssa ]
  %.0813.i.i.epil.init = phi i8 [ 0, %.lr.ph.i.i.preheader ], [ %i.ei, %h223_al2_crc8bit.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod102 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod102)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i.epil ], [ %indvars.iv.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.0813.i.i.epil = phi i8 [ %i.eo, %.lr.ph.i.i.epil ], [ %.0813.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %i.ej = getelementptr i8, ptr %i.de, i64 %indvars.iv.i.i.epil
  %i.ek = load i8, ptr %i.ej, align 1
  %i.el = xor i8 %i.ek, %.0813.i.i.epil
  %i.em = zext i8 %i.el to i64
  %i.en = getelementptr i8, ptr @crctable, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1             ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %h223_al2_crc8bit.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !19

h223_al2_crc8bit.exit.i:                          ; preds = %h223_al2_crc8bit.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %.preheader.i.i
  %.08.lcssa.i.i = phi i8 [ 0, %.preheader.i.i ], [ %i.ei, %h223_al2_crc8bit.exit.i.loopexit.unr-lcssa ], [ %i.eo, %.lr.ph.i.i.epil ] ; 2 uses
  %i.ep = call zeroext i8 @tvb_get_uint8(ptr noundef %.0..0..0..0.62, i32 noundef %i.cx)
  %i.eq = load i32, ptr @hf_h223_al2_crc, align 4
  %i.er = load i32, ptr @hf_h223_al2_crc_status, align 4
  %i.es = zext i8 %.08.lcssa.i.i to i32
  %i.et = call ptr @proto_tree_add_checksum(ptr noundef %i.cn, ptr noundef %.0..0..0..0.62, i32 noundef %i.cx, i32 noundef %i.eq, i32 noundef %i.er, ptr noundef @ei_h223_al2_crc, ptr noundef %1, i32 noundef %i.es, i32 noundef 0, i32 noundef 1) ; 0 uses
  %.not.i80 = icmp eq i8 %.08.lcssa.i.i, %i.ep
  %i.eu = load ptr, ptr @data_handle, align 8     ; 2 uses
  %spec.select.i = select i1 %.not.i80, ptr %i.bn, ptr %i.eu
  br label %bb.aj

bb.ai:                                            ; preds = %bb.u
  %i.ev = load ptr, ptr @data_handle, align 8
  %i.ew = call i32 @call_dissector(ptr noundef %i.ev, ptr noundef %.0..0..0..0.62, ptr noundef %1, ptr noundef %i.ah) ; 0 uses
  br label %dissect_mux_al_pdu.exit

bb.aj:                                            ; preds = %h223_al2_crc8bit.exit.i, %proto_item_set_hidden.exit.i
  %i.ex = phi ptr [ %.pre.i, %proto_item_set_hidden.exit.i ], [ %i.eu, %h223_al2_crc8bit.exit.i ]
  %.054.i = phi ptr [ %i.cg, %proto_item_set_hidden.exit.i ], [ %i.db, %h223_al2_crc8bit.exit.i ]
  %.053.i = phi ptr [ %.0..0..0..0.62, %proto_item_set_hidden.exit.i ], [ %i.cz, %h223_al2_crc8bit.exit.i ]
  %.052.i = phi ptr [ %i.bn, %proto_item_set_hidden.exit.i ], [ %spec.select.i, %h223_al2_crc8bit.exit.i ] ; 2 uses
  %.not56.i = icmp eq ptr %.052.i, null
  %spec.select57.i = select i1 %.not56.i, ptr %i.ex, ptr %.052.i
  %i.ey = load i32, ptr @ett_h223_al_payload, align 4
  %i.ez = call ptr @proto_item_add_subtree(ptr noundef %.054.i, i32 noundef %i.ey)
  %i.fa = call i32 @call_dissector(ptr noundef %spec.select57.i, ptr noundef %.053.i, ptr noundef %1, ptr noundef %i.ez) ; 0 uses
  br label %dissect_mux_al_pdu.exit

find_h223_lc_params.exit.thread:                  ; preds = %bb.j, %bb.h, %bb.g, %find_h223_lc_params.exit
  %i.fb = load ptr, ptr @data_handle, align 8
  %.0..0..0..0.63 = load volatile ptr, ptr %i.a, align 8
  %i.fc = call i32 @call_dissector(ptr noundef %i.fb, ptr noundef %.0..0..0..0.63, ptr noundef %1, ptr noundef %i.ah) ; 0 uses
  br label %dissect_mux_al_pdu.exit

dissect_mux_al_pdu.exit:                          ; preds = %bb.aj, %bb.ai, %find_h223_lc_params.exit.thread, %bb.t, %bb.d, %bb.c
  %.0..0..0..0.25 = load volatile i32, ptr %i.c, align 4
  %i.fd = and i32 %.0..0..0..0.25, 4
  %.not75 = icmp eq i32 %i.fd, 0
  br i1 %.not75, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %dissect_mux_al_pdu.exit
  %.0..0..0..0.26 = load volatile i32, ptr %i.c, align 4
  %i.fe = or i32 %.0..0..0..0.26, 4
  store volatile i32 %i.fe, ptr %i.c, align 4
  call void @conversation_set_elements_by_id(ptr noundef %1, i32 noundef %7, i32 noundef %8)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %dissect_mux_al_pdu.exit
  %.0..0..0..0.27 = load volatile i32, ptr %i.c, align 4
  %i.ff = and i32 %.0..0..0..0.27, 1
  %.not76 = icmp eq i32 %i.ff, 0
  br i1 %.not76, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %.0..0..0..0.29 = load volatile ptr, ptr %i.b, align 8
  %.not77 = icmp eq ptr %.0..0..0..0.29, null
  br i1 %.not77, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.0..0..0..0.30 = load volatile ptr, ptr %i.b, align 8
  call void @except_rethrow(ptr noundef %.0..0..0..0.30) #14
  unreachable

bb.ao:                                            ; preds = %bb.am, %bb.al
  %i.fg = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.fh = load volatile ptr, ptr %i.fg, align 8
  call void @except_free(ptr noundef %i.fh)
  %i.fi = call ptr @except_pop()                  ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @decrement_dissection_depth(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @conversation_set_elements_by_id(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @ws_log_full(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @find_stream(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @stream_new(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @stream_find_frag(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @stream_add_frag(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @stream_process_reassembled(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_none_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_boolean(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn null_pointer_is_valid
declare void @except_throw(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_checksum(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_get_ptr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_memdup(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @bitswap_buf_inplace(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_child_real_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @add_new_data_source(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind null_pointer_is_valid returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { noreturn }
attributes #15 = { allocsize(1) }
attributes #16 = { allocsize(2) }
attributes #17 = { nounwind }
attributes #18 = { nounwind returns_twice }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !22}
!20 = !{i8 0, i8 2}
!21 = !{}
!22 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
