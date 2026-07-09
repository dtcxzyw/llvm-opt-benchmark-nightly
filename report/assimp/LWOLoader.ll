inline.NumInlined: 3061
inline.NumDeleted: 1386
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6Assimp11LWOImporter13LoadLWOPointsEj:bb.a

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.f
  %i.af = mul nuw nsw i64 %i.y, 12
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #28 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.j, %i.i
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i ], [ %i.ag, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i ], [ %i.j, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i, i64 12, i1 false), !alias.scope !67
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 12 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 12
  %.not.i.i.i.i = icmp eq ptr %i.ah, %i.i
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !71

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.j, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.ac) #26
  br label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.g, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.ag, ptr %i.g, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.m
  store ptr %i.aj, ptr %i.h, align 8
  %i.ak = getelementptr inbounds nuw [12 x i8], ptr %i.ag, i64 %i.y
  store ptr %i.ak, ptr %i.z, align 8
  %.pre = load ptr, ptr %i.f, align 8             ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre26 = load ptr, ptr %.phi.trans.insert, align 8 ; 2 uses
  %.pre27 = load ptr, ptr %.pre, align 8          ; 2 uses
  %.pre31 = ptrtoint ptr %.pre26 to i64
  %.pre32 = ptrtoint ptr %.pre27 to i64
  %.pre34 = sub i64 %.pre31, %.pre32
  %.pre36 = sdiv exact i64 %.pre34, 12
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit: ; preds = %bb.f, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i
  %.pre-phi37 = phi i64 [ %i.n, %bb.f ], [ %.pre36, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i ] ; 3 uses
  %i.al = phi ptr [ %i.j, %bb.f ], [ %.pre27, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i ]
  %i.am = phi ptr [ %i.i, %bb.f ], [ %.pre26, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i ]
  %i.an = phi ptr [ %i.g, %bb.f ], [ %.pre, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i ] ; 2 uses
  %i.ao = zext i32 %i.p to i64                    ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aq = icmp ult i64 %.pre-phi37, %i.ao
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit
  %i.ar = sub nuw nsw i64 %i.ao, %.pre-phi37
  tail call void @_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 noundef %i.ar)
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit

bb.i:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit
  %i.as = icmp ugt i64 %.pre-phi37, %i.ao
  br i1 %i.as, label %bb.j, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw [12 x i8], ptr %i.al, i64 %i.ao ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, %i.at
  br i1 %.not.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIP10aiVector3tIfES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIP10aiVector3tIfES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.j
  store ptr %i.at, ptr %i.ap, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit: ; preds = %bb.h, %bb.i, %bb.j, %_ZSt8_DestroyIP10aiVector3tIfES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.au = load ptr, ptr %i.f, align 8             ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 40 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = load ptr, ptr %i.av, align 8            ; 5 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.bb = sub i64 %i.az, %i.ba                    ; 2 uses
  %i.bc = ashr exact i64 %i.bb, 2
  %i.bd = icmp ult i64 %i.bc, %i.y
  br i1 %i.bd, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIjSaIjEE7reserveEm.exit

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 32 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.bg, %i.ba                    ; 3 uses
  %i.bi = shl nuw nsw i64 %i.y, 2
  %i.bj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #28 ; 4 uses
  %i.bk = icmp sgt i64 %i.bh, 0
  br i1 %i.bk, label %bb.k, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

bb.k:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bj, ptr align 4 %i.ay, i64 %i.bh, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i: ; preds = %bb.k, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %.not.i8.i16 = icmp eq ptr %i.ay, null
  br i1 %.not.i8.i16, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bb) #26
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i: ; preds = %bb.l, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  store ptr %i.bj, ptr %i.av, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bh
  store ptr %i.bl, ptr %i.be, align 8
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.y
  store ptr %i.bm, ptr %i.aw, align 8
  %.pre28 = load ptr, ptr %i.f, align 8           ; 2 uses
  %.phi.trans.insert29 = getelementptr inbounds nuw i8, ptr %.pre28, i64 24
  %.pre30 = load ptr, ptr %.phi.trans.insert29, align 8 ; 2 uses
  %.pre38 = ptrtoint ptr %.pre30 to i64
  br label %_ZNSt6vectorIjSaIjEE7reserveEm.exit

