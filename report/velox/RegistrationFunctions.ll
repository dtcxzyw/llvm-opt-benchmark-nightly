inline.NumInlined: 21036
inline.NumDeleted: 6221
loop-unroll.NumCompletelyUnrolled: 92
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSC_lEEEJSC_lEEEE6unpackILi0ELb0EJEEEvRNSH_12ApplyContextERSt6vectorISt8optionalINS1_18LocalDecodedVectorEESaISO_EERKSL_ISt10shared_ptrINS0_10BaseVectorEESaISU_EEDpRT1_:bb.a

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS3_10VectorExecEEESB_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSG_lEEEJSG_lEEEE8applyUdfIZNKSL_7iterateIJNS3_12VectorReaderISG_EENS3_24ConstantFlatVectorReaderIlEEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_EUlSX_E_ZNKSM_IS12_EEvST_SX_EUlSX_E0_EEvRKS1_SX_SZ_EUlSX_E_EEvSX_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.2824) align 8 %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.1964", align 16  ; 5 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.2826", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.facebook::velox::Status", align 8 ; 8 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %8 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !728, !range !106, !noundef !107
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !80, !range !106
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !729
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !731  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !732
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !515    ; 2 uses
  %.not.i.i = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i200.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i200.not, label %.critedge.i.i.i, label %.lr.ph202

bb.f:                                             ; preds = %.lr.ph202
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i201, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph202, label %.critedge.i.i.i, !llvm.loop !733

.lr.ph202:                                        ; preds = %bb.e, %bb.f
  %indvars.iv.i201 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i201, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !161
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !733

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %.not38.i.i.i = icmp eq i32 %i.i, %i.n
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i
  %i.t = lshr i32 %i.i, 6
  %i.u = and i32 %i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %notmask.i40.i.i.i = shl nsw i64 -1, %i.v
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !161
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph202, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph202 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i37 = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i37, label %bb.h, label %bb.bi

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !731 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !729 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.lr.ph166, label %.loopexit149

.lr.ph166:                                        ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ao = sext i32 %i.ag to i64
  %.pre = load ptr, ptr %i.ai, align 8, !tbaa !5448 ; 2 uses
  %.pre175 = load ptr, ptr %1, align 8, !tbaa !5451 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre175, i64 8
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph166, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS1_10VectorExecEEES9_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSE_lEEEJSE_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISE_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSK_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_ENKUlSV_E_clIiEEDaSV_.exit
  %indvars.iv = phi i64 [ %i.ao, %.lr.ph166 ], [ %indvars.iv.next, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS1_10VectorExecEEES9_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSE_lEEEJSE_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISE_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSK_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_ENKUlSV_E_clIiEEDaSV_.exit ] ; 4 uses
  %i.aq = load ptr, ptr %.pre175, align 8, !tbaa !5452, !nonnull !107, !align !610
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = trunc nsw i64 %indvars.iv to i32        ; 4 uses
  store i32 %i.as, ptr %i.ar, align 8, !tbaa !386
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.at = load ptr, ptr %i.ap, align 8, !tbaa !5455, !nonnull !107, !align !610 ; 2 uses
  %i.au = load ptr, ptr %.pre175, align 8, !tbaa !5452, !nonnull !107, !align !610 ; 12 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !5456, !noalias !5459, !nonnull !107, !align !610 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !5462, !noalias !5459, !nonnull !107, !align !610 ; 2 uses
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !4574, !nonnull !107, !align !610 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 58
  %i.bb = load i8, ptr %i.ba, align 2, !tbaa !1308, !range !106, !noundef !107
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %.noexc16, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 59
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !1309, !range !106, !noundef !107
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !1310
  br label %.noexc16

bb.l:                                             ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1311
  %i.bk = shl nsw i64 %indvars.iv, 2
  %i.bl = getelementptr inbounds i8, ptr %i.bj, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !88
  br label %.noexc16

.noexc16:                                         ; preds = %bb.i, %bb.k, %bb.l
  %.0.i.i = phi i32 [ %i.bm, %bb.l ], [ %i.bh, %bb.k ], [ %i.as, %bb.i ] ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.bo = load ptr, ptr %i.ay, align 8, !tbaa !3588, !noalias !5463
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !3591, !noalias !5463
  %i.br = sext i32 %i.bq to i64
  %i.bs = mul nsw i64 %indvars.iv, %i.br
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !161, !noalias !5463 ; 8 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !4522
  %i.bx = sext i32 %.0.i.i to i64                 ; 5 uses
  %i.by = load ptr, ptr %i.bw, align 8, !tbaa !1305, !nonnull !107, !align !610 ; 11 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1307 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 58
  %i.cc = load i8, ptr %i.cb, align 2, !tbaa !1308, !range !106, !noundef !107
  %i.cd = trunc nuw i8 %i.cc to i1                ; 3 uses
  br i1 %i.cd, label %.noexc17, label %bb.m

bb.m:                                             ; preds = %.noexc16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 59
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !1309, !range !106, !noundef !107
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ch = getelementptr inbounds nuw i8, ptr %i.by, i64 64
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !1310
  br label %.noexc17

bb.o:                                             ; preds = %bb.m
  %i.cj = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !1311
  %i.cl = shl nsw i64 %i.bx, 2
  %i.cm = getelementptr inbounds i8, ptr %i.ck, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !88
  br label %.noexc17

.noexc17:                                         ; preds = %bb.o, %bb.n, %.noexc16
  %.0.i.i.i.i.i = phi i32 [ %i.cn, %bb.o ], [ %i.ci, %bb.n ], [ %.0.i.i, %.noexc16 ]
  %i.co = sext i32 %.0.i.i.i.i.i to i64
  %i.cp = shl nsw i64 %i.co, 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cp
  %.0.copyload.i.i.i.i.i = load i128, ptr %i.cq, align 1
  %i.cr = and i128 %.0.copyload.i.i.i.i.i, -4294967296
  %i.cs = icmp eq i128 %i.cr, 281470681743360     ; 4 uses
  %i.ct = icmp slt i64 %i.bu, 0
  %i.cu = icmp sgt i64 %i.bu, 32
  %or.cond.i = and i1 %i.cu, %i.cs
  %or.cond39.i = or i1 %i.ct, %or.cond.i
  %or.cond39.i.not = xor i1 %or.cond39.i, true
  %i.cv = icmp ult i64 %i.bu, 129
  %or.cond.not = select i1 %i.cs, i1 true, i1 %i.cv
  %or.cond = select i1 %or.cond39.i.not, i1 %or.cond.not, i1 false
  br i1 %or.cond, label %.noexc21, label %bb.p

bb.p:                                             ; preds = %.noexc17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.cw = select i1 %i.cs, i32 4, i32 6
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34, !noalias !5466
  store i32 %i.cw, ptr %3, align 16, !tbaa !27, !noalias !5466
  store i64 %i.bu, ptr %i.aj, align 16, !tbaa !27, !noalias !5466
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.226, i64 35, i64 49, ptr nonnull %3)
          to label %.noexc18 unwind label %.loopexit.split-lp

.noexc18:                                         ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34, !noalias !5466
  invoke void @_ZN8facebook5velox12errorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %.noexc18
  %i.cx = load ptr, ptr %5, align 8, !tbaa !8     ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.ak
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.cz = load i64, ptr %i.ak, align 8, !tbaa !27
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions23IPPrefixSubnetsFunctionINS0_4exec10VectorExecEE4callERNS3_11ArrayWriterINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEERKNS3_7RowViewILb1EJnaEEERKlE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %4) #37
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  unreachable

bb.s:                                             ; preds = %.noexc18
  %i.db = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.dc = load ptr, ptr %5, align 8, !tbaa !8     ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.ak
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.s
  %i.de = load i64, ptr %i.ak, align 8, !tbaa !27
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.dh = load ptr, ptr %4, align 8, !tbaa !8     ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.al
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.t
  %i.dj = load i64, ptr %i.al, align 8, !tbaa !27
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %.pn.i15 = phi { ptr, i32 } [ %i.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ], [ %i.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ], [ %i.dg, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %.body

.noexc21:                                         ; preds = %.noexc17
  %i.dl = load ptr, ptr %i.bn, align 8, !tbaa !4524
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !4664, !nonnull !107, !align !610 ; 8 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !1307 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 58
  %i.dq = load i8, ptr %i.dp, align 2, !tbaa !1308, !range !106, !noundef !107
  %i.dr = trunc nuw i8 %i.dq to i1                ; 2 uses
  br i1 %i.dr, label %.noexc22, label %bb.u

bb.u:                                             ; preds = %.noexc21
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 59
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !1309, !range !106, !noundef !107
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dm, i64 64
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !1310
  br label %.noexc22

bb.w:                                             ; preds = %bb.u
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !1311
  %i.dz = shl nsw i64 %i.bx, 2
  %i.ea = getelementptr inbounds i8, ptr %i.dy, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !88
  br label %.noexc22

.noexc22:                                         ; preds = %bb.w, %bb.v, %.noexc21
  %.0.i.i.i.i.i49 = phi i32 [ %i.eb, %bb.w ], [ %i.dw, %bb.v ], [ %.0.i.i, %.noexc21 ]
  %i.ec = sext i32 %.0.i.i.i.i.i49 to i64
  %i.ed = getelementptr inbounds i8, ptr %i.do, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !27
  %i.ef = sext i8 %i.ee to i64                    ; 2 uses
  %.not.i = icmp slt i64 %i.bu, %i.ef             ; 2 uses
  %i.eg = sub nsw i64 %i.bu, %i.ef
  %i.eh = trunc i64 %i.eg to i32
  %i.ei = shl nuw i32 1, %i.eh
  %i.ej = select i1 %.not.i, i32 0, i32 %i.ei     ; 2 uses
  %i.ek = sext i32 %i.ej to i128
  switch i32 %i.ej, label %.noexc28 [
    i32 0, label %.loopexit147
    i32 1, label %.noexc23
  ]

.noexc23:                                         ; preds = %.noexc22
  br i1 %i.cd, label %.noexc25, label %bb.x

bb.x:                                             ; preds = %.noexc23
  %i.el = getelementptr inbounds nuw i8, ptr %i.by, i64 59
  %i.em = load i8, ptr %i.el, align 1, !tbaa !1309, !range !106, !noundef !107
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.eo = getelementptr inbounds nuw i8, ptr %i.by, i64 64
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !1310
  br label %.noexc25

bb.z:                                             ; preds = %bb.x
  %i.eq = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !1311
  %i.es = shl nsw i64 %i.bx, 2
  %i.et = getelementptr inbounds i8, ptr %i.er, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !88
  br label %.noexc25

.noexc25:                                         ; preds = %.noexc23, %bb.y, %bb.z
  %.0.i.i.i.i.i53 = phi i32 [ %i.eu, %bb.z ], [ %i.ep, %bb.y ], [ %.0.i.i, %.noexc23 ]
  %i.ev = sext i32 %.0.i.i.i.i.i53 to i64
  %i.ew = shl nsw i64 %i.ev, 4
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ew
  %.0.copyload.i.i.i.i.i54 = load i128, ptr %i.ex, align 1
  br i1 %i.dr, label %.noexc26, label %bb.aa

bb.aa:                                            ; preds = %.noexc25
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dm, i64 59
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !1309, !range !106, !noundef !107
  %i.fa = trunc nuw i8 %i.ez to i1
  br i1 %i.fa, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dm, i64 64
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !1310
  br label %.noexc26

bb.ac:                                            ; preds = %bb.aa
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !1311
  %i.ff = shl nsw i64 %i.bx, 2
  %i.fg = getelementptr inbounds i8, ptr %i.fe, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !88
  br label %.noexc26

.noexc26:                                         ; preds = %bb.ac, %bb.ab, %.noexc25
  %.0.i.i.i.i.i59 = phi i32 [ %i.fh, %bb.ac ], [ %i.fc, %bb.ab ], [ %.0.i.i, %.noexc25 ]
  %i.fi = sext i32 %.0.i.i.i.i.i59 to i64
  %i.fj = getelementptr inbounds i8, ptr %i.do, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store i8 %i.fk, ptr %2, align 16, !tbaa !3691, !alias.scope !5469
  store i128 %.0.copyload.i.i.i.i.i54, ptr %i.am, align 16, !tbaa !3696, !alias.scope !5469
  %i.fl = getelementptr inbounds nuw i8, ptr %i.au, i64 60 ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !5137 ; 2 uses
  %i.fn = add nsw i32 %i.fm, 1                    ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.au, i64 56 ; 3 uses
  %i.fp = load i8, ptr %i.fo, align 8, !tbaa !5164, !range !106, !noundef !107
  %i.fq = trunc nuw i8 %i.fp to i1
  br i1 %i.fq, label %bb.ad, label %_ZN8facebook5velox4exec11ArrayWriterINS0_10CustomTypeINS0_9IPPrefixTELb0EEEE25commitMostRecentChildItemEv.exit.i.i

bb.ad:                                            ; preds = %.noexc26
  %i.fr = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !5145 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !96
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8
  invoke void %i.fv(ptr noundef nonnull align 8 dereferenceable(112) %i.fs, i1 noundef zeroext true)
          to label %.noexc61 unwind label %.loopexit.split-lp, !inline_history !5193

.noexc61:                                         ; preds = %bb.ad
  store i8 0, ptr %i.fo, align 8, !tbaa !5164
  br label %_ZN8facebook5velox4exec11ArrayWriterINS0_10CustomTypeINS0_9IPPrefixTELb0EEEE25commitMostRecentChildItemEv.exit.i.i
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS3_10VectorExecEEESB_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSG_lEEEJSG_lEEEE8applyUdfIZNKSL_7iterateIJNS3_12VectorReaderISG_EENS3_24ConstantFlatVectorReaderIlEEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_EUlSX_E_ZNKSM_IS12_EEvST_SX_EUlSX_E0_EEvRKNS0_17SelectivityVectorESX_SZ_EUlSX_E_EEvPKmiibSX_:bb.a
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ashr i32 %2, 6
  %i.h = and i32 %2, 63
  %i.i = zext nneg i32 %i.h to i64
  %notmask.i.i = shl nsw i64 -1, %i.i
  %i.j = xor i64 %notmask.i.i, -1
  %i.k = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask.i.i.i, -1
  %i.n = sub nsw i32 64, %i.k
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  %i.q = and i64 %i.p, %i.j
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS3_10VectorExecEEESB_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSG_lEEEJSG_lEEEE8applyUdfIZNKSL_7iterateIJNS3_12VectorReaderISG_EENS3_24ConstantFlatVectorReaderIlEEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_EUlSX_E_ZNKSM_IS12_EEvST_SX_EUlSX_E0_EEvRKNS0_17SelectivityVectorESX_SZ_EUlSX_E_EEvPKmiibSX_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS4_10VectorExecEEESC_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSH_lEEEJSH_lEEEE8applyUdfIZNKSM_7iterateIJNS4_12VectorReaderISH_EENS4_24ConstantFlatVectorReaderIlEEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSU_SY_EUlSY_E_ZNKSN_IS13_EEvSU_SY_EUlSY_E0_EEvRKNS0_17SelectivityVectorESY_S10_EUlSY_E_EEvPKmiibSY_EUlimE_ZNS3_IS19_EEvS1B_iibSY_EUliE_EEviiSY_S10_.exit

bb.d:                                             ; preds = %bb.b
  %.not32.i = icmp eq i32 %1, %i.d
  br i1 %.not32.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sdiv i32 %1, 64
  %i.s = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %notmask.i.i35.i = shl nsw i64 -1, %i.t
  %i.u = xor i64 %notmask.i.i35.i, -1
  %i.v = sub nsw i32 64, %i.s
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %i.u, %i.w
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS3_10VectorExecEEESB_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSG_lEEEJSG_lEEEE8applyUdfIZNKSL_7iterateIJNS3_12VectorReaderISG_EENS3_24ConstantFlatVectorReaderIlEEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_EUlSX_E_ZNKSM_IS12_EEvST_SX_EUlSX_E0_EEvRKNS0_17SelectivityVectorESX_SZ_EUlSX_E_EEvPKmiibSX_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS4_10VectorExecEEESC_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSH_lEEEJSH_lEEEE8applyUdfIZNKSM_7iterateIJNS4_12VectorReaderISH_EENS4_24ConstantFlatVectorReaderIlEEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSU_SY_EUlSY_E_ZNKSN_IS13_EEvSU_SY_EUlSY_E0_EEvRKNS0_17SelectivityVectorESY_S10_EUlSY_E_EEvPKmiibSY_EUlimE_ZNS3_IS19_EEvS1B_iibSY_EUliE_EEviiSY_S10_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS3_10VectorExecEEESB_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSG_lEEEJSG_lEEEE8applyUdfIZNKSL_7iterateIJNS3_12VectorReaderISG_EENS3_24ConstantFlatVectorReaderIlEEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_EUlSX_E_ZNKSM_IS12_EEvST_SX_EUlSX_E0_EEvRKNS0_17SelectivityVectorESX_SZ_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !5480

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS3_10VectorExecEEESB_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSG_lEEEJSG_lEEEE8applyUdfIZNKSL_7iterateIJNS3_12VectorReaderISG_EENS3_24ConstantFlatVectorReaderIlEEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_EUlSX_E_ZNKSM_IS12_EEvST_SX_EUlSX_E0_EEvRKNS0_17SelectivityVectorESX_SZ_EUlSX_E_EEvPKmiibSX_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS4_10VectorExecEEESC_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSH_lEEEJSH_lEEEE8applyUdfIZNKSM_7iterateIJNS4_12VectorReaderISH_EENS4_24ConstantFlatVectorReaderIlEEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSU_SY_EUlSY_E_ZNKSN_IS13_EEvSU_SY_EUlSY_E0_EEvRKNS0_17SelectivityVectorESY_S10_EUlSY_E_EEvPKmiibSY_EUlimE_ZNS3_IS19_EEvS1B_iibSY_EUliE_EEviiSY_S10_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS4_10VectorExecEEESC_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSH_lEEEJSH_lEEEE8applyUdfIZNKSM_7iterateIJNS4_12VectorReaderISH_EENS4_24ConstantFlatVectorReaderIlEEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSU_SY_EUlSY_E_ZNKSN_IS13_EEvSU_SY_EUlSY_E0_EEvRKNS0_17SelectivityVectorESY_S10_EUlSY_E_EEvPKmiibSY_EUlimE_ZNS3_IS19_EEvS1B_iibSY_EUliE_EEviiSY_S10_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS3_10VectorExecEEESB_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSG_lEEEJSG_lEEEE8applyUdfIZNKSL_7iterateIJNS3_12VectorReaderISG_EENS3_24ConstantFlatVectorReaderIlEEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_EUlSX_E_ZNKSM_IS12_EEvST_SX_EUlSX_E0_EEvRKNS0_17SelectivityVectorESX_SZ_EUlSX_E_EEvPKmiibSX_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::tuple.1964", align 16  ; 5 uses
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.2826", align 16 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.facebook::velox::Status", align 8 ; 8 uses
  %8 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %9 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !5481, !range !106, !noundef !107
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !5483
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !161
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit155, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS1_10VectorExecEEES9_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSE_lEEEJSE_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISE_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSK_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_ENKUlSV_E_clIiEEDaSV_.exit
  %.0171 = phi i64 [ %i.k, %.preheader ], [ %i.ms, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS1_10VectorExecEEES9_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSE_lEEEJSE_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISE_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSK_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_ENKUlSV_E_clIiEEDaSV_.exit ] ; 3 uses
  %i.t = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0171, i1 true)
  %i.u = trunc nuw nsw i64 %i.t to i32
  %i.v = or disjoint i32 %i.m, %i.u               ; 6 uses
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !5448 ; 2 uses
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !5451, !nonnull !107, !align !610 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !5452, !nonnull !107, !align !610
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i32 %i.v, ptr %i.z, align 8, !tbaa !386
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !5455, !nonnull !107, !align !610 ; 2 uses
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !5452, !nonnull !107, !align !610 ; 12 uses
  %i.ad = sext i32 %i.v to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !5456, !noalias !5484, !nonnull !107, !align !610 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !5462, !noalias !5484, !nonnull !107, !align !610 ; 2 uses
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !4574, !nonnull !107, !align !610 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 58
  %i.ak = load i8, ptr %i.aj, align 2, !tbaa !1308, !range !106, !noundef !107
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %.noexc23, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 59
  %i.an = load i8, ptr %i.am, align 1, !tbaa !1309, !range !106, !noundef !107
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !1310
  br label %.noexc23

