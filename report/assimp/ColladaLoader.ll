inline.NumInlined: 3826
inline.NumDeleted: 1929
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN6Assimp6Logger4warnIJRA46_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA16_S2_SC_RA3_S2_EEEvDpOT_:bb.a
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %7, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %7, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #27
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #26
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA46_cEERKT_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %6, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.f
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9 ], [ %i.y, %bb.f ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN6Assimp13ColladaLoader10CreateMeshERKNS_13ColladaParserEPKNS_7Collada4MeshERKNS4_7SubMeshEPKNS4_10ControllerEmm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %3, ptr noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.std::unique_ptr", align 8   ; 21 uses
  %8 = alloca %"class.std::vector.257", align 8   ; 9 uses
  %9 = alloca %"class.std::vector.262", align 8   ; 11 uses
  %10 = alloca %"class.__gnu_cxx::__normal_iterator.267", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.c = tail call noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #30 ; 20 uses
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  store i32 0, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1272
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1312
  store ptr null, ptr %i.i, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.f, i8 0, i64 204, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.g, i8 0, i64 1044, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.h, i8 0, i64 36, i1 false)
  store ptr %i.c, ptr %7, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 2 uses
  %i.k = load i8, ptr %i.j, align 4, !range !9, !noundef !10
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.n = load i64, ptr %i.m, align 8              ; 4 uses
  %i.o = icmp ugt i64 %i.n, 1023
  br i1 %i.o, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 236
  %i.r = trunc nuw nsw i64 %i.n to i32
  store i32 %i.r, ptr %i.q, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 240 ; 2 uses
  %i.t = load ptr, ptr %i.p, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.s, ptr align 1 %i.t, i64 %i.n, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.n
  store i8 0, ptr %i.u, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.d:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8              ; 4 uses
  %i.x = icmp ugt i64 %i.w, 1023
  br i1 %i.x, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 236
  %i.z = trunc nuw nsw i64 %i.w to i32
  store i32 %i.z, ptr %i.y, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 240 ; 2 uses
  %i.ab = load ptr, ptr %2, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aa, ptr align 1 %i.ab, i64 %i.w, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.w
  store i8 0, ptr %i.ac, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = icmp eq ptr %i.ae, %i.ag
  br i1 %i.ah, label %_ZNSt10unique_ptrI6aiMeshSt14default_deleteIS0_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 632 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %6 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8            ; 2 uses
  %.idx663 = shl i64 %i.am, 3                     ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.ak, i64 %.idx663
  %.not5.i = icmp eq i64 %i.am, 0
  br i1 %.not5.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET0_T_S9_S8_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.f
  %i.ao = add i64 %.idx663, -8                    ; 2 uses
  %i.ap = lshr exact i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ao, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader1555, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.ar = shl i64 %n.vec, 3
  %i.as = getelementptr i8, ptr %i.ak, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi1422 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ay, %vector.body ]
  %i.at = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ak, i64 %i.at ; 2 uses
  %i.au = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8
  %wide.load1423 = load <2 x i64>, ptr %i.au, align 8
  %i.av = freeze <2 x i64> %wide.load
  %i.aw = freeze <2 x i64> %wide.load1423
  %i.ax = add <2 x i64> %i.av, %vec.phi           ; 2 uses
  %i.ay = add <2 x i64> %i.aw, %vec.phi1422       ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ay, %i.ax
  %i.ba = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET0_T_S9_S8_.exit, label %.lr.ph.i.preheader1555

.lr.ph.i.preheader1555:                           ; preds = %.lr.ph.i.preheader, %middle.block
  %.07.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ba, %middle.block ]
  %.sroa.02.06.i.ph = phi ptr [ %i.ak, %.lr.ph.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader1555, %.lr.ph.i
  %.07.i = phi i64 [ %i.bc, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader1555 ]
  %.sroa.02.06.i = phi ptr [ %i.bd, %.lr.ph.i ], [ %.sroa.02.06.i.ph, %.lr.ph.i.preheader1555 ] ; 2 uses
  %i.bb = load i64, ptr %.sroa.02.06.i, align 8
  %.fr = freeze i64 %i.bb
  %i.bc = add i64 %.fr, %.07.i                    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.bd, %i.an
  br i1 %.not.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET0_T_S9_S8_.exit, label %.lr.ph.i, !llvm.loop !81

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET0_T_S9_S8_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.f
  %.0.lcssa.i = phi i64 [ 0, %bb.f ], [ %i.ba, %middle.block ], [ %i.bc, %.lr.ph.i ] ; 16 uses
  %i.be = trunc i64 %.0.lcssa.i to i32
  store i32 %i.be, ptr %i.d, align 4
  %i.bf = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.0.lcssa.i, i64 12) ; 2 uses
  %i.bg = extractvalue { i64, i1 } %i.bf, 1
  %i.bh = extractvalue { i64, i1 } %i.bf, 0       ; 10 uses
  %i.bi = select i1 %i.bg, i64 -1, i64 %i.bh      ; 5 uses
  %i.bj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bi) #30
          to label %bb.g unwind label %bb.p       ; 5 uses

