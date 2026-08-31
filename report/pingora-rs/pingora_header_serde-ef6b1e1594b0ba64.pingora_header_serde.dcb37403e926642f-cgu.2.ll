Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_header_serde-ef6b1e1594b0ba64.pingora_header_serde.dcb37403e926642f-cgu.2?download=true
inline.NumInlined: 171
inline.NumDeleted: 96
begin_hunk_0
@9 = private unnamed_addr constant [20 x i8] c"invalid HTTP version", align 1
@10 = private unnamed_addr constant [10 x i8] c"HeaderName", align 1
@11 = private unnamed_addr constant [11 x i8] c"HeaderValue", align 1
@12 = private unnamed_addr constant [7 x i8] c"NewLine", align 1
@13 = private unnamed_addr constant [6 x i8] c"Status", align 1
@14 = private unnamed_addr constant [5 x i8] c"Token", align 1
@15 = private unnamed_addr constant [14 x i8] c"TooManyHeaders", align 1
@16 = private unnamed_addr constant [7 x i8] c"Version", align 1
@17 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_Cs1ll6eLl40nD_8httparseNtB4_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt }>, align 8
@18 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsd_Cs1ll6eLl40nD_8httparseNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr @_RNvXs_Cs1ll6eLl40nD_8httparseNtB4_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr @17, ptr @_RNvYNtCs1ll6eLl40nD_8httparse5ErrorNtNtCskKLDkoKarTP_4core5error5Error6sourceCsiWMK64dCVjf_20pingora_header_serde, ptr @_RNvYNtCs1ll6eLl40nD_8httparse5ErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCsiWMK64dCVjf_20pingora_header_serde, ptr @_RNvXs0_Cs1ll6eLl40nD_8httparseNtB5_5ErrorNtNtCskKLDkoKarTP_4core5error5Error11description, ptr @_RNvYNtCs1ll6eLl40nD_8httparse5ErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCsiWMK64dCVjf_20pingora_header_serde, ptr @_RNvYNtCs1ll6eLl40nD_8httparse5ErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCsiWMK64dCVjf_20pingora_header_serde }>, align 8
@19 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXso_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_17InvalidHeaderNameNtNtCskKLDkoKarTP_4core3fmt7Display3fmt }>, align 8
@20 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsn_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_17InvalidHeaderNameNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr @_RNvXso_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_17InvalidHeaderNameNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr @19, ptr @_RNvYNtNtNtCs84JG9zk80ZV_4http6header4name17InvalidHeaderNameNtNtCskKLDkoKarTP_4core5error5Error6sourceCsiWMK64dCVjf_20pingora_header_serde, ptr @_RNvYNtNtNtCs84JG9zk80ZV_4http6header4name17InvalidHeaderNameNtNtCskKLDkoKarTP_4core5error5Error7type_idCsiWMK64dCVjf_20pingora_header_serde, ptr @_RNvYNtNtNtCs84JG9zk80ZV_4http6header4name17InvalidHeaderNameNtNtCskKLDkoKarTP_4core5error5Error11descriptionCsiWMK64dCVjf_20pingora_header_serde, ptr @_RNvYNtNtNtCs84JG9zk80ZV_4http6header4name17InvalidHeaderNameNtNtCskKLDkoKarTP_4core5error5Error5causeCsiWMK64dCVjf_20pingora_header_serde, ptr @_RNvYNtNtNtCs84JG9zk80ZV_4http6header4name17InvalidHeaderNameNtNtCskKLDkoKarTP_4core5error5Error7provideCsiWMK64dCVjf_20pingora_header_serde }>, align 8
@21 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 3862418367726198491 to ptr), ptr inttoptr (i64 -7190715052252267623 to ptr) }>, align 8
@22 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@23 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -9128072492757871532 to ptr), ptr inttoptr (i64 1872167256428522002 to ptr) }>, align 8
@switch.table._RNvXs0_Cs1ll6eLl40nD_8httparseNtB5_5ErrorNtNtCskKLDkoKarTP_4core5error5Error11description = private unnamed_addr constant [7 x i8] c"\13\14\10\17\0D\10\14", align 8
@switch.table._RNvXs0_Cs1ll6eLl40nD_8httparseNtB5_5ErrorNtNtCskKLDkoKarTP_4core5error5Error11description.38 = private unnamed_addr constant [7 x ptr] [ptr @3, ptr @4, ptr @5, ptr @6, ptr @7, ptr @8, ptr @9], align 8
@switch.table._RNvXsd_Cs1ll6eLl40nD_8httparseNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt = private unnamed_addr constant [7 x i8] c"\0A\0B\07\06\05\0E\07", align 8
@switch.table._RNvXsd_Cs1ll6eLl40nD_8httparseNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.39 = private unnamed_addr constant [7 x ptr] [ptr @10, ptr @11, ptr @12, ptr @13, ptr @14, ptr @15, ptr @16], align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCs84JG9zk80ZV_4http6header5valueNtB3_11HeaderValue16try_from_genericRShNvMNtCs1eA6bChxBZF_5bytes5bytesNtB1j_5Bytes15copy_from_sliceECsiWMK64dCVjf_20pingora_header_serde(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.b = icmp samesign eq i64 %2, 0
  br i1 %i.b, label %.critedge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp samesign ult i64 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check11 = icmp samesign ult i64 %2, 32
  br i1 %min.iters.check11, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.c = and i64 %2, 24
  %n.vec = and i64 %2, 9223372036854775776        ; 4 uses
  %i.d = getelementptr i8, ptr %1, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.o, %vector.body ]
  %vec.phi12 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.q, %vector.body ]
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %i.e = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1 ; 3 uses
  %wide.load13 = load <16 x i8>, ptr %i.e, align 1 ; 3 uses
  %i.f = icmp ult <16 x i8> %wide.load, splat (i8 32)
  %i.g = icmp ult <16 x i8> %wide.load13, splat (i8 32)
  %i.h = icmp eq <16 x i8> %wide.load, splat (i8 127)
  %i.i = icmp eq <16 x i8> %wide.load13, splat (i8 127)
  %i.j = or <16 x i1> %i.f, %i.h
  %i.k = or <16 x i1> %i.g, %i.i
  %i.l = icmp ne <16 x i8> %wide.load, splat (i8 9)
  %i.m = icmp ne <16 x i8> %wide.load13, splat (i8 9)
  %i.n = and <16 x i1> %i.j, %i.l
  %i.o = or <16 x i1> %vec.phi, %i.n              ; 2 uses
  %i.p = and <16 x i1> %i.k, %i.m
  %i.q = or <16 x i1> %vec.phi12, %i.p            ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !4

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i1> %i.q, %i.o
  %i.s = bitcast <16 x i1> %bin.rdx to i16
  %i.t = icmp ne i16 %i.s, 0                      ; 3 uses
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.c, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !7

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.t, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %2, 9223372036854775800      ; 3 uses
  %i.u = getelementptr i8, ptr %1, i64 %n.vec14
  %i.v = insertelement <8 x i1> <i1 poison, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>, i1 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next19, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi16 = phi <8 x i1> [ %i.v, %vec.epilog.ph ], [ %i.ab, %vec.epilog.vector.body ]
  %next.gep17 = getelementptr i8, ptr %1, i64 %index15
  %wide.load18 = load <8 x i8>, ptr %next.gep17, align 1 ; 3 uses
  %i.w = icmp ult <8 x i8> %wide.load18, splat (i8 32)
  %i.x = icmp eq <8 x i8> %wide.load18, splat (i8 127)
  %i.y = or <8 x i1> %i.w, %i.x
  %i.z = icmp ne <8 x i8> %wide.load18, splat (i8 9)
  %i.aa = and <8 x i1> %i.y, %i.z
  %i.ab = or <8 x i1> %vec.phi16, %i.aa           ; 2 uses
  %index.next19 = add nuw i64 %index15, 8         ; 2 uses
  %i.ac = icmp eq i64 %index.next19, %n.vec14
  br i1 %i.ac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !8

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ad = bitcast <8 x i1> %i.ab to i8
  %i.ae = icmp ne i8 %i.ad, 0                     ; 2 uses
  %cmp.n20 = icmp eq i64 %2, %n.vec14
  br i1 %cmp.n20, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.010.ph = phi i1 [ false, %iter.check ], [ %i.t, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  %.sroa.02.09.ph = phi ptr [ %1, %iter.check ], [ %i.d, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.sroa.0.010 = phi i1 [ %.sroa.04.0, %bb.c ], [ %.sroa.0.010.ph, %.lr.ph.preheader ] ; 2 uses
  %.sroa.02.09 = phi ptr [ %i.af, %bb.c ], [ %.sroa.02.09.ph, %.lr.ph.preheader ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.02.09, i64 1 ; 2 uses
  %i.ag = load i8, ptr %.sroa.02.09, align 1, !noundef !9 ; 3 uses
  %i.ah = icmp ult i8 %i.ag, 32
  %i.ai = icmp eq i8 %i.ag, 127
  %or.cond = or i1 %i.ah, %i.ai
  br i1 %or.cond, label %bb.b, label %bb.c

._crit_edge:                                      ; preds = %bb.c, %vec.epilog.middle.block, %middle.block
  %.sroa.04.0.lcssa = phi i1 [ %i.ae, %vec.epilog.middle.block ], [ %i.t, %middle.block ], [ %.sroa.04.0, %bb.c ]
  br i1 %.sroa.04.0.lcssa, label %bb.d, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.aj = icmp ne i8 %i.ag, 9
  %i.ak = or i1 %.sroa.0.010, %i.aj
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.04.0 = phi i1 [ %i.ak, %bb.b ], [ %.sroa.0.010, %.lr.ph ] ; 2 uses
  %i.al = icmp eq ptr %i.af, %i.a
  br i1 %i.al, label %._crit_edge, label %.lr.ph, !llvm.loop !10

.critedge:                                        ; preds = %bb.a, %._crit_edge
  tail call void @_RNvMNtCs1eA6bChxBZF_5bytes5bytesNtB2_5Bytes15copy_from_slice(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2)
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %.critedge
  %.sink = phi i8 [ 0, %.critedge ], [ 2, %._crit_edge ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sink, ptr %i.am, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs3_Cse0v0U5LqnG1_12thread_localINtB6_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE10get_or_tryNCINvB2_6get_orNCNvMCsiWMK64dCVjf_20pingora_header_serdeNtB2z_11HeaderSerde11deserialize0E0uEB2z_(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCse0v0U5LqnG1_12thread_local9thread_id6THREAD0s_023___RUST_STD_INTERNAL_VAL) ; 4 uses
  %.sroa.01.0.copyload.i.i.i = load i64, ptr %i.b, align 8, !noalias !11
  %i.c = trunc nuw i64 %.sroa.01.0.copyload.i.i.i to i1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !11
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !11
  %i.d = insertvalue { i64, i64 } poison, i64 %.sroa.4.0.copyload.i.i.i, 0
  %i.e = insertvalue { i64, i64 } %i.d, i64 %.sroa.5.0.copyload.i.i.i, 1
  br label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellINtNtBY_6option6OptionNtNtCse0v0U5LqnG1_12thread_local9thread_id6ThreadEEE4withNCNvB1P_3get0B1N_ECsiWMK64dCVjf_20pingora_header_serde.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call { i64, i64 } @_RNvNtCse0v0U5LqnG1_12thread_local9thread_id8get_slow(ptr noundef nonnull align 8 %i.b), !noalias !11
  br label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellINtNtBY_6option6OptionNtNtCse0v0U5LqnG1_12thread_local9thread_id6ThreadEEE4withNCNvB1P_3get0B1N_ECsiWMK64dCVjf_20pingora_header_serde.exit

_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellINtNtBY_6option6OptionNtNtCse0v0U5LqnG1_12thread_local9thread_id6ThreadEEE4withNCNvB1P_3get0B1N_ECsiWMK64dCVjf_20pingora_header_serde.exit: ; preds = %bb.b, %bb.c
  %.merged.i.i.i = phi { i64, i64 } [ %i.e, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %i.g = extractvalue { i64, i64 } %.merged.i.i.i, 0 ; 3 uses
  %i.h = extractvalue { i64, i64 } %.merged.i.i.i, 1 ; 2 uses
  %i.i = icmp ult i64 %i.g, 63
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.g
  %i.k = load atomic ptr, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %select.unfold, label %bb.d

bb.d:                                             ; preds = %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellINtNtBY_6option6OptionNtNtCse0v0U5LqnG1_12thread_local9thread_id6ThreadEEE4withNCNvB1P_3get0B1N_ECsiWMK64dCVjf_20pingora_header_serde.exit
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %i.k, i64 %i.h ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load atomic i8, ptr %i.n acquire, align 1
  %.not.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i, label %select.unfold, label %_RNvMs3_Cse0v0U5LqnG1_12thread_localINtB5_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE9get_innerCsiWMK64dCVjf_20pingora_header_serde.exit

select.unfold:                                    ; preds = %bb.d, %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellINtNtBY_6option6OptionNtNtCse0v0U5LqnG1_12thread_local9thread_id6ThreadEEE4withNCNvB1P_3get0B1N_ECsiWMK64dCVjf_20pingora_header_serde.exit
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !15
  %i.p = tail call noundef dereferenceable_or_null(131072) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 131072, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !15 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.e, label %_RNCINvMs3_Cse0v0U5LqnG1_12thread_localINtB8_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE6get_orNCNvMCsiWMK64dCVjf_20pingora_header_serdeNtB2h_11HeaderSerde11deserialize0E0B2h_.exit

bb.e:                                             ; preds = %select.unfold
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 131072) #22, !noalias !22
  unreachable

_RNvMs3_Cse0v0U5LqnG1_12thread_localINtB5_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE9get_innerCsiWMK64dCVjf_20pingora_header_serde.exit: ; preds = %bb.d, %_RNCINvMs3_Cse0v0U5LqnG1_12thread_localINtB8_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE6get_orNCNvMCsiWMK64dCVjf_20pingora_header_serdeNtB2h_11HeaderSerde11deserialize0E0B2h_.exit
  %.sroa.0.0 = phi ptr [ %i.r, %_RNCINvMs3_Cse0v0U5LqnG1_12thread_localINtB8_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE6get_orNCNvMCsiWMK64dCVjf_20pingora_header_serdeNtB2h_11HeaderSerde11deserialize0E0B2h_.exit ], [ %i.m, %bb.d ]
  ret ptr %.sroa.0.0

_RNCINvMs3_Cse0v0U5LqnG1_12thread_localINtB8_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE6get_orNCNvMCsiWMK64dCVjf_20pingora_header_serdeNtB2h_11HeaderSerde11deserialize0E0B2h_.exit: ; preds = %select.unfold
  %1 = ptrtoint ptr %i.p to i64
  store i64 0, ptr %i.a, align 8
  %.sroa.5.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 131072, ptr %.sroa.5.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %1, ptr %.sroa.5.sroa.6.0..sroa_idx, align 8
  %.sroa.5.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.5.sroa.7.0..sroa_idx, align 8
  %i.r = call fastcc noundef nonnull align 8 ptr @_RNvMs3_Cse0v0U5LqnG1_12thread_localINtB5_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE6insertCsiWMK64dCVjf_20pingora_header_serde(ptr noundef nonnull align 8 %0, i64 noundef %i.g, i64 noundef %i.h, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.a)
  br label %_RNvMs3_Cse0v0U5LqnG1_12thread_localINtB5_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE9get_innerCsiWMK64dCVjf_20pingora_header_serde.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs3_Cse0v0U5LqnG1_12thread_localINtB6_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE10get_or_tryNCINvB2_6get_orNCNvMCsiWMK64dCVjf_20pingora_header_serdeNtB2z_11HeaderSerde9serialize0E0uEB2z_(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCse0v0U5LqnG1_12thread_local9thread_id6THREAD0s_023___RUST_STD_INTERNAL_VAL) ; 4 uses
  %.sroa.01.0.copyload.i.i.i = load i64, ptr %i.b, align 8, !noalias !23
  %i.c = trunc nuw i64 %.sroa.01.0.copyload.i.i.i to i1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !23
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !23
  %i.d = insertvalue { i64, i64 } poison, i64 %.sroa.4.0.copyload.i.i.i, 0
  %i.e = insertvalue { i64, i64 } %i.d, i64 %.sroa.5.0.copyload.i.i.i, 1
  br label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellINtNtBY_6option6OptionNtNtCse0v0U5LqnG1_12thread_local9thread_id6ThreadEEE4withNCNvB1P_3get0B1N_ECsiWMK64dCVjf_20pingora_header_serde.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call { i64, i64 } @_RNvNtCse0v0U5LqnG1_12thread_local9thread_id8get_slow(ptr noundef nonnull align 8 %i.b), !noalias !23
  br label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellINtNtBY_6option6OptionNtNtCse0v0U5LqnG1_12thread_local9thread_id6ThreadEEE4withNCNvB1P_3get0B1N_ECsiWMK64dCVjf_20pingora_header_serde.exit

_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellINtNtBY_6option6OptionNtNtCse0v0U5LqnG1_12thread_local9thread_id6ThreadEEE4withNCNvB1P_3get0B1N_ECsiWMK64dCVjf_20pingora_header_serde.exit: ; preds = %bb.b, %bb.c
  %.merged.i.i.i = phi { i64, i64 } [ %i.e, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %i.g = extractvalue { i64, i64 } %.merged.i.i.i, 0 ; 3 uses
  %i.h = extractvalue { i64, i64 } %.merged.i.i.i, 1 ; 2 uses
  %i.i = icmp ult i64 %i.g, 63
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.g
  %i.k = load atomic ptr, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %select.unfold, label %bb.d

bb.d:                                             ; preds = %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellINtNtBY_6option6OptionNtNtCse0v0U5LqnG1_12thread_local9thread_id6ThreadEEE4withNCNvB1P_3get0B1N_ECsiWMK64dCVjf_20pingora_header_serde.exit
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %i.k, i64 %i.h ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load atomic i8, ptr %i.n acquire, align 1
  %.not.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i, label %select.unfold, label %_RNvMs3_Cse0v0U5LqnG1_12thread_localINtB5_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE9get_innerCsiWMK64dCVjf_20pingora_header_serde.exit

select.unfold:                                    ; preds = %bb.d, %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellINtNtBY_6option6OptionNtNtCse0v0U5LqnG1_12thread_local9thread_id6ThreadEEE4withNCNvB1P_3get0B1N_ECsiWMK64dCVjf_20pingora_header_serde.exit
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !26
  %i.p = tail call noundef dereferenceable_or_null(131072) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 131072, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !26 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.e, label %_RNCINvMs3_Cse0v0U5LqnG1_12thread_localINtB8_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE6get_orNCNvMCsiWMK64dCVjf_20pingora_header_serdeNtB2h_11HeaderSerde9serialize0E0B2h_.exit

bb.e:                                             ; preds = %select.unfold
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 131072) #22, !noalias !33
  unreachable

_RNvMs3_Cse0v0U5LqnG1_12thread_localINtB5_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE9get_innerCsiWMK64dCVjf_20pingora_header_serde.exit: ; preds = %bb.d, %_RNCINvMs3_Cse0v0U5LqnG1_12thread_localINtB8_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE6get_orNCNvMCsiWMK64dCVjf_20pingora_header_serdeNtB2h_11HeaderSerde9serialize0E0B2h_.exit
  %.sroa.0.0 = phi ptr [ %i.r, %_RNCINvMs3_Cse0v0U5LqnG1_12thread_localINtB8_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE6get_orNCNvMCsiWMK64dCVjf_20pingora_header_serdeNtB2h_11HeaderSerde9serialize0E0B2h_.exit ], [ %i.m, %bb.d ]
  ret ptr %.sroa.0.0

_RNCINvMs3_Cse0v0U5LqnG1_12thread_localINtB8_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE6get_orNCNvMCsiWMK64dCVjf_20pingora_header_serdeNtB2h_11HeaderSerde9serialize0E0B2h_.exit: ; preds = %select.unfold
  %1 = ptrtoint ptr %i.p to i64
  store i64 0, ptr %i.a, align 8
  %.sroa.5.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 131072, ptr %.sroa.5.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %1, ptr %.sroa.5.sroa.6.0..sroa_idx, align 8
  %.sroa.5.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.5.sroa.7.0..sroa_idx, align 8
  %i.r = call fastcc noundef nonnull align 8 ptr @_RNvMs3_Cse0v0U5LqnG1_12thread_localINtB5_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE6insertCsiWMK64dCVjf_20pingora_header_serde(ptr noundef nonnull align 8 %0, i64 noundef %i.g, i64 noundef %i.h, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.a)
  br label %_RNvMs3_Cse0v0U5LqnG1_12thread_localINtB5_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE9get_innerCsiWMK64dCVjf_20pingora_header_serde.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs3_Cse0v0U5LqnG1_12thread_localINtB6_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellNtCs13pZzHa6nno_9zstd_safe4CCtxEE10get_or_tryNCINvB2_6get_orNCNvMs0_NtCsiWMK64dCVjf_20pingora_header_serde11thread_zstdNtB2y_16CompressionInner15get_com_context0E0uEB2A_(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCse0v0U5LqnG1_12thread_local9thread_id6THREAD0s_023___RUST_STD_INTERNAL_VAL) ; 4 uses
  %.sroa.01.0.copyload.i.i.i = load i64, ptr %i.a, align 8, !noalias !34
  %i.b = trunc nuw i64 %.sroa.01.0.copyload.i.i.i to i1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !34
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !34
  %i.c = insertvalue { i64, i64 } poison, i64 %.sroa.4.0.copyload.i.i.i, 0
  %i.d = insertvalue { i64, i64 } %i.c, i64 %.sroa.5.0.copyload.i.i.i, 1
  br label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellINtNtBY_6option6OptionNtNtCse0v0U5LqnG1_12thread_local9thread_id6ThreadEEE4withNCNvB1P_3get0B1N_ECsiWMK64dCVjf_20pingora_header_serde.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call { i64, i64 } @_RNvNtCse0v0U5LqnG1_12thread_local9thread_id8get_slow(ptr noundef nonnull align 8 %i.a), !noalias !34
  br label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellINtNtBY_6option6OptionNtNtCse0v0U5LqnG1_12thread_local9thread_id6ThreadEEE4withNCNvB1P_3get0B1N_ECsiWMK64dCVjf_20pingora_header_serde.exit

_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellINtNtBY_6option6OptionNtNtCse0v0U5LqnG1_12thread_local9thread_id6ThreadEEE4withNCNvB1P_3get0B1N_ECsiWMK64dCVjf_20pingora_header_serde.exit: ; preds = %bb.b, %bb.c
  %.merged.i.i.i = phi { i64, i64 } [ %i.d, %bb.b ], [ %i.e, %bb.c ] ; 2 uses
  %i.f = extractvalue { i64, i64 } %.merged.i.i.i, 0 ; 3 uses
  %i.g = extractvalue { i64, i64 } %.merged.i.i.i, 1 ; 2 uses
  %i.h = icmp ult i64 %i.f, 63
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.f
  %i.j = load atomic ptr, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %select.unfold, label %bb.d

bb.d:                                             ; preds = %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellINtNtBY_6option6OptionNtNtCse0v0U5LqnG1_12thread_local9thread_id6ThreadEEE4withNCNvB1P_3get0B1N_ECsiWMK64dCVjf_20pingora_header_serde.exit
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.g ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load atomic i8, ptr %i.m acquire, align 1
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %select.unfold, label %_RNvMs3_Cse0v0U5LqnG1_12thread_localINtB5_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellNtCs13pZzHa6nno_9zstd_safe4CCtxEE9get_innerCsiWMK64dCVjf_20pingora_header_serde.exit

_RNvMs3_Cse0v0U5LqnG1_12thread_localINtB5_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellNtCs13pZzHa6nno_9zstd_safe4CCtxEE9get_innerCsiWMK64dCVjf_20pingora_header_serde.exit: ; preds = %bb.d, %select.unfold
  %.sroa.0.0 = phi ptr [ %i.p, %select.unfold ], [ %i.l, %bb.d ]
  ret ptr %.sroa.0.0

select.unfold:                                    ; preds = %bb.d, %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellINtNtBY_6option6OptionNtNtCse0v0U5LqnG1_12thread_local9thread_id6ThreadEEE4withNCNvB1P_3get0B1N_ECsiWMK64dCVjf_20pingora_header_serde.exit
  %i.o = tail call noundef nonnull ptr @_RNvMs0_Cs13pZzHa6nno_9zstd_safeNtB5_4CCtx6create(), !noalias !37
  %i.p = tail call fastcc noundef nonnull align 8 ptr @_RNvMs3_Cse0v0U5LqnG1_12thread_localINtB5_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellNtCs13pZzHa6nno_9zstd_safe4CCtxEE6insertCsiWMK64dCVjf_20pingora_header_serde(ptr noundef nonnull align 8 %0, i64 noundef %i.f, i64 noundef %i.g, i64 noundef 0, ptr noundef nonnull %i.o)
  br label %_RNvMs3_Cse0v0U5LqnG1_12thread_localINtB5_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellNtCs13pZzHa6nno_9zstd_safe4CCtxEE9get_innerCsiWMK64dCVjf_20pingora_header_serde.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs3_Cse0v0U5LqnG1_12thread_localINtB6_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellNtCs13pZzHa6nno_9zstd_safe4DCtxEE10get_or_tryNCINvB2_6get_orNCNvMs0_NtCsiWMK64dCVjf_20pingora_header_serde11thread_zstdNtB2y_16CompressionInner14get_de_context0E0uEB2A_(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCse0v0U5LqnG1_12thread_local9thread_id6THREAD0s_023___RUST_STD_INTERNAL_VAL) ; 4 uses
  %.sroa.01.0.copyload.i.i.i = load i64, ptr %i.a, align 8, !noalias !40
  %i.b = trunc nuw i64 %.sroa.01.0.copyload.i.i.i to i1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !40
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !40
  %i.c = insertvalue { i64, i64 } poison, i64 %.sroa.4.0.copyload.i.i.i, 0
  %i.d = insertvalue { i64, i64 } %i.c, i64 %.sroa.5.0.copyload.i.i.i, 1
  br label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellINtNtBY_6option6OptionNtNtCse0v0U5LqnG1_12thread_local9thread_id6ThreadEEE4withNCNvB1P_3get0B1N_ECsiWMK64dCVjf_20pingora_header_serde.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call { i64, i64 } @_RNvNtCse0v0U5LqnG1_12thread_local9thread_id8get_slow(ptr noundef nonnull align 8 %i.a), !noalias !40
  br label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellINtNtBY_6option6OptionNtNtCse0v0U5LqnG1_12thread_local9thread_id6ThreadEEE4withNCNvB1P_3get0B1N_ECsiWMK64dCVjf_20pingora_header_serde.exit

_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellINtNtBY_6option6OptionNtNtCse0v0U5LqnG1_12thread_local9thread_id6ThreadEEE4withNCNvB1P_3get0B1N_ECsiWMK64dCVjf_20pingora_header_serde.exit: ; preds = %bb.b, %bb.c
  %.merged.i.i.i = phi { i64, i64 } [ %i.d, %bb.b ], [ %i.e, %bb.c ] ; 2 uses
  %i.f = extractvalue { i64, i64 } %.merged.i.i.i, 0 ; 3 uses
  %i.g = extractvalue { i64, i64 } %.merged.i.i.i, 1 ; 2 uses
  %i.h = icmp ult i64 %i.f, 63
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.f
  %i.j = load atomic ptr, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %select.unfold, label %bb.d

bb.d:                                             ; preds = %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellINtNtBY_6option6OptionNtNtCse0v0U5LqnG1_12thread_local9thread_id6ThreadEEE4withNCNvB1P_3get0B1N_ECsiWMK64dCVjf_20pingora_header_serde.exit
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.g ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load atomic i8, ptr %i.m acquire, align 1
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %select.unfold, label %_RNvMs3_Cse0v0U5LqnG1_12thread_localINtB5_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellNtCs13pZzHa6nno_9zstd_safe4DCtxEE9get_innerCsiWMK64dCVjf_20pingora_header_serde.exit

_RNvMs3_Cse0v0U5LqnG1_12thread_localINtB5_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellNtCs13pZzHa6nno_9zstd_safe4DCtxEE9get_innerCsiWMK64dCVjf_20pingora_header_serde.exit: ; preds = %bb.d, %select.unfold
  %.sroa.0.0 = phi ptr [ %i.p, %select.unfold ], [ %i.l, %bb.d ]
  ret ptr %.sroa.0.0

select.unfold:                                    ; preds = %bb.d, %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellINtNtBY_6option6OptionNtNtCse0v0U5LqnG1_12thread_local9thread_id6ThreadEEE4withNCNvB1P_3get0B1N_ECsiWMK64dCVjf_20pingora_header_serde.exit
  %i.o = tail call noundef nonnull ptr @_RNvMs5_Cs13pZzHa6nno_9zstd_safeNtB5_4DCtx6create(), !noalias !43
  %i.p = tail call fastcc noundef nonnull align 8 ptr @_RNvMs3_Cse0v0U5LqnG1_12thread_localINtB5_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellNtCs13pZzHa6nno_9zstd_safe4DCtxEE6insertCsiWMK64dCVjf_20pingora_header_serde(ptr noundef nonnull align 8 %0, i64 noundef %i.f, i64 noundef %i.g, i64 noundef 0, ptr noundef nonnull %i.o)
  br label %_RNvMs3_Cse0v0U5LqnG1_12thread_localINtB5_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellNtCs13pZzHa6nno_9zstd_safe4DCtxEE9get_innerCsiWMK64dCVjf_20pingora_header_serde.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCse0v0U5LqnG1_12thread_local5EntryINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEECsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !range !46, !alias.scope !47, !noundef !9
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_RNvXs_Cse0v0U5LqnG1_12thread_localINtB4_5EntryINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEENtNtNtBN_3ops4drop4Drop4dropCsiWMK64dCVjf_20pingora_header_serde.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !50 ; 2 uses
  %i.f = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsiWMK64dCVjf_20pingora_header_serde.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !59, !nonnull !9, !noundef !9
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !60
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsiWMK64dCVjf_20pingora_header_serde.exit.i.i.i.i

bb.e:                                             ; preds = %bb.b
  %.val.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !50 ; 2 uses
  %i.h = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.h, label %_RNvXs_Cse0v0U5LqnG1_12thread_localINtB4_5EntryINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEENtNtNtBN_3ops4drop4Drop4dropCsiWMK64dCVjf_20pingora_header_serde.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !59, !nonnull !9, !noundef !9
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !63
  br label %_RNvXs_Cse0v0U5LqnG1_12thread_localINtB4_5EntryINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEENtNtNtBN_3ops4drop4Drop4dropCsiWMK64dCVjf_20pingora_header_serde.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsiWMK64dCVjf_20pingora_header_serde.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.e

_RNvXs_Cse0v0U5LqnG1_12thread_localINtB4_5EntryINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEENtNtNtBN_3ops4drop4Drop4dropCsiWMK64dCVjf_20pingora_header_serde.exit: ; preds = %bb.a, %bb.e, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load i64, ptr %i.a, align 8, !alias.scope !66 ; 2 uses
  %i.c = icmp eq i64 %.val2.i.i, 0
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsiWMK64dCVjf_20pingora_header_serde.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i = load ptr, ptr %i.d, align 8, !alias.scope !73, !nonnull !9, !noundef !9
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !74
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsiWMK64dCVjf_20pingora_header_serde.exit.i.i

bb.d:                                             ; preds = %bb.a
  %.val.i.i = load i64, ptr %i.a, align 8, !alias.scope !66 ; 2 uses
  %i.e = icmp eq i64 %.val.i.i, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsiWMK64dCVjf_20pingora_header_serde.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.f, align 8, !alias.scope !73, !nonnull !9, !noundef !9
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !77
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsiWMK64dCVjf_20pingora_header_serde.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsiWMK64dCVjf_20pingora_header_serde.exit.i.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsiWMK64dCVjf_20pingora_header_serde.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCs1ll6eLl40nD_8httparse6HeaderEECsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCs1ll6eLl40nD_8httparse6HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2 = load i64, ptr %0, align 8, !alias.scope !80 ; 2 uses
  %i.b = icmp eq i64 %.val2, 0
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtCs1ll6eLl40nD_8httparse6HeaderEECsiWMK64dCVjf_20pingora_header_serde.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSINtCse0v0U5LqnG1_12thread_local5EntryINtNtB4_4cell7RefCellNtCs13pZzHa6nno_9zstd_safe4DCtxEEEECsiWMK64dCVjf_20pingora_header_serde:bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.t, i64 noundef 8) #21
  resume { ptr, i32 } %i.i
}

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
define void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedRNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameBM_ECsiWMK64dCVjf_20pingora_header_serde(i8 noundef range(i8 0, 3) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noundef %3, ptr %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19assert_failed_inner(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noundef %3, ptr %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #24
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %bb.e, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !range !116, !alias.scope !113, !noundef !9 ; 2 uses
  %i.f = shl nuw i64 %i.e, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 range(i64 0, -1) %i.f)
  %i.g = icmp eq i64 %4, 1
  %i.h = icmp ult i64 %4, 1025
  %..i = select i1 %i.h, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.g, i64 8, i64 %..i
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 range(i64 0, -1) %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !113
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.i, align 8, !alias.scope !113
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.e, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !113
  %i.j = load i64, ptr %i.a, align 8, !range !117, !noalias !113, !noundef !9
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.l, align 8, !range !118, !noalias !113, !noundef !9
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !113
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.o, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ], [ 0, %bb.a ]
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #22
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.l, align 8, !noalias !113, !nonnull !9, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !113
  store ptr %i.p, ptr %i.i, align 8, !alias.scope !113
  %i.q = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.q)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !113
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtCs1ll6eLl40nD_8httparse6HeaderNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsiWMK64dCVjf_20pingora_header_serde(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = shl i64 %2, 5                            ; 4 uses
  %i.d = icmp ugt i64 %2, 576460752303423487
  %.not.i.i = icmp ugt i64 %i.c, 9223372036854775800
  %or.cond.i.i = or i1 %i.d, %.not.i.i
  br i1 %or.cond.i.i, label %bb.e, label %bb.b, !prof !119

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiWMK64dCVjf_20pingora_header_serde.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !120
  %i.f = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #21, !noalias !120 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = ptrtoint ptr %i.f to i64
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiWMK64dCVjf_20pingora_header_serde.exit

bb.e:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.c) #22
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiWMK64dCVjf_20pingora_header_serde.exit: ; preds = %bb.b, %bb.d
  %.sroa.10.0.i = phi i64 [ %i.h, %bb.d ], [ 8, %bb.b ]
  %.sroa.4.0.i = phi i64 [ %2, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %i.i = inttoptr i64 %.sroa.10.0.i to ptr
  %i.j = icmp samesign ule i64 %2, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.j)
  store i64 %.sroa.4.0.i, ptr %i.b, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCs1ll6eLl40nD_8httparse6HeaderE11extend_withCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiWMK64dCVjf_20pingora_header_serde.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCs1ll6eLl40nD_8httparse6HeaderEECsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #25
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiWMK64dCVjf_20pingora_header_serde.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.i:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.m
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %i.b = icmp eq i64 %4, 0                        ; 2 uses
  %i.c = load i64, ptr %0, align 8, !alias.scope !123 ; 2 uses
  %.sroa.05.0.i = select i1 %i.b, i64 -1, i64 %i.c
  %i.d = sub i64 %.sroa.05.0.i, %1
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  br i1 %i.b, label %bb.f, label %bb.c, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %2, %1                           ; 4 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !129
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val12.i.i = load ptr, ptr %i.h, align 8, !alias.scope !129
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val12.i.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !129
  %i.i = load i64, ptr %i.a, align 8, !range !117, !noalias !129, !noundef !9
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.j, label %bb.e, label %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsiWMK64dCVjf_20pingora_header_serde.exit.i

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.k, align 8, !range !118, !noalias !129, !noundef !9
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !129
  br label %bb.f

_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsiWMK64dCVjf_20pingora_header_serde.exit.i: ; preds = %bb.d
  %i.o = load ptr, ptr %i.k, align 8, !noalias !129, !nonnull !9, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !129
  store ptr %i.o, ptr %i.h, align 8, !alias.scope !129
  %i.p = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.p)
  store i64 %i.f, ptr %0, align 8, !alias.scope !129
  br label %bb.g

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.e
  %.sroa.3.0.i.ph = phi i64 [ %i.n, %bb.e ], [ undef, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.0.i.ph = phi i64 [ %i.l, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ]
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.3.0.i.ph) #22
  unreachable