bb.e:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1311
  %i.at = shl nsw i64 %i.ad, 2
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !88
  br label %.noexc23

.noexc23:                                         ; preds = %bb.b, %bb.d, %bb.e
  %.0.i.i = phi i32 [ %i.av, %bb.e ], [ %i.aq, %bb.d ], [ %i.v, %bb.b ] ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ax = load ptr, ptr %i.ah, align 8, !tbaa !3588, !noalias !5487
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !3591, !noalias !5487
  %i.ba = mul nsw i32 %i.az, %i.v
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.bb
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !161, !noalias !5487 ; 8 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !4522
  %i.bg = sext i32 %.0.i.i to i64                 ; 5 uses
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !1305, !nonnull !107, !align !610 ; 11 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1307 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 58
  %i.bl = load i8, ptr %i.bk, align 2, !tbaa !1308, !range !106, !noundef !107
  %i.bm = trunc nuw i8 %i.bl to i1                ; 3 uses
  br i1 %i.bm, label %.noexc24, label %bb.f

bb.f:                                             ; preds = %.noexc23
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 59
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !1309, !range !106, !noundef !107
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !1310
  br label %.noexc24

bb.h:                                             ; preds = %bb.f
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !1311
  %i.bu = shl nsw i64 %i.bg, 2
  %i.bv = getelementptr inbounds i8, ptr %i.bt, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !88
  br label %.noexc24

.noexc24:                                         ; preds = %bb.h, %bb.g, %.noexc23
  %.0.i.i.i.i.i = phi i32 [ %i.bw, %bb.h ], [ %i.br, %bb.g ], [ %.0.i.i, %.noexc23 ]
  %i.bx = sext i32 %.0.i.i.i.i.i to i64
  %i.by = shl nsw i64 %i.bx, 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.by
  %.0.copyload.i.i.i.i.i = load i128, ptr %i.bz, align 1
  %i.ca = and i128 %.0.copyload.i.i.i.i.i, -4294967296
  %i.cb = icmp eq i128 %i.ca, 281470681743360     ; 4 uses
  %i.cc = icmp slt i64 %i.bd, 0
  %i.cd = icmp sgt i64 %i.bd, 32
  %or.cond.i = and i1 %i.cd, %i.cb
  %or.cond39.i = or i1 %i.cc, %or.cond.i
  %or.cond39.i.not = xor i1 %or.cond39.i, true
  %i.ce = icmp ult i64 %i.bd, 129
  %or.cond.not = select i1 %i.cb, i1 true, i1 %i.ce
  %or.cond = select i1 %or.cond39.i.not, i1 %or.cond.not, i1 false
  br i1 %or.cond, label %.noexc28, label %bb.i

bb.i:                                             ; preds = %.noexc24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.cf = select i1 %i.cb, i32 4, i32 6
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34, !noalias !5490
  store i32 %i.cf, ptr %4, align 16, !tbaa !27, !noalias !5490
  store i64 %i.bd, ptr %i.o, align 16, !tbaa !27, !noalias !5490
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.226, i64 35, i64 49, ptr nonnull %4)
          to label %.noexc25 unwind label %.loopexit.split-lp

.noexc25:                                         ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34, !noalias !5490
  invoke void @_ZN8facebook5velox12errorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %.noexc25
  %i.cg = load ptr, ptr %6, align 8, !tbaa !8     ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.p
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.ci = load i64, ptr %i.p, align 8, !tbaa !27
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions23IPPrefixSubnetsFunctionINS0_4exec10VectorExecEE4callERNS3_11ArrayWriterINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEERKNS3_7RowViewILb1EJnaEEERKlE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %5) #37
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  unreachable

bb.l:                                             ; preds = %.noexc25
  %i.ck = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.cl = load ptr, ptr %6, align 8, !tbaa !8     ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.p
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.l
  %i.cn = load i64, ptr %i.p, align 8, !tbaa !27
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.cq = load ptr, ptr %5, align 8, !tbaa !8     ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.q
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %bb.m
  %i.cs = load i64, ptr %i.q, align 8, !tbaa !27
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  %.pn.i22 = phi { ptr, i32 } [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ], [ %i.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49 ], [ %i.cp, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %.body

.noexc28:                                         ; preds = %.noexc24
  %i.cu = load ptr, ptr %i.aw, align 8, !tbaa !4524
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !4664, !nonnull !107, !align !610 ; 8 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !1307 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 58
  %i.cz = load i8, ptr %i.cy, align 2, !tbaa !1308, !range !106, !noundef !107
  %i.da = trunc nuw i8 %i.cz to i1                ; 2 uses
  br i1 %i.da, label %.noexc29, label %bb.n

bb.n:                                             ; preds = %.noexc28
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 59
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !1309, !range !106, !noundef !107
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.de = getelementptr inbounds nuw i8, ptr %i.cv, i64 64
  %i.df = load i32, ptr %i.de, align 8, !tbaa !1310
  br label %.noexc29

bb.p:                                             ; preds = %bb.n
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !1311
  %i.di = shl nsw i64 %i.bg, 2
  %i.dj = getelementptr inbounds i8, ptr %i.dh, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !88
  br label %.noexc29

.noexc29:                                         ; preds = %bb.p, %bb.o, %.noexc28
  %.0.i.i.i.i.i55 = phi i32 [ %i.dk, %bb.p ], [ %i.df, %bb.o ], [ %.0.i.i, %.noexc28 ]
  %i.dl = sext i32 %.0.i.i.i.i.i55 to i64
  %i.dm = getelementptr inbounds i8, ptr %i.cx, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !27
  %i.do = sext i8 %i.dn to i64                    ; 2 uses
  %.not.i = icmp slt i64 %i.bd, %i.do             ; 2 uses
  %i.dp = sub nsw i64 %i.bd, %i.do
  %i.dq = trunc i64 %i.dp to i32
  %i.dr = shl nuw i32 1, %i.dq
  %i.ds = select i1 %.not.i, i32 0, i32 %i.dr     ; 2 uses
  %i.dt = sext i32 %i.ds to i128
  switch i32 %i.ds, label %.noexc35 [
    i32 0, label %.loopexit153
    i32 1, label %.noexc30
  ]

.noexc30:                                         ; preds = %.noexc29
  br i1 %i.bm, label %.noexc32, label %bb.q

bb.q:                                             ; preds = %.noexc30
  %i.du = getelementptr inbounds nuw i8, ptr %i.bh, i64 59
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !1309, !range !106, !noundef !107
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !1310
  br label %.noexc32

bb.s:                                             ; preds = %bb.q
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !1311
  %i.eb = shl nsw i64 %i.bg, 2
  %i.ec = getelementptr inbounds i8, ptr %i.ea, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !88
  br label %.noexc32

.noexc32:                                         ; preds = %.noexc30, %bb.r, %bb.s
  %.0.i.i.i.i.i59 = phi i32 [ %i.ed, %bb.s ], [ %i.dy, %bb.r ], [ %.0.i.i, %.noexc30 ]
  %i.ee = sext i32 %.0.i.i.i.i.i59 to i64
  %i.ef = shl nsw i64 %i.ee, 4
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ef
  %.0.copyload.i.i.i.i.i60 = load i128, ptr %i.eg, align 1
  br i1 %i.da, label %.noexc33, label %bb.t

bb.t:                                             ; preds = %.noexc32
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cv, i64 59
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !1309, !range !106, !noundef !107
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cv, i64 64
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !1310
  br label %.noexc33

bb.v:                                             ; preds = %bb.t
  %i.em = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !1311
  %i.eo = shl nsw i64 %i.bg, 2
  %i.ep = getelementptr inbounds i8, ptr %i.en, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !88
  br label %.noexc33

.noexc33:                                         ; preds = %bb.v, %bb.u, %.noexc32
  %.0.i.i.i.i.i65 = phi i32 [ %i.eq, %bb.v ], [ %i.el, %bb.u ], [ %.0.i.i, %.noexc32 ]
  %i.er = sext i32 %.0.i.i.i.i.i65 to i64
  %i.es = getelementptr inbounds i8, ptr %i.cx, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  store i8 %i.et, ptr %3, align 16, !tbaa !3691, !alias.scope !5493
  store i128 %.0.copyload.i.i.i.i.i60, ptr %i.r, align 16, !tbaa !3696, !alias.scope !5493
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ac, i64 60 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !5137 ; 2 uses
  %i.ew = add nsw i32 %i.ev, 1                    ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ac, i64 56 ; 3 uses
  %i.ey = load i8, ptr %i.ex, align 8, !tbaa !5164, !range !106, !noundef !107
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.w, label %_ZN8facebook5velox4exec11ArrayWriterINS0_10CustomTypeINS0_9IPPrefixTELb0EEEE25commitMostRecentChildItemEv.exit.i.i

bb.w:                                             ; preds = %.noexc33
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !5145 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !96
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8
  invoke void %i.fe(ptr noundef nonnull align 8 dereferenceable(112) %i.fb, i1 noundef zeroext true)
          to label %.noexc67 unwind label %.loopexit.split-lp, !inline_history !5193

.noexc67:                                         ; preds = %bb.w
  store i8 0, ptr %i.ex, align 8, !tbaa !5164
  br label %_ZN8facebook5velox4exec11ArrayWriterINS0_10CustomTypeINS0_9IPPrefixTELb0EEEE25commitMostRecentChildItemEv.exit.i.i
end_hunk_1
begin_hunk_2_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS3_10VectorExecEEESB_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSG_lEEEJSG_lEEEE8applyUdfIZNKSL_7iterateIJNS3_12VectorReaderISG_EENS3_24ConstantFlatVectorReaderIlEEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_EUlSX_E_ZNKSM_IS12_EEvST_SX_EUlSX_E0_EEvRKNS0_17SelectivityVectorESX_SZ_EUlSX_E_EEvPKmiibSX_ENKUlimE_clEim:bb.a
bb.aw:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSC_lEEEJSC_lEEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISC_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_ENKUlST_E0_clIiEEDaST_.exit
  %i.mn = landingpad { ptr, i32 }
          cleanup
  %i.mo = load ptr, ptr %9, align 8, !tbaa !371
  %.not.i110 = icmp eq ptr %i.mo, null
  br i1 %.not.i110, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit111, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #34
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit111

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit111: ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %bb.ay

bb.ay:                                            ; preds = %.loopexit158, %.loopexit.split-lp159, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit111
  %.pn16.i = phi { ptr, i32 } [ %i.mn, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit111 ], [ %lpad.loopexit160, %.loopexit158 ], [ %lpad.loopexit.split-lp161, %.loopexit.split-lp159 ]
  invoke void @__cxa_end_catch()
          to label %.loopexit156 unwind label %bb.az

.loopexit156:                                     ; preds = %bb.am, %bb.ay, %bb.at
  %.merged.i = phi { ptr, i32 } [ %.pn.i, %bb.at ], [ %.pn16.i, %bb.ay ], [ %eh.lpad-body, %bb.am ]
  resume { ptr, i32 } %.merged.i

bb.az:                                            ; preds = %bb.ay, %bb.at
  %i.mp = landingpad { ptr, i32 }
          catch ptr null
  %i.mq = extractvalue { ptr, i32 } %i.mp, 0
  call void @__clang_call_terminate(ptr %i.mq) #38
  unreachable

bb.ba:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS1_10VectorExecEEES9_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSE_lEEEJSE_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISE_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSK_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_ENKUlSV_E_clIiEEDaSV_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit98, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit109
  %i.mr = add i64 %.0171, -1
  %i.ms = and i64 %i.mr, %.0171                   ; 2 uses
  %.not10 = icmp eq i64 %i.ms, 0
  br i1 %.not10, label %.loopexit155, label %bb.b, !llvm.loop !5499

.loopexit155:                                     ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS1_10VectorExecEEES9_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSE_lEEEJSE_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISE_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSK_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_ENKUlSV_E_clIiEEDaSV_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS3_10VectorExecEEESB_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSG_lEEEJSG_lEEEE8applyUdfIZNKSL_7iterateIJNS3_12VectorReaderISG_EENS3_24ConstantFlatVectorReaderIlEEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_EUlSX_E_ZNKSM_IS12_EEvST_SX_EUlSX_E0_EEvRKNS0_17SelectivityVectorESX_SZ_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.1964", align 16  ; 5 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.2826", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.facebook::velox::Status", align 8 ; 8 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %8 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %9 = alloca %"class.std::tuple.1964", align 16  ; 5 uses
  %10 = alloca %"struct.fmt::v11::detail::format_arg_store.2826", align 16 ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.facebook::velox::Status", align 8 ; 8 uses
  %14 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %15 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !5500, !range !106, !noundef !107
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !5502
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !161
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.lr.ph385 [
    i64 -1, label %bb.b
    i64 0, label %.loopexit347
  ]

.lr.ph385:                                        ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.bc

bb.b:                                             ; preds = %bb.a
  %i.s = shl i32 %1, 6                            ; 3 uses
  %i.t = add i32 %i.s, 64
  %i.u = sext i32 %i.t to i64
  %.not391 = icmp eq i32 %i.s, -64
  br i1 %.not391, label %.loopexit347, label %.lr.ph390

.lr.ph390:                                        ; preds = %bb.b
  %i.v = sext i32 %i.s to i64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph390, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS1_10VectorExecEEES9_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSE_lEEEJSE_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISE_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSK_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_ENKUlSV_E_clImEEDaSV_.exit
  %.0389 = phi i64 [ %i.v, %.lr.ph390 ], [ %i.my, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS1_10VectorExecEEES9_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSE_lEEEJSE_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISE_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSK_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_ENKUlSV_E_clImEEDaSV_.exit ] ; 3 uses
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !5448 ; 2 uses
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !5451, !nonnull !107, !align !610 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !5452, !nonnull !107, !align !610
  %i.ag = trunc i64 %.0389 to i32                 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !386
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !5455, !nonnull !107, !align !610 ; 2 uses
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !5452, !nonnull !107, !align !610 ; 12 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !5456, !noalias !5503, !nonnull !107, !align !610 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !5462, !noalias !5503, !nonnull !107, !align !610 ; 2 uses
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !4574, !nonnull !107, !align !610 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 58
  %i.ar = load i8, ptr %i.aq, align 2, !tbaa !1308, !range !106, !noundef !107
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %.noexc61, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 59
  %i.au = load i8, ptr %i.at, align 1, !tbaa !1309, !range !106, !noundef !107
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !1310
  br label %.noexc61

bb.f:                                             ; preds = %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1311
  %sext.i = shl i64 %.0389, 32
  %i.ba = ashr exact i64 %sext.i, 30
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !88
  br label %.noexc61

.noexc61:                                         ; preds = %bb.c, %bb.e, %bb.f
  %.0.i.i78 = phi i32 [ %i.bc, %bb.f ], [ %i.ax, %bb.e ], [ %i.ag, %bb.c ] ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.be = load ptr, ptr %i.ao, align 8, !tbaa !3588, !noalias !5506
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !3591, !noalias !5506
  %i.bh = mul nsw i32 %i.bg, %i.ag
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !161, !noalias !5506 ; 8 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !4522
  %i.bn = sext i32 %.0.i.i78 to i64               ; 5 uses
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !1305, !nonnull !107, !align !610 ; 11 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1307 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 58
  %i.bs = load i8, ptr %i.br, align 2, !tbaa !1308, !range !106, !noundef !107
  %i.bt = trunc nuw i8 %i.bs to i1                ; 3 uses
  br i1 %i.bt, label %.noexc62, label %bb.g

bb.g:                                             ; preds = %.noexc61
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 59
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !1309, !range !106, !noundef !107
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !1310
  br label %.noexc62

bb.i:                                             ; preds = %bb.g
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1311
  %i.cb = shl nsw i64 %i.bn, 2
  %i.cc = getelementptr inbounds i8, ptr %i.ca, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !88
  br label %.noexc62

.noexc62:                                         ; preds = %bb.i, %bb.h, %.noexc61
  %.0.i.i.i.i.i = phi i32 [ %i.cd, %bb.i ], [ %i.by, %bb.h ], [ %.0.i.i78, %.noexc61 ]
  %i.ce = sext i32 %.0.i.i.i.i.i to i64
  %i.cf = shl nsw i64 %i.ce, 4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.cf
  %.0.copyload.i.i.i.i.i = load i128, ptr %i.cg, align 1
  %i.ch = and i128 %.0.copyload.i.i.i.i.i, -4294967296
  %i.ci = icmp eq i128 %i.ch, 281470681743360     ; 4 uses
  %i.cj = icmp slt i64 %i.bk, 0
  %i.ck = icmp sgt i64 %i.bk, 32
  %or.cond.i.i = and i1 %i.ck, %i.ci
  %or.cond39.i.i = or i1 %i.cj, %or.cond.i.i
  %or.cond39.i.i.not = xor i1 %or.cond39.i.i, true
  %i.cl = icmp ult i64 %i.bk, 129
  %or.cond.not = select i1 %i.ci, i1 true, i1 %i.cl
  %or.cond = select i1 %or.cond39.i.i.not, i1 %or.cond.not, i1 false
  br i1 %or.cond, label %.noexc66, label %bb.j

bb.j:                                             ; preds = %.noexc62
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34, !noalias !5509
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34, !noalias !5509
  %i.cm = select i1 %i.ci, i32 4, i32 6
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34, !noalias !5512
  store i32 %i.cm, ptr %3, align 16, !tbaa !27, !noalias !5512
  store i64 %i.bk, ptr %i.y, align 16, !tbaa !27, !noalias !5512
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.226, i64 35, i64 49, ptr nonnull %3)
          to label %.noexc63 unwind label %.loopexit.split-lp

