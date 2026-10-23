Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/KeyEncoder?download=true
inline.NumInlined: 22087
inline.NumDeleted: 4787
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 78
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_ZN8facebook5velox10serializer10KeyEncoder6encodeB5cxx11ERKSt10shared_ptrINS0_9RowVectorEE:bb.a

.lr.ph:                                           ; preds = %bb.n, %bb.u
  %.sroa.021.025 = phi ptr [ %i.bp, %bb.u ], [ %i.aq, %bb.n ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.021.025, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !503
  store ptr %i.bm, ptr %i.a, align 8, !tbaa !343
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #39
  %i.bn = load i64, ptr %.sroa.021.025, align 8, !tbaa !504
  store i64 %i.bn, ptr %i.b, align 8, !tbaa !336
  %i.bo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJPKcmEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.u unwind label %bb.v       ; 0 uses

bb.u:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.021.025, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.ar
  br i1 %i.bq, label %._crit_edge.loopexit, label %.lr.ph

bb.v:                                             ; preds = %.lr.ph
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %.pn = phi { ptr, i32 } [ %i.br, %bb.v ], [ %i.bk, %bb.t ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #39
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZNSt14_Function_baseD2Ev.exit16
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.w ], [ %i.bf, %_ZNSt14_Function_baseD2Ev.exit16 ]
  %i.bs = load ptr, ptr %4, align 8, !tbaa !497   ; 3 uses
  %.not.i.i.i17 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i17, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit18, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !498
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = sub i64 %i.bv, %i.bw
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bx) #49
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit18

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit18: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  %i.by = load ptr, ptr %3, align 8, !tbaa !500   ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i19, label %_ZNSt6vectorIcSaIcEED2Ev.exit20, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit18
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !501
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.by to i64
  %i.cd = sub i64 %i.cb, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cd) #49
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit20

_ZNSt6vectorIcSaIcEED2Ev.exit20:                  ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit18, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox10serializer10KeyEncoder6encodeISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS8_EEEEvRKSt10shared_ptrINS0_10BaseVectorEERT_RKSt8functionIFPvmEE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.470", align 16 ; 5 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.1307", align 16 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::vector.79", align 8    ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !359    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load i32, ptr %i.c, align 8, !tbaa !243  ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.e, !prof !260

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39, !noalias !2128
  store i32 %i.d, ptr %5, align 16, !tbaa !212, !alias.scope !2129, !noalias !2128
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.f, align 16, !tbaa !212, !alias.scope !2129, !noalias !2128
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.23, i64 11, i64 17, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39, !noalias !2128
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10serializer10KeyEncoder6encodeISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS8_EEEEvRKSt10shared_ptrINS0_10BaseVectorEERT_RKSt8functionIFPvmEEE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr nonnull @.str.23) #50
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %6, align 8, !tbaa !211    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.k = load i64, ptr %i.i, align 8, !tbaa !212
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %_ZN5folly6detail14ScopeGuardImplIZN8facebook5velox10serializer10KeyEncoder6encodeISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISB_EEEEvRKSt10shared_ptrINS3_10BaseVectorEERT_RKSt8functionIFPvmEEEUlvE_Lb1EED2Ev.exit99

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.m, ptr noundef nonnull align 8 dereferenceable(94) %i.b, i1 noundef zeroext true)
          to label %bb.f unwind label %.loopexit.split-lp117.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !331
  %i.p = invoke noundef ptr @_ZNK8facebook5velox10BaseVector9asCheckedINS0_9RowVectorEEEPKT_v(ptr noundef nonnull align 8 dereferenceable(94) %i.o)
          to label %bb.g unwind label %.loopexit.split-lp117.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !290
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !289  ; 2 uses
  %.not138 = icmp eq ptr %i.t, %i.u
  br i1 %.not138, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %bb.h