bb.g:                                             ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET0_T_S9_S8_.exit
  %i.bk = icmp eq i64 %.0.lcssa.i, 0              ; 13 uses
  br i1 %i.bk, label %.thread1171, label %.loopexit704

.thread1171:                                      ; preds = %bb.g
  store ptr %i.bj, ptr %i.f, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit

.loopexit704:                                     ; preds = %bb.g
  %i.bl = add i64 %i.bh, -12                      ; 2 uses
  %i.bm = urem i64 %i.bl, 12
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = add i64 %i.bn, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bj, i8 0, i64 %i.bo, i1 false)
  store ptr %i.bj, ptr %i.f, align 8
  %i.bp = getelementptr inbounds [12 x i8], ptr %i.ae, i64 %5 ; 2 uses
  %i.bq = icmp sgt i64 %.0.lcssa.i, 1
  br i1 %i.bq, label %bb.h, label %bb.i, !prof !82

bb.h:                                             ; preds = %.loopexit704
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bj, ptr align 4 %i.bp, i64 %i.bh, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit

bb.i:                                             ; preds = %.loopexit704
  %i.br = icmp eq i64 %.0.lcssa.i, 1
  br i1 %i.br, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bj, ptr noundef nonnull align 4 dereferenceable(12) %i.bp, i64 12, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit: ; preds = %.thread1171, %bb.j, %bb.i, %bb.h
  %i.bs = phi i1 [ false, %bb.j ], [ false, %bb.i ], [ true, %bb.h ], [ false, %.thread1171 ] ; 14 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = load ptr, ptr %i.bt, align 8            ; 3 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = sdiv exact i64 %i.bz, 12
  %i.cb = add i64 %.0.lcssa.i, %5                 ; 14 uses
  %.not = icmp ult i64 %i.ca, %i.cb
  br i1 %.not, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit480, label %bb.k

bb.k:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit
  %i.cc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bi) #30
          to label %bb.l unwind label %bb.p       ; 5 uses

bb.l:                                             ; preds = %bb.k
  br i1 %i.bk, label %.loopexit703.thread, label %.loopexit703

.loopexit703:                                     ; preds = %bb.l
  %i.cd = add i64 %i.bh, -12                      ; 2 uses
  %i.ce = urem i64 %i.cd, 12
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = add i64 %i.cf, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cc, i8 0, i64 %i.cg, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.cc, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds [12 x i8], ptr %i.bw, i64 %5 ; 2 uses
  br i1 %i.bs, label %bb.m, label %bb.n, !prof !14

.loopexit703.thread:                              ; preds = %bb.l
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.cc, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds [12 x i8], ptr %i.bw, i64 %5
  br i1 %i.bs, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit480, !prof !14

bb.m:                                             ; preds = %.loopexit703.thread, %.loopexit703
  %i.cl = phi ptr [ %i.ck, %.loopexit703.thread ], [ %i.ci, %.loopexit703 ]
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cc, ptr align 4 %i.cl, i64 %i.bh, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit480

bb.n:                                             ; preds = %.loopexit703
  %i.cm = icmp eq i64 %.0.lcssa.i, 1
  br i1 %i.cm, label %bb.o, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit480

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cc, ptr noundef nonnull align 4 dereferenceable(12) %i.ci, i64 12, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit480

bb.p:                                             ; preds = %bb.v, %bb.q, %bb.k, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET0_T_S9_S8_.exit
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit555

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit480: ; preds = %.loopexit703.thread, %bb.m, %bb.n, %bb.o, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = load ptr, ptr %i.co, align 8            ; 3 uses
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = sdiv exact i64 %i.cu, 12
  %.not390 = icmp ult i64 %i.cv, %i.cb
  br i1 %.not390, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit481, label %bb.q

bb.q:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit480
  %i.cw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bi) #30
          to label %bb.r unwind label %bb.p       ; 5 uses

bb.r:                                             ; preds = %bb.q
  br i1 %i.bk, label %.loopexit702.thread, label %.loopexit702

.loopexit702:                                     ; preds = %bb.r
  %i.cx = add i64 %i.bh, -12                      ; 2 uses
  %i.cy = urem i64 %i.cx, 12
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = add i64 %i.cz, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cw, i8 0, i64 %i.da, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.cw, ptr %i.db, align 8
  %i.dc = getelementptr inbounds [12 x i8], ptr %i.cr, i64 %5 ; 2 uses
  br i1 %i.bs, label %bb.s, label %bb.t, !prof !14

.loopexit702.thread:                              ; preds = %bb.r
  %i.dd = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.cw, ptr %i.dd, align 8
  %i.de = getelementptr inbounds [12 x i8], ptr %i.cr, i64 %5
  br i1 %i.bs, label %bb.s, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit481, !prof !14

bb.s:                                             ; preds = %.loopexit702.thread, %.loopexit702
  %i.df = phi ptr [ %i.de, %.loopexit702.thread ], [ %i.dc, %.loopexit702 ]
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cw, ptr align 4 %i.df, i64 %i.bh, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit481