.noexc63:                                         ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34, !noalias !5512
  invoke void @_ZN8facebook5velox12errorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.k unwind label %bb.m, !noalias !5509

bb.k:                                             ; preds = %.noexc63
  %i.cn = load ptr, ptr %5, align 8, !tbaa !8, !noalias !5509 ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.z
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.cp = load i64, ptr %i.z, align 8, !tbaa !27, !noalias !5509
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #36, !noalias !5509
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !5509
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions23IPPrefixSubnetsFunctionINS0_4exec10VectorExecEE4callERNS3_11ArrayWriterINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEERKNS3_7RowViewILb1EJnaEEERKlE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %4) #37
          to label %bb.l unwind label %bb.n, !noalias !5509

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  unreachable

bb.m:                                             ; preds = %.noexc63
  %i.cr = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.cs = load ptr, ptr %5, align 8, !tbaa !8, !noalias !5509 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.z
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %bb.m
  %i.cu = load i64, ptr %i.z, align 8, !tbaa !27, !noalias !5509
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #36, !noalias !5509
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !5509
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.cx = load ptr, ptr %4, align 8, !tbaa !8, !noalias !5509 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.aa
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %bb.n
  %i.cz = load i64, ptr %i.aa, align 8, !tbaa !27, !noalias !5509
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #36, !noalias !5509
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  %.pn.i.i = phi { ptr, i32 } [ %i.cr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ], [ %i.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84 ], [ %i.cw, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34, !noalias !5509
  br label %.body55

.noexc66:                                         ; preds = %.noexc62
  %i.db = load ptr, ptr %i.bd, align 8, !tbaa !4524
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !4664, !nonnull !107, !align !610 ; 8 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !1307 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 58
  %i.dg = load i8, ptr %i.df, align 2, !tbaa !1308, !range !106, !noundef !107
  %i.dh = trunc nuw i8 %i.dg to i1                ; 2 uses
  br i1 %i.dh, label %.noexc67, label %bb.o

bb.o:                                             ; preds = %.noexc66
  %i.di = getelementptr inbounds nuw i8, ptr %i.dc, i64 59
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !1309, !range !106, !noundef !107
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !1310
  br label %.noexc67

bb.q:                                             ; preds = %bb.o
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !1311
  %i.dp = shl nsw i64 %i.bn, 2
  %i.dq = getelementptr inbounds i8, ptr %i.do, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !88
  br label %.noexc67

.noexc67:                                         ; preds = %bb.q, %bb.p, %.noexc66
  %.0.i.i.i.i.i90 = phi i32 [ %i.dr, %bb.q ], [ %i.dm, %bb.p ], [ %.0.i.i78, %.noexc66 ]
  %i.ds = sext i32 %.0.i.i.i.i.i90 to i64
  %i.dt = getelementptr inbounds i8, ptr %i.de, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !27
  %i.dv = sext i8 %i.du to i64                    ; 2 uses
  %.not.i.i = icmp slt i64 %i.bk, %i.dv           ; 2 uses
  %i.dw = sub nsw i64 %i.bk, %i.dv
  %i.dx = trunc i64 %i.dw to i32
  %i.dy = shl nuw i32 1, %i.dx
  %i.dz = select i1 %.not.i.i, i32 0, i32 %i.dy   ; 2 uses
  %i.ea = sext i32 %i.dz to i128
  switch i32 %i.dz, label %.noexc74 [
    i32 0, label %.loopexit345
    i32 1, label %.noexc68
  ]

.noexc68:                                         ; preds = %.noexc67
  br i1 %i.bt, label %.noexc70, label %bb.r

bb.r:                                             ; preds = %.noexc68
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bo, i64 59
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !1309, !range !106, !noundef !107
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !1310
  br label %.noexc70

bb.t:                                             ; preds = %bb.r
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !1311
  %i.ei = shl nsw i64 %i.bn, 2
  %i.ej = getelementptr inbounds i8, ptr %i.eh, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !88
  br label %.noexc70

.noexc70:                                         ; preds = %.noexc68, %bb.s, %bb.t
  %.0.i.i.i.i.i94 = phi i32 [ %i.ek, %bb.t ], [ %i.ef, %bb.s ], [ %.0.i.i78, %.noexc68 ]
  %i.el = sext i32 %.0.i.i.i.i.i94 to i64
  %i.em = shl nsw i64 %i.el, 4
  %i.en = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.em
  %.0.copyload.i.i.i.i.i95 = load i128, ptr %i.en, align 1
  br i1 %i.dh, label %.noexc71, label %bb.u

bb.u:                                             ; preds = %.noexc70
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dc, i64 59
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !1309, !range !106, !noundef !107
  %i.eq = trunc nuw i8 %i.ep to i1
  br i1 %i.eq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.er = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.es = load i32, ptr %i.er, align 8, !tbaa !1310
  br label %.noexc71

bb.w:                                             ; preds = %bb.u
  %i.et = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !1311
  %i.ev = shl nsw i64 %i.bn, 2
  %i.ew = getelementptr inbounds i8, ptr %i.eu, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !88
  br label %.noexc71

.noexc71:                                         ; preds = %bb.w, %bb.v, %.noexc70
  %.0.i.i.i.i.i100 = phi i32 [ %i.ex, %bb.w ], [ %i.es, %bb.v ], [ %.0.i.i78, %.noexc70 ]
  %i.ey = sext i32 %.0.i.i.i.i.i100 to i64
  %i.ez = getelementptr inbounds i8, ptr %i.de, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34, !noalias !5509
  store i8 %i.fa, ptr %2, align 16, !tbaa !3691, !alias.scope !5515, !noalias !5509
  store i128 %.0.copyload.i.i.i.i.i95, ptr %i.ab, align 16, !tbaa !3696, !alias.scope !5515, !noalias !5509
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ak, i64 60 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !5137 ; 2 uses
  %i.fd = add nsw i32 %i.fc, 1                    ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ak, i64 56 ; 3 uses
  %i.ff = load i8, ptr %i.fe, align 8, !tbaa !5164, !range !106, !noundef !107
  %i.fg = trunc nuw i8 %i.ff to i1
  br i1 %i.fg, label %bb.x, label %_ZN8facebook5velox4exec11ArrayWriterINS0_10CustomTypeINS0_9IPPrefixTELb0EEEE25commitMostRecentChildItemEv.exit.i.i

bb.x:                                             ; preds = %.noexc71
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !5145 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !96
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8
  invoke void %i.fl(ptr noundef nonnull align 8 dereferenceable(112) %i.fi, i1 noundef zeroext true)
          to label %.noexc102 unwind label %.loopexit.split-lp, !inline_history !5193

.noexc102:                                        ; preds = %bb.x
  store i8 0, ptr %i.fe, align 8, !tbaa !5164
  br label %_ZN8facebook5velox4exec11ArrayWriterINS0_10CustomTypeINS0_9IPPrefixTELb0EEEE25commitMostRecentChildItemEv.exit.i.i
end_hunk_2
begin_hunk_3_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS3_10VectorExecEEESB_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSG_lEEEJSG_lEEEE8applyUdfIZNKSL_7iterateIJNS3_12VectorReaderISG_EENS3_24ConstantFlatVectorReaderIlEEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_EUlSX_E_ZNKSM_IS12_EEvST_SX_EUlSX_E0_EEvRKNS0_17SelectivityVectorESX_SZ_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi:bb.a
          cleanup
  br label %bb.au

bb.as:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSC_lEEEJSC_lEEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISC_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_ENKUlST_E0_clImEEDaST_.exit59
  %i.mk = landingpad { ptr, i32 }
          cleanup
  %i.ml = load ptr, ptr %7, align 8, !tbaa !371
  %.not.i138 = icmp eq ptr %i.ml, null
  br i1 %.not.i138, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit139, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #34
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit139

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit139: ; preds = %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.au

bb.au:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit139, %bb.ar
  %.pn.i51 = phi { ptr, i32 } [ %i.mk, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit139 ], [ %i.mj, %bb.ar ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ba

.loopexit349:                                     ; preds = %tailrecurse.i.i.i.i.3, %.noexc140
  %lpad.loopexit351 = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.loopexit.split-lp350:                            ; preds = %.loopexit
  %lpad.loopexit.split-lp352 = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.noexc140:                                        ; preds = %tailrecurse.i.i.i.i.3
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ln, i64 32
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !5143 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ln, i64 24
  %i.mp = load i32, ptr %i.mo, align 8, !tbaa !386
  %i.mq = load ptr, ptr %i.mn, align 8, !tbaa !96
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 144
  %i.ms = load ptr, ptr %i.mr, align 8
  invoke void %i.ms(ptr noundef nonnull align 8 dereferenceable(94) %i.mn, i32 noundef %i.mp, i1 noundef zeroext true)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSC_lEEEJSC_lEEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISC_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_ENKUlST_E0_clImEEDaST_.exit unwind label %.loopexit349, !inline_history !5166

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSC_lEEEJSC_lEEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISC_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_ENKUlST_E0_clImEEDaST_.exit: ; preds = %.noexc140
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %8) #34
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.ad, i32 noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSC_lEEEJSC_lEEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISC_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_ENKUlST_E0_clImEEDaST_.exit
  %i.mt = load ptr, ptr %8, align 8, !tbaa !371
  %.not.i143 = icmp eq ptr %i.mt, null
  br i1 %.not.i143, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit144, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #34
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit144

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit144: ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS1_10VectorExecEEES9_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSE_lEEEJSE_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISE_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSK_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_ENKUlSV_E_clImEEDaSV_.exit

bb.ax:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSC_lEEEJSC_lEEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISC_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_ENKUlST_E0_clImEEDaST_.exit
  %i.mu = landingpad { ptr, i32 }
          cleanup
  %i.mv = load ptr, ptr %8, align 8, !tbaa !371
  %.not.i145 = icmp eq ptr %i.mv, null
  br i1 %.not.i145, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit146, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #34
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit146

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit146: ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %bb.az

bb.az:                                            ; preds = %.loopexit349, %.loopexit.split-lp350, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit146
  %.pn16.i52 = phi { ptr, i32 } [ %i.mu, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit146 ], [ %lpad.loopexit351, %.loopexit349 ], [ %lpad.loopexit.split-lp352, %.loopexit.split-lp350 ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ba

common.resume:                                    ; preds = %bb.an, %bb.cn, %bb.cu, %bb.cz, %bb.au, %bb.az
  %common.resume.op = phi { ptr, i32 } [ %.pn16.i52, %bb.az ], [ %.pn.i51, %bb.au ], [ %.pn16.i, %bb.cz ], [ %.pn.i, %bb.cu ], [ %eh.lpad-body, %bb.cn ], [ %eh.lpad-body56, %bb.an ]
  resume { ptr, i32 } %common.resume.op

bb.ba:                                            ; preds = %bb.az, %bb.au
  %i.mw = landingpad { ptr, i32 }
          catch ptr null
  %i.mx = extractvalue { ptr, i32 } %i.mw, 0
  call void @__clang_call_terminate(ptr %i.mx) #38
  unreachable

bb.bb:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS1_10VectorExecEEES9_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSE_lEEEJSE_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISE_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSK_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_ENKUlSV_E_clImEEDaSV_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit133, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit144
  %i.my = add nuw i64 %.0389, 1                   ; 2 uses
  %i.mz = icmp ult i64 %i.my, %i.u
  br i1 %i.mz, label %bb.c, label %.loopexit347, !llvm.loop !5521

bb.bc:                                            ; preds = %.lr.ph385, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS1_10VectorExecEEES9_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSE_lEEEJSE_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISE_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSK_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_ENKUlSV_E_clIiEEDaSV_.exit
  %.015384 = phi i64 [ %i.j, %.lr.ph385 ], [ %i.zz, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS1_10VectorExecEEES9_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSE_lEEEJSE_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISE_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSK_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_ENKUlSV_E_clIiEEDaSV_.exit ] ; 3 uses
  %i.na = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.015384, i1 true)
  %i.nb = trunc nuw nsw i64 %i.na to i32
  %i.nc = or disjoint i32 %i.l, %i.nb             ; 6 uses
  %i.nd = load ptr, ptr %i.m, align 8, !tbaa !5448 ; 2 uses
  %i.ne = load ptr, ptr %i.k, align 8, !tbaa !5451, !nonnull !107, !align !610 ; 4 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !5452, !nonnull !107, !align !610
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 24
  store i32 %i.nc, ptr %i.ng, align 8, !tbaa !386
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !5455, !nonnull !107, !align !610 ; 2 uses
  %i.nj = load ptr, ptr %i.ne, align 8, !tbaa !5452, !nonnull !107, !align !610 ; 12 uses
  %i.nk = sext i32 %i.nc to i64
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !5456, !noalias !5522, !nonnull !107, !align !610 ; 3 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ni, i64 16
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !5462, !noalias !5522, !nonnull !107, !align !610 ; 2 uses
  %i.np = load ptr, ptr %i.nm, align 8, !tbaa !4574, !nonnull !107, !align !610 ; 4 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 58
  %i.nr = load i8, ptr %i.nq, align 2, !tbaa !1308, !range !106, !noundef !107
  %i.ns = trunc nuw i8 %i.nr to i1
  br i1 %i.ns, label %.noexc29, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.nt = getelementptr inbounds nuw i8, ptr %i.np, i64 59
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !1309, !range !106, !noundef !107
  %i.nv = trunc nuw i8 %i.nu to i1
  br i1 %i.nv, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.nw = getelementptr inbounds nuw i8, ptr %i.np, i64 64
  %i.nx = load i32, ptr %i.nw, align 8, !tbaa !1310
  br label %.noexc29

bb.bf:                                            ; preds = %bb.bd
  %i.ny = getelementptr inbounds nuw i8, ptr %i.np, i64 8
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !1311
  %i.oa = shl nsw i64 %i.nk, 2
  %i.ob = getelementptr inbounds i8, ptr %i.nz, i64 %i.oa
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !88
  br label %.noexc29

.noexc29:                                         ; preds = %bb.bc, %bb.be, %bb.bf
  %.0.i.i148 = phi i32 [ %i.oc, %bb.bf ], [ %i.nx, %bb.be ], [ %i.nc, %bb.bc ] ; 6 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.nm, i64 40
  %i.oe = load ptr, ptr %i.no, align 8, !tbaa !3588, !noalias !5525
  %i.of = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  %i.og = load i32, ptr %i.of, align 8, !tbaa !3591, !noalias !5525
  %i.oh = mul nsw i32 %i.og, %i.nc
  %i.oi = sext i32 %i.oh to i64
  %i.oj = getelementptr inbounds [8 x i8], ptr %i.oe, i64 %i.oi
  %i.ok = load i64, ptr %i.oj, align 8, !tbaa !161, !noalias !5525 ; 8 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.nm, i64 48
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !4522
  %i.on = sext i32 %.0.i.i148 to i64              ; 5 uses
  %i.oo = load ptr, ptr %i.om, align 8, !tbaa !1305, !nonnull !107, !align !610 ; 11 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 16
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !1307 ; 3 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oo, i64 58
  %i.os = load i8, ptr %i.or, align 2, !tbaa !1308, !range !106, !noundef !107
  %i.ot = trunc nuw i8 %i.os to i1                ; 3 uses
  br i1 %i.ot, label %.noexc30, label %bb.bg

bb.bg:                                            ; preds = %.noexc29
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oo, i64 59
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !1309, !range !106, !noundef !107
  %i.ow = trunc nuw i8 %i.ov to i1
  br i1 %i.ow, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ox = getelementptr inbounds nuw i8, ptr %i.oo, i64 64
  %i.oy = load i32, ptr %i.ox, align 8, !tbaa !1310
  br label %.noexc30

bb.bi:                                            ; preds = %bb.bg
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !1311
  %i.pb = shl nsw i64 %i.on, 2
  %i.pc = getelementptr inbounds i8, ptr %i.pa, i64 %i.pb
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !88
  br label %.noexc30

.noexc30:                                         ; preds = %bb.bi, %bb.bh, %.noexc29
  %.0.i.i.i.i.i155 = phi i32 [ %i.pd, %bb.bi ], [ %i.oy, %bb.bh ], [ %.0.i.i148, %.noexc29 ]
  %i.pe = sext i32 %.0.i.i.i.i.i155 to i64
  %i.pf = shl nsw i64 %i.pe, 4
  %i.pg = getelementptr inbounds nuw i8, ptr %i.oq, i64 %i.pf
  %.0.copyload.i.i.i.i.i156 = load i128, ptr %i.pg, align 1
  %i.ph = and i128 %.0.copyload.i.i.i.i.i156, -4294967296
  %i.pi = icmp eq i128 %i.ph, 281470681743360     ; 4 uses
  %i.pj = icmp slt i64 %i.ok, 0
  %i.pk = icmp sgt i64 %i.ok, 32
  %or.cond.i = and i1 %i.pk, %i.pi
  %or.cond39.i = or i1 %i.pj, %or.cond.i
  %or.cond39.i.not = xor i1 %or.cond39.i, true
  %i.pl = icmp ult i64 %i.ok, 129
  %or.cond341.not = select i1 %i.pi, i1 true, i1 %i.pl
  %or.cond344 = select i1 %or.cond39.i.not, i1 %or.cond341.not, i1 false
  br i1 %or.cond344, label %.noexc34, label %bb.bj

bb.bj:                                            ; preds = %.noexc30
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  %i.pm = select i1 %i.pi, i32 4, i32 6
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34, !noalias !5528
  store i32 %i.pm, ptr %10, align 16, !tbaa !27, !noalias !5528
  store i64 %i.ok, ptr %i.n, align 16, !tbaa !27, !noalias !5528
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr nonnull @.str.226, i64 35, i64 49, ptr nonnull %10)
          to label %.noexc31 unwind label %.loopexit.split-lp357