._crit_edge:                                      ; preds = %bb.i, %bb.g
  %i.w = invoke noundef i64 @_ZN8facebook5velox10serializer10KeyEncoder19estimateEncodedSizeEv(ptr noundef nonnull align 8 dereferenceable(264) %0)
          to label %bb.j unwind label %.loopexit.split-lp117.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %i.x = phi ptr [ %i.u, %.lr.ph ], [ %i.ah, %bb.i ]
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !320
  %i.z = getelementptr inbounds nuw [120 x i8], ptr %i.y, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !248
  %i.ac = sext i32 %i.ab to i64
  %i.ad = load ptr, ptr %i.q, align 8, !tbaa !355
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.ac
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !359
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.z, ptr noundef nonnull align 8 dereferenceable(94) %i.af, i1 noundef zeroext true)
          to label %bb.i unwind label %.loopexit.split-lp117.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ag = load ptr, ptr %i.s, align 8, !tbaa !290
  %i.ah = load ptr, ptr %i.r, align 8, !tbaa !289 ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 2
  %i.am = icmp ugt i64 %i.al, %indvars.iv.next
  br i1 %i.am, label %bb.h, label %._crit_edge, !llvm.loop !2113

bb.j:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.w, ptr %i.a, align 8, !tbaa !336
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !493
  %.not.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt25__throw_bad_function_callv() #50
          to label %.noexc unwind label %.loopexit.split-lp117.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !492
  %i.ar = invoke noundef ptr %i.aq(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.m unwind label %.loopexit.split-lp117.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2114 ; 5 uses

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.as = load ptr, ptr %1, align 8, !tbaa !359
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.au = load i32, ptr %i.at, align 8, !tbaa !243 ; 8 uses
  %i.av = load ptr, ptr %i.s, align 8, !tbaa !290 ; 2 uses
  %i.aw = load ptr, ptr %i.r, align 8, !tbaa !289 ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = ashr exact i64 %i.az, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  %i.bb = sext i32 %i.au to i64                   ; 4 uses
  %i.bc = icmp slt i32 %i.au, 0
  br i1 %i.bc, label %bb.n, label %_ZNSt6vectorIPcSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #50
          to label %.noexc82 unwind label %bb.q

.noexc82:                                         ; preds = %bb.n
  unreachable

_ZNSt6vectorIPcSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i: ; preds = %bb.m
  %.not.i.i.i.i = icmp ne i32 %i.au, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bd = shl nuw nsw i64 %i.bb, 3                ; 3 uses
  %i.be = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #48
          to label %.noexc83 unwind label %bb.q   ; 13 uses

.noexc83:                                         ; preds = %_ZNSt6vectorIPcSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i
  store ptr %i.be, ptr %7, align 8, !tbaa !342
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bb
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !2130
  store ptr null, ptr %i.be, align 8, !tbaa !343
  %i.bh = getelementptr i8, ptr %i.be, i64 8      ; 3 uses
  %i.bi = add nsw i64 %i.bb, -1                   ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.o, label %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc83
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bi, 3  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.bh, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !343
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.o

bb.o:                                             ; preds = %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc83
  %.0.i.i.i.i.i = phi ptr [ %i.bk, %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.bh, %.noexc83 ]
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.bl, align 8, !tbaa !2131
  store ptr %i.ar, ptr %i.be, align 8, !tbaa !343
  %i.bm = icmp samesign ugt i32 %i.au, 1
  br i1 %i.bm, label %.lr.ph129, label %.preheader

.lr.ph129:                                        ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !289 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.au to i64
  %i.bp = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %i.bp, 3                    ; 3 uses
  %i.bq = add nsw i32 %i.au, -2
  %i.br = icmp ult i32 %i.bq, 3
  br i1 %i.br, label %.epil.preheader, label %.lr.ph129.new

.lr.ph129.new:                                    ; preds = %.lr.ph129
  %unroll_iter = and i64 %i.bp, -4
  br label %bb.r

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph129
  %.epil.init = phi ptr [ %i.ar, %.lr.ph129 ], [ %i.cz, %.preheader.loopexit.unr-lcssa ]
  %indvars.iv155.epil.init = phi i64 [ 1, %.lr.ph129 ], [ %indvars.iv.next156.3, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod216 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod216)
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.epil.preheader
  %i.bs = phi ptr [ %.epil.init, %.epil.preheader ], [ %i.bx, %bb.p ]
  %indvars.iv155.epil = phi i64 [ %indvars.iv155.epil.init, %.epil.preheader ], [ %indvars.iv.next156.epil, %bb.p ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.p ]
  %i.bt = getelementptr [4 x i8], ptr %i.bo, i64 %indvars.iv155.epil
  %i.bu = getelementptr i8, ptr %i.bt, i64 -4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !248
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds i8, ptr %i.bs, i64 %i.bw ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv155.epil
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !343
  %indvars.iv.next156.epil = add nuw nsw i64 %indvars.iv155.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %bb.p, !llvm.loop !2115

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %bb.p, %bb.o
  %.not139 = icmp eq ptr %i.av, %i.aw
  br i1 %.not139, label %._crit_edge132, label %.lr.ph131

.lr.ph131:                                        ; preds = %.preheader
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %bb.u

.loopexit.split-lp117.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %bb.l, %bb.k, %._crit_edge, %bb.e, %bb.f
  %lpad.loopexit.split-lp214 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp117

bb.q:                                             ; preds = %_ZNSt6vectorIPcSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i, %bb.n
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.r:                                             ; preds = %bb.r, %.lr.ph129.new
  %i.cc = phi ptr [ %i.ar, %.lr.ph129.new ], [ %i.cz, %bb.r ]
  %indvars.iv155 = phi i64 [ 1, %.lr.ph129.new ], [ %indvars.iv.next156.3, %bb.r ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph129.new ], [ %niter.next.3, %bb.r ]
  %i.cd = getelementptr [4 x i8], ptr %i.bo, i64 %indvars.iv155
  %i.ce = getelementptr i8, ptr %i.cd, i64 -4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !248
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds i8, ptr %i.cc, i64 %i.cg ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv155
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !343
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %i.cj = getelementptr [4 x i8], ptr %i.bo, i64 %indvars.iv.next156
  %i.ck = getelementptr i8, ptr %i.cj, i64 -4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !248
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds i8, ptr %i.ch, i64 %i.cm ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next156
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !343
  %indvars.iv.next156.1 = add nuw nsw i64 %indvars.iv155, 2 ; 2 uses
  %i.cp = getelementptr [4 x i8], ptr %i.bo, i64 %indvars.iv.next156.1
  %i.cq = getelementptr i8, ptr %i.cp, i64 -4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !248
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds i8, ptr %i.cn, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next156.1
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !343
  %indvars.iv.next156.2 = add nuw nsw i64 %indvars.iv155, 3 ; 2 uses
  %i.cv = getelementptr [4 x i8], ptr %i.bo, i64 %indvars.iv.next156.2
  %i.cw = getelementptr i8, ptr %i.cv, i64 -4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !248
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds i8, ptr %i.ct, i64 %i.cy ; 3 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next156.2
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !343
  %indvars.iv.next156.3 = add nuw nsw i64 %indvars.iv155, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %bb.r, !llvm.loop !2116

._crit_edge132:                                   ; preds = %bb.v, %.preheader
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !496 ; 2 uses
  %i.dd = load ptr, ptr %2, align 8, !tbaa !497   ; 2 uses
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = ptrtoint ptr %i.dd to i64               ; 2 uses
  %i.dg = sub i64 %i.de, %i.df                    ; 2 uses
  %i.dh = ashr exact i64 %i.dg, 4
  %i.di = add nsw i64 %i.dh, %i.bb                ; 4 uses
  %i.dj = icmp ugt i64 %i.di, 576460752303423487
  br i1 %i.dj, label %.invoke, label %bb.s

.invoke:                                          ; preds = %bb.z, %._crit_edge132
  %i.dk = phi ptr [ @.str.42, %._crit_edge132 ], [ @.str.43, %bb.z ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.dk) #50
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.s:                                             ; preds = %._crit_edge132
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !498 ; 2 uses
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = sub i64 %i.dn, %i.df
  %i.dp = ashr exact i64 %i.do, 4
  %i.dq = icmp ult i64 %i.dp, %i.di
  br i1 %i.dq, label %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit.i, label %.lr.ph136

_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.s
  %i.dr = shl nuw nsw i64 %i.di, 4
  %i.ds = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dr) #48
          to label %.noexc86 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc86:                                         ; preds = %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit.i
  %i.dt = load ptr, ptr %2, align 8, !tbaa !497   ; 5 uses
  %i.du = load ptr, ptr %i.db, align 8, !tbaa !496 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.dt, %i.du
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc86, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.dw, %.lr.ph.i.i.i.i ], [ %i.ds, %.noexc86 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.dv, %.lr.ph.i.i.i.i ], [ %i.dt, %.noexc86 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i, i64 16, i1 false), !tbaa.struct !2132, !alias.scope !2133
  %i.dv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i84 = icmp eq ptr %i.dv, %i.du
  br i1 %.not.i.i.i.i84, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !2120

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc86
  %.not.i8.i = icmp eq ptr %i.dt, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %i.dx = load ptr, ptr %i.dl, align 8, !tbaa !498
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %i.dt to i64
  %i.ea = sub i64 %i.dy, %i.dz
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.ea) #49
  br label %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.t, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  store ptr %i.ds, ptr %2, align 8, !tbaa !497
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dg ; 2 uses
  store ptr %i.eb, ptr %i.db, align 8, !tbaa !496
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %i.di ; 2 uses
  store ptr %i.ec, ptr %i.dl, align 8, !tbaa !498
  br label %.lr.ph136