bb.t:                                             ; preds = %.loopexit702
  %i.dg = icmp eq i64 %.0.lcssa.i, 1
  br i1 %i.dg, label %bb.u, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit481

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cw, ptr noundef nonnull align 4 dereferenceable(12) %i.dc, i64 12, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit481

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit481: ; preds = %.loopexit702.thread, %bb.s, %bb.t, %bb.u, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit480
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = load ptr, ptr %i.dh, align 8            ; 3 uses
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = sdiv exact i64 %i.dn, 12
  %.not391 = icmp ult i64 %i.do, %i.cb
  br i1 %.not391, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit482, label %bb.v

bb.v:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit481
  %i.dp = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bi) #30
          to label %bb.w unwind label %bb.p       ; 5 uses

bb.w:                                             ; preds = %bb.v
  br i1 %i.bk, label %.loopexit701.thread, label %.loopexit701

.loopexit701:                                     ; preds = %bb.w
  %i.dq = add i64 %i.bh, -12                      ; 2 uses
  %i.dr = urem i64 %i.dq, 12
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = add i64 %i.ds, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dp, i8 0, i64 %i.dt, i1 false)
  %i.du = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %i.dp, ptr %i.du, align 8
  %i.dv = getelementptr inbounds [12 x i8], ptr %i.dk, i64 %5 ; 2 uses
  br i1 %i.bs, label %bb.x, label %bb.y, !prof !14

.loopexit701.thread:                              ; preds = %bb.w
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %i.dp, ptr %i.dw, align 8
  %i.dx = getelementptr inbounds [12 x i8], ptr %i.dk, i64 %5
  br i1 %i.bs, label %bb.x, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit482, !prof !14

bb.x:                                             ; preds = %.loopexit701.thread, %.loopexit701
  %i.dy = phi ptr [ %i.dx, %.loopexit701.thread ], [ %i.dv, %.loopexit701 ]
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dp, ptr align 4 %i.dy, i64 %i.bh, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit482

bb.y:                                             ; preds = %.loopexit701
  %i.dz = icmp eq i64 %.0.lcssa.i, 1
  br i1 %i.dz, label %bb.z, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit482

bb.z:                                             ; preds = %bb.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dp, ptr noundef nonnull align 4 dereferenceable(12) %i.dv, i64 12, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit482

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit482: ; preds = %.loopexit701.thread, %bb.x, %bb.y, %bb.z, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit481
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 600
  %i.ec = add i64 %i.bh, -12                      ; 2 uses
  %i.ed = urem i64 %i.ec, 12
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = add i64 %i.ee, 12
  %xtraiter = and i64 %.0.lcssa.i, 1
  %i.eg = icmp eq i64 %.0.lcssa.i, 1
  %unroll_iter = and i64 %.0.lcssa.i, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1559 = trunc i64 %.0.lcssa.i to i1
  br label %bb.aa

.preheader699:                                    ; preds = %bb.ae
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 408 ; 2 uses
  %i.ei = icmp ugt i64 %.0.lcssa.i, 1152921504606846975
  %i.ej = shl i64 %.0.lcssa.i, 4                  ; 17 uses
  %i.ek = select i1 %i.ei, i64 -1, i64 %i.ej      ; 8 uses
  %i.el = icmp eq i64 %.0.lcssa.i, 1              ; 8 uses
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 416
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = load ptr, ptr %i.eh, align 8
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = ashr exact i64 %i.er, 4
  %.not435 = icmp ult i64 %i.es, %i.cb
  br i1 %.not435, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit, label %bb.af

bb.aa:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit482, %bb.ae
  %i.et = phi ptr [ %i.c, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit482 ], [ %i.gf, %bb.ae ] ; 3 uses
  %.0358880 = phi i64 [ 0, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit482 ], [ %i.gg, %bb.ae ] ; 7 uses
  %i.eu = getelementptr inbounds nuw [24 x i8], ptr %i.ea, i64 %.0358880 ; 5 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = load ptr, ptr %i.eu, align 8
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = sdiv exact i64 %i.fa, 12
  %.not438 = icmp ult i64 %i.fb, %i.cb
  br i1 %.not438, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bi) #30
          to label %bb.ac unwind label %bb.ad     ; 3 uses

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.bk, label %.loopexit700.thread, label %.lr.ph