.noexc31:                                         ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34, !noalias !5528
  invoke void @_ZN8facebook5velox12errorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.bk unwind label %bb.bm

bb.bk:                                            ; preds = %.noexc31
  %i.pn = load ptr, ptr %12, align 8, !tbaa !8    ; 2 uses
  %i.po = icmp eq ptr %i.pn, %i.o
  br i1 %i.po, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158: ; preds = %bb.bk
  %i.pp = load i64, ptr %i.o, align 8, !tbaa !27
  %i.pq = add i64 %i.pp, 1
  call void @_ZdlPvm(ptr noundef %i.pn, i64 noundef %i.pq) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions23IPPrefixSubnetsFunctionINS0_4exec10VectorExecEE4callERNS3_11ArrayWriterINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEERKNS3_7RowViewILb1EJnaEEERKlE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %11) #37
          to label %bb.bl unwind label %bb.bn

bb.bl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160
  unreachable

bb.bm:                                            ; preds = %.noexc31
  %i.pr = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.ps = load ptr, ptr %12, align 8, !tbaa !8    ; 2 uses
  %i.pt = icmp eq ptr %i.ps, %i.o
  br i1 %i.pt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161: ; preds = %bb.bm
  %i.pu = load i64, ptr %i.o, align 8, !tbaa !27
  %i.pv = add i64 %i.pu, 1
  call void @_ZdlPvm(ptr noundef %i.ps, i64 noundef %i.pv) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160
  %i.pw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.px = load ptr, ptr %11, align 8, !tbaa !8    ; 2 uses
  %i.py = icmp eq ptr %i.px, %i.p
  br i1 %i.py, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164: ; preds = %bb.bn
  %i.pz = load i64, ptr %i.p, align 8, !tbaa !27
  %i.qa = add i64 %i.pz, 1
  call void @_ZdlPvm(ptr noundef %i.px, i64 noundef %i.qa) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163
  %.pn.i28 = phi { ptr, i32 } [ %i.pr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163 ], [ %i.pw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164 ], [ %i.pw, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  br label %.body

.noexc34:                                         ; preds = %.noexc30
  %i.qb = load ptr, ptr %i.od, align 8, !tbaa !4524
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !4664, !nonnull !107, !align !610 ; 8 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 16
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !1307 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qc, i64 58
  %i.qg = load i8, ptr %i.qf, align 2, !tbaa !1308, !range !106, !noundef !107
  %i.qh = trunc nuw i8 %i.qg to i1                ; 2 uses
  br i1 %i.qh, label %.noexc35, label %bb.bo

bb.bo:                                            ; preds = %.noexc34
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qc, i64 59
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !1309, !range !106, !noundef !107
  %i.qk = trunc nuw i8 %i.qj to i1
  br i1 %i.qk, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qc, i64 64
  %i.qm = load i32, ptr %i.ql, align 8, !tbaa !1310
  br label %.noexc35

bb.bq:                                            ; preds = %bb.bo
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qc, i64 8
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !1311
  %i.qp = shl nsw i64 %i.on, 2
  %i.qq = getelementptr inbounds i8, ptr %i.qo, i64 %i.qp
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !88
  br label %.noexc35

.noexc35:                                         ; preds = %bb.bq, %bb.bp, %.noexc34
  %.0.i.i.i.i.i170 = phi i32 [ %i.qr, %bb.bq ], [ %i.qm, %bb.bp ], [ %.0.i.i148, %.noexc34 ]
  %i.qs = sext i32 %.0.i.i.i.i.i170 to i64
  %i.qt = getelementptr inbounds i8, ptr %i.qe, i64 %i.qs
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !27
  %i.qv = sext i8 %i.qu to i64                    ; 2 uses
  %.not.i = icmp slt i64 %i.ok, %i.qv             ; 2 uses
  %i.qw = sub nsw i64 %i.ok, %i.qv
  %i.qx = trunc i64 %i.qw to i32
  %i.qy = shl nuw i32 1, %i.qx
  %i.qz = select i1 %.not.i, i32 0, i32 %i.qy     ; 2 uses
  %i.ra = sext i32 %i.qz to i128
  switch i32 %i.qz, label %.noexc41 [
    i32 0, label %.loopexit355
    i32 1, label %.noexc36
  ]

.noexc36:                                         ; preds = %.noexc35
  br i1 %i.ot, label %.noexc38, label %bb.br

bb.br:                                            ; preds = %.noexc36
  %i.rb = getelementptr inbounds nuw i8, ptr %i.oo, i64 59
  %i.rc = load i8, ptr %i.rb, align 1, !tbaa !1309, !range !106, !noundef !107
  %i.rd = trunc nuw i8 %i.rc to i1
  br i1 %i.rd, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.re = getelementptr inbounds nuw i8, ptr %i.oo, i64 64
  %i.rf = load i32, ptr %i.re, align 8, !tbaa !1310
  br label %.noexc38

bb.bt:                                            ; preds = %bb.br
  %i.rg = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !1311
  %i.ri = shl nsw i64 %i.on, 2
  %i.rj = getelementptr inbounds i8, ptr %i.rh, i64 %i.ri
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !88
  br label %.noexc38

.noexc38:                                         ; preds = %.noexc36, %bb.bs, %bb.bt
  %.0.i.i.i.i.i175 = phi i32 [ %i.rk, %bb.bt ], [ %i.rf, %bb.bs ], [ %.0.i.i148, %.noexc36 ]
  %i.rl = sext i32 %.0.i.i.i.i.i175 to i64
  %i.rm = shl nsw i64 %i.rl, 4
  %i.rn = getelementptr inbounds nuw i8, ptr %i.oq, i64 %i.rm
  %.0.copyload.i.i.i.i.i176 = load i128, ptr %i.rn, align 1
  br i1 %i.qh, label %.noexc39, label %bb.bu

bb.bu:                                            ; preds = %.noexc38
  %i.ro = getelementptr inbounds nuw i8, ptr %i.qc, i64 59
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !1309, !range !106, !noundef !107
  %i.rq = trunc nuw i8 %i.rp to i1
  br i1 %i.rq, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.rr = getelementptr inbounds nuw i8, ptr %i.qc, i64 64
  %i.rs = load i32, ptr %i.rr, align 8, !tbaa !1310
  br label %.noexc39

bb.bw:                                            ; preds = %bb.bu
  %i.rt = getelementptr inbounds nuw i8, ptr %i.qc, i64 8
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !1311
  %i.rv = shl nsw i64 %i.on, 2
  %i.rw = getelementptr inbounds i8, ptr %i.ru, i64 %i.rv
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !88
  br label %.noexc39

.noexc39:                                         ; preds = %bb.bw, %bb.bv, %.noexc38
  %.0.i.i.i.i.i181 = phi i32 [ %i.rx, %bb.bw ], [ %i.rs, %bb.bv ], [ %.0.i.i148, %.noexc38 ]
  %i.ry = sext i32 %.0.i.i.i.i.i181 to i64
  %i.rz = getelementptr inbounds i8, ptr %i.qe, i64 %i.ry
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  store i8 %i.sa, ptr %9, align 16, !tbaa !3691, !alias.scope !5531
  store i128 %.0.copyload.i.i.i.i.i176, ptr %i.q, align 16, !tbaa !3696, !alias.scope !5531
  %i.sb = getelementptr inbounds nuw i8, ptr %i.nj, i64 60 ; 2 uses
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !5137 ; 2 uses
  %i.sd = add nsw i32 %i.sc, 1                    ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.nj, i64 56 ; 3 uses
  %i.sf = load i8, ptr %i.se, align 8, !tbaa !5164, !range !106, !noundef !107
  %i.sg = trunc nuw i8 %i.sf to i1
  br i1 %i.sg, label %bb.bx, label %_ZN8facebook5velox4exec11ArrayWriterINS0_10CustomTypeINS0_9IPPrefixTELb0EEEE25commitMostRecentChildItemEv.exit.i.i183

bb.bx:                                            ; preds = %.noexc39
  %i.sh = getelementptr inbounds nuw i8, ptr %i.nj, i64 48
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !5145 ; 2 uses
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !96
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  %i.sl = load ptr, ptr %i.sk, align 8
  invoke void %i.sl(ptr noundef nonnull align 8 dereferenceable(112) %i.si, i1 noundef zeroext true)
          to label %.noexc186 unwind label %.loopexit.split-lp357, !inline_history !5193

.noexc186:                                        ; preds = %bb.bx
  store i8 0, ptr %i.se, align 8, !tbaa !5164
  br label %_ZN8facebook5velox4exec11ArrayWriterINS0_10CustomTypeINS0_9IPPrefixTELb0EEEE25commitMostRecentChildItemEv.exit.i.i183
end_hunk_3
begin_hunk_4_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS3_10VectorExecEEESB_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSG_lEEEJSG_lEEEE8applyUdfIZNKSL_7iterateIJNS3_12VectorReaderISG_EENSO_IlEEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_EUlSW_E_ZNKSM_IS11_EEvSS_SW_EUlSW_E0_EEvRKS1_SW_SY_EUlSW_E_EEvSW_:bb.a
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !731  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !732
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !515    ; 2 uses
  %.not.i.i28 = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i28, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i192.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i192.not, label %.critedge.i.i.i, label %.lr.ph194

bb.f:                                             ; preds = %.lr.ph194
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i193, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph194, label %.critedge.i.i.i, !llvm.loop !733

.lr.ph194:                                        ; preds = %bb.e, %bb.f
  %indvars.iv.i193 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i193, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !161
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !733

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %.not38.i.i.i = icmp eq i32 %i.i, %i.n
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i
  %i.t = lshr i32 %i.i, 6
  %i.u = and i32 %i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %notmask.i40.i.i.i = shl nsw i64 -1, %i.v
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !161
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph194, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph194 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i, label %bb.h, label %bb.bl

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !731 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !729 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.lr.ph158, label %.loopexit141

.lr.ph158:                                        ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ao = sext i32 %i.ag to i64
  %.pre = load ptr, ptr %i.ai, align 8, !tbaa !5538 ; 2 uses
  %.pre167 = load ptr, ptr %1, align 8, !tbaa !5542 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre167, i64 8
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph158, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS1_10VectorExecEEES9_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSE_lEEEJSE_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISE_EENSM_IlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSK_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKNS0_17SelectivityVectorESU_SW_ENKUlSU_E_clIiEEDaSU_.exit
  %indvars.iv = phi i64 [ %i.ao, %.lr.ph158 ], [ %indvars.iv.next, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS1_10VectorExecEEES9_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSE_lEEEJSE_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISE_EENSM_IlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSK_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKNS0_17SelectivityVectorESU_SW_ENKUlSU_E_clIiEEDaSU_.exit ] ; 4 uses
  %i.aq = load ptr, ptr %.pre167, align 8, !tbaa !5543, !nonnull !107, !align !610
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = trunc nsw i64 %indvars.iv to i32        ; 5 uses
  store i32 %i.as, ptr %i.ar, align 8, !tbaa !386
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.at = load ptr, ptr %i.ap, align 8, !tbaa !5545, !nonnull !107, !align !610 ; 2 uses
  %i.au = load ptr, ptr %.pre167, align 8, !tbaa !5543, !nonnull !107, !align !610 ; 12 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !5546, !noalias !5548, !nonnull !107, !align !610 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !5551, !noalias !5548, !nonnull !107, !align !610
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !4574, !nonnull !107, !align !610 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 58
  %i.bb = load i8, ptr %i.ba, align 2, !tbaa !1308, !range !106, !noundef !107
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %.noexc9, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 59
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !1309, !range !106, !noundef !107
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !1310
  br label %.noexc9

bb.l:                                             ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1311
  %i.bk = shl nsw i64 %indvars.iv, 2
  %i.bl = getelementptr inbounds i8, ptr %i.bj, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !88
  br label %.noexc9

.noexc9:                                          ; preds = %bb.l, %bb.k, %bb.i
  %.0.i.i29 = phi i32 [ %i.bm, %bb.l ], [ %i.bh, %bb.k ], [ %i.as, %bb.i ] ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.bo = load ptr, ptr %i.ay, align 8, !tbaa !3775, !noalias !5552, !nonnull !107, !align !610 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1307, !noalias !5552
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 58
  %i.bs = load i8, ptr %i.br, align 2, !tbaa !1308, !range !106, !noalias !5552, !noundef !107
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %.noexc11, label %bb.m

bb.m:                                             ; preds = %.noexc9
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 59
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !1309, !range !106, !noalias !5552, !noundef !107
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !1310, !noalias !5552
  br label %.noexc11

bb.o:                                             ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1311, !noalias !5552
  %i.cb = shl nsw i64 %indvars.iv, 2
  %i.cc = getelementptr inbounds i8, ptr %i.ca, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !88, !noalias !5552
  br label %.noexc11

.noexc11:                                         ; preds = %bb.o, %bb.n, %.noexc9
  %.0.i.i.i = phi i32 [ %i.cd, %bb.o ], [ %i.by, %bb.n ], [ %i.as, %.noexc9 ]
  %i.ce = sext i32 %.0.i.i.i to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !161, !noalias !5552 ; 8 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !4522
  %i.cj = sext i32 %.0.i.i29 to i64               ; 5 uses
  %i.ck = load ptr, ptr %i.ci, align 8, !tbaa !1305, !nonnull !107, !align !610 ; 11 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !1307 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 58
  %i.co = load i8, ptr %i.cn, align 2, !tbaa !1308, !range !106, !noundef !107
  %i.cp = trunc nuw i8 %i.co to i1                ; 3 uses
  br i1 %i.cp, label %.noexc12, label %bb.p

bb.p:                                             ; preds = %.noexc11
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 59
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !1309, !range !106, !noundef !107
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ck, i64 64
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !1310
  br label %.noexc12

bb.r:                                             ; preds = %bb.p
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !1311
  %i.cx = shl nsw i64 %i.cj, 2
  %i.cy = getelementptr inbounds i8, ptr %i.cw, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !88
  br label %.noexc12

.noexc12:                                         ; preds = %bb.r, %bb.q, %.noexc11
  %.0.i.i.i.i.i = phi i32 [ %i.cz, %bb.r ], [ %i.cu, %bb.q ], [ %.0.i.i29, %.noexc11 ]
  %i.da = sext i32 %.0.i.i.i.i.i to i64
  %i.db = shl nsw i64 %i.da, 4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.db
  %.0.copyload.i.i.i.i.i = load i128, ptr %i.dc, align 1
  %i.dd = and i128 %.0.copyload.i.i.i.i.i, -4294967296
  %i.de = icmp eq i128 %i.dd, 281470681743360     ; 4 uses
  %i.df = icmp slt i64 %i.cg, 0
  %i.dg = icmp sgt i64 %i.cg, 32
  %or.cond.i.i = and i1 %i.dg, %i.de
  %or.cond39.i.i = or i1 %i.df, %or.cond.i.i
  %or.cond39.i.i.not = xor i1 %or.cond39.i.i, true
  %i.dh = icmp ult i64 %i.cg, 129
  %or.cond.not = select i1 %i.de, i1 true, i1 %i.dh
  %or.cond = select i1 %or.cond39.i.i.not, i1 %or.cond.not, i1 false
  br i1 %or.cond, label %.noexc16, label %bb.s

bb.s:                                             ; preds = %.noexc12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34, !noalias !5555
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34, !noalias !5555
  %i.di = select i1 %i.de, i32 4, i32 6
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34, !noalias !5558
  store i32 %i.di, ptr %3, align 16, !tbaa !27, !noalias !5558
  store i64 %i.cg, ptr %i.aj, align 16, !tbaa !27, !noalias !5558
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.226, i64 35, i64 49, ptr nonnull %3)
          to label %.noexc13 unwind label %.loopexit.split-lp

