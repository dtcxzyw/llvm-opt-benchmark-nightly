Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-tfp?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0
target triple = "x86_64-pc-linux-gnu"

%struct.hf_register_info = type { ptr, %struct._header_field_info }
%struct._header_field_info = type { ptr, ptr, i32, i32, ptr, i64, ptr, i32, i32, i32, i32, ptr }

@proto_register_tfp.hf_tfp = internal global [11 x %struct.hf_register_info] [%struct.hf_register_info { ptr @hf_tfp_uid, %struct._header_field_info { ptr @.str, ptr @.str.1, i32 27, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_tfp_uid_numeric, %struct._header_field_info { ptr @.str.2, ptr @.str.3, i32 7, i32 1, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_tfp_len, %struct._header_field_info { ptr @.str.4, ptr @.str.5, i32 4, i32 1, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_tfp_fid, %struct._header_field_info { ptr @.str.6, ptr @.str.7, i32 4, i32 1, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_tfp_seq, %struct._header_field_info { ptr @.str.8, ptr @.str.9, i32 4, i32 1, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_tfp_r, %struct._header_field_info { ptr @.str.10, ptr @.str.11, i32 4, i32 1, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_tfp_a, %struct._header_field_info { ptr @.str.12, ptr @.str.13, i32 4, i32 1, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_tfp_oo, %struct._header_field_info { ptr @.str.14, ptr @.str.15, i32 4, i32 1, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_tfp_e, %struct._header_field_info { ptr @.str.16, ptr @.str.17, i32 4, i32 1, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_tfp_future_use, %struct._header_field_info { ptr @.str.18, ptr @.str.19, i32 4, i32 1, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_tfp_payload, %struct._header_field_info { ptr @.str.20, ptr @.str.21, i32 30, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }], align 16
@hf_tfp_uid = internal global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"UID (String)\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"tfp.uid\00", align 1
@hf_tfp_uid_numeric = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"UID (Numeric)\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"tfp.uid_numeric\00", align 1
@hf_tfp_len = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"Length\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"tfp.len\00", align 1
@hf_tfp_fid = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"Function ID\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"tfp.fid\00", align 1
@hf_tfp_seq = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"Sequence Number\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"tfp.seq\00", align 1
@hf_tfp_r = internal global i32 0, align 4
@.str.10 = private unnamed_addr constant [18 x i8] c"Response Expected\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"tfp.r\00", align 1
@hf_tfp_a = internal global i32 0, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c"Authentication\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"tfp.a\00", align 1
@hf_tfp_oo = internal global i32 0, align 4
@.str.14 = private unnamed_addr constant [14 x i8] c"Other Options\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"tfp.oo\00", align 1
@hf_tfp_e = internal global i32 0, align 4
@.str.16 = private unnamed_addr constant [11 x i8] c"Error Code\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"tfp.e\00", align 1
@hf_tfp_future_use = internal global i32 0, align 4
@.str.18 = private unnamed_addr constant [11 x i8] c"Future Use\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"tfp.future_use\00", align 1
@hf_tfp_payload = internal global i32 0, align 4
@.str.20 = private unnamed_addr constant [8 x i8] c"Payload\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"tfp.payload\00", align 1
@proto_register_tfp.ett = internal global [1 x ptr] [ptr @ett_tfp], align 8
@ett_tfp = internal global i32 0, align 4
@.str.22 = private unnamed_addr constant [21 x i8] c"Tinkerforge Protocol\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"TFP\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"tfp\00", align 1
@proto_tfp = internal unnamed_addr global i32 0, align 4
@tfp_handle_tcp = internal unnamed_addr global ptr null, align 8
@.str.25 = private unnamed_addr constant [9 x i8] c"tcp.port\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"usb.bulk\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"Tinkerforge USB bulk endpoint\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"tfp_usb_bulk\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"TFP over TCP\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"UID: %s, Len: %d, FID: %d, Seq: %d\00", align 1
@.str.31 = private unnamed_addr constant [57 x i8] c"Tinkerforge Protocol, UID: %s, Len: %d, FID: %d, Seq: %d\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@BASE58_ALPHABET = internal unnamed_addr constant [59 x i8] c"123456789abcdefghijkmnopqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ\00", align 16
@.str.33 = private unnamed_addr constant [13 x i8] c"TFP over USB\00", align 1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_tfp() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) ; 2 uses
  store i32 %i.a, ptr @proto_tfp, align 4
  tail call void @proto_register_field_array(i32 noundef %i.a, ptr noundef nonnull @proto_register_tfp.hf_tfp, i32 noundef 11)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_tfp.ett, i32 noundef 1)
  %i.b = load i32, ptr @proto_tfp, align 4
  %i.c = tail call ptr @register_dissector(ptr noundef nonnull @.str.24, ptr noundef nonnull @dissect_tfp_tcp, i32 noundef %i.b)
  store ptr %i.c, ptr @tfp_handle_tcp, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_tfp_tcp(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @col_set_str(ptr noundef %i.b, i32 noundef 35, ptr noundef nonnull @.str.29)
  %i.c = load ptr, ptr %i.a, align 8
  tail call void @col_clear(ptr noundef %i.c, i32 noundef 25)
  tail call fastcc void @dissect_tfp_common(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %i.d = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.d
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_tfp() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @tfp_handle_tcp, align 8
  tail call void @dissector_add_uint_with_preference(ptr noundef nonnull @.str.25, i32 noundef 4223, ptr noundef %i.a)
  %i.b = load i32, ptr @proto_tfp, align 4
  tail call void @heur_dissector_add(ptr noundef nonnull @.str.26, ptr noundef nonnull @dissect_tfp_bulk_heur, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %i.b, i32 noundef 1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint_with_preference(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @heur_dissector_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @dissect_tfp_bulk_heur(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) #0 {
bb.a:
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %3, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not13 = icmp eq ptr %i.b, null
  br i1 %.not13, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %i.b, i64 12
  %i.d = load i16, ptr %i.c, align 4
  %i.e = icmp eq i16 %i.d, 5840
  br i1 %i.e, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %i.b, i64 16
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.g, 1597
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  tail call void @col_set_str(ptr noundef %i.j, i32 noundef 35, ptr noundef nonnull @.str.33)
  %i.k = load ptr, ptr %i.i, align 8
  tail call void @col_clear(ptr noundef %i.k, i32 noundef 25)
  tail call fastcc void @dissect_tfp_common(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.0 = phi i1 [ true, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_tfp_common(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [13 x i8], align 1                ; 9 uses
  %i.b = alloca [13 x i8], align 1                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.c = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 0) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.a, i8 0, i64 13, i1 false)
  %i.d = icmp ugt i32 %i.c, 57
  br i1 %i.d, label %.lr.ph.i, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.a
  %i.e = zext nneg i32 %i.c to i64
  %i.f = getelementptr i8, ptr @BASE58_ALPHABET, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1
  store i8 %i.g, ptr %i.a, align 1
  br label %iter.check

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.01821.i = phi i32 [ %i.o, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %.01920.i = phi i32 [ %i.n, %.lr.ph.i ], [ %i.c, %bb.a ] ; 3 uses
  %i.h = urem i32 %.01920.i, 58
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr i8, ptr @BASE58_ALPHABET, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1
  %i.l = sext i32 %.01821.i to i64
  %i.m = getelementptr i8, ptr %i.a, i64 %i.l
  store i8 %i.k, ptr %i.m, align 1
  %i.n = udiv i32 %.01920.i, 58                   ; 2 uses
  %i.o = add i32 %.01821.i, 1                     ; 4 uses
  %i.p = icmp ugt i32 %.01920.i, 3363
  br i1 %i.p, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !6

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.q = zext nneg i32 %i.n to i64
  %i.r = getelementptr i8, ptr @BASE58_ALPHABET, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1
  %i.t = sext i32 %i.o to i64
  %i.u = getelementptr i8, ptr %i.a, i64 %i.t
  store i8 %i.s, ptr %i.u, align 1
  %.not23.i = icmp slt i32 %i.o, 0
  br i1 %.not23.i, label %.lr.ph29.preheader.i, label %iter.check

iter.check:                                       ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %.018.lcssa40.i = phi i32 [ 0, %._crit_edge.thread.i ], [ %i.o, %._crit_edge.i ] ; 2 uses
  %3 = zext nneg i32 %.018.lcssa40.i to i64       ; 3 uses
  %i.v = add nuw i32 %.018.lcssa40.i, 1           ; 4 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.v, i32 1) ; 2 uses
  %wide.trip.count.i = zext nneg i32 %smax.i to i64 ; 6 uses
  %min.iters.check = icmp slt i32 %i.v, 8
  br i1 %min.iters.check, label %.lr.ph26.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check67 = icmp slt i32 %i.v, 32
  br i1 %min.iters.check67, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.w = and i64 %wide.trip.count.i, 24
  %n.vec = and i64 %wide.trip.count.i, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %4 = sub nuw nsw i64 %3, %index
  %i.x = getelementptr i8, ptr %i.a, i64 %4       ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 -15
  %i.z = getelementptr i8, ptr %i.x, i64 -31
  %wide.load = load <16 x i8>, ptr %i.y, align 1
  %wide.load68 = load <16 x i8>, ptr %i.z, align 1
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse69 = shufflevector <16 x i8> %wide.load68, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.aa = getelementptr i8, ptr %i.b, i64 %index  ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 16
  store <16 x i8> %reverse, ptr %i.aa, align 1
  store <16 x i8> %reverse69, ptr %i.ab, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.preheader.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.w, 0
  br i1 %min.epilog.iters.check, label %.lr.ph26.i.preheader, label %vec.epilog.ph, !prof !11

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec70 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index71 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next74, %vec.epilog.vector.body ] ; 3 uses
  %5 = sub nuw nsw i64 %3, %index71
  %i.ad = getelementptr i8, ptr %i.a, i64 %5
  %i.ae = getelementptr i8, ptr %i.ad, i64 -7
  %wide.load72 = load <8 x i8>, ptr %i.ae, align 1
  %reverse73 = shufflevector <8 x i8> %wide.load72, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.af = getelementptr i8, ptr %i.b, i64 %index71
  store <8 x i8> %reverse73, ptr %i.af, align 1
  %index.next74 = add nuw i64 %index71, 8         ; 2 uses
  %i.ag = icmp eq i64 %index.next74, %n.vec70
  br i1 %i.ag, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !12

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n75 = icmp eq i64 %n.vec70, %wide.trip.count.i
  br i1 %cmp.n75, label %.preheader.i, label %.lr.ph26.i.preheader

.lr.ph26.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec70, %vec.epilog.middle.block ]
  br label %.lr.ph26.i

.preheader.i:                                     ; preds = %.lr.ph26.i, %vec.epilog.middle.block, %middle.block
  %i.ah = icmp slt i32 %i.v, 13
  br i1 %i.ah, label %.lr.ph29.preheader.i, label %base58_encode.exit

.lr.ph29.preheader.i:                             ; preds = %._crit_edge.i, %.preheader.i
  %.0.lcssa42.i = phi i32 [ %smax.i, %.preheader.i ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.ai = zext nneg i32 %.0.lcssa42.i to i64
  %scevgep.i = getelementptr i8, ptr %i.b, i64 %i.ai
  %narrow.i = sub nuw nsw i32 13, %.0.lcssa42.i
  %i.aj = zext nneg i32 %narrow.i to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i, i8 0, i64 %i.aj, i1 false)
  br label %base58_encode.exit

.lr.ph26.i:                                       ; preds = %.lr.ph26.i.preheader, %.lr.ph26.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph26.i ], [ %indvars.iv.i.ph, %.lr.ph26.i.preheader ] ; 3 uses
  %6 = sub nuw nsw i64 %3, %indvars.iv.i
  %i.ak = getelementptr i8, ptr %i.a, i64 %6
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = getelementptr i8, ptr %i.b, i64 %indvars.iv.i
  store i8 %i.al, ptr %i.am, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.i, label %.preheader.i, label %.lr.ph26.i, !llvm.loop !13

base58_encode.exit:                               ; preds = %.preheader.i, %.lr.ph29.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.an = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 4)
  %i.ao = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 5)
  %i.ap = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef 48, i32 noundef 4)
  %i.aq = getelementptr i8, ptr %1, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = zext i8 %i.an to i32                    ; 2 uses
  %i.at = zext i8 %i.ao to i32                    ; 2 uses
  %i.au = zext i8 %i.ap to i32                    ; 2 uses
  call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.ar, i32 noundef 25, ptr noundef nonnull @.str.30, ptr noundef nonnull %i.b, i32 noundef %i.as, i32 noundef %i.at, i32 noundef %i.au)
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %base58_encode.exit
  %i.av = load i32, ptr @proto_tfp, align 4
  %i.aw = call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_protocol_format(ptr noundef nonnull %2, i32 noundef %i.av, ptr noundef %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull @.str.31, ptr noundef nonnull %i.b, i32 noundef %i.as, i32 noundef %i.at, i32 noundef %i.au)
  %i.ax = load i32, ptr @ett_tfp, align 4
  %i.ay = call ptr @proto_item_add_subtree(ptr noundef %i.aw, i32 noundef %i.ax) ; 11 uses
  %i.az = load i32, ptr @hf_tfp_uid, align 4
  %i.ba = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format_value(ptr noundef %i.ay, i32 noundef %i.az, ptr noundef %0, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.32, ptr noundef nonnull %i.b) ; 2 uses
  %.not.i = icmp eq ptr %i.ba, null
  br i1 %.not.i, label %proto_item_set_generated.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bb = getelementptr i8, ptr %i.ba, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.bc, null
  br i1 %.not5.i, label %proto_item_set_generated.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bd = getelementptr i8, ptr %i.bc, i64 28     ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = or i32 %i.be, 2
  store i32 %i.bf, ptr %i.bd, align 4
  br label %proto_item_set_generated.exit

proto_item_set_generated.exit:                    ; preds = %bb.b, %bb.c, %bb.d
  %i.bg = load i32, ptr @hf_tfp_uid_numeric, align 4
  %i.bh = call ptr @proto_tree_add_item(ptr noundef %i.ay, i32 noundef %i.bg, ptr noundef %0, i32 noundef 0, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.bi = load i32, ptr @hf_tfp_len, align 4
  %i.bj = call ptr @proto_tree_add_item(ptr noundef %i.ay, i32 noundef %i.bi, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.bk = load i32, ptr @hf_tfp_fid, align 4
  %i.bl = call ptr @proto_tree_add_item(ptr noundef %i.ay, i32 noundef %i.bk, ptr noundef %0, i32 noundef 5, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.bm = load i32, ptr @hf_tfp_seq, align 4
  %i.bn = call ptr @proto_tree_add_bits_item(ptr noundef %i.ay, i32 noundef %i.bm, ptr noundef %0, i32 noundef 48, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.bo = load i32, ptr @hf_tfp_r, align 4
  %i.bp = call ptr @proto_tree_add_bits_item(ptr noundef %i.ay, i32 noundef %i.bo, ptr noundef %0, i32 noundef 52, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.bq = load i32, ptr @hf_tfp_a, align 4
  %i.br = call ptr @proto_tree_add_bits_item(ptr noundef %i.ay, i32 noundef %i.bq, ptr noundef %0, i32 noundef 53, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.bs = load i32, ptr @hf_tfp_oo, align 4
  %i.bt = call ptr @proto_tree_add_bits_item(ptr noundef %i.ay, i32 noundef %i.bs, ptr noundef %0, i32 noundef 54, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.bu = load i32, ptr @hf_tfp_e, align 4
  %i.bv = call ptr @proto_tree_add_bits_item(ptr noundef %i.ay, i32 noundef %i.bu, ptr noundef %0, i32 noundef 56, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.bw = load i32, ptr @hf_tfp_future_use, align 4
  %i.bx = call ptr @proto_tree_add_bits_item(ptr noundef %i.ay, i32 noundef %i.bw, ptr noundef %0, i32 noundef 58, i32 noundef 6, i32 noundef -2147483648) ; 0 uses
  %i.by = call i32 @tvb_reported_length(ptr noundef %0)
  %i.bz = icmp ugt i32 %i.by, 8
  br i1 %i.bz, label %bb.e, label %bb.f

bb.e:                                             ; preds = %proto_item_set_generated.exit
  %i.ca = load i32, ptr @hf_tfp_payload, align 4
  %i.cb = call ptr @proto_tree_add_item(ptr noundef %i.ay, i32 noundef %i.ca, ptr noundef %0, i32 noundef 8, i32 noundef -1, i32 noundef 0) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %proto_item_set_generated.exit, %bb.e, %base58_encode.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_letohl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_bits8(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_add_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_protocol_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_string_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bits_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7, !9, !10}
!9 = !{!"llvm.loop.isvectorized", i32 1}
!10 = !{!"llvm.loop.unroll.runtime.disable"}
!11 = !{!"branch_weights", i32 8, i32 24}
!12 = distinct !{!12, !7, !9, !10}
!13 = distinct !{!13, !7, !10, !9}
end_hunk_0