.loopexit700.thread:                              ; preds = %bb.ac
  %i.fd = getelementptr inbounds nuw i8, ptr %i.et, i64 112
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %.0358880
  store ptr %i.fc, ptr %i.fe, align 8
  %.pre1175 = load ptr, ptr %7, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.ac
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fc, i8 0, i64 %i.ef, i1 false)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.et, i64 112
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %.0358880
  store ptr %i.fc, ptr %i.fg, align 8
  %.pre = load ptr, ptr %7, align 8               ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.pre, i64 112
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %.0358880 ; 3 uses
  br i1 %i.eg, label %.epil.preheader, label %.lr.ph.new

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.0362879.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ge, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod1559)
  %i.fj = load ptr, ptr %i.eu, align 8
  %i.fk = getelementptr [12 x i8], ptr %i.fj, i64 %5
  %i.fl = getelementptr [12 x i8], ptr %i.fk, i64 %.0362879.epil.init
  %i.fm = load ptr, ptr %i.fi, align 8
  %i.fn = getelementptr inbounds nuw [12 x i8], ptr %i.fm, i64 %.0362879.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.fn, ptr noundef nonnull align 4 dereferenceable(12) %i.fl, i64 12, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.loopexit700.thread
  %.pre1176 = phi ptr [ %.pre1175, %.loopexit700.thread ], [ %.pre, %._crit_edge.loopexit.unr-lcssa ], [ %.pre, %.epil.preheader ] ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %.0358880
  %i.fp = load i32, ptr %i.fo, align 4
  %i.fq = getelementptr inbounds nuw i8, ptr %.pre1176, i64 176
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %.0358880
  store i32 %i.fp, ptr %i.fr, align 4
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit555

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %.0362879 = phi i64 [ %i.ge, %.lr.ph.new ], [ 0, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.ft = load ptr, ptr %i.eu, align 8
  %i.fu = getelementptr [12 x i8], ptr %i.ft, i64 %5
  %i.fv = getelementptr [12 x i8], ptr %i.fu, i64 %.0362879
  %i.fw = load ptr, ptr %i.fi, align 8
  %i.fx = getelementptr inbounds nuw [12 x i8], ptr %i.fw, i64 %.0362879
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.fx, ptr noundef nonnull align 4 dereferenceable(12) %i.fv, i64 12, i1 false)
  %i.fy = or disjoint i64 %.0362879, 1            ; 2 uses
  %i.fz = load ptr, ptr %i.eu, align 8
  %i.ga = getelementptr [12 x i8], ptr %i.fz, i64 %5
  %i.gb = getelementptr [12 x i8], ptr %i.ga, i64 %i.fy
  %i.gc = load ptr, ptr %i.fi, align 8
  %i.gd = getelementptr inbounds nuw [12 x i8], ptr %i.gc, i64 %i.fy
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.gd, ptr noundef nonnull align 4 dereferenceable(12) %i.gb, i64 12, i1 false)
  %i.ge = add nuw i64 %.0362879, 2                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.new, !llvm.loop !83

bb.ae:                                            ; preds = %bb.aa, %._crit_edge
  %i.gf = phi ptr [ %i.et, %bb.aa ], [ %.pre1176, %._crit_edge ] ; 4 uses
  %i.gg = add nuw nsw i64 %.0358880, 1            ; 2 uses
  %exitcond1079.not = icmp eq i64 %i.gg, 8
  br i1 %exitcond1079.not, label %.preheader699, label %bb.aa, !llvm.loop !84

bb.af:                                            ; preds = %.preheader699
  %i.gh = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ek) #30
          to label %bb.ag unwind label %bb.ak     ; 4 uses

bb.ag:                                            ; preds = %bb.af
  br i1 %i.bk, label %.loopexit698, label %.loopexit698.loopexit

.loopexit698.loopexit:                            ; preds = %bb.ag
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.gh, i8 0, i64 %i.ej, i1 false)
  br label %.loopexit698

.loopexit698:                                     ; preds = %.loopexit698.loopexit, %bb.ag
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 48
  store ptr %i.gh, ptr %i.gi, align 8
  %i.gj = load ptr, ptr %i.eh, align 8
  %i.gk = getelementptr inbounds [16 x i8], ptr %i.gj, i64 %5 ; 2 uses
  br i1 %i.bs, label %bb.ah, label %bb.ai, !prof !14

bb.ah:                                            ; preds = %.loopexit698
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gh, ptr align 4 %i.gk, i64 %i.ej, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit

bb.ai:                                            ; preds = %.loopexit698
  br i1 %i.el, label %bb.aj, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit

bb.aj:                                            ; preds = %bb.ai
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gh, ptr noundef nonnull align 4 dereferenceable(16) %i.gk, i64 16, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit

bb.ak:                                            ; preds = %bb.bv, %bb.bp, %bb.bj, %bb.bd, %bb.ax, %bb.ar, %bb.al, %bb.af
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit555

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit: ; preds = %bb.ah, %bb.ai, %bb.aj, %.preheader699
  %.1366 = phi i64 [ 0, %.preheader699 ], [ 1, %bb.aj ], [ 1, %bb.ai ], [ 1, %bb.ah ] ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %2, i64 432 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 440
  %i.go = load ptr, ptr %i.gn, align 8
  %i.gp = load ptr, ptr %i.gm, align 8
  %i.gq = ptrtoint ptr %i.go to i64
  %i.gr = ptrtoint ptr %i.gp to i64
  %i.gs = sub i64 %i.gq, %i.gr
  %i.gt = ashr exact i64 %i.gs, 4
  %.not435.1 = icmp ult i64 %i.gt, %i.cb
  br i1 %.not435.1, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit
  %i.gu = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ek) #30
          to label %bb.am unwind label %bb.ak     ; 2 uses

bb.am:                                            ; preds = %bb.al
  br i1 %i.bk, label %.loopexit698.1, label %.loopexit698.loopexit.1