.noexc13:                                         ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34, !noalias !5558
  invoke void @_ZN8facebook5velox12errorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.t unwind label %bb.v, !noalias !5555

bb.t:                                             ; preds = %.noexc13
  %i.dj = load ptr, ptr %5, align 8, !tbaa !8, !noalias !5555 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.ak
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.t
  %i.dl = load i64, ptr %i.ak, align 8, !tbaa !27, !noalias !5555
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #36, !noalias !5555
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !5555
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions23IPPrefixSubnetsFunctionINS0_4exec10VectorExecEE4callERNS3_11ArrayWriterINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEERKNS3_7RowViewILb1EJnaEEERKlE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %4) #37
          to label %bb.u unwind label %bb.w, !noalias !5555

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  unreachable

bb.v:                                             ; preds = %.noexc13
  %i.dn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.do = load ptr, ptr %5, align 8, !tbaa !8, !noalias !5555 ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.ak
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.v
  %i.dq = load i64, ptr %i.ak, align 8, !tbaa !27, !noalias !5555
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #36, !noalias !5555
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !5555
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ds = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.dt = load ptr, ptr %4, align 8, !tbaa !8, !noalias !5555 ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.al
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %bb.w
  %i.dv = load i64, ptr %i.al, align 8, !tbaa !27, !noalias !5555
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #36, !noalias !5555
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %.pn.i.i = phi { ptr, i32 } [ %i.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ], [ %i.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36 ], [ %i.ds, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34, !noalias !5555
  br label %.body

.noexc16:                                         ; preds = %.noexc12
  %i.dx = load ptr, ptr %i.bn, align 8, !tbaa !4524
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !4664, !nonnull !107, !align !610 ; 8 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !1307 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 58
  %i.ec = load i8, ptr %i.eb, align 2, !tbaa !1308, !range !106, !noundef !107
  %i.ed = trunc nuw i8 %i.ec to i1                ; 2 uses
  br i1 %i.ed, label %.noexc17, label %bb.x

bb.x:                                             ; preds = %.noexc16
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dy, i64 59
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !1309, !range !106, !noundef !107
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dy, i64 64
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !1310
  br label %.noexc17

bb.z:                                             ; preds = %bb.x
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !1311
  %i.el = shl nsw i64 %i.cj, 2
  %i.em = getelementptr inbounds i8, ptr %i.ek, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !88
  br label %.noexc17

.noexc17:                                         ; preds = %bb.z, %bb.y, %.noexc16
  %.0.i.i.i.i.i42 = phi i32 [ %i.en, %bb.z ], [ %i.ei, %bb.y ], [ %.0.i.i29, %.noexc16 ]
  %i.eo = sext i32 %.0.i.i.i.i.i42 to i64
  %i.ep = getelementptr inbounds i8, ptr %i.ea, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !27
  %i.er = sext i8 %i.eq to i64                    ; 2 uses
  %.not.i.i = icmp slt i64 %i.cg, %i.er           ; 2 uses
  %i.es = sub nsw i64 %i.cg, %i.er
  %i.et = trunc i64 %i.es to i32
  %i.eu = shl nuw i32 1, %i.et
  %i.ev = select i1 %.not.i.i, i32 0, i32 %i.eu   ; 2 uses
  %i.ew = sext i32 %i.ev to i128
  switch i32 %i.ev, label %.noexc24 [
    i32 0, label %.loopexit139
    i32 1, label %.noexc18
  ]

.noexc18:                                         ; preds = %.noexc17
  br i1 %i.cp, label %.noexc20, label %bb.aa

bb.aa:                                            ; preds = %.noexc18
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ck, i64 59
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !1309, !range !106, !noundef !107
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ck, i64 64
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !1310
  br label %.noexc20

bb.ac:                                            ; preds = %bb.aa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !1311
  %i.fe = shl nsw i64 %i.cj, 2
  %i.ff = getelementptr inbounds i8, ptr %i.fd, i64 %i.fe
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !88
  br label %.noexc20

.noexc20:                                         ; preds = %.noexc18, %bb.ab, %bb.ac
  %.0.i.i.i.i.i46 = phi i32 [ %i.fg, %bb.ac ], [ %i.fb, %bb.ab ], [ %.0.i.i29, %.noexc18 ]
  %i.fh = sext i32 %.0.i.i.i.i.i46 to i64
  %i.fi = shl nsw i64 %i.fh, 4
  %i.fj = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.fi
  %.0.copyload.i.i.i.i.i47 = load i128, ptr %i.fj, align 1
  br i1 %i.ed, label %.noexc21, label %bb.ad

bb.ad:                                            ; preds = %.noexc20
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dy, i64 59
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !1309, !range !106, !noundef !107
  %i.fm = trunc nuw i8 %i.fl to i1
  br i1 %i.fm, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fn = getelementptr inbounds nuw i8, ptr %i.dy, i64 64
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !1310
  br label %.noexc21

bb.af:                                            ; preds = %bb.ad
  %i.fp = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !1311
  %i.fr = shl nsw i64 %i.cj, 2
  %i.fs = getelementptr inbounds i8, ptr %i.fq, i64 %i.fr
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !88
  br label %.noexc21

.noexc21:                                         ; preds = %bb.af, %bb.ae, %.noexc20
  %.0.i.i.i.i.i52 = phi i32 [ %i.ft, %bb.af ], [ %i.fo, %bb.ae ], [ %.0.i.i29, %.noexc20 ]
  %i.fu = sext i32 %.0.i.i.i.i.i52 to i64
  %i.fv = getelementptr inbounds i8, ptr %i.ea, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34, !noalias !5555
  store i8 %i.fw, ptr %2, align 16, !tbaa !3691, !alias.scope !5561, !noalias !5555
  store i128 %.0.copyload.i.i.i.i.i47, ptr %i.am, align 16, !tbaa !3696, !alias.scope !5561, !noalias !5555
  %i.fx = getelementptr inbounds nuw i8, ptr %i.au, i64 60 ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !5137 ; 2 uses
  %i.fz = add nsw i32 %i.fy, 1                    ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.au, i64 56 ; 3 uses
  %i.gb = load i8, ptr %i.ga, align 8, !tbaa !5164, !range !106, !noundef !107
  %i.gc = trunc nuw i8 %i.gb to i1
  br i1 %i.gc, label %bb.ag, label %_ZN8facebook5velox4exec11ArrayWriterINS0_10CustomTypeINS0_9IPPrefixTELb0EEEE25commitMostRecentChildItemEv.exit.i.i

bb.ag:                                            ; preds = %.noexc21
  %i.gd = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !5145 ; 2 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !96
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8
  invoke void %i.gh(ptr noundef nonnull align 8 dereferenceable(112) %i.ge, i1 noundef zeroext true)
          to label %.noexc54 unwind label %.loopexit.split-lp, !inline_history !5193

.noexc54:                                         ; preds = %bb.ag
  store i8 0, ptr %i.ga, align 8, !tbaa !5164
  br label %_ZN8facebook5velox4exec11ArrayWriterINS0_10CustomTypeINS0_9IPPrefixTELb0EEEE25commitMostRecentChildItemEv.exit.i.i
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS3_10VectorExecEEESB_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSG_lEEEJSG_lEEEE8applyUdfIZNKSL_7iterateIJNS3_12VectorReaderISG_EENSO_IlEEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_EUlSW_E_ZNKSM_IS11_EEvSS_SW_EUlSW_E0_EEvRKNS0_17SelectivityVectorESW_SY_EUlSW_E_EEvPKmiibSW_:bb.a
  %i.s = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %notmask.i.i35.i = shl nsw i64 -1, %i.t
  %i.u = xor i64 %notmask.i.i35.i, -1
  %i.v = sub nsw i32 64, %i.s
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %i.u, %i.w
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS3_10VectorExecEEESB_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSG_lEEEJSG_lEEEE8applyUdfIZNKSL_7iterateIJNS3_12VectorReaderISG_EENSO_IlEEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_EUlSW_E_ZNKSM_IS11_EEvSS_SW_EUlSW_E0_EEvRKNS0_17SelectivityVectorESW_SY_EUlSW_E_EEvPKmiibSW_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS4_10VectorExecEEESC_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSH_lEEEJSH_lEEEE8applyUdfIZNKSM_7iterateIJNS4_12VectorReaderISH_EENSP_IlEEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_EUlSX_E_ZNKSN_IS12_EEvST_SX_EUlSX_E0_EEvRKNS0_17SelectivityVectorESX_SZ_EUlSX_E_EEvPKmiibSX_EUlimE_ZNS3_IS18_EEvS1A_iibSX_EUliE_EEviiSX_SZ_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS3_10VectorExecEEESB_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSG_lEEEJSG_lEEEE8applyUdfIZNKSL_7iterateIJNS3_12VectorReaderISG_EENSO_IlEEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_EUlSW_E_ZNKSM_IS11_EEvSS_SW_EUlSW_E0_EEvRKNS0_17SelectivityVectorESW_SY_EUlSW_E_EEvPKmiibSW_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !5571

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS3_10VectorExecEEESB_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSG_lEEEJSG_lEEEE8applyUdfIZNKSL_7iterateIJNS3_12VectorReaderISG_EENSO_IlEEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_EUlSW_E_ZNKSM_IS11_EEvSS_SW_EUlSW_E0_EEvRKNS0_17SelectivityVectorESW_SY_EUlSW_E_EEvPKmiibSW_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS4_10VectorExecEEESC_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSH_lEEEJSH_lEEEE8applyUdfIZNKSM_7iterateIJNS4_12VectorReaderISH_EENSP_IlEEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_EUlSX_E_ZNKSN_IS12_EEvST_SX_EUlSX_E0_EEvRKNS0_17SelectivityVectorESX_SZ_EUlSX_E_EEvPKmiibSX_EUlimE_ZNS3_IS18_EEvS1A_iibSX_EUliE_EEviiSX_SZ_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS4_10VectorExecEEESC_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSH_lEEEJSH_lEEEE8applyUdfIZNKSM_7iterateIJNS4_12VectorReaderISH_EENSP_IlEEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_EUlSX_E_ZNKSN_IS12_EEvST_SX_EUlSX_E0_EEvRKNS0_17SelectivityVectorESX_SZ_EUlSX_E_EEvPKmiibSX_EUlimE_ZNS3_IS18_EEvS1A_iibSX_EUliE_EEviiSX_SZ_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS3_10VectorExecEEESB_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSG_lEEEJSG_lEEEE8applyUdfIZNKSL_7iterateIJNS3_12VectorReaderISG_EENSO_IlEEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_EUlSW_E_ZNKSM_IS11_EEvSS_SW_EUlSW_E0_EEvRKNS0_17SelectivityVectorESW_SY_EUlSW_E_EEvPKmiibSW_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::tuple.1964", align 16  ; 5 uses
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.2826", align 16 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.facebook::velox::Status", align 8 ; 8 uses
  %8 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %9 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !5572, !range !106, !noundef !107
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !5574
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !161
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit148, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS1_10VectorExecEEES9_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSE_lEEEJSE_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISE_EENSM_IlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSK_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKNS0_17SelectivityVectorESU_SW_ENKUlSU_E_clIiEEDaSU_.exit
  %.0164 = phi i64 [ %i.k, %.preheader ], [ %i.ne, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS1_10VectorExecEEES9_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSE_lEEEJSE_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISE_EENSM_IlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSK_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKNS0_17SelectivityVectorESU_SW_ENKUlSU_E_clIiEEDaSU_.exit ] ; 3 uses
  %i.t = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0164, i1 true)
  %i.u = trunc nuw nsw i64 %i.t to i32
  %i.v = or disjoint i32 %i.m, %i.u               ; 6 uses
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !5538 ; 2 uses
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !5542, !nonnull !107, !align !610 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !5543, !nonnull !107, !align !610
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i32 %i.v, ptr %i.z, align 8, !tbaa !386
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !5545, !nonnull !107, !align !610 ; 2 uses
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !5543, !nonnull !107, !align !610 ; 12 uses
  %i.ad = sext i32 %i.v to i64                    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !5546, !noalias !5575, !nonnull !107, !align !610 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !5551, !noalias !5575, !nonnull !107, !align !610
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !4574, !nonnull !107, !align !610 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 58
  %i.ak = load i8, ptr %i.aj, align 2, !tbaa !1308, !range !106, !noundef !107
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %.noexc16, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 59
  %i.an = load i8, ptr %i.am, align 1, !tbaa !1309, !range !106, !noundef !107
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !1310
  br label %.noexc16