_ZNSt6vectorIjSaIjEE7reserveEm.exit:              ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i
  %.pre-phi39 = phi i64 [ %i.ba, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit ], [ %.pre38, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i ]
  %i.bn = phi ptr [ %i.ay, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit ], [ %.pre30, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i ]
  %i.bo = phi ptr [ %i.au, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit ], [ %.pre28, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 -1, ptr %i.a, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8            ; 3 uses
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = sub i64 %i.br, %.pre-phi39
  %i.bt = ashr exact i64 %i.bs, 2                 ; 3 uses
  %i.bu = icmp ult i64 %i.bt, %i.ao
  br i1 %i.bu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNSt6vectorIjSaIjEE7reserveEm.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bw = sub nuw nsw i64 %i.ao, %i.bt
  call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr %i.bq, i64 noundef %i.bw, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

bb.n:                                             ; preds = %_ZNSt6vectorIjSaIjEE7reserveEm.exit
  %i.bx = icmp ugt i64 %i.bt, %i.ao
  br i1 %i.bx, label %bb.o, label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

bb.o:                                             ; preds = %bb.n
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ao ; 2 uses
  %.not.i.i17 = icmp eq ptr %i.bq, %i.by
  br i1 %.not.i.i17, label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.o
  store ptr %i.by, ptr %i.bp, align 8
  br label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit:            ; preds = %bb.m, %bb.n, %bb.o, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit20

bb.p:                                             ; preds = %bb.e
  %i.bz = zext i32 %i.p to i64                    ; 4 uses
  %i.ca = icmp ult i64 %i.n, %i.bz
  br i1 %i.ca, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cb = sub nuw nsw i64 %i.bz, %i.n
  tail call void @_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.cb)
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit20

bb.r:                                             ; preds = %bb.p
  %i.cc = icmp ugt i64 %i.n, %i.bz
  br i1 %i.cc, label %bb.s, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit20

bb.s:                                             ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %i.bz ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.i, %i.cd
  br i1 %.not.i.i18, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit20, label %_ZSt8_DestroyIP10aiVector3tIfES1_EvT_S3_RSaIT0_E.exit.i.i19

_ZSt8_DestroyIP10aiVector3tIfES1_EvT_S3_RSaIT0_E.exit.i.i19: ; preds = %bb.s
  store ptr %i.cd, ptr %i.h, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit20

_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit20: ; preds = %_ZSt8_DestroyIP10aiVector3tIfES1_EvT_S3_RSaIT0_E.exit.i.i19, %bb.s, %bb.r, %bb.q, %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit
  %i.ce = lshr i32 %1, 2                          ; 4 uses
  %.not24 = icmp eq i32 %i.ce, 0
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit20
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.ce to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.cg = icmp eq i32 %i.ce, 1
  br i1 %i.cg, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 1073741822
  br label %bb.t

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.t
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod57 = trunc i32 %i.ce to i1
  call void @llvm.assume(i1 %lcmp.mod57)
  %i.ch = load ptr, ptr %i.cf, align 8
  %i.ci = shl nuw i64 %indvars.iv.epil.init, 2
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ci ; 2 uses
  %i.ck = load <4 x i8>, ptr %i.cj, align 1
  %i.cl = shufflevector <4 x i8> %i.ck, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.cl, ptr %i.cj, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit20
  %i.cm = zext i32 %1 to i64
  %i.cn = load ptr, ptr %i.f, align 8
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cq = load ptr, ptr %i.cp, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.co, ptr align 1 %i.cq, i64 %i.cm, i1 false)
  ret void

