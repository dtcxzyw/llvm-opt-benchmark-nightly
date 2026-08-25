Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmGlobalNinjaGenerator?download=true
inline.NumInlined: 8431
inline.NumDeleted: 2509
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN22cmGlobalNinjaGenerator26CloseCompileCommandsStreamEv:bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN22cmGlobalNinjaGenerator20CloseRulesFileStreamEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(3128) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2440 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !403  ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.noexc.i, label %_ZNSt10unique_ptrI21cmGeneratedFileStreamSt14default_deleteIS0_EE5resetEPS0_.exit

_ZNSt10unique_ptrI21cmGeneratedFileStreamSt14default_deleteIS0_EE5resetEPS0_.exit: ; preds = %bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !403
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(348) %i.c) #32, !inline_history !710
  br label %bb.d

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.g, ptr %1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 31, ptr %i.a, align 8, !tbaa !13
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %1, align 8, !tbaa !15
  %i.i = load i64, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  store i64 %i.i, ptr %i.g, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.h, ptr noundef nonnull align 1 dereferenceable(31) @.str.102, i64 31, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !18
  %i.k = load ptr, ptr %1, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  invoke void @_ZN13cmSystemTools5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.noexc.i
  %i.m = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.g
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.o = load i64, ptr %i.g, align 8, !tbaa !17
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br label %bb.d