.loopexit698.loopexit.1:                          ; preds = %bb.am
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.gu, i8 0, i64 %i.ej, i1 false)
  br label %.loopexit698.1

.loopexit698.1:                                   ; preds = %.loopexit698.loopexit.1, %bb.am
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gf, i64 48
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %.1366
  store ptr %i.gu, ptr %i.gw, align 8
  %i.gx = load ptr, ptr %i.gm, align 8
  %i.gy = getelementptr inbounds [16 x i8], ptr %i.gx, i64 %5 ; 2 uses
  %i.gz = load ptr, ptr %7, align 8               ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 48
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %.1366
  %i.hc = load ptr, ptr %i.hb, align 8            ; 2 uses
  br i1 %i.bs, label %bb.ap, label %bb.an, !prof !14

bb.an:                                            ; preds = %.loopexit698.1
  br i1 %i.el, label %bb.ao, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit.1

bb.ao:                                            ; preds = %bb.an
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hc, ptr noundef nonnull align 4 dereferenceable(16) %i.gy, i64 16, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit.1

bb.ap:                                            ; preds = %.loopexit698.1
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.hc, ptr align 4 %i.gy, i64 %i.ej, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit.1

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit.1: ; preds = %bb.ap, %bb.ao, %bb.an
  %i.hd = add nuw nsw i64 %.1366, 1
  br label %bb.aq

bb.aq:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit.1, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit
  %i.he = phi ptr [ %i.gz, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit.1 ], [ %i.gf, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit ] ; 2 uses
  %.1366.1 = phi i64 [ %i.hd, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit.1 ], [ %.1366, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit ] ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %2, i64 456 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %2, i64 464
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = load ptr, ptr %i.hf, align 8
  %i.hj = ptrtoint ptr %i.hh to i64
  %i.hk = ptrtoint ptr %i.hi to i64
  %i.hl = sub i64 %i.hj, %i.hk
  %i.hm = ashr exact i64 %i.hl, 4
  %.not435.2 = icmp ult i64 %i.hm, %i.cb
  br i1 %.not435.2, label %bb.aw, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ek) #30
          to label %bb.as unwind label %bb.ak     ; 2 uses

bb.as:                                            ; preds = %bb.ar
  br i1 %i.bk, label %.loopexit698.2, label %.loopexit698.loopexit.2

.loopexit698.loopexit.2:                          ; preds = %bb.as
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hn, i8 0, i64 %i.ej, i1 false)
  br label %.loopexit698.2

.loopexit698.2:                                   ; preds = %.loopexit698.loopexit.2, %bb.as
  %i.ho = getelementptr inbounds nuw i8, ptr %i.he, i64 48
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %.1366.1
  store ptr %i.hn, ptr %i.hp, align 8
  %i.hq = load ptr, ptr %i.hf, align 8
  %i.hr = getelementptr inbounds [16 x i8], ptr %i.hq, i64 %5 ; 2 uses
  %i.hs = load ptr, ptr %7, align 8               ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 48
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %.1366.1
  %i.hv = load ptr, ptr %i.hu, align 8            ; 2 uses
  br i1 %i.bs, label %bb.av, label %bb.at, !prof !14

bb.at:                                            ; preds = %.loopexit698.2
  br i1 %i.el, label %bb.au, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit.2

bb.au:                                            ; preds = %bb.at
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hv, ptr noundef nonnull align 4 dereferenceable(16) %i.hr, i64 16, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit.2

bb.av:                                            ; preds = %.loopexit698.2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.hv, ptr align 4 %i.hr, i64 %i.ej, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit.2

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit.2: ; preds = %bb.av, %bb.au, %bb.at
  %i.hw = add nuw nsw i64 %.1366.1, 1
  br label %bb.aw

bb.aw:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit.2, %bb.aq
  %i.hx = phi ptr [ %i.hs, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit.2 ], [ %i.he, %bb.aq ] ; 2 uses
  %.1366.2 = phi i64 [ %i.hw, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit.2 ], [ %.1366.1, %bb.aq ] ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %2, i64 480 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %2, i64 488
  %i.ia = load ptr, ptr %i.hz, align 8
  %i.ib = load ptr, ptr %i.hy, align 8
  %i.ic = ptrtoint ptr %i.ia to i64
  %i.id = ptrtoint ptr %i.ib to i64
  %i.ie = sub i64 %i.ic, %i.id
  %i.if = ashr exact i64 %i.ie, 4
  %.not435.3 = icmp ult i64 %i.if, %i.cb
  br i1 %.not435.3, label %bb.bc, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ig = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ek) #30
          to label %bb.ay unwind label %bb.ak     ; 2 uses

bb.ay:                                            ; preds = %bb.ax
  br i1 %i.bk, label %.loopexit698.3, label %.loopexit698.loopexit.3

.loopexit698.loopexit.3:                          ; preds = %bb.ay
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ig, i8 0, i64 %i.ej, i1 false)
  br label %.loopexit698.3