bb.t:                                             ; preds = %bb.t, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.t ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.t ]
  %i.cr = load ptr, ptr %i.cf, align 8
  %i.cs = shl nuw i64 %indvars.iv, 2
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cs ; 2 uses
  %i.cu = load <4 x i8>, ptr %i.ct, align 1
  %i.cv = shufflevector <4 x i8> %i.cu, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.cv, ptr %i.ct, align 1
  %i.cw = load ptr, ptr %i.cf, align 8
  %indvars.iv.next = shl i64 %indvars.iv, 2
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %indvars.iv.next
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4 ; 2 uses
  %i.cz = load <4 x i8>, ptr %i.cy, align 1
  %i.da = shufflevector <4 x i8> %i.cz, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.da, ptr %i.cy, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.t, !llvm.loop !72
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11LWOImporter16LoadLWO2PolygonsEj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(233) %0, i32 noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  %2 = alloca %"struct.Assimp::LWO::Face", align 8 ; 7 uses
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = zext i32 %1 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d ; 3 uses
  %i.f = load i32, ptr %i.c, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store ptr %i.g, ptr %i.b, align 8
  %.sroa.0.0.insert.insert.i = tail call noundef i32 @llvm.bswap.i32(i32 %i.f) ; 2 uses
  switch i32 %.sroa.0.0.insert.insert.i, label %bb.d [
    i32 1296187724, label %bb.b
    i32 1129665110, label %bb.c
    i32 1347699528, label %bb.e
    i32 1178682181, label %bb.e
    i32 1112493637, label %bb.e
    i32 1398096452, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.h, ptr noundef nonnull @.str.41)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.i, ptr noundef nonnull @.str.42)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.j, ptr noundef nonnull @.str.43)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.d, %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.k = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.l = icmp ult ptr %i.k, %i.e
  br i1 %i.l, label %.lr.ph25.i.preheader, label %_ZN6Assimp11LWOImporter22CountVertsAndFacesLWO2ERjS1_RPtPKtj.exit.thread

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i16 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.epil.init = phi ptr [ %i.u, %.lr.ph.i.preheader ], [ %i.ai, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod37 = icmp ne i16 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod37)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %i.m = phi ptr [ %i.o, %.lr.ph.i.epil ], [ %.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i16 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.n = load i8, ptr %i.m, align 1
  %.not.i.i.epil = icmp eq i8 %i.n, -1
  %spec.select.i.epil = select i1 %.not.i.i.epil, i64 4, i64 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %spec.select.i.epil ; 3 uses
  store ptr %i.o, ptr %i.a, align 8
  %epil.iter.next = add i16 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i16 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %.lr.ph.i.epil, !llvm.loop !73

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %.lr.ph25.i.preheader
  %i.p = phi ptr [ %i.u, %.lr.ph25.i.preheader ], [ %i.ai, %.loopexit.i.loopexit.unr-lcssa ], [ %i.o, %.lr.ph.i.epil ] ; 2 uses
  %i.q = icmp ult ptr %i.p, %i.e
  br i1 %i.q, label %.lr.ph25.i, label %_ZN6Assimp11LWOImporter22CountVertsAndFacesLWO2ERjS1_RPtPKtj.exit, !llvm.loop !74

.lr.ph25.i:                                       ; preds = %.loopexit.i
  %i.r = add i32 %i.s, -1
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %_ZN6Assimp11LWOImporter22CountVertsAndFacesLWO2ERjS1_RPtPKtj.exit.thread27, label %.lr.ph25.i.preheader, !llvm.loop !74

.lr.ph25.i.preheader:                             ; preds = %bb.e, %.lr.ph25.i
  %i.s = phi i32 [ %i.r, %.lr.ph25.i ], [ -2, %bb.e ] ; 2 uses
  %i.t = phi ptr [ %i.p, %.lr.ph25.i ], [ %i.k, %bb.e ] ; 2 uses
  %.01233 = phi i32 [ %i.y, %.lr.ph25.i ], [ 0, %bb.e ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2 ; 4 uses
  store ptr %i.u, ptr %i.a, align 8
  %i.v = load i16, ptr %i.t, align 2
  %i.w = and i16 %i.v, -253                       ; 2 uses
  %i.x = tail call i16 @llvm.bswap.i16(i16 %i.w)  ; 3 uses
  %i.y = add i32 %.01233, 1                       ; 3 uses
  %.not27.i = icmp eq i16 %i.w, 0
  br i1 %.not27.i, label %.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph25.i.preheader
  %xtraiter = and i16 %i.x, 3                     ; 3 uses
  %i.z = icmp samesign ult i16 %i.x, 4
  br i1 %i.z, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i16 %i.x, 1020
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %i.aa = phi ptr [ %i.u, %.lr.ph.i.preheader.new ], [ %i.ai, %.lr.ph.i ] ; 2 uses
  %niter = phi i16 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.ab = load i8, ptr %i.aa, align 1
  %.not.i.i = icmp eq i8 %i.ab, -1
  %spec.select.i = select i1 %.not.i.i, i64 4, i64 2
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %spec.select.i ; 3 uses
  store ptr %i.ac, ptr %i.a, align 8
  %i.ad = load i8, ptr %i.ac, align 1
  %.not.i.i.1 = icmp eq i8 %i.ad, -1
  %spec.select.i.1 = select i1 %.not.i.i.1, i64 4, i64 2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %spec.select.i.1 ; 3 uses
  store ptr %i.ae, ptr %i.a, align 8
  %i.af = load i8, ptr %i.ae, align 1
  %.not.i.i.2 = icmp eq i8 %i.af, -1
  %spec.select.i.2 = select i1 %.not.i.i.2, i64 4, i64 2
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %spec.select.i.2 ; 3 uses
  store ptr %i.ag, ptr %i.a, align 8
  %i.ah = load i8, ptr %i.ag, align 1
  %.not.i.i.3 = icmp eq i8 %i.ah, -1
  %spec.select.i.3 = select i1 %.not.i.i.3, i64 4, i64 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %spec.select.i.3 ; 4 uses
  store ptr %i.ai, ptr %i.a, align 8
  %niter.next.3 = add i16 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i16 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !75

_ZN6Assimp11LWOImporter22CountVertsAndFacesLWO2ERjS1_RPtPKtj.exit: ; preds = %.loopexit.i
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %_ZN6Assimp11LWOImporter22CountVertsAndFacesLWO2ERjS1_RPtPKtj.exit.thread, label %_ZN6Assimp11LWOImporter22CountVertsAndFacesLWO2ERjS1_RPtPKtj.exit.thread27

_ZN6Assimp11LWOImporter22CountVertsAndFacesLWO2ERjS1_RPtPKtj.exit.thread27: ; preds = %.lr.ph25.i, %_ZN6Assimp11LWOImporter22CountVertsAndFacesLWO2ERjS1_RPtPKtj.exit
  %.130 = phi i32 [ %i.y, %_ZN6Assimp11LWOImporter22CountVertsAndFacesLWO2ERjS1_RPtPKtj.exit ], [ -1, %.lr.ph25.i ]
  store ptr %i.k, ptr %i.a, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 256 ; 2 uses
  %i.am = zext i32 %.130 to i64                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store i32 0, ptr %2, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  store i32 %.sroa.0.0.insert.insert.i, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 264 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8            ; 4 uses
  %i.ar = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 5                 ; 3 uses
  %i.aw = icmp ult i64 %i.av, %i.am
  br i1 %i.aw, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN6Assimp11LWOImporter22CountVertsAndFacesLWO2ERjS1_RPtPKtj.exit.thread27
  %i.ax = sub nuw nsw i64 %i.am, %i.av
  invoke void @_ZNSt6vectorIN6Assimp3LWO4FaceESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr %i.aq, i64 noundef %i.ax, ptr noundef nonnull align 8 dereferenceable(28) %2)
          to label %_ZNSt6vectorIN6Assimp3LWO4FaceESaIS2_EE6resizeEmRKS2_.exit unwind label %bb.k

bb.g:                                             ; preds = %_ZN6Assimp11LWOImporter22CountVertsAndFacesLWO2ERjS1_RPtPKtj.exit.thread27
  %i.ay = icmp ugt i64 %i.av, %i.am
  br i1 %i.ay, label %bb.h, label %_ZN6aiFaceD2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %i.ar, i64 %i.am ; 3 uses
  %.not.i.i7 = icmp eq ptr %i.aq, %i.az
  br i1 %.not.i.i7, label %_ZN6aiFaceD2Ev.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %_ZSt8_DestroyIN6Assimp3LWO4FaceEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bd, %_ZSt8_DestroyIN6Assimp3LWO4FaceEEvPT_.exit.i.i.i.i ], [ %i.az, %bb.h ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %_ZSt8_DestroyIN6Assimp3LWO4FaceEEvPT_.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.bb) #26
  br label %_ZSt8_DestroyIN6Assimp3LWO4FaceEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6Assimp3LWO4FaceEEvPT_.exit.i.i.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bd, %i.aq
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6Assimp3LWO4FaceES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !24

_ZSt8_DestroyIPN6Assimp3LWO4FaceES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN6Assimp3LWO4FaceEEvPT_.exit.i.i.i.i
end_hunk_0