bb.e:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1311
  %i.at = shl nsw i64 %i.ad, 2
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !88
  br label %.noexc16

.noexc16:                                         ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i35 = phi i32 [ %i.av, %bb.e ], [ %i.aq, %bb.d ], [ %i.v, %bb.b ] ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ax = load ptr, ptr %i.ah, align 8, !tbaa !3775, !noalias !5578, !nonnull !107, !align !610 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1307, !noalias !5578
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 58
  %i.bb = load i8, ptr %i.ba, align 2, !tbaa !1308, !range !106, !noalias !5578, !noundef !107
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %.noexc18, label %bb.f

bb.f:                                             ; preds = %.noexc16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 59
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !1309, !range !106, !noalias !5578, !noundef !107
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !1310, !noalias !5578
  br label %.noexc18

bb.h:                                             ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1311, !noalias !5578
  %i.bk = shl nsw i64 %i.ad, 2
  %i.bl = getelementptr inbounds i8, ptr %i.bj, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !88, !noalias !5578
  br label %.noexc18

.noexc18:                                         ; preds = %bb.h, %bb.g, %.noexc16
  %.0.i.i.i = phi i32 [ %i.bm, %bb.h ], [ %i.bh, %bb.g ], [ %i.v, %.noexc16 ]
  %i.bn = sext i32 %.0.i.i.i to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !161, !noalias !5578 ; 8 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !4522
  %i.bs = sext i32 %.0.i.i35 to i64               ; 5 uses
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !1305, !nonnull !107, !align !610 ; 11 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !1307 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 58
  %i.bx = load i8, ptr %i.bw, align 2, !tbaa !1308, !range !106, !noundef !107
  %i.by = trunc nuw i8 %i.bx to i1                ; 3 uses
  br i1 %i.by, label %.noexc19, label %bb.i

bb.i:                                             ; preds = %.noexc18
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 59
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !1309, !range !106, !noundef !107
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !1310
  br label %.noexc19

bb.k:                                             ; preds = %bb.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1311
  %i.cg = shl nsw i64 %i.bs, 2
  %i.ch = getelementptr inbounds i8, ptr %i.cf, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !88
  br label %.noexc19

.noexc19:                                         ; preds = %bb.k, %bb.j, %.noexc18
  %.0.i.i.i.i.i = phi i32 [ %i.ci, %bb.k ], [ %i.cd, %bb.j ], [ %.0.i.i35, %.noexc18 ]
  %i.cj = sext i32 %.0.i.i.i.i.i to i64
  %i.ck = shl nsw i64 %i.cj, 4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.ck
  %.0.copyload.i.i.i.i.i = load i128, ptr %i.cl, align 1
  %i.cm = and i128 %.0.copyload.i.i.i.i.i, -4294967296
  %i.cn = icmp eq i128 %i.cm, 281470681743360     ; 4 uses
  %i.co = icmp slt i64 %i.bp, 0
  %i.cp = icmp sgt i64 %i.bp, 32
  %or.cond.i.i = and i1 %i.cp, %i.cn
  %or.cond39.i.i = or i1 %i.co, %or.cond.i.i
  %or.cond39.i.i.not = xor i1 %or.cond39.i.i, true
  %i.cq = icmp ult i64 %i.bp, 129
  %or.cond.not = select i1 %i.cn, i1 true, i1 %i.cq
  %or.cond = select i1 %or.cond39.i.i.not, i1 %or.cond.not, i1 false
  br i1 %or.cond, label %.noexc23, label %bb.l

bb.l:                                             ; preds = %.noexc19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34, !noalias !5581
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34, !noalias !5581
  %i.cr = select i1 %i.cn, i32 4, i32 6
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34, !noalias !5584
  store i32 %i.cr, ptr %4, align 16, !tbaa !27, !noalias !5584
  store i64 %i.bp, ptr %i.o, align 16, !tbaa !27, !noalias !5584
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.226, i64 35, i64 49, ptr nonnull %4)
          to label %.noexc20 unwind label %.loopexit.split-lp

.noexc20:                                         ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34, !noalias !5584
  invoke void @_ZN8facebook5velox12errorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.m unwind label %bb.o, !noalias !5581

bb.m:                                             ; preds = %.noexc20
  %i.cs = load ptr, ptr %6, align 8, !tbaa !8, !noalias !5581 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.p
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.cu = load i64, ptr %i.p, align 8, !tbaa !27, !noalias !5581
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #36, !noalias !5581
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34, !noalias !5581
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions23IPPrefixSubnetsFunctionINS0_4exec10VectorExecEE4callERNS3_11ArrayWriterINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEERKNS3_7RowViewILb1EJnaEEERKlE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %5) #37
          to label %bb.n unwind label %bb.p, !noalias !5581

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  unreachable

bb.o:                                             ; preds = %.noexc20
  %i.cw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.cx = load ptr, ptr %6, align 8, !tbaa !8, !noalias !5581 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.p
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.o
  %i.cz = load i64, ptr %i.p, align 8, !tbaa !27, !noalias !5581
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #36, !noalias !5581
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34, !noalias !5581
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.db = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.dc = load ptr, ptr %5, align 8, !tbaa !8, !noalias !5581 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.q
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.p
  %i.de = load i64, ptr %i.q, align 8, !tbaa !27, !noalias !5581
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #36, !noalias !5581
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %.pn.i.i = phi { ptr, i32 } [ %i.cw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ], [ %i.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42 ], [ %i.db, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !5581
  br label %.body

.noexc23:                                         ; preds = %.noexc19
  %i.dg = load ptr, ptr %i.aw, align 8, !tbaa !4524
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !4664, !nonnull !107, !align !610 ; 8 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !1307 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 58
  %i.dl = load i8, ptr %i.dk, align 2, !tbaa !1308, !range !106, !noundef !107
  %i.dm = trunc nuw i8 %i.dl to i1                ; 2 uses
  br i1 %i.dm, label %.noexc24, label %bb.q

bb.q:                                             ; preds = %.noexc23
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 59
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !1309, !range !106, !noundef !107
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !1310
  br label %.noexc24

bb.s:                                             ; preds = %bb.q
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !1311
  %i.du = shl nsw i64 %i.bs, 2
  %i.dv = getelementptr inbounds i8, ptr %i.dt, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !88
  br label %.noexc24

.noexc24:                                         ; preds = %bb.s, %bb.r, %.noexc23
  %.0.i.i.i.i.i48 = phi i32 [ %i.dw, %bb.s ], [ %i.dr, %bb.r ], [ %.0.i.i35, %.noexc23 ]
  %i.dx = sext i32 %.0.i.i.i.i.i48 to i64
  %i.dy = getelementptr inbounds i8, ptr %i.dj, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !27
  %i.ea = sext i8 %i.dz to i64                    ; 2 uses
  %.not.i.i = icmp slt i64 %i.bp, %i.ea           ; 2 uses
  %i.eb = sub nsw i64 %i.bp, %i.ea
  %i.ec = trunc i64 %i.eb to i32
  %i.ed = shl nuw i32 1, %i.ec
  %i.ee = select i1 %.not.i.i, i32 0, i32 %i.ed   ; 2 uses
  %i.ef = sext i32 %i.ee to i128
  switch i32 %i.ee, label %.noexc31 [
    i32 0, label %.loopexit146
    i32 1, label %.noexc25
  ]

.noexc25:                                         ; preds = %.noexc24
  br i1 %i.by, label %.noexc27, label %bb.t

bb.t:                                             ; preds = %.noexc25
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bt, i64 59
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !1309, !range !106, !noundef !107
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !1310
  br label %.noexc27

bb.v:                                             ; preds = %bb.t
  %i.el = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !1311
  %i.en = shl nsw i64 %i.bs, 2
  %i.eo = getelementptr inbounds i8, ptr %i.em, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !88
  br label %.noexc27

.noexc27:                                         ; preds = %.noexc25, %bb.u, %bb.v
  %.0.i.i.i.i.i52 = phi i32 [ %i.ep, %bb.v ], [ %i.ek, %bb.u ], [ %.0.i.i35, %.noexc25 ]
  %i.eq = sext i32 %.0.i.i.i.i.i52 to i64
  %i.er = shl nsw i64 %i.eq, 4
  %i.es = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.er
  %.0.copyload.i.i.i.i.i53 = load i128, ptr %i.es, align 1
  br i1 %i.dm, label %.noexc28, label %bb.w

bb.w:                                             ; preds = %.noexc27
  %i.et = getelementptr inbounds nuw i8, ptr %i.dh, i64 59
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !1309, !range !106, !noundef !107
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !1310
  br label %.noexc28

bb.y:                                             ; preds = %bb.w
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !1311
  %i.fa = shl nsw i64 %i.bs, 2
  %i.fb = getelementptr inbounds i8, ptr %i.ez, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !88
  br label %.noexc28

.noexc28:                                         ; preds = %bb.y, %bb.x, %.noexc27
  %.0.i.i.i.i.i58 = phi i32 [ %i.fc, %bb.y ], [ %i.ex, %bb.x ], [ %.0.i.i35, %.noexc27 ]
  %i.fd = sext i32 %.0.i.i.i.i.i58 to i64
  %i.fe = getelementptr inbounds i8, ptr %i.dj, i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34, !noalias !5581
  store i8 %i.ff, ptr %3, align 16, !tbaa !3691, !alias.scope !5587, !noalias !5581
  store i128 %.0.copyload.i.i.i.i.i53, ptr %i.r, align 16, !tbaa !3696, !alias.scope !5587, !noalias !5581
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ac, i64 60 ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !5137 ; 2 uses
  %i.fi = add nsw i32 %i.fh, 1                    ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ac, i64 56 ; 3 uses
  %i.fk = load i8, ptr %i.fj, align 8, !tbaa !5164, !range !106, !noundef !107
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %bb.z, label %_ZN8facebook5velox4exec11ArrayWriterINS0_10CustomTypeINS0_9IPPrefixTELb0EEEE25commitMostRecentChildItemEv.exit.i.i

bb.z:                                             ; preds = %.noexc28
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !5145 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !96
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8
  invoke void %i.fq(ptr noundef nonnull align 8 dereferenceable(112) %i.fn, i1 noundef zeroext true)
          to label %.noexc60 unwind label %.loopexit.split-lp, !inline_history !5193

.noexc60:                                         ; preds = %bb.z
  store i8 0, ptr %i.fj, align 8, !tbaa !5164
  br label %_ZN8facebook5velox4exec11ArrayWriterINS0_10CustomTypeINS0_9IPPrefixTELb0EEEE25commitMostRecentChildItemEv.exit.i.i
end_hunk_5
begin_hunk_6_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS3_10VectorExecEEESB_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSG_lEEEJSG_lEEEE8applyUdfIZNKSL_7iterateIJNS3_12VectorReaderISG_EENSO_IlEEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_EUlSW_E_ZNKSM_IS11_EEvSS_SW_EUlSW_E0_EEvRKNS0_17SelectivityVectorESW_SY_EUlSW_E_EEvPKmiibSW_ENKUlimE_clEim:bb.a
          catch ptr null
  %i.nc = extractvalue { ptr, i32 } %i.nb, 0
  call void @__clang_call_terminate(ptr %i.nc) #38
  unreachable

bb.bd:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS1_10VectorExecEEES9_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSE_lEEEJSE_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISE_EENSM_IlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSK_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKNS0_17SelectivityVectorESU_SW_ENKUlSU_E_clIiEEDaSU_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit90, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit101
  %i.nd = add i64 %.0164, -1
  %i.ne = and i64 %i.nd, %.0164                   ; 2 uses
  %.not10 = icmp eq i64 %i.ne, 0
  br i1 %.not10, label %.loopexit148, label %bb.b, !llvm.loop !5593

.loopexit148:                                     ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS1_10VectorExecEEES9_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSE_lEEEJSE_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISE_EENSM_IlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSK_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKNS0_17SelectivityVectorESU_SW_ENKUlSU_E_clIiEEDaSU_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS3_10VectorExecEEESB_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSG_lEEEJSG_lEEEE8applyUdfIZNKSL_7iterateIJNS3_12VectorReaderISG_EENSO_IlEEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_EUlSW_E_ZNKSM_IS11_EEvSS_SW_EUlSW_E0_EEvRKNS0_17SelectivityVectorESW_SY_EUlSW_E_EEvPKmiibSW_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.1964", align 16  ; 5 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.2826", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.facebook::velox::Status", align 8 ; 8 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %8 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %9 = alloca %"class.std::tuple.1964", align 16  ; 5 uses
  %10 = alloca %"struct.fmt::v11::detail::format_arg_store.2826", align 16 ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.facebook::velox::Status", align 8 ; 8 uses
  %14 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %15 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !5594, !range !106, !noundef !107
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !5596
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !161
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.lr.ph380 [
    i64 -1, label %bb.b
    i64 0, label %.loopexit342
  ]

.lr.ph380:                                        ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.bf

bb.b:                                             ; preds = %bb.a
  %i.s = shl i32 %1, 6                            ; 3 uses
  %i.t = add i32 %i.s, 64
  %i.u = sext i32 %i.t to i64
  %.not386 = icmp eq i32 %i.s, -64
  br i1 %.not386, label %.loopexit342, label %.lr.ph385

.lr.ph385:                                        ; preds = %bb.b
  %i.v = sext i32 %i.s to i64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph385, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS1_10VectorExecEEES9_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSE_lEEEJSE_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISE_EENSM_IlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSK_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKNS0_17SelectivityVectorESU_SW_ENKUlSU_E_clImEEDaSU_.exit
  %.0384 = phi i64 [ %i.v, %.lr.ph385 ], [ %i.nk, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS1_10VectorExecEEES9_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSE_lEEEJSE_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISE_EENSM_IlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSK_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKNS0_17SelectivityVectorESU_SW_ENKUlSU_E_clImEEDaSU_.exit ] ; 4 uses
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !5538 ; 2 uses
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !5542, !nonnull !107, !align !610 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !5543, !nonnull !107, !align !610
  %i.ag = trunc i64 %.0384 to i32                 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !386
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !5545, !nonnull !107, !align !610 ; 2 uses
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !5543, !nonnull !107, !align !610 ; 12 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !5546, !noalias !5597, !nonnull !107, !align !610 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !5551, !noalias !5597, !nonnull !107, !align !610
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !4574, !nonnull !107, !align !610 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 58
  %i.ar = load i8, ptr %i.aq, align 2, !tbaa !1308, !range !106, !noundef !107
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %.noexc51, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 59
  %i.au = load i8, ptr %i.at, align 1, !tbaa !1309, !range !106, !noundef !107
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !1310
  br label %.noexc51

bb.f:                                             ; preds = %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1311
  %sext.i = shl i64 %.0384, 32
  %i.ba = ashr exact i64 %sext.i, 30
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !88
  br label %.noexc51

.noexc51:                                         ; preds = %bb.f, %bb.e, %bb.c
  %.0.i.i69 = phi i32 [ %i.bc, %bb.f ], [ %i.ax, %bb.e ], [ %i.ag, %bb.c ] ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.be = load ptr, ptr %i.ao, align 8, !tbaa !3775, !noalias !5600, !nonnull !107, !align !610 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1307, !noalias !5600
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 58
  %i.bi = load i8, ptr %i.bh, align 2, !tbaa !1308, !range !106, !noalias !5600, !noundef !107
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %.noexc52, label %bb.g

bb.g:                                             ; preds = %.noexc51
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 59
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !1309, !range !106, !noalias !5600, !noundef !107
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !1310, !noalias !5600
  br label %.noexc52

bb.i:                                             ; preds = %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1311, !noalias !5600
  %sext.i70 = shl i64 %.0384, 32
  %i.br = ashr exact i64 %sext.i70, 30
  %i.bs = getelementptr inbounds i8, ptr %i.bq, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !88, !noalias !5600
  br label %.noexc52

.noexc52:                                         ; preds = %bb.i, %bb.h, %.noexc51
  %.0.i.i.i71 = phi i32 [ %i.bt, %bb.i ], [ %i.bo, %bb.h ], [ %i.ag, %.noexc51 ]
  %i.bu = sext i32 %.0.i.i.i71 to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !161, !noalias !5600 ; 8 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !4522
  %i.bz = sext i32 %.0.i.i69 to i64               ; 5 uses
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !1305, !nonnull !107, !align !610 ; 11 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !1307 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 58
  %i.ce = load i8, ptr %i.cd, align 2, !tbaa !1308, !range !106, !noundef !107
  %i.cf = trunc nuw i8 %i.ce to i1                ; 3 uses
  br i1 %i.cf, label %.noexc53, label %bb.j

bb.j:                                             ; preds = %.noexc52
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 59
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !1309, !range !106, !noundef !107
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !1310
  br label %.noexc53

bb.l:                                             ; preds = %bb.j
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !1311
  %i.cn = shl nsw i64 %i.bz, 2
  %i.co = getelementptr inbounds i8, ptr %i.cm, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !88
  br label %.noexc53

.noexc53:                                         ; preds = %bb.l, %bb.k, %.noexc52
  %.0.i.i.i.i.i = phi i32 [ %i.cp, %bb.l ], [ %i.ck, %bb.k ], [ %.0.i.i69, %.noexc52 ]
  %i.cq = sext i32 %.0.i.i.i.i.i to i64
  %i.cr = shl nsw i64 %i.cq, 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cr
  %.0.copyload.i.i.i.i.i = load i128, ptr %i.cs, align 1
  %i.ct = and i128 %.0.copyload.i.i.i.i.i, -4294967296
  %i.cu = icmp eq i128 %i.ct, 281470681743360     ; 4 uses
  %i.cv = icmp slt i64 %i.bw, 0
  %i.cw = icmp sgt i64 %i.bw, 32
  %or.cond.i.i.i = and i1 %i.cw, %i.cu
  %or.cond39.i.i.i = or i1 %i.cv, %or.cond.i.i.i
  %or.cond39.i.i.i.not = xor i1 %or.cond39.i.i.i, true
  %i.cx = icmp ult i64 %i.bw, 129
  %or.cond.not = select i1 %i.cu, i1 true, i1 %i.cx
  %or.cond = select i1 %or.cond39.i.i.i.not, i1 %or.cond.not, i1 false
  br i1 %or.cond, label %.noexc57, label %bb.m

bb.m:                                             ; preds = %.noexc53
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34, !noalias !5603
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34, !noalias !5603
  %i.cy = select i1 %i.cu, i32 4, i32 6
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34, !noalias !5606
  store i32 %i.cy, ptr %3, align 16, !tbaa !27, !noalias !5606
  store i64 %i.bw, ptr %i.y, align 16, !tbaa !27, !noalias !5606
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.226, i64 35, i64 49, ptr nonnull %3)
          to label %.noexc54 unwind label %.loopexit.split-lp

