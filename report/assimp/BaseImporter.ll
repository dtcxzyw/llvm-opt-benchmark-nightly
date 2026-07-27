inline.NumInlined: 1634
inline.NumDeleted: 756
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_Z10ai_tolowerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.w = load i64, ptr %i.l, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.w
  %i.y = icmp eq ptr %i.r, %i.x
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  store i64 %i.v, ptr %i.l, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v
  store i8 0, ptr %i.z, align 1
  br label %_Z12ai_trim_leftRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.e:                                             ; preds = %.noexc
  %i.aa = ptrtoint ptr %i.r to i64
  %i.ab = sub i64 %i.aa, %i.t
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.v, i64 noundef %i.ab)
          to label %_Z12ai_trim_leftRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.g

_Z12ai_trim_leftRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.ac = load ptr, ptr %0, align 8, !noalias !34 ; 2 uses
  %i.ad = load i64, ptr %i.l, align 8, !noalias !34
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ad
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !37
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !37
  store i64 %i.af, ptr %2, align 8, !noalias !40
  store i64 %i.ag, ptr %3, align 8, !noalias !40
  invoke void @_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_5__ops10_Iter_predIZ13ai_trim_rightRS9_EUlhE_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator") align 8 %4, ptr noundef nonnull dead_on_return %2, ptr noundef nonnull dead_on_return %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_Z12ai_trim_leftRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !37
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !37
  %.sroa.0.0.copyload.i.i = load ptr, ptr %4, align 8
  %i.ah = load ptr, ptr %0, align 8               ; 2 uses
  %i.ai = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 2 uses
  store i64 %i.ak, ptr %i.l, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ak
  store i8 0, ptr %i.al, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.am = load ptr, ptr %0, align 8               ; 6 uses
  %i.an = load i64, ptr %i.l, align 8             ; 9 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.an
  %.not6.i = icmp samesign eq i64 %i.an, 0
  br i1 %.not6.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_Z10ai_tolowerRKS8_EUlhE_ET0_T_SE_SD_T1_.exit, label %iter.check