.loopexit698.3:                                   ; preds = %.loopexit698.loopexit.3, %bb.ay
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hx, i64 48
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %.1366.2
  store ptr %i.ig, ptr %i.ii, align 8
  %i.ij = load ptr, ptr %i.hy, align 8
  %i.ik = getelementptr inbounds [16 x i8], ptr %i.ij, i64 %5 ; 2 uses
  %i.il = load ptr, ptr %7, align 8               ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 48
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %.1366.2
  %i.io = load ptr, ptr %i.in, align 8            ; 2 uses
  br i1 %i.bs, label %bb.bb, label %bb.az, !prof !14

bb.az:                                            ; preds = %.loopexit698.3
  br i1 %i.el, label %bb.ba, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit.3

bb.ba:                                            ; preds = %bb.az
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.io, ptr noundef nonnull align 4 dereferenceable(16) %i.ik, i64 16, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit.3

bb.bb:                                            ; preds = %.loopexit698.3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.io, ptr align 4 %i.ik, i64 %i.ej, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit.3

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit.3: ; preds = %bb.bb, %bb.ba, %bb.az
  %i.ip = add nuw nsw i64 %.1366.2, 1
  br label %bb.bc

bb.bc:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit.3, %bb.aw
  %i.iq = phi ptr [ %i.il, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit.3 ], [ %i.hx, %bb.aw ] ; 2 uses
  %.1366.3 = phi i64 [ %i.ip, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK9aiColor4tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit.3 ], [ %.1366.2, %bb.aw ] ; 4 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %2, i64 504 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_:bb.a

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.02933 = phi ptr [ %.02931, %.lr.ph ], [ %.029, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02933, i64 40
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.d) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.02933, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i) #26 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %i.l = sub i64 %i.d, %i.g
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.m = icmp slt i32 %.0.i.i.i, 0                ; 2 uses
  %.in.v = select i1 %i.m, i64 16, i64 24
  %.in = getelementptr inbounds nuw i8, ptr %.02933, i64 %.in.v
  %.029 = load ptr, ptr %.in, align 8             ; 2 uses
  %.not = icmp eq ptr %.029, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !31

._crit_edge:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  br i1 %i.m, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.028.lcssa39 = phi ptr [ %.02933, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %.028.lcssa39, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39) #31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.028.lcssa38 = phi ptr [ %.028.lcssa39, %bb.c ], [ %.02933, %._crit_edge ]
  %.sroa.014.0 = phi ptr [ %i.q, %bb.c ], [ %.02933, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %.sroa.speculated.i.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i5, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 32
  %i.x = load ptr, ptr %1, align 8
  %i.y = load ptr, ptr %i.w, align 8
  %i.z = tail call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i5) #26 ; 2 uses
  %.not.i.i.i7 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %bb.d
  %i.aa = sub i64 %i.s, %i.u
  %spec.select7.i.i.i.i10 = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -2147483648)
  %.08.i.i.i.i11 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10, i64 2147483647)
  %.0.i6.i.i.i12 = trunc nsw i64 %.08.i.i.i.i11 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
  %.0.i.i.i8 = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6 ], [ %.0.i6.i.i.i12, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9 ]
  %i.ab = icmp slt i32 %.0.i.i.i8, 0              ; 2 uses
  %spec.select = select i1 %i.ab, ptr null, ptr %.sroa.014.0
  %spec.select30 = select i1 %i.ab, ptr %.028.lcssa38, ptr null
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13, %._crit_edge.thread
  %.sroa.027.0 = phi ptr [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select30, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ %.028.lcssa39, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #22

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_construct_nodeIJRKS5_EEEvPSt13_Rb_tree_nodeIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8
  %i.d = load ptr, ptr %2, align 8                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.f, ptr %i.a, align 8
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.h, ptr %i.b, align 8
  %i.i = load i64, ptr %i.a, align 8
  store i64 %i.i, ptr %i.c, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.f
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1
  store i8 %i.k, ptr %i.j, align 1
  br label %bb.f

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = call ptr @__cxa_begin_catch(ptr %i.m) #26 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 64) #27
  invoke void @__cxa_rethrow() #29
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.p = load i64, ptr %i.a, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.p, ptr %i.q, align 8
  %i.r = load ptr, ptr %i.b, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.o

bb.h:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #28
  unreachable

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #20

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #20

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #20

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #22

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN10aiMetadata3AddI8aiStringEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(1028) %2) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 5 uses
  %i.b = add i32 %i.a, 1                          ; 2 uses
  %i.c = zext i32 %i.b to i64                     ; 3 uses
  %i.d = mul nuw nsw i64 %i.c, 1028               ; 2 uses
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.d) #30 ; 5 uses
  %i.f = icmp eq i32 %i.b, 0
  br i1 %i.f, label %.loopexit.thread, label %bb.b