.lr.ph136:                                        ; preds = %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit.i, %bb.s
  %9 = phi ptr [ %i.dd, %bb.s ], [ %i.ds, %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit.i ]
  %10 = phi ptr [ %i.dm, %bb.s ], [ %i.ec, %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit.i ]
  %11 = phi ptr [ %i.dc, %bb.s ], [ %i.eb, %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit.i ]
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %wide.trip.count165 = zext nneg i32 %i.au to i64
  %.pre = load ptr, ptr %i.ed, align 8, !tbaa !289
  br label %bb.x

bb.u:                                             ; preds = %.lr.ph131, %bb.v
  %indvars.iv158 = phi i64 [ 0, %.lr.ph131 ], [ %indvars.iv.next159, %bb.v ] ; 3 uses
  %i.ee = load ptr, ptr %i.bz, align 8, !tbaa !286
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.ee, i64 %indvars.iv158 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 1
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !372, !range !217, !noundef !218
  %i.ei = trunc nuw i8 %i.eh to i1
  %i.ej = xor i1 %i.ei, true
  %i.ek = load i8, ptr %i.ef, align 1, !tbaa !371, !range !217, !noundef !218
  %i.el = trunc nuw i8 %i.ek to i1
  %i.em = xor i1 %i.el, true
  %i.en = load ptr, ptr %i.ca, align 8, !tbaa !320
  %i.eo = getelementptr inbounds nuw [120 x i8], ptr %i.en, i64 %indvars.iv158
  invoke void @_ZN8facebook5velox10serializer10KeyEncoder12encodeColumnERKNS0_13DecodedVectorEibbRSt6vectorIPcSaIS7_EE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(120) %i.eo, i32 noundef %i.au, i1 noundef zeroext %i.em, i1 noundef zeroext %i.ej, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.u
  %indvars.iv.next159 = add nuw i64 %indvars.iv158, 1 ; 2 uses
  %exitcond161.not = icmp eq i64 %indvars.iv.next159, %i.ba
  br i1 %exitcond161.not, label %._crit_edge132, label %bb.u, !llvm.loop !2121