bb.c:                                             ; preds = %.noexc.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.g
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.c
  %i.t = load i64, ptr %i.g, align 8, !tbaa !17
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  resume { ptr, i32 } %i.q

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt10unique_ptrI21cmGeneratedFileStreamSt14default_deleteIS0_EE5resetEPS0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN22cmGlobalNinjaGenerator13CleanMetaDataEv(ptr noundef nonnull align 8 dereferenceable(3128) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.586", align 8   ; 7 uses
  %2 = alloca %"class.std::vector.164", align 8   ; 11 uses
  %3 = alloca %"class.std::vector.586", align 8   ; 12 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(2202) %0)
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2968
  %i.f = load i64, ptr %i.e, align 8, !tbaa !18
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2943
  %i.i = load i8, ptr %i.h, align 1, !tbaa !711, !range !24, !noundef !25
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef zeroext i1 @_ZN5cmsys11SystemTools10FileExistsEPKc(ptr noundef nonnull @.str)
  %i.l = xor i1 %i.k, true
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %.not20 = phi i1 [ false, %bb.c ], [ true, %bb.b ], [ false, %bb.d ], [ true, %bb.a ]
  %i.m = phi i1 [ false, %bb.c ], [ false, %bb.b ], [ %i.l, %bb.d ], [ false, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2943
  %i.o = load i8, ptr %i.n, align 1, !tbaa !711, !range !24, !noundef !25
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.thread
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !512
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1843
  %i.t = load i8, ptr %i.s, align 1, !tbaa !712, !range !24, !noundef !25
  %i.u = trunc nuw i8 %i.t to i1
  %or.cond.not = or i1 %.not20, %i.u
  %or.cond3 = or i1 %i.m, %or.cond.not
  br i1 %or.cond3, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.v = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #34
          to label %bb.g unwind label %_ZNSt12_Vector_baseIPKcSaIS1_EED2Ev.exit.i ; 5 uses

_ZNSt12_Vector_baseIPKcSaIS1_EED2Ev.exit.i:       ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.f
  store ptr %i.v, ptr %1, align 8, !tbaa !834
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.x, ptr %i.y, align 8, !tbaa !837
  store ptr @.str.69, ptr %i.v, align 8, !tbaa !26
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.x, ptr %i.z, align 8, !tbaa !838
  invoke fastcc void @"_ZZN22cmGlobalNinjaGenerator13CleanMetaDataEvENK3$_0clERKSt6vectorIPKcSaIS3_EE"(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit unwind label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit31

_ZNSt6vectorIPKcSaIS1_EED2Ev.exit:                ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef 8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br label %bb.h

_ZNSt6vectorIPKcSaIS1_EED2Ev.exit31:              ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef 8) #33
  br label %.body

.body:                                            ; preds = %_ZNSt12_Vector_baseIPKcSaIS1_EED2Ev.exit.i, %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit31
  %.pn = phi { ptr, i32 } [ %i.aa, %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit31 ], [ %i.w, %_ZNSt12_Vector_baseIPKcSaIS1_EED2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br label %bb.ae

bb.h:                                             ; preds = %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit, %bb.e, %.thread
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2942
  %i.ac = load i8, ptr %i.ab, align 2, !tbaa !839, !range !24, !noundef !25
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.i, label %bb.ad

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2968
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !18
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.j, label %bb.ad

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.ah = load ptr, ptr %0, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 672
  %i.aj = load ptr, ptr %i.ai, align 8
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(3128) %0, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.k unwind label %bb.v

bb.k:                                             ; preds = %bb.j
  %i.ak = load ptr, ptr %2, align 8, !tbaa !82    ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 2880
  %i.am = load i64, ptr %i.al, align 8, !tbaa !18
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !512
  %i.ap = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5cmake22GetHomeOutputDirectoryB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(2456) %i.ao)
          to label %bb.l unwind label %bb.w

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !82 ; 2 uses
  %.not113 = icmp eq ptr %i.ak, %i.ar
  br i1 %.not113, label %._crit_edge, label %.lr.ph115

.lr.ph115:                                        ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.aw = add i64 %i.am, 15
  %i.ax = add i64 %i.aw, %i.at
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph115, %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit47
  %i.ay = phi ptr [ %i.ar, %.lr.ph115 ], [ %i.cv, %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit47 ]
  %.sroa.056.0114 = phi ptr [ %i.ak, %.lr.ph115 ], [ %.sroa.056.1.lcssa, %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit47 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %.sroa.056.0114 to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 5
  %i.bd = add nsw i64 %i.bc, 1                    ; 4 uses
  %i.be = icmp ugt i64 %i.bd, 1152921504606846975
  br i1 %i.be, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.328) #31
          to label %.noexc unwind label %.thread161

.noexc:                                           ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m
  %.not159 = icmp eq i64 %i.bd, 0
  br i1 %.not159, label %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i, label %_ZNSt12_Vector_baseIPKcSaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIPKcSaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.o
  %i.bf = shl nuw nsw i64 %i.bd, 3
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #34
          to label %_ZNSt6vectorIPKcSaIS1_EE7reserveEm.exit unwind label %.loopexit69 ; 6 uses

_ZNSt6vectorIPKcSaIS1_EE7reserveEm.exit:          ; preds = %_ZNSt12_Vector_baseIPKcSaIS1_EE11_M_allocateEm.exit.i
  store ptr %i.bg, ptr %3, align 8, !tbaa !834
  store ptr %i.bg, ptr %i.av, align 8, !tbaa !838
  %.idx = shl nuw nsw i64 %i.bd, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx ; 2 uses
  store ptr %i.bh, ptr %i.au, align 8, !tbaa !837
  store ptr @.str.34, ptr %i.bg, align 8, !tbaa !26
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  store ptr %i.bi, ptr %i.av, align 8, !tbaa !838
  br label %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit

_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i: ; preds = %bb.o
  %i.bj = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #34
          to label %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i unwind label %.loopexit74 ; 4 uses

_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i
  store ptr @.str.34, ptr %i.bj, align 8, !tbaa !26
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 4 uses
  store ptr %i.bj, ptr %3, align 8, !tbaa !834
  store ptr %i.bk, ptr %i.av, align 8, !tbaa !838
  store ptr %i.bk, ptr %i.au, align 8, !tbaa !837
  br label %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit:     ; preds = %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i, %_ZNSt6vectorIPKcSaIS1_EE7reserveEm.exit
  %.promoted98 = phi ptr [ %i.bj, %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i ], [ %i.bg, %_ZNSt6vectorIPKcSaIS1_EE7reserveEm.exit ] ; 2 uses
  %.promoted92 = phi ptr [ %i.bk, %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i ], [ %i.bh, %_ZNSt6vectorIPKcSaIS1_EE7reserveEm.exit ] ; 2 uses
  %.promoted = phi ptr [ %i.bk, %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i ], [ %i.bi, %_ZNSt6vectorIPKcSaIS1_EE7reserveEm.exit ] ; 2 uses
  %i.bl = load ptr, ptr %i.aq, align 8, !tbaa !82 ; 2 uses
  %.not68102 = icmp eq ptr %.sroa.056.0114, %i.bl
  br i1 %.not68102, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit44
  %i.bm = phi ptr [ %i.ck, %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit44 ], [ %i.bl, %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit ]
  %.0104 = phi i64 [ %.pre-phi, %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit44 ], [ %i.ax, %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit ]
  %.sroa.056.1103 = phi ptr [ %i.cn, %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit44 ], [ %.sroa.056.0114, %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit ] ; 4 uses
  %i.bn = phi ptr [ %4, %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit44 ], [ %.promoted, %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit ] ; 9 uses
  %i.bo = phi ptr [ %i.cm, %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit44 ], [ %.promoted92, %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit ] ; 5 uses
  %i.bp = phi ptr [ %i.cl, %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit44 ], [ %.promoted98, %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit ] ; 10 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.056.1103, i64 8 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !18
  %i.bs = add i64 %.0104, 1                       ; 2 uses
  %i.bt = add i64 %i.bs, %i.br                    ; 2 uses
  %i.bu = icmp ult i64 %i.bt, 8000
  br i1 %i.bu, label %bb.p, label %.critedge

bb.p:                                             ; preds = %.lr.ph
  %i.bv = load ptr, ptr %.sroa.056.1103, align 8, !tbaa !15 ; 2 uses
  %.not.i.i35 = icmp eq ptr %i.bn, %i.bo
  br i1 %.not.i.i35, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %i.bv, ptr %i.bn, align 8, !tbaa !26
  br label %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit44

bb.r:                                             ; preds = %bb.p
  %i.bw = ptrtoint ptr %i.bn to i64
  %i.bx = ptrtoint ptr %i.bp to i64
  %i.by = sub i64 %i.bw, %i.bx                    ; 6 uses
  %i.bz = icmp eq i64 %i.by, 9223372036854775800
  br i1 %i.bz, label %bb.s, label %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i36

bb.s:                                             ; preds = %bb.r
  store ptr %i.bn, ptr %i.av, align 8
  store ptr %i.bo, ptr %i.au, align 8
  store ptr %i.bp, ptr %3, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.291) #31
          to label %.noexc42 unwind label %.loopexit.split-lp