.loopexit.thread:                                 ; preds = %bb.a
  %i.g = tail call noalias noundef nonnull ptr @_Znam(i64 noundef 0) #30
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i64 %i.d, -1028                  ; 2 uses
  %i.i = urem i64 %i.h, 1028
  %i.j = sub nuw nsw i64 %i.h, %i.i
  %i.k = add nsw i64 %i.j, 1028
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.e, i8 0, i64 %i.k, i1 false)
  %i.l = shl nuw nsw i64 %i.c, 4                  ; 2 uses
  %i.m = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #30 ; 5 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.c
  %i.o = add nsw i64 %i.l, -16                    ; 2 uses
  %i.p = lshr exact i64 %i.o, 4
  %i.q = add nuw nsw i64 %i.p, 1
  %xtraiter = and i64 %i.q, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.b, %.prol.preheader
  %i.r = phi ptr [ %i.t, %.prol.preheader ], [ %i.m, %bb.b ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.b ]
  store i32 10, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr null, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !187

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.b
  %.unr = phi ptr [ %i.m, %bb.b ], [ %i.t, %.prol.preheader ]
  %i.u = icmp ult i64 %i.o, 112
  br i1 %i.u, label %.loopexit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.v = phi ptr [ %i.al, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 10, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr null, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i32 10, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr null, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store i32 10, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store ptr null, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store i32 10, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  store ptr null, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  store i32 10, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  store ptr null, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  store i32 10, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  store ptr null, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  store i32 10, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  store ptr null, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  store i32 10, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  store ptr null, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 128 ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.n
  br i1 %i.am, label %.loopexit, label %.new

.loopexit:                                        ; preds = %.new, %.prol.loopexit
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.loopexit.._crit_edge_crit_edge, label %.lr.ph

.loopexit.._crit_edge_crit_edge:                  ; preds = %.loopexit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit.thread, %.loopexit
  %i.an = phi ptr [ %i.g, %.loopexit.thread ], [ %i.m, %.loopexit ] ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8            ; 5 uses
  %i.aq = icmp eq ptr %i.e, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8            ; 4 uses
  %wide.trip.count22 = zext i32 %i.a to i64       ; 3 uses
  br i1 %i.aq, label %_ZN8aiStringaSERKS_.exit.us.preheader, label %_ZN8aiStringaSERKS_.exit

_ZN8aiStringaSERKS_.exit.us.preheader:            ; preds = %.lr.ph
  %xtraiter33 = and i64 %wide.trip.count22, 1
  %i.at = icmp eq i32 %i.a, 1
  br i1 %i.at, label %_ZN8aiStringaSERKS_.exit.us.epil.preheader, label %_ZN8aiStringaSERKS_.exit.us.preheader.new

_ZN8aiStringaSERKS_.exit.us.preheader.new:        ; preds = %_ZN8aiStringaSERKS_.exit.us.preheader
  %unroll_iter = and i64 %wide.trip.count22, 4294967294
  br label %_ZN8aiStringaSERKS_.exit.us

_ZN8aiStringaSERKS_.exit.us:                      ; preds = %_ZN8aiStringaSERKS_.exit.us, %_ZN8aiStringaSERKS_.exit.us.preheader.new
  %indvars.iv19 = phi i64 [ 0, %_ZN8aiStringaSERKS_.exit.us.preheader.new ], [ %indvars.iv.next20.1, %_ZN8aiStringaSERKS_.exit.us ] ; 4 uses
  %niter = phi i64 [ 0, %_ZN8aiStringaSERKS_.exit.us.preheader.new ], [ %niter.next.1, %_ZN8aiStringaSERKS_.exit.us ]
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %indvars.iv19
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %indvars.iv19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false)
  %indvars.iv.next20 = or disjoint i64 %indvars.iv19, 1 ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %indvars.iv.next20
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %indvars.iv.next20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 16, i1 false)
  %indvars.iv.next20.1 = add nuw nsw i64 %indvars.iv19, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %_ZN8aiStringaSERKS_.exit.us, !llvm.loop !188

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_ZN8aiStringaSERKS_.exit.us
  %lcmp.mod34.not = icmp eq i64 %xtraiter33, 0
  br i1 %lcmp.mod34.not, label %._crit_edge, label %_ZN8aiStringaSERKS_.exit.us.epil.preheader

_ZN8aiStringaSERKS_.exit.us.epil.preheader:       ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZN8aiStringaSERKS_.exit.us.preheader
  %indvars.iv19.epil.init = phi i64 [ 0, %_ZN8aiStringaSERKS_.exit.us.preheader ], [ %indvars.iv.next20.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod35 = trunc i32 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod35)
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %indvars.iv19.epil.init
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %indvars.iv19.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN8aiStringaSERKS_.exit.us.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.loopexit.._crit_edge_crit_edge
  %i.ba = phi ptr [ %i.m, %.loopexit.._crit_edge_crit_edge ], [ %i.an, %._crit_edge.loopexit.unr-lcssa ], [ %i.an, %_ZN8aiStringaSERKS_.exit.us.epil.preheader ] ; 2 uses
  %i.bb = phi ptr [ %.pre, %.loopexit.._crit_edge_crit_edge ], [ %i.ap, %._crit_edge.loopexit.unr-lcssa ], [ %i.ap, %_ZN8aiStringaSERKS_.exit.us.epil.preheader ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, null
  br i1 %i.bd, label %bb.d, label %bb.c

_ZN8aiStringaSERKS_.exit:                         ; preds = %.lr.ph, %_ZN8aiStringaSERKS_.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN8aiStringaSERKS_.exit ], [ 0, %.lr.ph ] ; 5 uses
  %i.be = getelementptr inbounds nuw [1028 x i8], ptr %i.ap, i64 %indvars.iv ; 2 uses
  %i.bf = getelementptr inbounds nuw [1028 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.bg = load i32, ptr %i.be, align 4
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.bg, i32 1023) ; 2 uses
  store i32 %spec.select.i, ptr %i.bf, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bj = zext nneg i32 %spec.select.i to i64     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bh, ptr nonnull align 4 %i.bi, i64 %i.bj, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bj
  store i8 0, ptr %i.bk, align 1
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %indvars.iv
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %indvars.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i64 16, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count22
  br i1 %exitcond.not, label %._crit_edge.thread, label %_ZN8aiStringaSERKS_.exit, !llvm.loop !188