bb.w:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJPcRiEEERS3_DpOT_.exit
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %exitcond166.not = icmp eq i64 %indvars.iv.next163, %wide.trip.count165
  br i1 %exitcond166.not, label %._crit_edge137, label %bb.x, !llvm.loop !2122

._crit_edge137:                                   ; preds = %bb.w
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bd) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !289 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !290
  %.not.i.i.i.i.i = icmp eq ptr %i.es, %i.eq
  br i1 %.not.i.i.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZN8facebook5velox10serializer10KeyEncoder6encodeISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISB_EEEEvRKSt10shared_ptrINS3_10BaseVectorEERT_RKSt8functionIFPvmEEEUlvE_Lb1EED2Ev.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i.i:  ; preds = %._crit_edge137
  store ptr %i.eq, ptr %i.er, align 8, !tbaa !290
  br label %_ZN5folly6detail14ScopeGuardImplIZN8facebook5velox10serializer10KeyEncoder6encodeISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISB_EEEEvRKSt10shared_ptrINS3_10BaseVectorEERT_RKSt8functionIFPvmEEEUlvE_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZN8facebook5velox10serializer10KeyEncoder6encodeISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISB_EEEEvRKSt10shared_ptrINS3_10BaseVectorEERT_RKSt8functionIFPvmEEEUlvE_Lb1EED2Ev.exit: ; preds = %._crit_edge137, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i.i
  ret void