iter.check:                                       ; preds = %bb.f
  %min.iters.check = icmp ult i64 %i.an, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check10 = icmp ult i64 %i.an, 32
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.an, 24
  %n.vec = and i64 %i.an, -32                     ; 4 uses
  %i.ap = getelementptr i8, ptr %i.am, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %i.am, i64 %index ; 3 uses
  %i.aq = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1 ; 3 uses
  %wide.load11 = load <16 x i8>, ptr %i.aq, align 1 ; 3 uses
  %i.ar = add <16 x i8> %wide.load, splat (i8 -65)
  %i.as = add <16 x i8> %wide.load11, splat (i8 -65)
  %i.at = icmp ult <16 x i8> %i.ar, splat (i8 26)
  %i.au = icmp ult <16 x i8> %i.as, splat (i8 26)
  %i.av = add nuw nsw <16 x i8> %wide.load, splat (i8 32)
  %i.aw = add nuw nsw <16 x i8> %wide.load11, splat (i8 32)
  %i.ax = select <16 x i1> %i.at, <16 x i8> %i.av, <16 x i8> %wide.load
  %i.ay = select <16 x i1> %i.au, <16 x i8> %i.aw, <16 x i8> %wide.load11
  store <16 x i8> %i.ax, ptr %next.gep, align 1
  store <16 x i8> %i.ay, ptr %i.aq, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !43

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_Z10ai_tolowerRKS8_EUlhE_ET0_T_SE_SD_T1_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !46

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec13 = and i64 %i.an, -8                    ; 3 uses
  %i.ba = getelementptr i8, ptr %i.am, i64 %n.vec13
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index14 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next17, %vec.epilog.vector.body ] ; 2 uses
  %next.gep15 = getelementptr i8, ptr %i.am, i64 %index14 ; 2 uses
  %wide.load16 = load <8 x i8>, ptr %next.gep15, align 1 ; 3 uses
  %i.bb = add <8 x i8> %wide.load16, splat (i8 -65)
  %i.bc = icmp ult <8 x i8> %i.bb, splat (i8 26)
  %i.bd = add nuw nsw <8 x i8> %wide.load16, splat (i8 32)
  %i.be = select <8 x i1> %i.bc, <8 x i8> %i.bd, <8 x i8> %wide.load16
  store <8 x i8> %i.be, ptr %next.gep15, align 1
  %index.next17 = add nuw i64 %index14, 8         ; 2 uses
  %i.bf = icmp eq i64 %index.next17, %n.vec13
  br i1 %i.bf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !47

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n18 = icmp eq i64 %i.an, %n.vec13
  br i1 %cmp.n18, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_Z10ai_tolowerRKS8_EUlhE_ET0_T_SE_SD_T1_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.ph = phi ptr [ %i.am, %iter.check ], [ %i.ap, %vec.epilog.iter.check ], [ %i.ba, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %i.bk, %.lr.ph.i ], [ %.sroa.0.08.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.bg = load i8, ptr %.sroa.0.08.i, align 1     ; 3 uses
  %i.bh = add i8 %i.bg, -65
  %or.cond.i.i.i = icmp ult i8 %i.bh, 26
  %i.bi = add nuw nsw i8 %i.bg, 32
  %i.bj = select i1 %or.cond.i.i.i, i8 %i.bi, i8 %i.bg
  store i8 %i.bj, ptr %.sroa.0.08.i, align 1
  %i.bk = getelementptr i8, ptr %.sroa.0.08.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.bk, %i.ao
  br i1 %.not.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_Z10ai_tolowerRKS8_EUlhE_ET0_T_SE_SD_T1_.exit, label %.lr.ph.i, !llvm.loop !48

bb.g:                                             ; preds = %_Z12ai_trim_leftRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  %i.bm = load ptr, ptr %0, align 8               ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.b
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.bo = load i64, ptr %i.b, align 8
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.bl

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_Z10ai_tolowerRKS8_EUlhE_ET0_T_SE_SD_T1_.exit: ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6Assimp12BaseImporter15CheckMagicTokenEPNS_8IOSystemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvmjj(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %union.anon.24, align 4             ; 6 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.a, ptr %6, align 8
  store i16 25202, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 18
  store i8 0, ptr %i.c, align 2
  %i.d = load ptr, ptr %1, align 8
  %i.e = load ptr, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = invoke noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.d, ptr noundef nonnull %i.a)
          to label %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit unwind label %bb.e, !inline_history !8 ; 9 uses

_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit: ; preds = %._crit_edge.i.i
  %i.i = load ptr, ptr %6, align 8                ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.a
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit
  %i.k = load i64, ptr %i.a, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %.not89 = icmp eq ptr %i.h, null
  br i1 %.not89, label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.m = zext i32 %4 to i64
  %i.n = load ptr, ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = invoke noundef i32 %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef %i.m, i32 noundef 0)
          to label %bb.c unwind label %bb.f       ; 0 uses

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.r = zext i32 %5 to i64                       ; 4 uses
  %i.s = load ptr, ptr %i.h, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = invoke noundef i64 %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %7, i64 noundef 1, i64 noundef %i.r)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not54 = icmp ne i64 %i.v, %i.r
  %.not61.not90.not = icmp eq i64 %3, 0
  %or.cond = or i1 %.not54, %.not61.not90.not
  br i1 %or.cond, label %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.w = load i32, ptr %7, align 4                ; 3 uses
  %i.x = trunc i32 %i.w to i16                    ; 2 uses
  switch i32 %5, label %.lr.ph.split [
    i32 2, label %.lr.ph.split.us
    i32 4, label %.lr.ph.split.us93
  ]

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.03292.us = phi ptr [ %i.aa, %.lr.ph.split.us ], [ %2, %.lr.ph ] ; 2 uses
  %.03391.us = phi i32 [ %i.ab, %.lr.ph.split.us ], [ 0, %.lr.ph ]
  %.0.copyload5.us = load i16, ptr %.03292.us, align 1 ; 2 uses
  %i.y = icmp eq i16 %.0.copyload5.us, %i.x
  %.sroa.0.0.insert.insert.i.i.us = call i16 @llvm.bswap.i16(i16 %.0.copyload5.us)
  %i.z = icmp eq i16 %.sroa.0.0.insert.insert.i.i.us, %i.x
  %or.cond.us = or i1 %i.y, %i.z                  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.03292.us, i64 2
  %i.ab = add i32 %.03391.us, 1                   ; 2 uses
  %i.ac = zext i32 %i.ab to i64
  %.not61.not.us = icmp ule i64 %3, %i.ac
  %or.cond118.not = select i1 %or.cond.us, i1 true, i1 %.not61.not.us
  br i1 %or.cond118.not, label %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i, label %.lr.ph.split.us, !llvm.loop !49

.lr.ph.split.us93:                                ; preds = %.lr.ph, %.lr.ph.split.us93
  %.03292.us94 = phi ptr [ %i.af, %.lr.ph.split.us93 ], [ %2, %.lr.ph ] ; 2 uses
  %.03391.us95 = phi i32 [ %i.ag, %.lr.ph.split.us93 ], [ 0, %.lr.ph ]
  %.0.copyload.us = load i32, ptr %.03292.us94, align 1 ; 2 uses
  %i.ad = icmp eq i32 %i.w, %.0.copyload.us
  %.sroa.0.0.insert.insert.i.i72.us = call i32 @llvm.bswap.i32(i32 %.0.copyload.us)
  %i.ae = icmp eq i32 %i.w, %.sroa.0.0.insert.insert.i.i72.us
  %or.cond88.us = or i1 %i.ad, %i.ae              ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.03292.us94, i64 4
  %i.ag = add i32 %.03391.us95, 1                 ; 2 uses
  %i.ah = zext i32 %i.ag to i64
  %.not61.not.us97 = icmp ule i64 %3, %i.ah
  %or.cond121.not = select i1 %or.cond88.us, i1 true, i1 %.not61.not.us97
  br i1 %or.cond121.not, label %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i, label %.lr.ph.split.us93, !llvm.loop !49

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %6, align 8               ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.a
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %bb.e
  %i.al = load i64, ptr %i.a, align 8
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit75