._crit_edge.thread:                               ; preds = %_ZN8aiStringaSERKS_.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.bo = phi ptr [ %i.bn, %._crit_edge.thread ], [ %i.bc, %._crit_edge ]
  %i.bp = phi ptr [ %i.ap, %._crit_edge.thread ], [ %i.bb, %._crit_edge ]
  %i.bq = phi ptr [ %i.an, %._crit_edge.thread ], [ %i.ba, %._crit_edge ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.bp) #27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.br = phi ptr [ %i.bo, %bb.c ], [ %i.bc, %._crit_edge ]
  %i.bs = phi ptr [ %i.bq, %bb.c ], [ %i.ba, %._crit_edge ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.bu) #27
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr %i.e, ptr %i.br, align 8
  store ptr %i.bs, ptr %i.bt, align 8
  %i.bw = load i32, ptr %0, align 8               ; 3 uses
  %i.bx = add i32 %i.bw, 1
  store i32 %i.bx, ptr %0, align 8
  %.not.i.not = icmp eq i32 %i.bw, -1
  br i1 %.not.i.not, label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bz = load i64, ptr %i.by, align 8            ; 5 uses
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cb = zext i32 %i.bw to i64                   ; 2 uses
  %i.cc = icmp ugt i64 %i.bz, 1023
  br i1 %i.cc, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cd = getelementptr inbounds nuw [1028 x i8], ptr %i.e, i64 %i.cb ; 2 uses
  %i.ce = trunc nuw nsw i64 %i.bz to i32
  store i32 %i.ce, ptr %i.cd, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 4 ; 2 uses
  %i.cg = load ptr, ptr %1, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cf, ptr align 1 %i.cg, i64 %i.bz, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.bz
  store i8 0, ptr %i.ch, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %bb.i, %bb.h
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %i.cb ; 2 uses
  store i32 5, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8            ; 2 uses
  %.not24.i = icmp eq ptr %i.ck, null
  br i1 %.not24.i, label %.thread29.i, label %bb.j

bb.j:                                             ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1028) %i.ck, ptr noundef nonnull align 4 dereferenceable(1028) %2, i64 1028, i1 false)
  br label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

.thread29.i:                                      ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.cl = tail call noalias noundef nonnull dereferenceable(1028) ptr @_Znwm(i64 noundef 1028) #30 ; 3 uses
  %i.cm = load i32, ptr %2, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 4 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.cn, i8 0, i64 1024, i1 false)
  %spec.select.i28.i = tail call i32 @llvm.umin.i32(i32 %i.cm, i32 1023) ; 2 uses
  store i32 %spec.select.i28.i, ptr %i.cl, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cp = zext nneg i32 %spec.select.i28.i to i64 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cn, ptr nonnull align 4 %i.co, i64 %i.cp, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cp
  store i8 0, ptr %i.cq, align 1
  store ptr %i.cl, ptr %i.cj, align 8
  br label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %bb.f, %bb.g, %bb.j, %.thread29.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_NS_9Formatter15basic_formatterIcS5_S6_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 13 uses
  %i.a = load ptr, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef %i.a, i64 noundef %i.c) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !189)
  call void @llvm.experimental.noalias.scope.decl(metadata !192)
  call void @llvm.experimental.noalias.scope.decl(metadata !195)
  call void @llvm.experimental.noalias.scope.decl(metadata !198)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !alias.scope !201
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !alias.scope !201
  store i8 0, ptr %i.e, align 8, !alias.scope !201
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !noalias !201 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !noalias !201 ; 2 uses
  %i.k = icmp ugt ptr %i.h, %i.j
  %.08.i.i.i.i.i = select i1 %i.k, ptr %i.h, ptr %i.j ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !noalias !201 ; 2 uses
  %i.n = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.m, i64 noundef %i.p)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %0, align 8, !alias.scope !201 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.e
  br i1 %i.t, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.u = load i64, ptr %i.e, align 8, !alias.scope !201
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #27
  br label %.body

bb.d:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.b
  %i.x = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.x, ptr %4, align 8
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.z = getelementptr i8, ptr %i.x, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %4, i64 %i.aa
  store ptr %i.y, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.ah = load i64, ptr %i.af, align 8
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #27
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

end_hunk_1