bb.x:                                             ; preds = %.lr.ph136, %bb.w
  %i.et = phi ptr [ %.pre, %.lr.ph136 ], [ %i.fz, %bb.w ] ; 2 uses
  %i.eu = phi ptr [ %9, %.lr.ph136 ], [ %i.ga, %bb.w ] ; 6 uses
  %i.ev = phi ptr [ %10, %.lr.ph136 ], [ %i.gb, %bb.w ] ; 5 uses
  %i.ew = phi ptr [ %11, %.lr.ph136 ], [ %i.gc, %bb.w ] ; 4 uses
  %indvars.iv162 = phi i64 [ 0, %.lr.ph136 ], [ %indvars.iv.next163, %bb.w ] ; 4 uses
  %.050134 = phi i64 [ 0, %.lr.ph136 ], [ %i.gd, %bb.w ] ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.050134 ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv162 ; 2 uses
  %.not.i = icmp eq ptr %i.ew, %i.ev
  br i1 %.not.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !248
  %i.fa = sext i32 %i.ez to i64                   ; 2 uses
  store i64 %i.fa, ptr %i.ew, align 8, !tbaa !504
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store ptr %i.ex, ptr %i.fb, align 8, !tbaa !503
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ew, i64 16 ; 2 uses
  store ptr %i.fc, ptr %i.db, align 8, !tbaa !496
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJPcRiEEERS3_DpOT_.exit

bb.z:                                             ; preds = %bb.x
  %i.fd = ptrtoint ptr %i.ev to i64
  %i.fe = ptrtoint ptr %i.eu to i64               ; 2 uses
  %i.ff = sub i64 %i.fd, %i.fe                    ; 3 uses
  %i.fg = icmp eq i64 %i.ff, 9223372036854775792
  br i1 %i.fg, label %.invoke, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.z
  %i.fh = ashr exact i64 %i.ff, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.fh, i64 1)
  %i.fi = add nsw i64 %.sroa.speculated.i.i.i, %i.fh ; 2 uses
  %i.fj = icmp ult i64 %i.fi, %i.fh
  %i.fk = call i64 @llvm.umin.i64(i64 %i.fi, i64 576460752303423487)
  %i.fl = select i1 %i.fj, i64 576460752303423487, i64 %i.fk ; 3 uses
  %.not.i.i.i87 = icmp ne i64 %i.fl, 0
  call void @llvm.assume(i1 %.not.i.i.i87)
  %i.fm = shl nuw nsw i64 %i.fl, 4
  %i.fn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fm) #48
          to label %.noexc90 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc90:                                         ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.ff ; 2 uses
  %i.fp = load i32, ptr %i.ey, align 4, !tbaa !248
  %i.fq = sext i32 %i.fp to i64
  store i64 %i.fq, ptr %i.fo, align 8, !tbaa !504
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store ptr %i.ex, ptr %i.fr, align 8, !tbaa !503
  %.not10.i.i.i.i.i = icmp eq ptr %i.eu, %i.ev
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc90, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ft, %.lr.ph.i.i.i.i.i ], [ %i.fn, %.noexc90 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.fs, %.lr.ph.i.i.i.i.i ], [ %i.eu, %.noexc90 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !2132, !alias.scope !2134
  %i.fs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i88 = icmp eq ptr %i.fs, %i.ev
  br i1 %.not.i.i.i.i.i88, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2120

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc90
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.fn, %.noexc90 ], [ %i.ft, %.lr.ph.i.i.i.i.i ]
  %i.fu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i24.i.i = icmp eq ptr %i.eu, null
  br i1 %.not.i24.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJPcRiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i
  %i.fv = load ptr, ptr %i.dl, align 8, !tbaa !498
  %i.fw = ptrtoint ptr %i.fv to i64
  %i.fx = sub i64 %i.fw, %i.fe
  call void @_ZdlPvm(ptr noundef nonnull %i.eu, i64 noundef %i.fx) #49
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJPcRiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJPcRiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.aa, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i
  store ptr %i.fn, ptr %2, align 8, !tbaa !497
  store ptr %i.fu, ptr %i.db, align 8, !tbaa !496
  %i.fy = getelementptr inbounds nuw [16 x i8], ptr %i.fn, i64 %i.fl ; 2 uses
  store ptr %i.fy, ptr %i.dl, align 8, !tbaa !498
  %.pre167 = load ptr, ptr %i.ed, align 8, !tbaa !289 ; 2 uses
  %.phi.trans.insert169 = getelementptr inbounds nuw [4 x i8], ptr %.pre167, i64 %indvars.iv162
  %.pre170.a = load i32, ptr %.phi.trans.insert169, align 4, !tbaa !248
  %.pre171 = sext i32 %.pre170.a to i64
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJPcRiEEERS3_DpOT_.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJPcRiEEERS3_DpOT_.exit: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJPcRiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.y
  %.pre-phi = phi i64 [ %.pre171, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJPcRiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.fa, %bb.y ]
  %i.fz = phi ptr [ %.pre167, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJPcRiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.et, %bb.y ]
  %i.ga = phi ptr [ %i.fn, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJPcRiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.eu, %bb.y ]
  %i.gb = phi ptr [ %i.fy, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJPcRiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.ev, %bb.y ]
  %i.gc = phi ptr [ %i.fu, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJPcRiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.fc, %bb.y ]
  %i.gd = add i64 %.050134, %.pre-phi             ; 2 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv162
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !343 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.gd ; 2 uses
  %.not = icmp eq ptr %i.gf, %i.gg
  br i1 %.not, label %bb.w, label %bb.ab, !prof !275