bb.g:                                             ; preds = %bb.c
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit75

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.03292 = phi ptr [ %i.ap, %.lr.ph.split ], [ %2, %.lr.ph ] ; 2 uses
  %.03391 = phi i32 [ %i.aq, %.lr.ph.split ], [ 0, %.lr.ph ]
  %bcmp = call i32 @bcmp(ptr %.03292, ptr nonnull %7, i64 %i.r)
  %.not55 = icmp eq i32 %bcmp, 0                  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.03292, i64 %i.r
  %i.aq = add i32 %.03391, 1                      ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %.not61.not = icmp ule i64 %3, %i.ar
  %or.cond124.not = select i1 %.not55, i1 true, i1 %.not61.not
  br i1 %or.cond124.not, label %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i, label %.lr.ph.split, !llvm.loop !49

_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i: ; preds = %.lr.ph.split.us93, %.lr.ph.split.us, %.lr.ph.split, %bb.d
  %.687 = phi i1 [ false, %bb.d ], [ %or.cond.us, %.lr.ph.split.us ], [ %.not55, %.lr.ph.split ], [ %or.cond88.us, %.lr.ph.split.us93 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.as = load ptr, ptr %i.h, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #26, !inline_history !15
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit75: ; preds = %bb.g, %bb.f
  %.pn56.pn.pn = phi { ptr, i32 } [ %i.ao, %bb.g ], [ %i.an, %bb.f ]
  %i.av = load ptr, ptr %i.h, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #26, !inline_history !15
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit75, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  %.pn56.pn.pn.pn = phi { ptr, i32 } [ %.pn56.pn.pn, %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit75 ], [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ]
  resume { ptr, i32 } %.pn56.pn.pn.pn

_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i, %bb.a
  %.7 = phi i1 [ false, %bb.a ], [ %.687, %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  ret i1 %.7
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp12BaseImporter13ConvertToUTF8ERSt6vectorIcSaIcEE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.25", align 8    ; 9 uses
  %2 = alloca %"class.std::vector.28", align 8    ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %0, align 8                ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = icmp ult i64 %i.f, 8
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull @.str.5)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.h) #26
  br label %bb.an

bb.e:                                             ; preds = %bb.a
  %i.j = load i8, ptr %i.c, align 1
  %i.k = icmp eq i8 %i.j, -17
  br i1 %i.k, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.m = load i8, ptr %i.l, align 1
  %i.n = icmp eq i8 %i.m, -69
  br i1 %i.n, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.p = load i8, ptr %i.o, align 1
  %i.q = icmp eq i8 %i.p, -65
  br i1 %i.q, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.r = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.r, ptr noundef nonnull @.str.6)
  %i.s = load ptr, ptr %0, align 8                ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 3 ; 3 uses
  %i.u = load ptr, ptr %i.a, align 8
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = sub i64 %i.v, %i.w                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 1
  br i1 %i.y, label %bb.i, label %bb.j, !prof !50

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.s, ptr nonnull align 1 %i.t, i64 %i.x, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit

bb.j:                                             ; preds = %bb.h
  %i.z = icmp eq i64 %i.x, 1
  br i1 %i.z, label %bb.k, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit

bb.k:                                             ; preds = %bb.j
  %i.aa = load i8, ptr %i.t, align 1
  store i8 %i.aa, ptr %i.s, align 1
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.i, %bb.j, %bb.k
  %i.ab = load ptr, ptr %i.a, align 8
  %i.ac = load ptr, ptr %0, align 8
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = add i64 %i.ad, -3
  %i.ag = sub i64 %i.af, %i.ae
  tail call void @_ZNSt6vectorIcSaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ag)
  br label %.loopexit64.thread

bb.l:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.ah = load i32, ptr %i.c, align 4             ; 2 uses
  switch i32 %i.ah, label %.loopexit77 [
    i32 -131072, label %bb.m
    i32 65534, label %bb.q
  ]

bb.m:                                             ; preds = %bb.l
  %i.ai = and i64 %i.f, 3
  %.not = icmp eq i64 %i.ai, 0
  br i1 %.not, label %.loopexit64.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull @.str.7)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aj) #26
  br label %bb.an

bb.q:                                             ; preds = %bb.l
  %i.al = and i64 %i.f, 3
  %.not52 = icmp eq i64 %i.al, 0
  br i1 %.not52, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.am = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull @.str.8)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @__cxa_throw(ptr nonnull %i.am, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

end_hunk_0