.noexc42:                                         ; preds = %bb.s
  unreachable

_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i36: ; preds = %bb.r
  %i.ca = ashr exact i64 %i.by, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i37 = call i64 @llvm.umax.i64(i64 %i.ca, i64 1)
  %i.cb = add nsw i64 %.sroa.speculated.i.i.i.i37, %i.ca ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %i.ca
  %i.cd = call i64 @llvm.umin.i64(i64 %i.cb, i64 1152921504606846975)
  %i.ce = select i1 %i.cc, i64 1152921504606846975, i64 %i.cd ; 3 uses
  %.not.i.i.i.i38 = icmp ne i64 %i.ce, 0
  call void @llvm.assume(i1 %.not.i.i.i.i38)
  %i.cf = shl nuw nsw i64 %i.ce, 3
  %i.cg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #34
          to label %.noexc43 unwind label %.loopexit ; 4 uses

.noexc43:                                         ; preds = %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i36
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 %i.by ; 2 uses
  store ptr %i.bv, ptr %i.ch, align 8, !tbaa !26
  %i.ci = icmp sgt i64 %i.by, 0
  br i1 %i.ci, label %bb.t, label %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i39

bb.t:                                             ; preds = %.noexc43
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cg, ptr align 8 %i.bp, i64 %i.by, i1 false)
  br label %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i39

_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i39: ; preds = %bb.t, %.noexc43
  %.not.i17.i.i.i40 = icmp eq ptr %i.bp, null
  br i1 %.not.i17.i.i.i40, label %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i41, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i39
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.by) #33
  br label %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i41

_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i41: ; preds = %bb.u, %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i39
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ce
  %.pre = load i64, ptr %i.bq, align 8, !tbaa !18
  %.pre131 = load ptr, ptr %i.aq, align 8, !tbaa !82
  %.pre132 = add i64 %i.bs, %.pre
  br label %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit44