bb.ab:                                            ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJPcRiEEERS3_DpOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39, !noalias !2135
  store ptr %i.gf, ptr %4, align 16, !tbaa !212, !noalias !2135
  %i.gh = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.gg, ptr %i.gh, align 16, !tbaa !212, !noalias !2135
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.23, i64 11, i64 204, ptr nonnull %4)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39, !noalias !2135
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10serializer10KeyEncoder6encodeISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS8_EEEEvRKSt10shared_ptrINS0_10BaseVectorEERT_RKSt8functionIFPvmEEE18veloxCheckFailArgs_2, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr nonnull @.str.23) #50
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %bb.u, %.invoke, %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit.i
  %lpad.loopexit.split-lp211 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit96.a

bb.ae:                                            ; preds = %bb.ab
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

bb.af:                                            ; preds = %bb.ac
  %i.gj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gk = load ptr, ptr %8, align 8, !tbaa !211   ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.gm = icmp eq ptr %i.gk, %i.gl
  br i1 %i.gm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %bb.af
  %i.gn = load i64, ptr %i.gl, align 8, !tbaa !212
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.go) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %bb.af, %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  %.pn = phi { ptr, i32 } [ %i.gj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92 ], [ %i.gi, %bb.ae ], [ %i.gj, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  br label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit96.a

_ZNSt6vectorIPcSaIS0_EED2Ev.exit96.a:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %.pn70 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ], [ %lpad.loopexit.split-lp211, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bd) #49
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIPcSaIS0_EED2Ev.exit96.a, %bb.q
  %.pn70.pn = phi { ptr, i32 } [ %i.cb, %bb.q ], [ %.pn70, %_ZNSt6vectorIPcSaIS0_EED2Ev.exit96.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br label %.loopexit.split-lp117

.loopexit.split-lp117:                            ; preds = %.loopexit.split-lp117.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ag
  %.pn75.pn.pn = phi { ptr, i32 } [ %.pn70.pn, %bb.ag ], [ %lpad.loopexit.split-lp214, %.loopexit.split-lp117.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !289 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !290
  %.not.i.i.i.i.i97 = icmp eq ptr %i.gs, %i.gq
  br i1 %.not.i.i.i.i.i97, label %_ZN5folly6detail14ScopeGuardImplIZN8facebook5velox10serializer10KeyEncoder6encodeISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISB_EEEEvRKSt10shared_ptrINS3_10BaseVectorEERT_RKSt8functionIFPvmEEEUlvE_Lb1EED2Ev.exit99, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i.i98

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i.i98: ; preds = %.loopexit.split-lp117
  store ptr %i.gq, ptr %i.gr, align 8, !tbaa !290
  br label %_ZN5folly6detail14ScopeGuardImplIZN8facebook5velox10serializer10KeyEncoder6encodeISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISB_EEEEvRKSt10shared_ptrINS3_10BaseVectorEERT_RKSt8functionIFPvmEEEUlvE_Lb1EED2Ev.exit99

_ZN5folly6detail14ScopeGuardImplIZN8facebook5velox10serializer10KeyEncoder6encodeISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISB_EEEEvRKSt10shared_ptrINS3_10BaseVectorEERT_RKSt8functionIFPvmEEEUlvE_Lb1EED2Ev.exit99: ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i.i98, %.loopexit.split-lp117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn79 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn75.pn.pn, %.loopexit.split-lp117 ], [ %.pn75.pn.pn, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i.i98 ]
  resume { ptr, i32 } %.pn79
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 288230376151711743
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #50
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !281
  %i.d = load ptr, ptr %0, align 8, !tbaa !256
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 5
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %bb.f

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !255
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = shl nuw nsw i64 %1, 5
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #48 ; 4 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !256    ; 3 uses
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !255  ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.p, %i.q
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ae, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ad, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2140)
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.r, ptr %.012.i.i.i, align 8, !tbaa !208, !alias.scope !2139
  %i.s = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !211, !alias.scope !2140 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !213, !alias.scope !2140 ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false), !alias.scope !2141
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.s, ptr %.012.i.i.i, align 8, !tbaa !211, !alias.scope !2139
  %i.z = load i64, ptr %i.t, align 8, !tbaa !212, !alias.scope !2140
  store i64 %i.z, ptr %i.r, align 8, !tbaa !212, !alias.scope !2139
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !213, !alias.scope !2140
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.d
  %i.aa = phi i64 [ %i.w, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !213, !alias.scope !2139
  store ptr %i.t, ptr %.0911.i.i.i, align 8, !tbaa !211, !alias.scope !2140
  store i64 0, ptr %i.ab, align 8, !tbaa !213, !alias.scope !2140
  store i8 0, ptr %i.t, align 8, !tbaa !212, !alias.scope !2140
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %.not.i.i.i = icmp eq ptr %i.ad, %i.q
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exitthread-pre-split, label %.lr.ph.i.i.i, !llvm.loop !8

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exitthread-pre-split: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !256
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exitthread-pre-split, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.af = phi ptr [ %.pr, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exitthread-pre-split ], [ %i.p, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 3 uses
  %.not.i8 = icmp eq ptr %i.af, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !281
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.aj) #49
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !256
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.ak, ptr %i.j, align 8, !tbaa !255
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %1
  store ptr %i.al, ptr %i.b, align 8, !tbaa !281
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJPKcmEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !255  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !281
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !343    ; 3 uses
  %i.f = load i64, ptr %2, align 8, !tbaa !336    ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store ptr %i.g, ptr %i.b, align 8, !tbaa !208
  %i.h = icmp eq ptr %i.e, null
  %i.i = icmp ne i64 %i.f, 0
  %or.cond.i.i = and i1 %i.h, %i.i
  br i1 %or.cond.i.i, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.33) #50
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.j = icmp ugt i64 %i.f, 15
  br i1 %i.j, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.k = icmp slt i64 %i.f, 0
  br i1 %i.k, label %.noexc.i.i, label %bb.e

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #50
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.l = add nuw i64 %i.f, 1                      ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %.noexc9.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !260

.noexc9.i.i:                                      ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #50
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.e
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #48 ; 2 uses
  store ptr %i.n, ptr %i.b, align 8, !tbaa !211
  store i64 %i.f, ptr %i.g, align 8, !tbaa !212
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.c
  %i.o = phi ptr [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.g, %bb.c ] ; 3 uses
  switch i64 %i.f, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKcmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.p = load i8, ptr %i.e, align 1, !tbaa !212
  store i8 %i.p, ptr %i.o, align 1, !tbaa !212
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKcmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %i.e, i64 %i.f, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKcmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKcmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit: ; preds = %._crit_edge.i.i.i, %bb.f, %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.f, ptr %i.q, align 8, !tbaa !213
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store i8 0, ptr %i.r, align 1, !tbaa !212
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !255
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  store ptr %i.t, ptr %i.a, align 8, !tbaa !255
end_hunk_0