.noexc54:                                         ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34, !noalias !5606
  invoke void @_ZN8facebook5velox12errorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.n unwind label %bb.p, !noalias !5603

bb.n:                                             ; preds = %.noexc54
  %i.cz = load ptr, ptr %5, align 8, !tbaa !8, !noalias !5603 ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.z
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.db = load i64, ptr %i.z, align 8, !tbaa !27, !noalias !5603
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #36, !noalias !5603
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !5603
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions23IPPrefixSubnetsFunctionINS0_4exec10VectorExecEE4callERNS3_11ArrayWriterINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEERKNS3_7RowViewILb1EJnaEEERKlE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %4) #37
          to label %bb.o unwind label %bb.q, !noalias !5603

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  unreachable

bb.p:                                             ; preds = %.noexc54
  %i.dd = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.de = load ptr, ptr %5, align 8, !tbaa !8, !noalias !5603 ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.z
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %bb.p
  %i.dg = load i64, ptr %i.z, align 8, !tbaa !27, !noalias !5603
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #36, !noalias !5603
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !5603
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.di = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.dj = load ptr, ptr %4, align 8, !tbaa !8, !noalias !5603 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.aa
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %bb.q
  %i.dl = load i64, ptr %i.aa, align 8, !tbaa !27, !noalias !5603
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #36, !noalias !5603
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %.pn.i.i.i = phi { ptr, i32 } [ %i.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ], [ %i.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77 ], [ %i.di, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34, !noalias !5603
  br label %.body46

.noexc57:                                         ; preds = %.noexc53
  %i.dn = load ptr, ptr %i.bd, align 8, !tbaa !4524
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !4664, !nonnull !107, !align !610 ; 8 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !1307 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 58
  %i.ds = load i8, ptr %i.dr, align 2, !tbaa !1308, !range !106, !noundef !107
  %i.dt = trunc nuw i8 %i.ds to i1                ; 2 uses
  br i1 %i.dt, label %.noexc58, label %bb.r

bb.r:                                             ; preds = %.noexc57
  %i.du = getelementptr inbounds nuw i8, ptr %i.do, i64 59
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !1309, !range !106, !noundef !107
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dx = getelementptr inbounds nuw i8, ptr %i.do, i64 64
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !1310
  br label %.noexc58

bb.t:                                             ; preds = %bb.r
  %i.dz = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !1311
  %i.eb = shl nsw i64 %i.bz, 2
  %i.ec = getelementptr inbounds i8, ptr %i.ea, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !88
  br label %.noexc58

.noexc58:                                         ; preds = %bb.t, %bb.s, %.noexc57
  %.0.i.i.i.i.i83 = phi i32 [ %i.ed, %bb.t ], [ %i.dy, %bb.s ], [ %.0.i.i69, %.noexc57 ]
  %i.ee = sext i32 %.0.i.i.i.i.i83 to i64
  %i.ef = getelementptr inbounds i8, ptr %i.dq, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !27
  %i.eh = sext i8 %i.eg to i64                    ; 2 uses
  %.not.i.i.i = icmp slt i64 %i.bw, %i.eh         ; 2 uses
  %i.ei = sub nsw i64 %i.bw, %i.eh
  %i.ej = trunc i64 %i.ei to i32
  %i.ek = shl nuw i32 1, %i.ej
  %i.el = select i1 %.not.i.i.i, i32 0, i32 %i.ek ; 2 uses
  %i.em = sext i32 %i.el to i128
  switch i32 %i.el, label %.noexc65 [
    i32 0, label %.loopexit340
    i32 1, label %.noexc59
  ]

.noexc59:                                         ; preds = %.noexc58
  br i1 %i.cf, label %.noexc61, label %bb.u

bb.u:                                             ; preds = %.noexc59
  %i.en = getelementptr inbounds nuw i8, ptr %i.ca, i64 59
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !1309, !range !106, !noundef !107
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !1310
  br label %.noexc61

bb.w:                                             ; preds = %bb.u
  %i.es = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !1311
  %i.eu = shl nsw i64 %i.bz, 2
  %i.ev = getelementptr inbounds i8, ptr %i.et, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !88
  br label %.noexc61

.noexc61:                                         ; preds = %.noexc59, %bb.v, %bb.w
  %.0.i.i.i.i.i87 = phi i32 [ %i.ew, %bb.w ], [ %i.er, %bb.v ], [ %.0.i.i69, %.noexc59 ]
  %i.ex = sext i32 %.0.i.i.i.i.i87 to i64
  %i.ey = shl nsw i64 %i.ex, 4
  %i.ez = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ey
  %.0.copyload.i.i.i.i.i88 = load i128, ptr %i.ez, align 1
  br i1 %i.dt, label %.noexc62, label %bb.x

bb.x:                                             ; preds = %.noexc61
  %i.fa = getelementptr inbounds nuw i8, ptr %i.do, i64 59
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !1309, !range !106, !noundef !107
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fd = getelementptr inbounds nuw i8, ptr %i.do, i64 64
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !1310
  br label %.noexc62

bb.z:                                             ; preds = %bb.x
  %i.ff = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !1311
  %i.fh = shl nsw i64 %i.bz, 2
  %i.fi = getelementptr inbounds i8, ptr %i.fg, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !88
  br label %.noexc62

.noexc62:                                         ; preds = %bb.z, %bb.y, %.noexc61
  %.0.i.i.i.i.i93 = phi i32 [ %i.fj, %bb.z ], [ %i.fe, %bb.y ], [ %.0.i.i69, %.noexc61 ]
  %i.fk = sext i32 %.0.i.i.i.i.i93 to i64
  %i.fl = getelementptr inbounds i8, ptr %i.dq, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34, !noalias !5603
  store i8 %i.fm, ptr %2, align 16, !tbaa !3691, !alias.scope !5609, !noalias !5603
  store i128 %.0.copyload.i.i.i.i.i88, ptr %i.ab, align 16, !tbaa !3696, !alias.scope !5609, !noalias !5603
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ak, i64 60 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !5137 ; 2 uses
  %i.fp = add nsw i32 %i.fo, 1                    ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ak, i64 56 ; 3 uses
  %i.fr = load i8, ptr %i.fq, align 8, !tbaa !5164, !range !106, !noundef !107
  %i.fs = trunc nuw i8 %i.fr to i1
  br i1 %i.fs, label %bb.aa, label %_ZN8facebook5velox4exec11ArrayWriterINS0_10CustomTypeINS0_9IPPrefixTELb0EEEE25commitMostRecentChildItemEv.exit.i.i

bb.aa:                                            ; preds = %.noexc62
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !5145 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !96
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8
  invoke void %i.fx(ptr noundef nonnull align 8 dereferenceable(112) %i.fu, i1 noundef zeroext true)
          to label %.noexc95 unwind label %.loopexit.split-lp, !inline_history !5193

.noexc95:                                         ; preds = %bb.aa
  store i8 0, ptr %i.fq, align 8, !tbaa !5164
  br label %_ZN8facebook5velox4exec11ArrayWriterINS0_10CustomTypeINS0_9IPPrefixTELb0EEEE25commitMostRecentChildItemEv.exit.i.i
end_hunk_6
begin_hunk_7_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS3_10VectorExecEEESB_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSG_lEEEJSG_lEEEE8applyUdfIZNKSL_7iterateIJNS3_12VectorReaderISG_EENSO_IlEEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_EUlSW_E_ZNKSM_IS11_EEvSS_SW_EUlSW_E0_EEvRKNS0_17SelectivityVectorESW_SY_EUlSW_E_EEvPKmiibSW_ENKUliE_clEi:bb.a
          cleanup
  br label %bb.bc

.loopexit.split-lp345:                            ; preds = %.loopexit
  %lpad.loopexit.split-lp347 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.noexc132:                                        ; preds = %tailrecurse.i.i.i.i.3
  %i.my = getelementptr inbounds nuw i8, ptr %i.lz, i64 32
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !5143 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.lz, i64 24
  %i.nb = load i32, ptr %i.na, align 8, !tbaa !386
  %i.nc = load ptr, ptr %i.mz, align 8, !tbaa !96
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 144
  %i.ne = load ptr, ptr %i.nd, align 8
  invoke void %i.ne(ptr noundef nonnull align 8 dereferenceable(94) %i.mz, i32 noundef %i.nb, i1 noundef zeroext true)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSC_lEEEJSC_lEEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISC_EENSK_IlEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_ENKUlSS_E0_clImEEDaSS_.exit unwind label %.loopexit344, !inline_history !5166

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSC_lEEEJSC_lEEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISC_EENSK_IlEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_ENKUlSS_E0_clImEEDaSS_.exit: ; preds = %.noexc132
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %8) #34
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.ad, i32 noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.ay unwind label %bb.ba

bb.ay:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSC_lEEEJSC_lEEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISC_EENSK_IlEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_ENKUlSS_E0_clImEEDaSS_.exit
  %i.nf = load ptr, ptr %8, align 8, !tbaa !371
  %.not.i135 = icmp eq ptr %i.nf, null
  br i1 %.not.i135, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit136, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #34
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit136

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit136: ; preds = %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS1_10VectorExecEEES9_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSE_lEEEJSE_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISE_EENSM_IlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSK_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKNS0_17SelectivityVectorESU_SW_ENKUlSU_E_clImEEDaSU_.exit

bb.ba:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS1_10VectorExecEEES7_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSC_lEEEJSC_lEEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISC_EENSK_IlEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_ENKUlSS_E0_clImEEDaSS_.exit
  %i.ng = landingpad { ptr, i32 }
          cleanup
  %i.nh = load ptr, ptr %8, align 8, !tbaa !371
  %.not.i137 = icmp eq ptr %i.nh, null
  br i1 %.not.i137, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit138, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #34
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit138

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit138: ; preds = %bb.ba, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %bb.bc

bb.bc:                                            ; preds = %.loopexit344, %.loopexit.split-lp345, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit138
  %.pn16.i43 = phi { ptr, i32 } [ %i.ng, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit138 ], [ %lpad.loopexit346, %.loopexit344 ], [ %lpad.loopexit.split-lp347, %.loopexit.split-lp345 ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.bd

common.resume:                                    ; preds = %bb.aq, %bb.ct, %bb.da, %bb.df, %bb.ax, %bb.bc
  %common.resume.op = phi { ptr, i32 } [ %.pn16.i43, %bb.bc ], [ %.pn.i42, %bb.ax ], [ %.pn16.i, %bb.df ], [ %.pn.i, %bb.da ], [ %eh.lpad-body, %bb.ct ], [ %eh.lpad-body47, %bb.aq ]
  resume { ptr, i32 } %common.resume.op

bb.bd:                                            ; preds = %bb.bc, %bb.ax
  %i.ni = landingpad { ptr, i32 }
          catch ptr null
  %i.nj = extractvalue { ptr, i32 } %i.ni, 0
  call void @__clang_call_terminate(ptr %i.nj) #38
  unreachable

bb.be:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS1_10VectorExecEEES9_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSE_lEEEJSE_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISE_EENSM_IlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSK_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKNS0_17SelectivityVectorESU_SW_ENKUlSU_E_clImEEDaSU_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit125, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit136
  %i.nk = add nuw i64 %.0384, 1                   ; 2 uses
  %i.nl = icmp ult i64 %i.nk, %i.u
  br i1 %i.nl, label %bb.c, label %.loopexit342, !llvm.loop !5615

bb.bf:                                            ; preds = %.lr.ph380, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS1_10VectorExecEEES9_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSE_lEEEJSE_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISE_EENSM_IlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSK_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKNS0_17SelectivityVectorESU_SW_ENKUlSU_E_clIiEEDaSU_.exit
  %.015379 = phi i64 [ %i.j, %.lr.ph380 ], [ %i.aax, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23IPPrefixSubnetsFunctionINS1_10VectorExecEEES9_NS0_5ArrayINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEENS0_15ConstantCheckerIJSE_lEEEJSE_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISE_EENSM_IlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSK_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKNS0_17SelectivityVectorESU_SW_ENKUlSU_E_clIiEEDaSU_.exit ] ; 3 uses
  %i.nm = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.015379, i1 true)
  %i.nn = trunc nuw nsw i64 %i.nm to i32
  %i.no = or disjoint i32 %i.l, %i.nn             ; 6 uses
  %i.np = load ptr, ptr %i.m, align 8, !tbaa !5538 ; 2 uses
  %i.nq = load ptr, ptr %i.k, align 8, !tbaa !5542, !nonnull !107, !align !610 ; 4 uses
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !5543, !nonnull !107, !align !610
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 24
  store i32 %i.no, ptr %i.ns, align 8, !tbaa !386
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !5545, !nonnull !107, !align !610 ; 2 uses
  %i.nv = load ptr, ptr %i.nq, align 8, !tbaa !5543, !nonnull !107, !align !610 ; 12 uses
  %i.nw = sext i32 %i.no to i64                   ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !5546, !noalias !5616, !nonnull !107, !align !610 ; 3 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !5551, !noalias !5616, !nonnull !107, !align !610
  %i.ob = load ptr, ptr %i.ny, align 8, !tbaa !4574, !nonnull !107, !align !610 ; 4 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 58
  %i.od = load i8, ptr %i.oc, align 2, !tbaa !1308, !range !106, !noundef !107
  %i.oe = trunc nuw i8 %i.od to i1
  br i1 %i.oe, label %.noexc22, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.of = getelementptr inbounds nuw i8, ptr %i.ob, i64 59
  %i.og = load i8, ptr %i.of, align 1, !tbaa !1309, !range !106, !noundef !107
  %i.oh = trunc nuw i8 %i.og to i1
  br i1 %i.oh, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ob, i64 64
  %i.oj = load i32, ptr %i.oi, align 8, !tbaa !1310
  br label %.noexc22