_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit44:   ; preds = %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i41, %bb.q
  %.pre-phi = phi i64 [ %.pre132, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i41 ], [ %i.bt, %bb.q ]
  %i.ck = phi ptr [ %.pre131, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i41 ], [ %i.bm, %bb.q ] ; 2 uses
  %i.cl = phi ptr [ %i.cg, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i41 ], [ %i.bp, %bb.q ] ; 2 uses
  %i.cm = phi ptr [ %i.cj, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i41 ], [ %i.bo, %bb.q ] ; 2 uses
  %.pn117 = phi ptr [ %i.ch, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i41 ], [ %i.bn, %bb.q ]
  %4 = getelementptr inbounds nuw i8, ptr %.pn117, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.056.1103, i64 32 ; 3 uses
  %.not68 = icmp eq ptr %i.cn, %i.ck
  br i1 %.not68, label %.critedge, label %.lr.ph, !llvm.loop !840

bb.v:                                             ; preds = %bb.j
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.w:                                             ; preds = %bb.k
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.loopexit69:                                      ; preds = %.critedge, %_ZNSt12_Vector_baseIPKcSaIS1_EE11_M_allocateEm.exit.i
  %5 = phi ptr [ %i.cr, %.critedge ], [ null, %_ZNSt12_Vector_baseIPKcSaIS1_EE11_M_allocateEm.exit.i ]
  %i.cq = phi ptr [ %6, %.critedge ], [ null, %_ZNSt12_Vector_baseIPKcSaIS1_EE11_M_allocateEm.exit.i ]
  %lpad.loopexit71 = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.thread161:                                       ; preds = %bb.n
  %lpad.loopexit.split-lp72 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit50

.loopexit74:                                      ; preds = %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i
  %lpad.loopexit76 = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit:                                        ; preds = %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i36
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bn, ptr %i.av, align 8
  store ptr %i.bo, ptr %i.au, align 8
  store ptr %i.bp, ptr %3, align 8
  br label %bb.z

.loopexit.split-lp:                               ; preds = %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.critedge:                                        ; preds = %.lr.ph, %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit44, %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit
  %6 = phi ptr [ %.promoted98, %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit ], [ %i.cl, %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit44 ], [ %i.bp, %.lr.ph ] ; 5 uses
  %i.cr = phi ptr [ %.promoted92, %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit ], [ %i.cm, %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit44 ], [ %i.bo, %.lr.ph ] ; 3 uses
  %.lcssa87 = phi ptr [ %.promoted, %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit ], [ %4, %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit44 ], [ %i.bn, %.lr.ph ]
  %.sroa.056.1.lcssa = phi ptr [ %.sroa.056.0114, %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit ], [ %i.cn, %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit44 ], [ %.sroa.056.1103, %.lr.ph ] ; 3 uses
  store ptr %.lcssa87, ptr %i.av, align 8
  store ptr %i.cr, ptr %i.au, align 8
  store ptr %6, ptr %3, align 8
  invoke fastcc void @"_ZZN22cmGlobalNinjaGenerator13CleanMetaDataEvENK3$_0clERKSt6vectorIPKcSaIS3_EE"(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.x unwind label %.loopexit69

bb.x:                                             ; preds = %.critedge
  %.not.i.i.i45 = icmp eq ptr %6, null
  br i1 %.not.i.i.i45, label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit47, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %6 to i64
  %i.cu = sub i64 %i.cs, %i.ct
  call void @_ZdlPvm(ptr noundef nonnull %6, i64 noundef %i.cu) #33
  br label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit47

_ZNSt6vectorIPKcSaIS1_EED2Ev.exit47:              ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.cv = load ptr, ptr %i.aq, align 8, !tbaa !82 ; 2 uses
  %.not = icmp eq ptr %.sroa.056.1.lcssa, %i.cv
  br i1 %.not, label %._crit_edge, label %bb.m, !llvm.loop !841

bb.z:                                             ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit74, %.loopexit69
  %7 = phi ptr [ %i.bn, %.loopexit.split-lp ], [ %i.bn, %.loopexit ], [ %5, %.loopexit69 ], [ null, %.loopexit74 ]
  %8 = phi ptr [ %i.bp, %.loopexit.split-lp ], [ %i.bp, %.loopexit ], [ %i.cq, %.loopexit69 ], [ null, %.loopexit74 ] ; 3 uses
  %.pn22 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit71, %.loopexit69 ], [ %lpad.loopexit76, %.loopexit74 ] ; 2 uses
  %.not.i.i.i48 = icmp eq ptr %8, null
  br i1 %.not.i.i.i48, label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit50, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cw = ptrtoint ptr %7 to i64
  %i.cx = ptrtoint ptr %8 to i64
  %i.cy = sub i64 %i.cw, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %8, i64 noundef %i.cy) #33
  br label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit50