bb.g:                                             ; preds = %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsiWMK64dCVjf_20pingora_header_serde.exit.i, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %3) unnamed_addr #3 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = icmp eq i64 %3, 0
  %i.c = icmp eq i64 %.val, 0
  %or.cond.i = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val11 = load ptr, ptr %i.a, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %4 = mul nuw i64 %.val, %3                      ; 3 uses
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val11, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) %2) #21
  %i.e = inttoptr i64 %2 to ptr
  store ptr %i.e, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit
  store i64 %1, ptr %0, align 8
  br label %bb.e

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %1                       ; 3 uses
  %i.g = icmp ule i64 %i.f, %4
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.val11, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %i.f) #21 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit
  store ptr %i.h, ptr %i.a, align 8
  %i.j = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.j)
  br label %bb.c

bb.e:                                             ; preds = %bb.a, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit, %bb.c
  %.sroa.4.0 = phi i64 [ undef, %bb.c ], [ %i.f, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ -1, %bb.c ], [ %2, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit ], [ -1, %bb.a ]
  %i.k = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.l = insertvalue { i64, i64 } %i.k, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.l
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_Cse0v0U5LqnG1_12thread_localINtB5_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE6insertCsiWMK64dCVjf_20pingora_header_serde(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = icmp ult i64 %1, 63
  tail call void @llvm.assume(i1 %i.b)
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 2 uses
  %i.d = load atomic ptr, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.m

bb.b:                                             ; preds = %.noexc, %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.g = shl nuw nsw i64 1, %1                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecINtCse0v0U5LqnG1_12thread_local5EntryINtNtCskKLDkoKarTP_4core4cell7RefCellIBL_hEEEEINtB2_12SpecFromIterBU_INtNtNtNtB1A_4iter8adapters3map3MapINtNtNtB1A_3ops5range5RangejENCINvBX_15allocate_bucketB1v_E0EE9from_iterCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef 0, i64 noundef range(i64 1, 4611686018427387905) %i.g)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.c
  %i.h = invoke { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtCse0v0U5LqnG1_12thread_local5EntryINtNtCskKLDkoKarTP_4core4cell7RefCellIBv_hEEEE16into_boxed_sliceCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = extractvalue { ptr, i64 } %i.h, 0        ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.j = cmpxchg ptr %i.c, ptr null, ptr %i.i acq_rel acquire, align 8 ; 2 uses
  %i.k = extractvalue { ptr, i1 } %i.j, 1
  %i.l = extractvalue { ptr, i1 } %i.j, 0
  br i1 %i.k, label %bb.m, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCse0v0U5LqnG1_12thread_local5EntryINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEECsiWMK64dCVjf_20pingora_header_serde.exit.i.i
  %.sroa.0.09.i.i = phi i64 [ %i.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCse0v0U5LqnG1_12thread_local5EntryINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEECsiWMK64dCVjf_20pingora_header_serde.exit.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %.sroa.0.09.i.i ; 4 uses
  %i.n = add nuw nsw i64 %.sroa.0.09.i.i, 1       ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.p = load i8, ptr %i.o, align 1, !range !46, !alias.scope !130, !noundef !9
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCse0v0U5LqnG1_12thread_local5EntryINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEECsiWMK64dCVjf_20pingora_header_serde.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !137 ; 2 uses
  %i.t = icmp eq i64 %.val2.i.i.i.i.i.i.i, 0
  br i1 %i.t, label %.body.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.val3.i.i.i.i.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !146, !nonnull !9, !noundef !9
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !147
  br label %.body.i.i

bb.h:                                             ; preds = %bb.e
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !137 ; 2 uses
  %i.v = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.v, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCse0v0U5LqnG1_12thread_local5EntryINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEECsiWMK64dCVjf_20pingora_header_serde.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !146, !nonnull !9, !noundef !9
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !150
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCse0v0U5LqnG1_12thread_local5EntryINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEECsiWMK64dCVjf_20pingora_header_serde.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCse0v0U5LqnG1_12thread_local5EntryINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEECsiWMK64dCVjf_20pingora_header_serde.exit.i.i: ; preds = %bb.i, %bb.h, %.lr.ph.i.i
  %i.x = icmp eq i64 %i.n, %i.g
  br i1 %i.x, label %bb.l, label %.lr.ph.i.i

bb.j:                                             ; preds = %.lr.ph
  %i.y = add i64 %.sroa.0.1.i.i32, 1              ; 2 uses
  %i.z = icmp eq i64 %i.y, %i.g
  br i1 %i.z, label %._crit_edge, label %.lr.ph

.body.i.i:                                        ; preds = %bb.g, %bb.f
  %i.aa = icmp eq i64 %i.n, %i.g
  br i1 %i.aa, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i, %bb.j
  %.sroa.0.1.i.i32 = phi i64 [ %i.y, %bb.j ], [ %i.n, %.body.i.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %.sroa.0.1.i.i32
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCse0v0U5LqnG1_12thread_local5EntryINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEECsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ab) #25
          to label %bb.j unwind label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

._crit_edge:                                      ; preds = %bb.j, %.body.i.i
  %i.ad = shl nuw nsw i64 40, %1
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef %i.ad, i64 noundef 8) #21
  br label %.body

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCse0v0U5LqnG1_12thread_local5EntryINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEECsiWMK64dCVjf_20pingora_header_serde.exit.i.i
  %i.ae = shl nuw nsw i64 40, %1
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef %i.ae, i64 noundef 8) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.d, %bb.l
  %.sroa.01.0 = phi ptr [ %i.d, %bb.a ], [ %i.l, %bb.l ], [ %i.i, %bb.d ] ; 2 uses
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %.sroa.01.0, i64 %2 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32 ; 2 uses
  %i.ah = load atomic i8, ptr %i.ag acquire, align 1
  %.not.i = icmp eq i8 %i.ah, 0
  %.not14 = icmp eq ptr %.sroa.01.0, null
  %.not = or i1 %.not14, %.not.i
  br i1 %.not, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %bb.q unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.ai, align 8, !alias.scope !153 ; 2 uses
  %i.ak = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.ak, label %common.resume, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val3.i.i.i = load ptr, ptr %i.al, align 8, !alias.scope !162, !nonnull !9, !noundef !9
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !163
  br label %common.resume