bb.bi:                                            ; preds = %bb.bg
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !1311
  %i.om = shl nsw i64 %i.nw, 2
  %i.on = getelementptr inbounds i8, ptr %i.ol, i64 %i.om
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !88
  br label %.noexc22

.noexc22:                                         ; preds = %bb.bi, %bb.bh, %bb.bf
  %.0.i.i140 = phi i32 [ %i.oo, %bb.bi ], [ %i.oj, %bb.bh ], [ %i.no, %bb.bf ] ; 6 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.ny, i64 40
  %i.oq = load ptr, ptr %i.oa, align 8, !tbaa !3775, !noalias !5619, !nonnull !107, !align !610 ; 5 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !1307, !noalias !5619
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oq, i64 58
  %i.ou = load i8, ptr %i.ot, align 2, !tbaa !1308, !range !106, !noalias !5619, !noundef !107
  %i.ov = trunc nuw i8 %i.ou to i1
  br i1 %i.ov, label %.noexc24, label %bb.bj

bb.bj:                                            ; preds = %.noexc22
  %i.ow = getelementptr inbounds nuw i8, ptr %i.oq, i64 59
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !1309, !range !106, !noalias !5619, !noundef !107
  %i.oy = trunc nuw i8 %i.ox to i1
  br i1 %i.oy, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oq, i64 64
  %i.pa = load i32, ptr %i.oz, align 8, !tbaa !1310, !noalias !5619
  br label %.noexc24

bb.bl:                                            ; preds = %bb.bj
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oq, i64 8
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !1311, !noalias !5619
  %i.pd = shl nsw i64 %i.nw, 2
  %i.pe = getelementptr inbounds i8, ptr %i.pc, i64 %i.pd
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !88, !noalias !5619
  br label %.noexc24

.noexc24:                                         ; preds = %bb.bl, %bb.bk, %.noexc22
  %.0.i.i.i145 = phi i32 [ %i.pf, %bb.bl ], [ %i.pa, %bb.bk ], [ %i.no, %.noexc22 ]
  %i.pg = sext i32 %.0.i.i.i145 to i64
  %i.ph = getelementptr inbounds [8 x i8], ptr %i.os, i64 %i.pg
  %i.pi = load i64, ptr %i.ph, align 8, !tbaa !161, !noalias !5619 ; 8 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ny, i64 48
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !4522
  %i.pl = sext i32 %.0.i.i140 to i64              ; 5 uses
  %i.pm = load ptr, ptr %i.pk, align 8, !tbaa !1305, !nonnull !107, !align !610 ; 11 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 16
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !1307 ; 3 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pm, i64 58
  %i.pq = load i8, ptr %i.pp, align 2, !tbaa !1308, !range !106, !noundef !107
  %i.pr = trunc nuw i8 %i.pq to i1                ; 3 uses
  br i1 %i.pr, label %.noexc25, label %bb.bm

bb.bm:                                            ; preds = %.noexc24
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pm, i64 59
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !1309, !range !106, !noundef !107
  %i.pu = trunc nuw i8 %i.pt to i1
  br i1 %i.pu, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pm, i64 64
  %i.pw = load i32, ptr %i.pv, align 8, !tbaa !1310
  br label %.noexc25

bb.bo:                                            ; preds = %bb.bm
  %i.px = getelementptr inbounds nuw i8, ptr %i.pm, i64 8
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !1311
  %i.pz = shl nsw i64 %i.pl, 2
  %i.qa = getelementptr inbounds i8, ptr %i.py, i64 %i.pz
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !88
  br label %.noexc25

.noexc25:                                         ; preds = %bb.bo, %bb.bn, %.noexc24
  %.0.i.i.i.i.i150 = phi i32 [ %i.qb, %bb.bo ], [ %i.pw, %bb.bn ], [ %.0.i.i140, %.noexc24 ]
  %i.qc = sext i32 %.0.i.i.i.i.i150 to i64
  %i.qd = shl nsw i64 %i.qc, 4
  %i.qe = getelementptr inbounds nuw i8, ptr %i.po, i64 %i.qd
  %.0.copyload.i.i.i.i.i151 = load i128, ptr %i.qe, align 1
  %i.qf = and i128 %.0.copyload.i.i.i.i.i151, -4294967296
  %i.qg = icmp eq i128 %i.qf, 281470681743360     ; 4 uses
  %i.qh = icmp slt i64 %i.pi, 0
  %i.qi = icmp sgt i64 %i.pi, 32
  %or.cond.i.i = and i1 %i.qi, %i.qg
  %or.cond39.i.i = or i1 %i.qh, %or.cond.i.i
  %or.cond39.i.i.not = xor i1 %or.cond39.i.i, true
  %i.qj = icmp ult i64 %i.pi, 129
  %or.cond336.not = select i1 %i.qg, i1 true, i1 %i.qj
  %or.cond339 = select i1 %or.cond39.i.i.not, i1 %or.cond336.not, i1 false
  br i1 %or.cond339, label %.noexc29, label %bb.bp

bb.bp:                                            ; preds = %.noexc25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34, !noalias !5622
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34, !noalias !5622
  %i.qk = select i1 %i.qg, i32 4, i32 6
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34, !noalias !5625
  store i32 %i.qk, ptr %10, align 16, !tbaa !27, !noalias !5625
  store i64 %i.pi, ptr %i.n, align 16, !tbaa !27, !noalias !5625
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr nonnull @.str.226, i64 35, i64 49, ptr nonnull %10)
          to label %.noexc26 unwind label %.loopexit.split-lp352

.noexc26:                                         ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34, !noalias !5625
  invoke void @_ZN8facebook5velox12errorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.bq unwind label %bb.bs, !noalias !5622

bb.bq:                                            ; preds = %.noexc26
  %i.ql = load ptr, ptr %12, align 8, !tbaa !8, !noalias !5622 ; 2 uses
  %i.qm = icmp eq ptr %i.ql, %i.o
  br i1 %i.qm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %bb.bq
  %i.qn = load i64, ptr %i.o, align 8, !tbaa !27, !noalias !5622
  %i.qo = add i64 %i.qn, 1
  call void @_ZdlPvm(ptr noundef %i.ql, i64 noundef %i.qo) #36, !noalias !5622
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34, !noalias !5622
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions23IPPrefixSubnetsFunctionINS0_4exec10VectorExecEE4callERNS3_11ArrayWriterINS0_10CustomTypeINS0_9IPPrefixTELb0EEEEERKNS3_7RowViewILb1EJnaEEERKlE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %11) #37
          to label %bb.br unwind label %bb.bt, !noalias !5622

bb.br:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155
  unreachable

bb.bs:                                            ; preds = %.noexc26
  %i.qp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.qq = load ptr, ptr %12, align 8, !tbaa !8, !noalias !5622 ; 2 uses
  %i.qr = icmp eq ptr %i.qq, %i.o
  br i1 %i.qr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156: ; preds = %bb.bs
  %i.qs = load i64, ptr %i.o, align 8, !tbaa !27, !noalias !5622
  %i.qt = add i64 %i.qs, 1
  call void @_ZdlPvm(ptr noundef %i.qq, i64 noundef %i.qt) #36, !noalias !5622
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34, !noalias !5622
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

bb.bt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155
  %i.qu = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.qv = load ptr, ptr %11, align 8, !tbaa !8, !noalias !5622 ; 2 uses
  %i.qw = icmp eq ptr %i.qv, %i.p
  br i1 %i.qw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159: ; preds = %bb.bt
  %i.qx = load i64, ptr %i.p, align 8, !tbaa !27, !noalias !5622
  %i.qy = add i64 %i.qx, 1
  call void @_ZdlPvm(ptr noundef %i.qv, i64 noundef %i.qy) #36, !noalias !5622
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158
  %.pn.i.i = phi { ptr, i32 } [ %i.qp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158 ], [ %i.qu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159 ], [ %i.qu, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34, !noalias !5622
  br label %.body

.noexc29:                                         ; preds = %.noexc25
  %i.qz = load ptr, ptr %i.op, align 8, !tbaa !4524
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !4664, !nonnull !107, !align !610 ; 8 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 16
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !1307 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.ra, i64 58
  %i.re = load i8, ptr %i.rd, align 2, !tbaa !1308, !range !106, !noundef !107
  %i.rf = trunc nuw i8 %i.re to i1                ; 2 uses
  br i1 %i.rf, label %.noexc30, label %bb.bu

bb.bu:                                            ; preds = %.noexc29
  %i.rg = getelementptr inbounds nuw i8, ptr %i.ra, i64 59
  %i.rh = load i8, ptr %i.rg, align 1, !tbaa !1309, !range !106, !noundef !107
  %i.ri = trunc nuw i8 %i.rh to i1
  br i1 %i.ri, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ra, i64 64
  %i.rk = load i32, ptr %i.rj, align 8, !tbaa !1310
  br label %.noexc30

bb.bw:                                            ; preds = %bb.bu
  %i.rl = getelementptr inbounds nuw i8, ptr %i.ra, i64 8
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !1311
  %i.rn = shl nsw i64 %i.pl, 2
  %i.ro = getelementptr inbounds i8, ptr %i.rm, i64 %i.rn
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !88
  br label %.noexc30

.noexc30:                                         ; preds = %bb.bw, %bb.bv, %.noexc29
  %.0.i.i.i.i.i165 = phi i32 [ %i.rp, %bb.bw ], [ %i.rk, %bb.bv ], [ %.0.i.i140, %.noexc29 ]
  %i.rq = sext i32 %.0.i.i.i.i.i165 to i64
  %i.rr = getelementptr inbounds i8, ptr %i.rc, i64 %i.rq
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !27
  %i.rt = sext i8 %i.rs to i64                    ; 2 uses
  %.not.i.i = icmp slt i64 %i.pi, %i.rt           ; 2 uses
  %i.ru = sub nsw i64 %i.pi, %i.rt
  %i.rv = trunc i64 %i.ru to i32
  %i.rw = shl nuw i32 1, %i.rv
  %i.rx = select i1 %.not.i.i, i32 0, i32 %i.rw   ; 2 uses
  %i.ry = sext i32 %i.rx to i128
  switch i32 %i.rx, label %.noexc37 [
    i32 0, label %.loopexit350
    i32 1, label %.noexc31
  ]

.noexc31:                                         ; preds = %.noexc30
  br i1 %i.pr, label %.noexc33, label %bb.bx

bb.bx:                                            ; preds = %.noexc31
  %i.rz = getelementptr inbounds nuw i8, ptr %i.pm, i64 59
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !1309, !range !106, !noundef !107
  %i.sb = trunc nuw i8 %i.sa to i1
  br i1 %i.sb, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.sc = getelementptr inbounds nuw i8, ptr %i.pm, i64 64
  %i.sd = load i32, ptr %i.sc, align 8, !tbaa !1310
  br label %.noexc33

bb.bz:                                            ; preds = %bb.bx
  %i.se = getelementptr inbounds nuw i8, ptr %i.pm, i64 8
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !1311
  %i.sg = shl nsw i64 %i.pl, 2
  %i.sh = getelementptr inbounds i8, ptr %i.sf, i64 %i.sg
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !88
  br label %.noexc33

.noexc33:                                         ; preds = %.noexc31, %bb.by, %bb.bz
  %.0.i.i.i.i.i170 = phi i32 [ %i.si, %bb.bz ], [ %i.sd, %bb.by ], [ %.0.i.i140, %.noexc31 ]
  %i.sj = sext i32 %.0.i.i.i.i.i170 to i64
  %i.sk = shl nsw i64 %i.sj, 4
  %i.sl = getelementptr inbounds nuw i8, ptr %i.po, i64 %i.sk
  %.0.copyload.i.i.i.i.i171 = load i128, ptr %i.sl, align 1
  br i1 %i.rf, label %.noexc34, label %bb.ca

bb.ca:                                            ; preds = %.noexc33
  %i.sm = getelementptr inbounds nuw i8, ptr %i.ra, i64 59
  %i.sn = load i8, ptr %i.sm, align 1, !tbaa !1309, !range !106, !noundef !107
  %i.so = trunc nuw i8 %i.sn to i1
  br i1 %i.so, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.sp = getelementptr inbounds nuw i8, ptr %i.ra, i64 64
  %i.sq = load i32, ptr %i.sp, align 8, !tbaa !1310
  br label %.noexc34

bb.cc:                                            ; preds = %bb.ca
  %i.sr = getelementptr inbounds nuw i8, ptr %i.ra, i64 8
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !1311
  %i.st = shl nsw i64 %i.pl, 2
  %i.su = getelementptr inbounds i8, ptr %i.ss, i64 %i.st
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !88
  br label %.noexc34

.noexc34:                                         ; preds = %bb.cc, %bb.cb, %.noexc33
  %.0.i.i.i.i.i176 = phi i32 [ %i.sv, %bb.cc ], [ %i.sq, %bb.cb ], [ %.0.i.i140, %.noexc33 ]
  %i.sw = sext i32 %.0.i.i.i.i.i176 to i64
  %i.sx = getelementptr inbounds i8, ptr %i.rc, i64 %i.sw
  %i.sy = load i8, ptr %i.sx, align 1, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34, !noalias !5622
  store i8 %i.sy, ptr %9, align 16, !tbaa !3691, !alias.scope !5628, !noalias !5622
  store i128 %.0.copyload.i.i.i.i.i171, ptr %i.q, align 16, !tbaa !3696, !alias.scope !5628, !noalias !5622
  %i.sz = getelementptr inbounds nuw i8, ptr %i.nv, i64 60 ; 2 uses
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !5137 ; 2 uses
  %i.tb = add nsw i32 %i.ta, 1                    ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.nv, i64 56 ; 3 uses
  %i.td = load i8, ptr %i.tc, align 8, !tbaa !5164, !range !106, !noundef !107
  %i.te = trunc nuw i8 %i.td to i1
  br i1 %i.te, label %bb.cd, label %_ZN8facebook5velox4exec11ArrayWriterINS0_10CustomTypeINS0_9IPPrefixTELb0EEEE25commitMostRecentChildItemEv.exit.i.i178

bb.cd:                                            ; preds = %.noexc34
  %i.tf = getelementptr inbounds nuw i8, ptr %i.nv, i64 48
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !5145 ; 2 uses
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !96
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 8
  %i.tj = load ptr, ptr %i.ti, align 8
  invoke void %i.tj(ptr noundef nonnull align 8 dereferenceable(112) %i.tg, i1 noundef zeroext true)
          to label %.noexc181 unwind label %.loopexit.split-lp352, !inline_history !5193

.noexc181:                                        ; preds = %bb.cd
  store i8 0, ptr %i.tc, align 8, !tbaa !5164
  br label %_ZN8facebook5velox4exec11ArrayWriterINS0_10CustomTypeINS0_9IPPrefixTELb0EEEE25commitMostRecentChildItemEv.exit.i.i178
end_hunk_7