_ZNSt6vectorIPKcSaIS1_EED2Ev.exit50:              ; preds = %.thread161, %bb.z, %bb.aa
  %.pn22164 = phi { ptr, i32 } [ %lpad.loopexit.split-lp72, %.thread161 ], [ %.pn22, %bb.z ], [ %.pn22, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.ac

._crit_edge:                                      ; preds = %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit47, %bb.l
  %.lcssa = phi ptr [ %i.ak, %bb.l ], [ %.sroa.056.1.lcssa, %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit47 ] ; 2 uses
  %i.cz = load ptr, ptr %2, align 8, !tbaa !416   ; 3 uses
  %.not4.i.i.i = icmp eq ptr %i.cz, %.lcssa
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.df, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.cz, %._crit_edge ] ; 3 uses
  %i.da = load ptr, ptr %.05.i.i.i, align 8, !tbaa !15 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !17
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.de) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i51 = icmp eq ptr %i.df, %.lcssa
  br i1 %.not.i.i.i51, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !417

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !416
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %i.dg = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.cz, %._crit_edge ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !408
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = ptrtoint ptr %i.dg to i64
  %i.dl = sub i64 %i.dj, %i.dk
  call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef %i.dl) #33
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.ad

bb.ac:                                            ; preds = %bb.w, %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit50, %bb.v
  %.pn22.pn.pn = phi { ptr, i32 } [ %i.co, %bb.v ], [ %.pn22164, %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit50 ], [ %i.cp, %bb.w ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.ae

bb.ad:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.i, %bb.h
  ret void

bb.ae:                                            ; preds = %bb.ac, %.body
  %.pn22.pn.pn.pn = phi { ptr, i32 } [ %.pn22.pn.pn, %bb.ac ], [ %.pn, %.body ]
  resume { ptr, i32 } %.pn22.pn.pn.pn
}

declare void @_ZNK23cmGlobalCommonGenerator38RemoveUnknownClangTidyExportFixesFilesEv(ptr noundef nonnull align 8 dereferenceable(2304)) local_unnamed_addr #0

declare noundef zeroext i1 @_ZN5cmsys11SystemTools10FileExistsEPKc(ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN22cmGlobalNinjaGenerator13CleanMetaDataEvENK3$_0clERKSt6vectorIPKcSaIS3_EE"(ptr %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [4 x %"struct.std::pair.1281"], align 8 ; 15 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::vector.164", align 8   ; 16 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::vector.164", align 8   ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %class.cmListFileBacktrace, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 2872
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr null, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %bb.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !407  ; 7 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !408
  %.not.i18 = icmp eq ptr %i.e, %i.f
  br i1 %.not.i18, label %bb.b, label %._crit_edge.i.i.i19

._crit_edge.i.i.i19:                              ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !9
  store i16 17197, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 2, ptr %i.h, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 18
  store i8 0, ptr %i.i, align 2, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.j, ptr %i.c, align 8, !tbaa !407
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit

bb.b:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA3_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.e, ptr noundef nonnull align 1 dereferenceable(3) @.str.290)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit unwind label %bb.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit: ; preds = %bb.b, %._crit_edge.i.i.i19
  %i.k = getelementptr inbounds nuw i8, ptr %.0.val, i64 120 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !512
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5cmake22GetHomeOutputDirectoryB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(2456) %i.l)
          to label %bb.c unwind label %bb.i       ; 3 uses