bb.q:                                             ; preds = %bb.n
  %.val.i.i.i = load i64, ptr %i.ai, align 8, !alias.scope !153 ; 2 uses
  %i.am = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.am, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsiWMK64dCVjf_20pingora_header_serde.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val1.i.i.i = load ptr, ptr %i.an, align 8, !alias.scope !162, !nonnull !9, !noundef !9
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !166
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsiWMK64dCVjf_20pingora_header_serde.exit

common.resume:                                    ; preds = %.body, %bb.o, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %i.aj, %bb.o ], [ %i.aj, %bb.p ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsiWMK64dCVjf_20pingora_header_serde.exit: ; preds = %bb.r, %bb.q, %bb.s
  ret ptr %i.af

bb.s:                                             ; preds = %bb.m
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  store atomic i8 1, ptr %i.ag release, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ap = atomicrmw add ptr %i.ao, i64 1 release, align 8 ; 0 uses
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsiWMK64dCVjf_20pingora_header_serde.exit

.body:                                            ; preds = %bb.b, %._crit_edge
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.b ], [ %i.s, %._crit_edge ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef align 8 dereferenceable(32) %3) #25
          to label %common.resume unwind label %bb.t

bb.t:                                             ; preds = %.body
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_Cse0v0U5LqnG1_12thread_localINtB5_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellNtCs13pZzHa6nno_9zstd_safe4CCtxEE6insertCsiWMK64dCVjf_20pingora_header_serde(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store i64 %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store ptr %4, ptr %i.c, align 8
  %i.d = icmp ult i64 %1, 63
  tail call void @llvm.assume(i1 %i.d)
end_hunk_1