bb.c:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !407  ; 8 uses
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !408
  %.not.i23 = icmp eq ptr %i.n, %i.o
  br i1 %.not.i23, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  store ptr %i.p, ptr %i.n, align 8, !tbaa !9
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !15   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !18   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.s, ptr %i.a, align 8, !tbaa !13
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %.noexc.i.i26, label %._crit_edge.i.i.i24

.noexc.i.i26:                                     ; preds = %bb.d
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc28 unwind label %bb.i   ; 2 uses

.noexc28:                                         ; preds = %.noexc.i.i26
  store ptr %i.u, ptr %i.n, align 8, !tbaa !15
  %i.v = load i64, ptr %i.a, align 8, !tbaa !13
  store i64 %i.v, ptr %i.p, align 8, !tbaa !17
  br label %._crit_edge.i.i.i24

._crit_edge.i.i.i24:                              ; preds = %.noexc28, %bb.d
  %i.w = phi ptr [ %i.u, %.noexc28 ], [ %i.p, %bb.d ] ; 2 uses
  switch i64 %i.s, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i25
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i24
  %i.x = load i8, ptr %i.q, align 1, !tbaa !17
  store i8 %i.x, ptr %i.w, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i25

bb.f:                                             ; preds = %._crit_edge.i.i.i24
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.q, i64 %i.s, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i25: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i24
  %i.y = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !18
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !407
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 2 uses
  store ptr %i.ad, ptr %i.c, align 8, !tbaa !407
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit

bb.g:                                             ; preds = %bb.c
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit_crit_edge unwind label %bb.i

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit_crit_edge: ; preds = %bb.g
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !407
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit_crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i25
  %i.ae = phi ptr [ %.pre, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit_crit_edge ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i25 ] ; 7 uses
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !408
  %.not.i30 = icmp eq ptr %i.ae, %i.af
  br i1 %.not.i30, label %bb.h, label %._crit_edge.i.i.i31

._crit_edge.i.i.i31:                              ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !9
  store i16 29741, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 2, ptr %i.ah, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 18
  store i8 0, ptr %i.ai, align 2, !tbaa !17
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store ptr %i.aj, ptr %i.c, align 8, !tbaa !407
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit37

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA3_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.ae, ptr noundef nonnull align 1 dereferenceable(3) @.str.76)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit37 unwind label %bb.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit37: ; preds = %bb.h, %._crit_edge.i.i.i31
  %i.ak = load ptr, ptr %0, align 8, !tbaa !842   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !842 ; 2 uses
  %.not7 = icmp eq ptr %i.ak, %i.am
  br i1 %.not7, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit37
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.an, ptr %3, align 8, !tbaa !9
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.ao, align 8, !tbaa !18
  store i8 0, ptr %i.an, align 8, !tbaa !17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.ap = invoke noundef zeroext i1 @_ZN13cmSystemTools16RunSingleCommandERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEPS6_SB_PiPKcNS_12OutputOptionENSt6chrono8durationIdSt5ratioILl1ELl1EEEEN15cmProcessOutput8EncodingES8_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef null, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, i32 noundef 0, double 0.000000e+00, i32 noundef 1, ptr noundef nonnull align 8 %4)
          to label %bb.l unwind label %bb.x

bb.i:                                             ; preds = %bb.h, %bb.g, %.noexc.i.i26, %bb.b, %bb.a, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.lr.ph:                                           ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit37, %bb.j
  %.sroa.04.08 = phi ptr [ %i.as, %bb.j ], [ %i.ak, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit37 ] ; 2 uses
  %i.ar = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKPKcEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.04.08)
          to label %bb.j unwind label %bb.k       ; 0 uses

bb.j:                                             ; preds = %.lr.ph
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.as, %i.am
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.k:                                             ; preds = %.lr.ph
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.l:                                             ; preds = %._crit_edge
  %i.au = load ptr, ptr %4, align 8, !tbaa !416   ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !407 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.au, %i.aw
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bc, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.au, %bb.l ] ; 3 uses
  %i.ax = load ptr, ptr %.05.i.i.i, align 8, !tbaa !15 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
end_hunk_0
