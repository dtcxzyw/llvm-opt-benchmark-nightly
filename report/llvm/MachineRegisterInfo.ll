Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachineRegisterInfo?download=true
inline.NumInlined: 1629
inline.NumDeleted: 952
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4llvm19MachineRegisterInfo17constrainRegAttrsENS_8RegisterES1_j:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.g = zext nneg i32 %i.b to i64
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  %i.j = load i64, ptr %i.i, align 8, !tbaa !233
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.04.0.i = phi i64 [ %i.j, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ] ; 3 uses
  store i64 %.sroa.04.0.i, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.k = icmp slt i32 %2, 0
  br i1 %i.k, label %bb.d, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit31

bb.d:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit
  %i.l = and i32 %2, 2147483647                   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.n = load i32, ptr %i.m, align 8, !tbaa !229
  %i.o = icmp ugt i32 %i.n, %i.l
  br i1 %i.o, label %bb.e, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit31

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.q = zext nneg i32 %i.l to i64
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !28
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.q
  %i.t = load i64, ptr %i.s, align 8, !tbaa !233
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit31

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit31: ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit, %bb.d, %bb.e
  %.sroa.04.0.i30 = phi i64 [ %i.t, %bb.e ], [ 0, %bb.d ], [ 0, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit ] ; 3 uses
  store i64 %.sroa.04.0.i30, ptr %5, align 8
  %i.u = icmp eq i64 %.sroa.04.0.i, 1152921504606846976
  %i.v = and i64 %.sroa.04.0.i, 1152921504606846975
  %i.w = icmp ne i64 %i.v, 0
  %i.x = or i1 %i.u, %i.w
  br i1 %i.x, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit31
  %i.y = icmp eq i64 %.sroa.04.0.i30, 1152921504606846976
  %i.z = and i64 %.sroa.04.0.i30, 1152921504606846975
  %i.aa = icmp ne i64 %i.z, 0
  %i.ab = or i1 %i.y, %i.aa
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = call noundef zeroext i1 @_ZNK4llvm3LLTeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br i1 %i.ac, label %bb.h, label %_ZL17constrainRegClassRN4llvm19MachineRegisterInfoENS_8RegisterEPKNS_15MCRegisterClassES5_j.exit.thread

bb.h:                                             ; preds = %bb.g, %bb.f, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit31
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ae = and i32 %2, 2147483647
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !28 ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.af
  %.0.copyload.i.i = load i64, ptr %i.ah, align 8 ; 5 uses
  %i.ai = icmp ult i64 %.0.copyload.i.i, 8
  br i1 %i.ai, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = and i32 %1, 2147483647
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ak ; 2 uses
  %.0.copyload.i.i32 = load i64, ptr %i.al, align 8 ; 5 uses
  %i.am = icmp ult i64 %.0.copyload.i.i32, 8
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i64 %.0.copyload.i.i, ptr %i.al, align 8
  br label %.critedge

bb.k:                                             ; preds = %bb.i
  %i.an = and i64 %.0.copyload.i.i32, 4
  %i.ao = icmp eq i64 %i.an, 0                    ; 2 uses
  %i.ap = and i64 %.0.copyload.i.i, 4
  %i.aq = icmp eq i64 %i.ap, 0
  %i.ar = xor i1 %i.aq, %i.ao
  br i1 %i.ar, label %_ZL17constrainRegClassRN4llvm19MachineRegisterInfoENS_8RegisterEPKNS_15MCRegisterClassES5_j.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %i.ao, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.as = and i64 %.0.copyload.i.i, -5            ; 2 uses
  %i.at = inttoptr i64 %i.as to ptr               ; 2 uses
  %i.au = icmp eq i64 %.0.copyload.i.i32, %i.as
  br i1 %i.au, label %_ZL17constrainRegClassRN4llvm19MachineRegisterInfoENS_8RegisterEPKNS_15MCRegisterClassES5_j.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = inttoptr i64 %.0.copyload.i.i32 to ptr  ; 2 uses
  %i.aw = load ptr, ptr %0, align 8, !tbaa !105
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !227, !nonnull !25, !align !228 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !18
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 200
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = call noundef ptr %i.bb(ptr noundef nonnull align 8 dereferenceable(344) %i.ay) #23, !inline_history !1
  %i.bd = call noundef ptr @_ZNK4llvm18TargetRegisterInfo17getCommonSubClassEPKNS_15MCRegisterClassES3_(ptr noundef nonnull align 8 dereferenceable(316) %i.bc, ptr noundef nonnull %i.av, ptr noundef %i.at) #23 ; 5 uses
  %.not.i = icmp eq ptr %i.bd, null
  %i.be = icmp eq ptr %i.bd, %i.av
  %or.cond.i = or i1 %.not.i, %i.be
  br i1 %or.cond.i, label %_ZL17constrainRegClassRN4llvm19MachineRegisterInfoENS_8RegisterEPKNS_15MCRegisterClassES5_j.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bg = load i16, ptr %i.bf, align 8, !tbaa !257
  %i.bh = zext i16 %i.bg to i32
  %i.bi = icmp ugt i32 %3, %i.bh
  br i1 %i.bi, label %_ZL17constrainRegClassRN4llvm19MachineRegisterInfoENS_8RegisterEPKNS_15MCRegisterClassES5_j.exit.thread, label %_ZL17constrainRegClassRN4llvm19MachineRegisterInfoENS_8RegisterEPKNS_15MCRegisterClassES5_j.exit.thread39

_ZL17constrainRegClassRN4llvm19MachineRegisterInfoENS_8RegisterEPKNS_15MCRegisterClassES5_j.exit.thread39: ; preds = %bb.o
  %i.bj = load ptr, ptr %i.ad, align 8, !tbaa !28
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.ak
  %i.bl = ptrtoint ptr %i.bd to i64
  store i64 %i.bl, ptr %i.bk, align 8
  br label %.critedge

_ZL17constrainRegClassRN4llvm19MachineRegisterInfoENS_8RegisterEPKNS_15MCRegisterClassES5_j.exit: ; preds = %bb.m, %bb.n
  %.1.i = phi ptr [ %i.at, %bb.m ], [ %i.bd, %bb.n ]
  %.not = icmp eq ptr %.1.i, null
  br i1 %.not, label %_ZL17constrainRegClassRN4llvm19MachineRegisterInfoENS_8RegisterEPKNS_15MCRegisterClassES5_j.exit.thread, label %.critedge

bb.p:                                             ; preds = %bb.l
  %.not42 = icmp eq i64 %.0.copyload.i.i32, %.0.copyload.i.i
  br i1 %.not42, label %.critedge, label %_ZL17constrainRegClassRN4llvm19MachineRegisterInfoENS_8RegisterEPKNS_15MCRegisterClassES5_j.exit.thread

.critedge:                                        ; preds = %_ZL17constrainRegClassRN4llvm19MachineRegisterInfoENS_8RegisterEPKNS_15MCRegisterClassES5_j.exit.thread39, %bb.j, %_ZL17constrainRegClassRN4llvm19MachineRegisterInfoENS_8RegisterEPKNS_15MCRegisterClassES5_j.exit, %bb.p, %bb.h
  %i.bm = load i64, ptr %5, align 8               ; 3 uses
  %i.bn = icmp eq i64 %i.bm, 1152921504606846976
  %i.bo = and i64 %i.bm, 1152921504606846975
  %i.bp = icmp ne i64 %i.bo, 0
  %i.bq = or i1 %i.bn, %i.bp
  br i1 %i.bq, label %bb.q, label %_ZL17constrainRegClassRN4llvm19MachineRegisterInfoENS_8RegisterEPKNS_15MCRegisterClassES5_j.exit.thread

bb.q:                                             ; preds = %.critedge
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 3 uses
  %i.bs = and i32 %1, 2147483647                  ; 4 uses
  %i.bt = add nuw i32 %i.bs, 1
  %i.bu = zext i32 %i.bt to i64                   ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 4 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !229 ; 2 uses
  %.not.i.i = icmp ugt i32 %i.bw, %i.bs
  br i1 %.not.i.i, label %_ZN4llvm19MachineRegisterInfo7setTypeENS_8RegisterENS_3LLTE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bx = zext nneg i32 %i.bw to i64              ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.by, align 8, !tbaa !233 ; 2 uses
  %i.bz = sub nsw i64 %i.bu, %i.bx                ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 476
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !230
  %.not.i.i.i.i.i.not.i.i = icmp ult i32 %i.bs, %i.cb
  br i1 %.not.i.i.i.i.i.not.i.i, label %.lr.ph.i.i.i.preheader.i.i.i.i.i, label %bb.s, !prof !258

bb.s:                                             ; preds = %bb.r
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(25) %i.br, ptr noundef nonnull %i.by, i64 noundef %i.bu, i64 noundef 8) #23
  %.pre.i.i.i.i.i = load i32, ptr %i.bv, align 8, !tbaa !229
  %.pre5.i.i.i.i.i = zext i32 %.pre.i.i.i.i.i to i64
  br label %.lr.ph.i.i.i.preheader.i.i.i.i.i

.lr.ph.i.i.i.preheader.i.i.i.i.i:                 ; preds = %bb.s, %bb.r
  %.pre-phi.i.i.i.i.i = phi i64 [ %i.bx, %bb.r ], [ %.pre5.i.i.i.i.i, %bb.s ]
  %i.cc = load ptr, ptr %i.br, align 8, !tbaa !28
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.pre-phi.i.i.i.i.i ; 3 uses
  %min.iters.check = icmp ult i64 %i.bz, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader.i.i.i.i.i
  %n.vec = and i64 %i.bz, -4                      ; 3 uses
  %i.ce = shl nsw i64 %n.vec, 3
  %i.cf = getelementptr i8, ptr %i.cd, i64 %i.ce
  %i.cg = and i64 %i.bz, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.sroa.0.0.copyload.i.i.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ch = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.cd, i64 %i.ch ; 2 uses
  %i.ci = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !233
  store <2 x i64> %broadcast.splat, ptr %i.ci, align 8, !tbaa !233
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !360

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bz, %n.vec
  br i1 %cmp.n, label %_ZN4llvm10IndexedMapINS_3LLTENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i.i.i.preheader.i.i.i.i.i, %middle.block
  %.09.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.cd, %.lr.ph.i.i.i.preheader.i.i.i.i.i ], [ %i.cf, %middle.block ]
  %.068.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.bz, %.lr.ph.i.i.i.preheader.i.i.i.i.i ], [ %i.cg, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.068.i.i.i.i.i.i.i.i = phi i64 [ %i.ck, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.068.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %.09.i.i.i.i.i.i.i.i, align 8, !tbaa !233
  %i.ck = add i64 %.068.i.i.i.i.i.i.i.i, -1       ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ck, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvm10IndexedMapINS_3LLTENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !361

_ZN4llvm10IndexedMapINS_3LLTENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block
  %.pre4.i.i.i.i.i = load i32, ptr %i.bv, align 8, !tbaa !229
  %i.cm = trunc nuw i64 %i.bz to i32
  %i.cn = add i32 %.pre4.i.i.i.i.i, %i.cm
  store i32 %i.cn, ptr %i.bv, align 8, !tbaa !229
  br label %_ZN4llvm19MachineRegisterInfo7setTypeENS_8RegisterENS_3LLTE.exit

_ZN4llvm19MachineRegisterInfo7setTypeENS_8RegisterENS_3LLTE.exit: ; preds = %bb.q, %_ZN4llvm10IndexedMapINS_3LLTENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i
  %i.co = zext nneg i32 %i.bs to i64
  %i.cp = load ptr, ptr %i.br, align 8, !tbaa !28
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.co
  store i64 %i.bm, ptr %i.cq, align 8, !tbaa !233
  br label %_ZL17constrainRegClassRN4llvm19MachineRegisterInfoENS_8RegisterEPKNS_15MCRegisterClassES5_j.exit.thread

_ZL17constrainRegClassRN4llvm19MachineRegisterInfoENS_8RegisterEPKNS_15MCRegisterClassES5_j.exit.thread: ; preds = %bb.o, %bb.p, %_ZL17constrainRegClassRN4llvm19MachineRegisterInfoENS_8RegisterEPKNS_15MCRegisterClassES5_j.exit, %bb.k, %_ZN4llvm19MachineRegisterInfo7setTypeENS_8RegisterENS_3LLTE.exit, %.critedge, %bb.g
  %.2 = phi i1 [ false, %bb.g ], [ false, %bb.k ], [ false, %bb.p ], [ false, %_ZL17constrainRegClassRN4llvm19MachineRegisterInfoENS_8RegisterEPKNS_15MCRegisterClassES5_j.exit ], [ true, %_ZN4llvm19MachineRegisterInfo7setTypeENS_8RegisterENS_3LLTE.exit ], [ true, %.critedge ], [ false, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm19MachineRegisterInfo7setTypeENS_8RegisterENS_3LLTE(ptr noundef nonnull align 8 dereferenceable(520) %0, i32 %1, i64 %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 3 uses
  %i.b = and i32 %1, 2147483647                   ; 4 uses
  %i.c = add nuw i32 %i.b, 1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !229  ; 2 uses
  %.not.i = icmp ugt i32 %i.f, %i.b
  br i1 %.not.i, label %_ZN4llvm10IndexedMapINS_3LLTENS_20VirtReg2IndexFunctorEE4growENS_8RegisterE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = zext nneg i32 %i.f to i64                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.h, align 8, !tbaa !233 ; 2 uses
  %i.i = sub nsw i64 %i.d, %i.g                   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 476
  %i.k = load i32, ptr %i.j, align 4, !tbaa !230
  %.not.i.i.i.i.i.not.i = icmp ult i32 %i.b, %i.k
  br i1 %.not.i.i.i.i.i.not.i, label %.lr.ph.i.i.i.preheader.i.i.i.i, label %bb.c, !prof !258

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(25) %i.a, ptr noundef nonnull %i.h, i64 noundef %i.d, i64 noundef 8) #23
  %.pre.i.i.i.i = load i32, ptr %i.e, align 8, !tbaa !229
  %.pre5.i.i.i.i = zext i32 %.pre.i.i.i.i to i64
  br label %.lr.ph.i.i.i.preheader.i.i.i.i

.lr.ph.i.i.i.preheader.i.i.i.i:                   ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.i.i = phi i64 [ %i.g, %bb.b ], [ %.pre5.i.i.i.i, %bb.c ]
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.pre-phi.i.i.i.i ; 3 uses
  %min.iters.check = icmp ult i64 %i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader.i.i.i.i
  %n.vec = and i64 %i.i, -4                       ; 3 uses
  %i.n = shl nsw i64 %n.vec, 3
  %i.o = getelementptr i8, ptr %i.m, i64 %i.n
  %i.p = and i64 %i.i, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.sroa.0.0.copyload.i.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.q ; 2 uses
  %i.r = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !233
  store <2 x i64> %broadcast.splat, ptr %i.r, align 8, !tbaa !233
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !362

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %_ZN4llvm10IndexedMapINS_3LLTENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.lr.ph.i.i.i.preheader.i.i.i.i, %middle.block
  %.09.i.i.i.i.i.i.i.ph = phi ptr [ %i.m, %.lr.ph.i.i.i.preheader.i.i.i.i ], [ %i.o, %middle.block ]
  %.068.i.i.i.i.i.i.i.ph = phi i64 [ %i.i, %.lr.ph.i.i.i.preheader.i.i.i.i ], [ %i.p, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.068.i.i.i.i.i.i.i = phi i64 [ %i.t, %.lr.ph.i.i.i.i.i.i.i ], [ %.068.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  store i64 %.sroa.0.0.copyload.i.i, ptr %.09.i.i.i.i.i.i.i, align 8, !tbaa !233
  %i.t = add i64 %.068.i.i.i.i.i.i.i, -1          ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm10IndexedMapINS_3LLTENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !363

_ZN4llvm10IndexedMapINS_3LLTENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block
  %.pre4.i.i.i.i = load i32, ptr %i.e, align 8, !tbaa !229
  %i.v = trunc nuw i64 %i.i to i32
  %i.w = add i32 %.pre4.i.i.i.i, %i.v
  store i32 %i.w, ptr %i.e, align 8, !tbaa !229
  br label %_ZN4llvm10IndexedMapINS_3LLTENS_20VirtReg2IndexFunctorEE4growENS_8RegisterE.exit

_ZN4llvm10IndexedMapINS_3LLTENS_20VirtReg2IndexFunctorEE4growENS_8RegisterE.exit: ; preds = %bb.a, %_ZN4llvm10IndexedMapINS_3LLTENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i
  %i.x = zext nneg i32 %i.b to i64
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.x
  store i64 %2, ptr %i.z, align 8, !tbaa !233
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm19MachineRegisterInfo17recomputeRegClassENS_8RegisterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(520) %0, i32 %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !105
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !227, !nonnull !25, !align !228 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(344) %i.c) #23 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.i = and i32 %1, 2147483647
  %i.j = zext nneg i32 %i.i to i64                ; 3 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.j
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.l, align 8
  %i.m = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.n = inttoptr i64 %i.m to ptr                 ; 4 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !105
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !227, !nonnull !25, !align !228 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 200
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef ptr %i.t(ptr noundef nonnull align 8 dereferenceable(344) %i.q) #23, !inline_history !0 ; 4 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !105
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 336
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef ptr %i.y(ptr noundef nonnull align 8 dereferenceable(316) %i.u, ptr noundef %i.n, ptr noundef nonnull align 8 dereferenceable(1065) %i.v) #23 ; 4 uses
  %i.aa = icmp eq ptr %i.z, %i.n
  br i1 %i.aa, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ab = icmp slt i32 %1, 0
  %i.ac = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ag = zext nneg i32 %1 to i64
  %i.ah = load ptr, ptr %i.af, align 8
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ag
  %.0.in.i.i.i = select i1 %i.ab, ptr %i.ae, ptr %i.ai
  %.0.i.i.i = load ptr, ptr %.0.in.i.i.i, align 8, !tbaa !262 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not.i.i.i, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = load i32, ptr %.0.i.i.i, align 8
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %.preheader.i.i.i, label %.lr.ph.preheader

.preheader.i.i.i:                                 ; preds = %bb.c, %bb.d
  %.pn.i.i.i.i = phi ptr [ %storemerge.i.i.i.i, %bb.d ], [ %.0.i.i.i, %bb.c ]
  %storemerge.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 24
  %storemerge.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i, align 8, !tbaa !233 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %storemerge.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i.i
  %i.al = load i32, ptr %storemerge.i.i.i.i, align 8
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %.preheader.i.i.i, label %.lr.ph.preheader, !llvm.loop !2

.lr.ph.preheader:                                 ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i = phi ptr [ %.0.i.i.i, %bb.c ], [ %storemerge.i.i.i.i, %bb.d ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !265 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !281
  %i.ar = ptrtoint ptr %.sroa.0.0.i.i to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = lshr exact i64 %i.at, 5
  %i.av = trunc i64 %i.au to i32
  %i.aw = tail call noundef ptr @_ZNK4llvm12MachineInstr27getRegClassConstraintEffectEjPKNS_15MCRegisterClassEPKNS_15TargetInstrInfoEPKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(80) %i.ao, i32 noundef %i.av, ptr noundef %i.z, ptr noundef %i.g, ptr noundef nonnull %i.u) #23 ; 3 uses
  %.not62 = icmp eq ptr %i.aw, null
  %i.ax = icmp eq ptr %i.aw, %i.n
  %or.cond63 = or i1 %.not62, %i.ax
  br i1 %or.cond63, label %.thread, label %.critedge.preheader

.lr.ph.loopexit:                                  ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !265 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !281
  %i.bc = ptrtoint ptr %storemerge.i.i to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = lshr exact i64 %i.be, 5
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = tail call noundef ptr @_ZNK4llvm12MachineInstr27getRegClassConstraintEffectEjPKNS_15MCRegisterClassEPKNS_15TargetInstrInfoEPKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(80) %i.az, i32 noundef %i.bg, ptr noundef %i.bj, ptr noundef %i.g, ptr noundef nonnull %i.u) #23 ; 3 uses
  %.not = icmp eq ptr %i.bh, null
  %i.bi = icmp eq ptr %i.bh, %i.n
  %or.cond = or i1 %.not, %i.bi
  br i1 %or.cond, label %.thread, label %.critedge.preheader, !llvm.loop !2

.critedge.preheader:                              ; preds = %.lr.ph.preheader, %.lr.ph.loopexit
  %i.bj = phi ptr [ %i.bh, %.lr.ph.loopexit ], [ %i.aw, %.lr.ph.preheader ] ; 2 uses
  %.sroa.037.04564 = phi ptr [ %storemerge.i.i, %.lr.ph.loopexit ], [ %.sroa.0.0.i.i, %.lr.ph.preheader ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.preheader, %bb.e
  %.pn.i.i = phi ptr [ %storemerge.i.i, %bb.e ], [ %.sroa.037.04564, %.critedge.preheader ]
  %storemerge.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 24
  %storemerge.i.i = load ptr, ptr %storemerge.in.i.i, align 8, !tbaa !233 ; 6 uses
  %.not.i.i = icmp eq ptr %storemerge.i.i, null
  br i1 %.not.i.i, label %._crit_edge.loopexit, label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.bk = load i32, ptr %storemerge.i.i, align 8
  %i.bl = icmp slt i32 %i.bk, 0
  br i1 %i.bl, label %.critedge, label %.lr.ph.loopexit, !llvm.loop !2

._crit_edge.loopexit:                             ; preds = %.critedge
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !28
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader.i.i.i, %bb.b, %._crit_edge.loopexit
  %i.bm = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.ac, %bb.b ], [ %i.ac, %.preheader.i.i.i ]
  %.031.lcssa = phi ptr [ %i.bj, %._crit_edge.loopexit ], [ %i.z, %bb.b ], [ %i.z, %.preheader.i.i.i ]
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %i.j
  %i.bo = ptrtoint ptr %.031.lcssa to i64
  store i64 %i.bo, ptr %i.bn, align 8
  br label %.thread

.thread:                                          ; preds = %.lr.ph.loopexit, %.lr.ph.preheader, %bb.a, %._crit_edge
  %.3 = phi i1 [ false, %bb.a ], [ true, %._crit_edge ], [ false, %.lr.ph.preheader ], [ false, %.lr.ph.loopexit ]
  ret i1 %.3
}

declare noundef ptr @_ZNK4llvm12MachineInstr27getRegClassConstraintEffectEjPKNS_15MCRegisterClassEPKNS_15TargetInstrInfoEPKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i32 -2147483648, 0) i32 @_ZN4llvm19MachineRegisterInfo31createIncompleteVirtualRegisterENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr %1, i64 %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !229  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = and i32 %i.b, 2147483647                 ; 2 uses
  %i.e = add nuw i32 %i.d, 1
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %.not.i.not = icmp sgt i32 %i.b, -1
  br i1 %.not.i.not, label %bb.b, label %_ZN4llvm10IndexedMapISt4pairINS_12PointerUnionIJPKNS_15MCRegisterClassEPKNS_12RegisterBankEEEEPNS_14MachineOperandEENS_20VirtReg2IndexFunctorEE4growENS_8RegisterE.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext nneg i32 %i.b to i64                ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.h, align 8 ; 9 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 9 uses
  %i.i = sub nsw i64 %i.f, %i.g                   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.k = load i32, ptr %i.j, align 4, !tbaa !230
  %.not.i.i.i.i.i.not.i = icmp ult i32 %i.d, %i.k
  br i1 %.not.i.i.i.i.i.not.i, label %.lr.ph.i.i.i.preheader.i.i.i.i, label %bb.c, !prof !258

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(33) %i.c, ptr noundef nonnull %i.h, i64 noundef %i.f, i64 noundef 16) #23
  %.pre.i.i.i.i = load i32, ptr %i.a, align 8, !tbaa !229
  %.pre5.i.i.i.i = zext i32 %.pre.i.i.i.i to i64
  br label %.lr.ph.i.i.i.preheader.i.i.i.i

.lr.ph.i.i.i.preheader.i.i.i.i:                   ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.i.i = phi i64 [ %i.g, %bb.b ], [ %.pre5.i.i.i.i, %bb.c ]
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.pre-phi.i.i.i.i ; 2 uses
  %i.n = zext nneg i32 %i.b to i64
  %i.o = sub nsw i64 %i.n, %i.g
  %xtraiter = and i64 %i.i, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.preheader.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.i.prol = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.m, %.lr.ph.i.i.i.preheader.i.i.i.i ] ; 3 uses
  %.068.i.i.i.i.i.i.i.prol = phi i64 [ %i.p, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.i, %.lr.ph.i.i.i.preheader.i.i.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader.i.i.i.i ]
  store i64 %.sroa.0.0.copyload.i.i, ptr %.09.i.i.i.i.i.i.i.prol, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.prol, i64 8
  store ptr %.sroa.2.0.copyload.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.prol, align 8
  %i.p = add i64 %.068.i.i.i.i.i.i.i.prol, -1     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !364

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.preheader.i.i.i.i
  %.09.i.i.i.i.i.i.i.unr = phi ptr [ %i.m, %.lr.ph.i.i.i.preheader.i.i.i.i ], [ %i.q, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.068.i.i.i.i.i.i.i.unr = phi i64 [ %i.i, %.lr.ph.i.i.i.preheader.i.i.i.i ], [ %i.p, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.r = icmp ult i64 %i.o, 7
  br i1 %i.r, label %_ZN4llvm10IndexedMapISt4pairINS_12PointerUnionIJPKNS_15MCRegisterClassEPKNS_12RegisterBankEEEEPNS_14MachineOperandEENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.068.i.i.i.i.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i.i.i.i.i ], [ %.068.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  store i64 %.sroa.0.0.copyload.i.i, ptr %.09.i.i.i.i.i.i.i, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 8
  store ptr %.sroa.2.0.copyload.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 16
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.s, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 24
  store ptr %.sroa.2.0.copyload.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.1, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 32
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.t, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 40
  store ptr %.sroa.2.0.copyload.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.2, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 48
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.u, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 56
  store ptr %.sroa.2.0.copyload.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.3, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 64
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.v, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 72
  store ptr %.sroa.2.0.copyload.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.4, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 80
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.w, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 88
  store ptr %.sroa.2.0.copyload.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.5, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 96
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.x, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 104
  store ptr %.sroa.2.0.copyload.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.6, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 112
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.y, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 120
  store ptr %.sroa.2.0.copyload.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.7, align 8
  %i.z = add i64 %.068.i.i.i.i.i.i.i, -8          ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 128
  %.not.i.i.i.i.i.i.i.7 = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.i.i.i.i.7, label %_ZN4llvm10IndexedMapISt4pairINS_12PointerUnionIJPKNS_15MCRegisterClassEPKNS_12RegisterBankEEEEPNS_14MachineOperandEENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3

_ZN4llvm10IndexedMapISt4pairINS_12PointerUnionIJPKNS_15MCRegisterClassEPKNS_12RegisterBankEEEEPNS_14MachineOperandEENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit
  %.pre4.i.i.i.i = load i32, ptr %i.a, align 8, !tbaa !229
  %i.ab = trunc nuw i64 %i.i to i32
  %i.ac = add i32 %.pre4.i.i.i.i, %i.ab
  store i32 %i.ac, ptr %i.a, align 8, !tbaa !229
  br label %_ZN4llvm10IndexedMapISt4pairINS_12PointerUnionIJPKNS_15MCRegisterClassEPKNS_12RegisterBankEEEEPNS_14MachineOperandEENS_20VirtReg2IndexFunctorEE4growENS_8RegisterE.exit

_ZN4llvm10IndexedMapISt4pairINS_12PointerUnionIJPKNS_15MCRegisterClassEPKNS_12RegisterBankEEEEPNS_14MachineOperandEENS_20VirtReg2IndexFunctorEE4growENS_8RegisterE.exit: ; preds = %bb.a, %_ZN4llvm10IndexedMapISt4pairINS_12PointerUnionIJPKNS_15MCRegisterClassEPKNS_12RegisterBankEEEEPNS_14MachineOperandEENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i
  %i.ad = or i32 %i.b, -2147483648                ; 2 uses
  tail call void @_ZN4llvm19MachineRegisterInfo16insertVRegByNameENS_9StringRefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr %1, i64 %2, i32 %i.ad)
  ret i32 %i.ad
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm19MachineRegisterInfo16insertVRegByNameENS_9StringRefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr %1, i64 %2, i32 %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 21 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.d = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %1, i64 %2) #23
  %i.e = tail call noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.c, ptr %1, i64 %2, i32 noundef %i.d) #23 ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !367
  %i.g = zext i32 %i.e to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !369
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN4llvm14StringMapEntryINS_17EmptyStringSetTagEE6createINS_15MallocAllocatorEJEEEPS2_NS_9StringRefERT_DpOT0_.exit.i.i.i, label %_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit

_ZN4llvm14StringMapEntryINS_17EmptyStringSetTagEE6createINS_15MallocAllocatorEJEEEPS2_NS_9StringRefERT_DpOT0_.exit.i.i.i: ; preds = %bb.b
  %i.j = add i64 %2, 9
  %i.k = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.j, i64 noundef 8) #23 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr align 1 %1, i64 %2, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %2
  store i8 0, ptr %i.m, align 1, !tbaa !233
  store i64 %2, ptr %i.k, align 8, !tbaa !371
  store ptr %i.k, ptr %i.h, align 8, !tbaa !369
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !372
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 4, !tbaa !372
  %i.q = tail call noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20) %i.c, i32 noundef %i.e) #23 ; 0 uses
  br label %_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit

_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit: ; preds = %bb.b, %_ZN4llvm14StringMapEntryINS_17EmptyStringSetTagEE6createINS_15MallocAllocatorEJEEEPS2_NS_9StringRefERT_DpOT0_.exit.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.s = and i32 %3, 2147483647                   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.u = load i32, ptr %i.t, align 8, !tbaa !229  ; 2 uses
  %.not.i = icmp ugt i32 %i.u, %i.s
  br i1 %.not.i, label %_ZN4llvm10IndexedMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_20VirtReg2IndexFunctorEE4growENS_8RegisterE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit
  %i.v = add nuw i32 %i.s, 1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
  %narrow.i = sub nuw i32 %i.v, %i.u
  %i.x = zext i32 %narrow.i to i64
  tail call void @_ZN4llvm15SmallVectorImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6appendEmRKS6_(ptr noundef nonnull align 8 dereferenceable(49) %i.r, i64 noundef %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
  br label %_ZN4llvm10IndexedMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_20VirtReg2IndexFunctorEE4growENS_8RegisterE.exit

_ZN4llvm10IndexedMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_20VirtReg2IndexFunctorEE4growENS_8RegisterE.exit: ; preds = %_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  %.not.i6 = icmp eq ptr %1, null
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.y, ptr %4, align 8, !tbaa !231, !alias.scope !373
  br i1 %.not.i6, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm10IndexedMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_20VirtReg2IndexFunctorEE4growENS_8RegisterE.exit
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.z, align 8, !tbaa !232, !alias.scope !373
  store i8 0, ptr %i.y, align 8, !tbaa !233, !alias.scope !373
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

bb.e:                                             ; preds = %_ZN4llvm10IndexedMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_20VirtReg2IndexFunctorEE4growENS_8RegisterE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !373
  store i64 %2, ptr %i.a, align 8, !tbaa !253, !noalias !373
  %i.aa = icmp ugt i64 %2, 15
  br i1 %i.aa, label %._crit_edge.i.i.i.thread, label %._crit_edge.i.i.i

._crit_edge.i.i.i.thread:                         ; preds = %bb.e
  %i.ab = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #23 ; 2 uses
  store ptr %i.ab, ptr %4, align 8, !tbaa !283, !alias.scope !373
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !253, !noalias !373
  store i64 %i.ac, ptr %i.y, align 8, !tbaa !233, !alias.scope !373
  br label %bb.g

._crit_edge.i.i.i:                                ; preds = %bb.e
  %cond = icmp eq i64 %2, 1
  br i1 %cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.ad = load i8, ptr %1, align 1, !tbaa !233
  store i8 %i.ad, ptr %i.y, align 8, !tbaa !233
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

bb.g:                                             ; preds = %._crit_edge.i.i.i.thread, %._crit_edge.i.i.i
  %i.ae = phi ptr [ %i.ab, %._crit_edge.i.i.i.thread ], [ %i.y, %._crit_edge.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i: ; preds = %bb.g, %bb.f
  %i.af = load i64, ptr %i.a, align 8, !tbaa !253, !noalias !373 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !232, !alias.scope !373
  %i.ah = load ptr, ptr %4, align 8, !tbaa !283, !alias.scope !373
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af
  store i8 0, ptr %i.ai, align 1, !tbaa !233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !373
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

_ZNK4llvm9StringRef3strB5cxx11Ev.exit:            ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  %i.aj = zext nneg i32 %i.s to i64
  %i.ak = load ptr, ptr %i.r, align 8, !tbaa !28
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %i.aj ; 9 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !283 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 4 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  %i.ap = load ptr, ptr %4, align 8, !tbaa !283   ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq                ; 2 uses
  br i1 %i.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  br i1 %i.ar, label %bb.h, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  br i1 %i.ar, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !232 ; 3 uses
  %i.au = icmp ult i64 %i.at, 16
  call void @llvm.assume(i1 %i.au)
  %.not21.i = icmp eq ptr %4, %i.al
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.i, !prof !254

bb.i:                                             ; preds = %bb.h
  switch i64 %i.at, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.av = load i8, ptr %i.ap, align 1, !tbaa !233
  store i8 %i.av, ptr %i.am, align 1, !tbaa !233
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr align 1 %i.ap, i64 %i.at, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.aw = load i64, ptr %i.as, align 8, !tbaa !232 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !232
  %i.ay = load ptr, ptr %i.al, align 8, !tbaa !283
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw
  store i8 0, ptr %i.az, align 1, !tbaa !233
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !283
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !283
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !232
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !232
  %i.bd = load i64, ptr %i.aq, align 8, !tbaa !233
  store i64 %i.bd, ptr %i.an, align 8, !tbaa !233
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.be = load i64, ptr %i.an, align 8, !tbaa !233
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !283
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !232
  %i.bh = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !232
  %i.bi = load i64, ptr %i.aq, align 8, !tbaa !233
  store i64 %i.bi, ptr %i.an, align 8, !tbaa !233
  %.not.i7 = icmp eq ptr %i.am, null
  br i1 %.not.i7, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.am, ptr %4, align 8, !tbaa !283
  store i64 %i.be, ptr %i.aq, align 8, !tbaa !233
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.aq, ptr %4, align 8, !tbaa !283
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.l, %bb.m
  %i.bj = phi ptr [ %i.am, %bb.l ], [ %i.aq, %bb.m ], [ %i.ap, %bb.h ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.bk, align 8, !tbaa !232
  store i8 0, ptr %i.bj, align 1, !tbaa !233
  %i.bl = load ptr, ptr %4, align 8, !tbaa !283   ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !233
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i32 -2147483648, 0) i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr noundef %1, ptr %2, i64 %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !229  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.d = and i32 %i.b, 2147483647                 ; 3 uses
  %i.e = add nuw i32 %i.d, 1
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %.not.i.not.i = icmp sgt i32 %i.b, -1
  br i1 %.not.i.not.i, label %bb.b, label %_ZN4llvm19MachineRegisterInfo31createIncompleteVirtualRegisterENS_9StringRefE.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext nneg i32 %i.b to i64                ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.h, align 8 ; 9 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8 ; 9 uses
  %i.i = sub nsw i64 %i.f, %i.g                   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.k = load i32, ptr %i.j, align 4, !tbaa !230
  %.not.i.i.i.i.i.not.i.i = icmp ult i32 %i.d, %i.k
  br i1 %.not.i.i.i.i.i.not.i.i, label %.lr.ph.i.i.i.preheader.i.i.i.i.i, label %bb.c, !prof !258

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(33) %i.c, ptr noundef nonnull %i.h, i64 noundef %i.f, i64 noundef 16) #23
  %.pre.i.i.i.i.i = load i32, ptr %i.a, align 8, !tbaa !229
  %.pre5.i.i.i.i.i = zext i32 %.pre.i.i.i.i.i to i64
  br label %.lr.ph.i.i.i.preheader.i.i.i.i.i

.lr.ph.i.i.i.preheader.i.i.i.i.i:                 ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.i.i.i = phi i64 [ %i.g, %bb.b ], [ %.pre5.i.i.i.i.i, %bb.c ]
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.pre-phi.i.i.i.i.i ; 2 uses
  %i.n = zext nneg i32 %i.b to i64
  %i.o = sub nsw i64 %i.n, %i.g
  %xtraiter = and i64 %i.i, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.preheader.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %i.m, %.lr.ph.i.i.i.preheader.i.i.i.i.i ] ; 3 uses
  %.068.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %i.i, %.lr.ph.i.i.i.preheader.i.i.i.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader.i.i.i.i.i ]
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %.09.i.i.i.i.i.i.i.i.prol, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.prol, i64 8
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.prol, align 8
  %i.p = add i64 %.068.i.i.i.i.i.i.i.i.prol, -1   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !374

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.preheader.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.m, %.lr.ph.i.i.i.preheader.i.i.i.i.i ], [ %i.q, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.068.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.i, %.lr.ph.i.i.i.preheader.i.i.i.i.i ], [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.r = icmp ult i64 %i.o, 7
  br i1 %i.r, label %_ZN4llvm10IndexedMapISt4pairINS_12PointerUnionIJPKNS_15MCRegisterClassEPKNS_12RegisterBankEEEEPNS_14MachineOperandEENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.068.i.i.i.i.i.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.068.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ]
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %.09.i.i.i.i.i.i.i.i, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 8
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 16
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.s, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 24
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.1, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 32
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.t, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 40
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.2, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 48
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.u, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 56
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.3, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 64
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.v, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 72
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.4, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 80
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.w, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 88
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.5, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 96
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.x, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 104
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.6, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 112
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.y, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 120
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.7, align 8
  %i.z = add i64 %.068.i.i.i.i.i.i.i.i, -8        ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 128
  %.not.i.i.i.i.i.i.i.i.7 = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.i.i.i.i.i.7, label %_ZN4llvm10IndexedMapISt4pairINS_12PointerUnionIJPKNS_15MCRegisterClassEPKNS_12RegisterBankEEEEPNS_14MachineOperandEENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !3

_ZN4llvm10IndexedMapISt4pairINS_12PointerUnionIJPKNS_15MCRegisterClassEPKNS_12RegisterBankEEEEPNS_14MachineOperandEENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit
  %.pre4.i.i.i.i.i = load i32, ptr %i.a, align 8, !tbaa !229
  %i.ab = trunc nuw i64 %i.i to i32
  %i.ac = add i32 %.pre4.i.i.i.i.i, %i.ab
  store i32 %i.ac, ptr %i.a, align 8, !tbaa !229
  br label %_ZN4llvm19MachineRegisterInfo31createIncompleteVirtualRegisterENS_9StringRefE.exit

_ZN4llvm19MachineRegisterInfo31createIncompleteVirtualRegisterENS_9StringRefE.exit: ; preds = %bb.a, %_ZN4llvm10IndexedMapISt4pairINS_12PointerUnionIJPKNS_15MCRegisterClassEPKNS_12RegisterBankEEEEPNS_14MachineOperandEENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i
  %i.ad = or i32 %i.b, -2147483648                ; 3 uses
  tail call void @_ZN4llvm19MachineRegisterInfo16insertVRegByNameENS_9StringRefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr %2, i64 %3, i32 %i.ad)
  %i.ae = zext nneg i32 %i.d to i64
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ae
  %i.ah = ptrtoint ptr %1 to i64
  store i64 %i.ah, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !26 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !23, !range !24, !noundef !25
  %i.am = trunc nuw i8 %i.al to i1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load i32, ptr %i.ap, align 8
  %.v.v.i.i.i.i = select i1 %i.am, i32 %i.ao, i32 %i.aq ; 2 uses
  %.v.i.i.i.i = zext i32 %.v.v.i.i.i.i to i64     ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %.v.i.i.i.i, 3
  %i.ar = getelementptr i8, ptr %i.aj, i64 %.idx.i.i ; 4 uses
  %.not1.i.i.i.i.i.i = icmp eq i32 %.v.v.i.i.i.i, 0
  br i1 %.not1.i.i.i.i.i.i, label %_ZNK4llvm15SmallPtrSetImplIPNS_19MachineRegisterInfo8DelegateEE5beginEv.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN4llvm19MachineRegisterInfo31createIncompleteVirtualRegisterENS_9StringRefE.exit, %bb.d
  %.sroa.0.0.i.i.i = phi ptr [ %i.au, %bb.d ], [ %i.aj, %_ZN4llvm19MachineRegisterInfo31createIncompleteVirtualRegisterENS_9StringRefE.exit ] ; 3 uses
  %i.as = load ptr, ptr %.sroa.0.0.i.i.i, align 8, !tbaa !284
  %i.at = icmp eq ptr %i.as, inttoptr (i64 -1 to ptr)
  br i1 %i.at, label %bb.d, label %_ZNK4llvm15SmallPtrSetImplIPNS_19MachineRegisterInfo8DelegateEE5beginEv.exit.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.au, %i.ar
  br i1 %.not.i.i.i.i.i.i, label %_ZNK4llvm15SmallPtrSetImplIPNS_19MachineRegisterInfo8DelegateEE5beginEv.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !4

_ZNK4llvm15SmallPtrSetImplIPNS_19MachineRegisterInfo8DelegateEE5beginEv.exit.i: ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i, %_ZN4llvm19MachineRegisterInfo31createIncompleteVirtualRegisterENS_9StringRefE.exit
  %.sroa.0.1.i.i.i = phi ptr [ %i.aj, %_ZN4llvm19MachineRegisterInfo31createIncompleteVirtualRegisterENS_9StringRefE.exit ], [ %i.ar, %bb.d ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.v.i.i.i.i ; 2 uses
  %.not10.i = icmp eq ptr %.sroa.0.1.i.i.i, %i.av
  br i1 %.not10.i, label %_ZN4llvm19MachineRegisterInfo22noteNewVirtualRegisterENS_8RegisterE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK4llvm15SmallPtrSetImplIPNS_19MachineRegisterInfo8DelegateEE5beginEv.exit.i, %_ZN4llvm19SmallPtrSetIteratorIPNS_19MachineRegisterInfo8DelegateEEppEv.exit.i
  %.sroa.07.011.i = phi ptr [ %.sroa.07.2.i, %_ZN4llvm19SmallPtrSetIteratorIPNS_19MachineRegisterInfo8DelegateEEppEv.exit.i ], [ %.sroa.0.1.i.i.i, %_ZNK4llvm15SmallPtrSetImplIPNS_19MachineRegisterInfo8DelegateEE5beginEv.exit.i ] ; 2 uses
  %i.aw = load ptr, ptr %.sroa.07.011.i, align 8, !tbaa !284 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i32 %i.ad) #23, !inline_history !5
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i, i64 8 ; 3 uses
  %.not1.i.i.i.i = icmp eq ptr %i.ba, %i.ar
  br i1 %.not1.i.i.i.i, label %_ZN4llvm19SmallPtrSetIteratorIPNS_19MachineRegisterInfo8DelegateEEppEv.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i, %bb.e
  %.sroa.07.1.i = phi ptr [ %i.bd, %bb.e ], [ %i.ba, %.lr.ph.i ] ; 3 uses
  %i.bb = load ptr, ptr %.sroa.07.1.i, align 8, !tbaa !284
  %i.bc = icmp eq ptr %i.bb, inttoptr (i64 -1 to ptr)
  br i1 %i.bc, label %bb.e, label %_ZN4llvm19SmallPtrSetIteratorIPNS_19MachineRegisterInfo8DelegateEEppEv.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i, i64 8 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bd, %i.ar
  br i1 %.not.i.i.i.i, label %_ZN4llvm19SmallPtrSetIteratorIPNS_19MachineRegisterInfo8DelegateEEppEv.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !4

_ZN4llvm19SmallPtrSetIteratorIPNS_19MachineRegisterInfo8DelegateEEppEv.exit.i: ; preds = %bb.e, %.lr.ph.i.i.i.i, %.lr.ph.i
  %.sroa.07.2.i = phi ptr [ %i.ba, %.lr.ph.i ], [ %i.bd, %bb.e ], [ %.sroa.07.1.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.07.2.i, %i.av
  br i1 %.not.i, label %_ZN4llvm19MachineRegisterInfo22noteNewVirtualRegisterENS_8RegisterE.exit, label %.lr.ph.i

_ZN4llvm19MachineRegisterInfo22noteNewVirtualRegisterENS_8RegisterE.exit: ; preds = %_ZN4llvm19SmallPtrSetIteratorIPNS_19MachineRegisterInfo8DelegateEEppEv.exit.i, %_ZNK4llvm15SmallPtrSetImplIPNS_19MachineRegisterInfo8DelegateEE5beginEv.exit.i
  ret i32 %i.ad
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i32 -2147483648, 0) i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterENS0_9VRegAttrsENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %0, i64 %1, i64 %2, ptr %3, i64 %4) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !229  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.d = and i32 %i.b, 2147483647                 ; 5 uses
  %i.e = add nuw i32 %i.d, 1
  %i.f = zext i32 %i.e to i64                     ; 4 uses
  %.not.i.not.i = icmp sgt i32 %i.b, -1
  br i1 %.not.i.not.i, label %bb.b, label %_ZN4llvm19MachineRegisterInfo31createIncompleteVirtualRegisterENS_9StringRefE.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext nneg i32 %i.b to i64                ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.h, align 8 ; 9 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8 ; 9 uses
  %i.i = sub nsw i64 %i.f, %i.g                   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.k = load i32, ptr %i.j, align 4, !tbaa !230
  %.not.i.i.i.i.i.not.i.i = icmp ult i32 %i.d, %i.k
  br i1 %.not.i.i.i.i.i.not.i.i, label %.lr.ph.i.i.i.preheader.i.i.i.i.i, label %bb.c, !prof !258

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(33) %i.c, ptr noundef nonnull %i.h, i64 noundef %i.f, i64 noundef 16) #23
  %.pre.i.i.i.i.i = load i32, ptr %i.a, align 8, !tbaa !229
  %.pre5.i.i.i.i.i = zext i32 %.pre.i.i.i.i.i to i64
  br label %.lr.ph.i.i.i.preheader.i.i.i.i.i

.lr.ph.i.i.i.preheader.i.i.i.i.i:                 ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.i.i.i = phi i64 [ %i.g, %bb.b ], [ %.pre5.i.i.i.i.i, %bb.c ]
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.pre-phi.i.i.i.i.i ; 2 uses
  %i.n = zext nneg i32 %i.b to i64
  %i.o = sub nsw i64 %i.n, %i.g
  %xtraiter = and i64 %i.i, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.preheader.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %i.m, %.lr.ph.i.i.i.preheader.i.i.i.i.i ] ; 3 uses
  %.068.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %i.i, %.lr.ph.i.i.i.preheader.i.i.i.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader.i.i.i.i.i ]
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %.09.i.i.i.i.i.i.i.i.prol, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.prol, i64 8
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.prol, align 8
  %i.p = add i64 %.068.i.i.i.i.i.i.i.i.prol, -1   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !375

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.preheader.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.m, %.lr.ph.i.i.i.preheader.i.i.i.i.i ], [ %i.q, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.068.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.i, %.lr.ph.i.i.i.preheader.i.i.i.i.i ], [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.r = icmp ult i64 %i.o, 7
  br i1 %i.r, label %_ZN4llvm10IndexedMapISt4pairINS_12PointerUnionIJPKNS_15MCRegisterClassEPKNS_12RegisterBankEEEEPNS_14MachineOperandEENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.068.i.i.i.i.i.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.068.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ]
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %.09.i.i.i.i.i.i.i.i, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 8
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 16
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.s, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 24
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.1, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 32
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.t, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 40
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.2, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 48
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.u, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 56
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.3, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 64
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.v, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 72
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.4, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 80
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.w, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 88
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.5, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 96
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.x, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 104
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.6, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 112
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.y, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 120
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.7, align 8
  %i.z = add i64 %.068.i.i.i.i.i.i.i.i, -8        ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 128
  %.not.i.i.i.i.i.i.i.i.7 = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.i.i.i.i.i.7, label %_ZN4llvm10IndexedMapISt4pairINS_12PointerUnionIJPKNS_15MCRegisterClassEPKNS_12RegisterBankEEEEPNS_14MachineOperandEENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !3

_ZN4llvm10IndexedMapISt4pairINS_12PointerUnionIJPKNS_15MCRegisterClassEPKNS_12RegisterBankEEEEPNS_14MachineOperandEENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit
  %.pre4.i.i.i.i.i = load i32, ptr %i.a, align 8, !tbaa !229
  %i.ab = trunc nuw i64 %i.i to i32
  %i.ac = add i32 %.pre4.i.i.i.i.i, %i.ab
  store i32 %i.ac, ptr %i.a, align 8, !tbaa !229
  br label %_ZN4llvm19MachineRegisterInfo31createIncompleteVirtualRegisterENS_9StringRefE.exit

_ZN4llvm19MachineRegisterInfo31createIncompleteVirtualRegisterENS_9StringRefE.exit: ; preds = %bb.a, %_ZN4llvm10IndexedMapISt4pairINS_12PointerUnionIJPKNS_15MCRegisterClassEPKNS_12RegisterBankEEEEPNS_14MachineOperandEENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i
  %i.ad = or i32 %i.b, -2147483648                ; 3 uses
  tail call void @_ZN4llvm19MachineRegisterInfo16insertVRegByNameENS_9StringRefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr %3, i64 %4, i32 %i.ad)
  %i.ae = zext nneg i32 %i.d to i64               ; 2 uses
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ae
  store i64 %1, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 4 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !229 ; 2 uses
  %.not.i.i = icmp ugt i32 %i.aj, %i.d
  br i1 %.not.i.i, label %_ZN4llvm19MachineRegisterInfo7setTypeENS_8RegisterENS_3LLTE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm19MachineRegisterInfo31createIncompleteVirtualRegisterENS_9StringRefE.exit
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %.sroa.0.0.copyload.i.i.i13 = load i64, ptr %i.al, align 8, !tbaa !233 ; 2 uses
  %i.am = sub nsw i64 %i.f, %i.ak                 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 476
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !230
  %.not.i.i.i.i.i.not.i.i14 = icmp ult i32 %i.d, %i.ao
  br i1 %.not.i.i.i.i.i.not.i.i14, label %.lr.ph.i.i.i.preheader.i.i.i.i.i17, label %bb.e, !prof !258

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(25) %i.ah, ptr noundef nonnull %i.al, i64 noundef %i.f, i64 noundef 8) #23
  %.pre.i.i.i.i.i15 = load i32, ptr %i.ai, align 8, !tbaa !229
  %.pre5.i.i.i.i.i16 = zext i32 %.pre.i.i.i.i.i15 to i64
  br label %.lr.ph.i.i.i.preheader.i.i.i.i.i17

.lr.ph.i.i.i.preheader.i.i.i.i.i17:               ; preds = %bb.e, %bb.d
  %.pre-phi.i.i.i.i.i18 = phi i64 [ %i.ak, %bb.d ], [ %.pre5.i.i.i.i.i16, %bb.e ]
  %i.ap = load ptr, ptr %i.ah, align 8, !tbaa !28
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.pre-phi.i.i.i.i.i18 ; 3 uses
  %min.iters.check = icmp ult i64 %i.am, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i19.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader.i.i.i.i.i17
  %n.vec = and i64 %i.am, -4                      ; 3 uses
  %i.ar = shl nsw i64 %n.vec, 3
  %i.as = getelementptr i8, ptr %i.aq, i64 %i.ar
  %i.at = and i64 %i.am, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.sroa.0.0.copyload.i.i.i13, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.aq, i64 %i.au ; 2 uses
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !233
  store <2 x i64> %broadcast.splat, ptr %i.av, align 8, !tbaa !233
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !376

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %_ZN4llvm10IndexedMapINS_3LLTENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i19.preheader

.lr.ph.i.i.i.i.i.i.i.i19.preheader:               ; preds = %.lr.ph.i.i.i.preheader.i.i.i.i.i17, %middle.block
  %.09.i.i.i.i.i.i.i.i20.ph = phi ptr [ %i.aq, %.lr.ph.i.i.i.preheader.i.i.i.i.i17 ], [ %i.as, %middle.block ]
  %.068.i.i.i.i.i.i.i.i21.ph = phi i64 [ %i.am, %.lr.ph.i.i.i.preheader.i.i.i.i.i17 ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i19

.lr.ph.i.i.i.i.i.i.i.i19:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i19.preheader, %.lr.ph.i.i.i.i.i.i.i.i19
  %.09.i.i.i.i.i.i.i.i20 = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.i19 ], [ %.09.i.i.i.i.i.i.i.i20.ph, %.lr.ph.i.i.i.i.i.i.i.i19.preheader ] ; 2 uses
  %.068.i.i.i.i.i.i.i.i21 = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.i19 ], [ %.068.i.i.i.i.i.i.i.i21.ph, %.lr.ph.i.i.i.i.i.i.i.i19.preheader ]
  store i64 %.sroa.0.0.copyload.i.i.i13, ptr %.09.i.i.i.i.i.i.i.i20, align 8, !tbaa !233
  %i.ax = add i64 %.068.i.i.i.i.i.i.i.i21, -1     ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i20, i64 8
  %.not.i.i.i.i.i.i.i.i22 = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i.i.i.i.i.i.i22, label %_ZN4llvm10IndexedMapINS_3LLTENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i19, !llvm.loop !377

_ZN4llvm10IndexedMapINS_3LLTENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i19, %middle.block
  %.pre4.i.i.i.i.i23 = load i32, ptr %i.ai, align 8, !tbaa !229
  %i.az = trunc nuw i64 %i.am to i32
  %i.ba = add i32 %.pre4.i.i.i.i.i23, %i.az
  store i32 %i.ba, ptr %i.ai, align 8, !tbaa !229
  br label %_ZN4llvm19MachineRegisterInfo7setTypeENS_8RegisterENS_3LLTE.exit

_ZN4llvm19MachineRegisterInfo7setTypeENS_8RegisterENS_3LLTE.exit: ; preds = %_ZN4llvm19MachineRegisterInfo31createIncompleteVirtualRegisterENS_9StringRefE.exit, %_ZN4llvm10IndexedMapINS_3LLTENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i
  %i.bb = load ptr, ptr %i.ah, align 8, !tbaa !28
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ae
  store i64 %2, ptr %i.bc, align 8, !tbaa !233
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !26 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !23, !range !24, !noundef !25
  %i.bh = trunc nuw i8 %i.bg to i1
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bl = load i32, ptr %i.bk, align 8
  %.v.v.i.i.i.i = select i1 %i.bh, i32 %i.bj, i32 %i.bl ; 2 uses
  %.v.i.i.i.i = zext i32 %.v.v.i.i.i.i to i64     ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %.v.i.i.i.i, 3
  %i.bm = getelementptr i8, ptr %i.be, i64 %.idx.i.i ; 4 uses
  %.not1.i.i.i.i.i.i = icmp eq i32 %.v.v.i.i.i.i, 0
  br i1 %.not1.i.i.i.i.i.i, label %_ZNK4llvm15SmallPtrSetImplIPNS_19MachineRegisterInfo8DelegateEE5beginEv.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN4llvm19MachineRegisterInfo7setTypeENS_8RegisterENS_3LLTE.exit, %bb.f
  %.sroa.0.0.i.i.i = phi ptr [ %i.bp, %bb.f ], [ %i.be, %_ZN4llvm19MachineRegisterInfo7setTypeENS_8RegisterENS_3LLTE.exit ] ; 3 uses
  %i.bn = load ptr, ptr %.sroa.0.0.i.i.i, align 8, !tbaa !284
  %i.bo = icmp eq ptr %i.bn, inttoptr (i64 -1 to ptr)
  br i1 %i.bo, label %bb.f, label %_ZNK4llvm15SmallPtrSetImplIPNS_19MachineRegisterInfo8DelegateEE5beginEv.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bp, %i.bm
  br i1 %.not.i.i.i.i.i.i, label %_ZNK4llvm15SmallPtrSetImplIPNS_19MachineRegisterInfo8DelegateEE5beginEv.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !4

_ZNK4llvm15SmallPtrSetImplIPNS_19MachineRegisterInfo8DelegateEE5beginEv.exit.i: ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i, %_ZN4llvm19MachineRegisterInfo7setTypeENS_8RegisterENS_3LLTE.exit
  %.sroa.0.1.i.i.i = phi ptr [ %i.be, %_ZN4llvm19MachineRegisterInfo7setTypeENS_8RegisterENS_3LLTE.exit ], [ %i.bm, %bb.f ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.v.i.i.i.i ; 2 uses
  %.not10.i = icmp eq ptr %.sroa.0.1.i.i.i, %i.bq
  br i1 %.not10.i, label %_ZN4llvm19MachineRegisterInfo22noteNewVirtualRegisterENS_8RegisterE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK4llvm15SmallPtrSetImplIPNS_19MachineRegisterInfo8DelegateEE5beginEv.exit.i, %_ZN4llvm19SmallPtrSetIteratorIPNS_19MachineRegisterInfo8DelegateEEppEv.exit.i
  %.sroa.07.011.i = phi ptr [ %.sroa.07.2.i, %_ZN4llvm19SmallPtrSetIteratorIPNS_19MachineRegisterInfo8DelegateEEppEv.exit.i ], [ %.sroa.0.1.i.i.i, %_ZNK4llvm15SmallPtrSetImplIPNS_19MachineRegisterInfo8DelegateEE5beginEv.exit.i ] ; 2 uses
  %i.br = load ptr, ptr %.sroa.07.011.i, align 8, !tbaa !284 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !18
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  tail call void %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %i.br, i32 %i.ad) #23, !inline_history !5
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i, i64 8 ; 3 uses
  %.not1.i.i.i.i = icmp eq ptr %i.bv, %i.bm
  br i1 %.not1.i.i.i.i, label %_ZN4llvm19SmallPtrSetIteratorIPNS_19MachineRegisterInfo8DelegateEEppEv.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i, %bb.g
  %.sroa.07.1.i = phi ptr [ %i.by, %bb.g ], [ %i.bv, %.lr.ph.i ] ; 3 uses
  %i.bw = load ptr, ptr %.sroa.07.1.i, align 8, !tbaa !284
  %i.bx = icmp eq ptr %i.bw, inttoptr (i64 -1 to ptr)
  br i1 %i.bx, label %bb.g, label %_ZN4llvm19SmallPtrSetIteratorIPNS_19MachineRegisterInfo8DelegateEEppEv.exit.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i, i64 8 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.by, %i.bm
  br i1 %.not.i.i.i.i, label %_ZN4llvm19SmallPtrSetIteratorIPNS_19MachineRegisterInfo8DelegateEEppEv.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !4

_ZN4llvm19SmallPtrSetIteratorIPNS_19MachineRegisterInfo8DelegateEEppEv.exit.i: ; preds = %bb.g, %.lr.ph.i.i.i.i, %.lr.ph.i
  %.sroa.07.2.i = phi ptr [ %i.bv, %.lr.ph.i ], [ %i.by, %bb.g ], [ %.sroa.07.1.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.07.2.i, %i.bq
  br i1 %.not.i, label %_ZN4llvm19MachineRegisterInfo22noteNewVirtualRegisterENS_8RegisterE.exit, label %.lr.ph.i

_ZN4llvm19MachineRegisterInfo22noteNewVirtualRegisterENS_8RegisterE.exit: ; preds = %_ZN4llvm19SmallPtrSetIteratorIPNS_19MachineRegisterInfo8DelegateEEppEv.exit.i, %_ZNK4llvm15SmallPtrSetImplIPNS_19MachineRegisterInfo8DelegateEE5beginEv.exit.i
  ret i32 %i.ad
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i32 -2147483648, 0) i32 @_ZN4llvm19MachineRegisterInfo20cloneVirtualRegisterENS_8RegisterENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %0, i32 %1, ptr %2, i64 %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !229  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.d = and i32 %i.b, 2147483647                 ; 5 uses
  %i.e = add nuw i32 %i.d, 1
  %i.f = zext i32 %i.e to i64                     ; 4 uses
  %.not.i.not.i = icmp sgt i32 %i.b, -1
  br i1 %.not.i.not.i, label %bb.b, label %_ZN4llvm19MachineRegisterInfo31createIncompleteVirtualRegisterENS_9StringRefE.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext nneg i32 %i.b to i64                ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.h, align 8 ; 9 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8 ; 9 uses
  %i.i = sub nsw i64 %i.f, %i.g                   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.k = load i32, ptr %i.j, align 4, !tbaa !230
  %.not.i.i.i.i.i.not.i.i = icmp ult i32 %i.d, %i.k
  br i1 %.not.i.i.i.i.i.not.i.i, label %.lr.ph.i.i.i.preheader.i.i.i.i.i, label %bb.c, !prof !258

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(33) %i.c, ptr noundef nonnull %i.h, i64 noundef %i.f, i64 noundef 16) #23
  %.pre.i.i.i.i.i = load i32, ptr %i.a, align 8, !tbaa !229
  %.pre5.i.i.i.i.i = zext i32 %.pre.i.i.i.i.i to i64
  br label %.lr.ph.i.i.i.preheader.i.i.i.i.i

.lr.ph.i.i.i.preheader.i.i.i.i.i:                 ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.i.i.i = phi i64 [ %i.g, %bb.b ], [ %.pre5.i.i.i.i.i, %bb.c ]
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.pre-phi.i.i.i.i.i ; 2 uses
  %i.n = zext nneg i32 %i.b to i64
  %i.o = sub nsw i64 %i.n, %i.g
  %xtraiter = and i64 %i.i, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.preheader.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %i.m, %.lr.ph.i.i.i.preheader.i.i.i.i.i ] ; 3 uses
  %.068.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %i.i, %.lr.ph.i.i.i.preheader.i.i.i.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader.i.i.i.i.i ]
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %.09.i.i.i.i.i.i.i.i.prol, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.prol, i64 8
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.prol, align 8
  %i.p = add i64 %.068.i.i.i.i.i.i.i.i.prol, -1   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !378

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.preheader.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.m, %.lr.ph.i.i.i.preheader.i.i.i.i.i ], [ %i.q, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.068.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.i, %.lr.ph.i.i.i.preheader.i.i.i.i.i ], [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.r = icmp ult i64 %i.o, 7
  br i1 %i.r, label %_ZN4llvm10IndexedMapISt4pairINS_12PointerUnionIJPKNS_15MCRegisterClassEPKNS_12RegisterBankEEEEPNS_14MachineOperandEENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.068.i.i.i.i.i.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.068.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ]
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %.09.i.i.i.i.i.i.i.i, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 8
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 16
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.s, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 24
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.1, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 32
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.t, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 40
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.2, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 48
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.u, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 56
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.3, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 64
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.v, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 72
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.4, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 80
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.w, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 88
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.5, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 96
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.x, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 104
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.6, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 112
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.y, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 120
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.7, align 8
  %i.z = add i64 %.068.i.i.i.i.i.i.i.i, -8        ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 128
  %.not.i.i.i.i.i.i.i.i.7 = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.i.i.i.i.i.7, label %_ZN4llvm10IndexedMapISt4pairINS_12PointerUnionIJPKNS_15MCRegisterClassEPKNS_12RegisterBankEEEEPNS_14MachineOperandEENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !3

_ZN4llvm10IndexedMapISt4pairINS_12PointerUnionIJPKNS_15MCRegisterClassEPKNS_12RegisterBankEEEEPNS_14MachineOperandEENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit
  %.pre4.i.i.i.i.i = load i32, ptr %i.a, align 8, !tbaa !229
  %i.ab = trunc nuw i64 %i.i to i32
  %i.ac = add i32 %.pre4.i.i.i.i.i, %i.ab
  store i32 %i.ac, ptr %i.a, align 8, !tbaa !229
  br label %_ZN4llvm19MachineRegisterInfo31createIncompleteVirtualRegisterENS_9StringRefE.exit

_ZN4llvm19MachineRegisterInfo31createIncompleteVirtualRegisterENS_9StringRefE.exit: ; preds = %bb.a, %_ZN4llvm10IndexedMapISt4pairINS_12PointerUnionIJPKNS_15MCRegisterClassEPKNS_12RegisterBankEEEEPNS_14MachineOperandEENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i
  %i.ad = or i32 %i.b, -2147483648                ; 3 uses
  tail call void @_ZN4llvm19MachineRegisterInfo16insertVRegByNameENS_9StringRefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr %2, i64 %3, i32 %i.ad)
  %i.ae = and i32 %1, 2147483647                  ; 2 uses
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !28  ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.af
  %i.ai = zext nneg i32 %i.d to i64               ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ai
  %i.ak = load i64, ptr %i.ah, align 8
  store i64 %i.ak, ptr %i.aj, align 8
  %i.al = icmp slt i32 %1, 0
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.an = load i32, ptr %i.am, align 8, !tbaa !229 ; 3 uses
  %i.ao = icmp ugt i32 %i.an, %i.ae
  %or.cond = select i1 %i.al, i1 %i.ao, i1 false
  br i1 %or.cond, label %bb.d, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

bb.d:                                             ; preds = %_ZN4llvm19MachineRegisterInfo31createIncompleteVirtualRegisterENS_9StringRefE.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !28
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.af
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !233
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit: ; preds = %_ZN4llvm19MachineRegisterInfo31createIncompleteVirtualRegisterENS_9StringRefE.exit, %bb.d
  %.sroa.04.0.i = phi i64 [ %i.as, %bb.d ], [ 0, %_ZN4llvm19MachineRegisterInfo31createIncompleteVirtualRegisterENS_9StringRefE.exit ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 3 uses
  %.not.i.i = icmp ugt i32 %i.an, %i.d
  br i1 %.not.i.i, label %_ZN4llvm19MachineRegisterInfo7setTypeENS_8RegisterENS_3LLTE.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit
  %i.av = zext nneg i32 %i.an to i64              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %.sroa.0.0.copyload.i.i.i17 = load i64, ptr %i.aw, align 8, !tbaa !233 ; 2 uses
  %i.ax = sub nsw i64 %i.f, %i.av                 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 476
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !230
  %.not.i.i.i.i.i.not.i.i18 = icmp ult i32 %i.d, %i.az
  br i1 %.not.i.i.i.i.i.not.i.i18, label %.lr.ph.i.i.i.preheader.i.i.i.i.i21, label %bb.f, !prof !258

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(25) %i.at, ptr noundef nonnull %i.aw, i64 noundef %i.f, i64 noundef 8) #23
  %.pre.i.i.i.i.i19 = load i32, ptr %i.au, align 8, !tbaa !229
  %.pre5.i.i.i.i.i20 = zext i32 %.pre.i.i.i.i.i19 to i64
  br label %.lr.ph.i.i.i.preheader.i.i.i.i.i21

.lr.ph.i.i.i.preheader.i.i.i.i.i21:               ; preds = %bb.f, %bb.e
  %.pre-phi.i.i.i.i.i22 = phi i64 [ %i.av, %bb.e ], [ %.pre5.i.i.i.i.i20, %bb.f ]
  %i.ba = load ptr, ptr %i.at, align 8, !tbaa !28
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.pre-phi.i.i.i.i.i22 ; 3 uses
  %min.iters.check = icmp ult i64 %i.ax, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i23.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader.i.i.i.i.i21
  %n.vec = and i64 %i.ax, -4                      ; 3 uses
  %i.bc = shl nsw i64 %n.vec, 3
  %i.bd = getelementptr i8, ptr %i.bb, i64 %i.bc
  %i.be = and i64 %i.ax, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.sroa.0.0.copyload.i.i.i17, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bf = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.bb, i64 %i.bf ; 2 uses
  %i.bg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !233
  store <2 x i64> %broadcast.splat, ptr %i.bg, align 8, !tbaa !233
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !379

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %_ZN4llvm10IndexedMapINS_3LLTENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i23.preheader

.lr.ph.i.i.i.i.i.i.i.i23.preheader:               ; preds = %.lr.ph.i.i.i.preheader.i.i.i.i.i21, %middle.block
  %.09.i.i.i.i.i.i.i.i24.ph = phi ptr [ %i.bb, %.lr.ph.i.i.i.preheader.i.i.i.i.i21 ], [ %i.bd, %middle.block ]
  %.068.i.i.i.i.i.i.i.i25.ph = phi i64 [ %i.ax, %.lr.ph.i.i.i.preheader.i.i.i.i.i21 ], [ %i.be, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i23

.lr.ph.i.i.i.i.i.i.i.i23:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i23.preheader, %.lr.ph.i.i.i.i.i.i.i.i23
  %.09.i.i.i.i.i.i.i.i24 = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i.i.i23 ], [ %.09.i.i.i.i.i.i.i.i24.ph, %.lr.ph.i.i.i.i.i.i.i.i23.preheader ] ; 2 uses
  %.068.i.i.i.i.i.i.i.i25 = phi i64 [ %i.bi, %.lr.ph.i.i.i.i.i.i.i.i23 ], [ %.068.i.i.i.i.i.i.i.i25.ph, %.lr.ph.i.i.i.i.i.i.i.i23.preheader ]
  store i64 %.sroa.0.0.copyload.i.i.i17, ptr %.09.i.i.i.i.i.i.i.i24, align 8, !tbaa !233
  %i.bi = add i64 %.068.i.i.i.i.i.i.i.i25, -1     ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i24, i64 8
  %.not.i.i.i.i.i.i.i.i26 = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i.i.i.i.i.i.i26, label %_ZN4llvm10IndexedMapINS_3LLTENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i23, !llvm.loop !380

_ZN4llvm10IndexedMapINS_3LLTENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i23, %middle.block
  %.pre4.i.i.i.i.i27 = load i32, ptr %i.au, align 8, !tbaa !229
  %i.bk = trunc nuw i64 %i.ax to i32
  %i.bl = add i32 %.pre4.i.i.i.i.i27, %i.bk
  store i32 %i.bl, ptr %i.au, align 8, !tbaa !229
  br label %_ZN4llvm19MachineRegisterInfo7setTypeENS_8RegisterENS_3LLTE.exit

_ZN4llvm19MachineRegisterInfo7setTypeENS_8RegisterENS_3LLTE.exit: ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit, %_ZN4llvm10IndexedMapINS_3LLTENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i
  %i.bm = load ptr, ptr %i.at, align 8, !tbaa !28
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.ai
  store i64 %.sroa.04.0.i, ptr %i.bn, align 8, !tbaa !233
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !26 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !23, !range !24, !noundef !25
  %i.bs = trunc nuw i8 %i.br to i1
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bw = load i32, ptr %i.bv, align 8
  %.v.v.i.i.i.i = select i1 %i.bs, i32 %i.bu, i32 %i.bw ; 2 uses
  %.v.i.i.i.i = zext i32 %.v.v.i.i.i.i to i64     ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %.v.i.i.i.i, 3
  %i.bx = getelementptr i8, ptr %i.bp, i64 %.idx.i.i ; 4 uses
  %.not1.i.i.i.i.i.i = icmp eq i32 %.v.v.i.i.i.i, 0
  br i1 %.not1.i.i.i.i.i.i, label %_ZNK4llvm15SmallPtrSetImplIPNS_19MachineRegisterInfo8DelegateEE5beginEv.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN4llvm19MachineRegisterInfo7setTypeENS_8RegisterENS_3LLTE.exit, %bb.g
  %.sroa.0.0.i.i.i = phi ptr [ %i.ca, %bb.g ], [ %i.bp, %_ZN4llvm19MachineRegisterInfo7setTypeENS_8RegisterENS_3LLTE.exit ] ; 3 uses
  %i.by = load ptr, ptr %.sroa.0.0.i.i.i, align 8, !tbaa !284
  %i.bz = icmp eq ptr %i.by, inttoptr (i64 -1 to ptr)
  br i1 %i.bz, label %bb.g, label %_ZNK4llvm15SmallPtrSetImplIPNS_19MachineRegisterInfo8DelegateEE5beginEv.exit.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ca, %i.bx
  br i1 %.not.i.i.i.i.i.i, label %_ZNK4llvm15SmallPtrSetImplIPNS_19MachineRegisterInfo8DelegateEE5beginEv.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !4

_ZNK4llvm15SmallPtrSetImplIPNS_19MachineRegisterInfo8DelegateEE5beginEv.exit.i: ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i, %_ZN4llvm19MachineRegisterInfo7setTypeENS_8RegisterENS_3LLTE.exit
  %.sroa.0.1.i.i.i = phi ptr [ %i.bp, %_ZN4llvm19MachineRegisterInfo7setTypeENS_8RegisterENS_3LLTE.exit ], [ %i.bx, %bb.g ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.v.i.i.i.i ; 2 uses
  %.not12.i = icmp eq ptr %.sroa.0.1.i.i.i, %i.cb
  br i1 %.not12.i, label %_ZN4llvm19MachineRegisterInfo24noteCloneVirtualRegisterENS_8RegisterES1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK4llvm15SmallPtrSetImplIPNS_19MachineRegisterInfo8DelegateEE5beginEv.exit.i, %_ZN4llvm19SmallPtrSetIteratorIPNS_19MachineRegisterInfo8DelegateEEppEv.exit.i
  %.sroa.09.013.i = phi ptr [ %.sroa.09.2.i, %_ZN4llvm19SmallPtrSetIteratorIPNS_19MachineRegisterInfo8DelegateEEppEv.exit.i ], [ %.sroa.0.1.i.i.i, %_ZNK4llvm15SmallPtrSetImplIPNS_19MachineRegisterInfo8DelegateEE5beginEv.exit.i ] ; 2 uses
  %i.cc = load ptr, ptr %.sroa.09.013.i, align 8, !tbaa !284 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !18
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8
  tail call void %i.cf(ptr noundef nonnull align 8 dereferenceable(8) %i.cc, i32 %i.ad, i32 %1) #23, !inline_history !381
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 8 ; 3 uses
  %.not1.i.i.i.i = icmp eq ptr %i.cg, %i.bx
  br i1 %.not1.i.i.i.i, label %_ZN4llvm19SmallPtrSetIteratorIPNS_19MachineRegisterInfo8DelegateEEppEv.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i, %bb.h
  %.sroa.09.1.i = phi ptr [ %i.cj, %bb.h ], [ %i.cg, %.lr.ph.i ] ; 3 uses
  %i.ch = load ptr, ptr %.sroa.09.1.i, align 8, !tbaa !284
  %i.ci = icmp eq ptr %i.ch, inttoptr (i64 -1 to ptr)
  br i1 %i.ci, label %bb.h, label %_ZN4llvm19SmallPtrSetIteratorIPNS_19MachineRegisterInfo8DelegateEEppEv.exit.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.09.1.i, i64 8 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.cj, %i.bx
  br i1 %.not.i.i.i.i, label %_ZN4llvm19SmallPtrSetIteratorIPNS_19MachineRegisterInfo8DelegateEEppEv.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !4

_ZN4llvm19SmallPtrSetIteratorIPNS_19MachineRegisterInfo8DelegateEEppEv.exit.i: ; preds = %bb.h, %.lr.ph.i.i.i.i, %.lr.ph.i
  %.sroa.09.2.i = phi ptr [ %i.cg, %.lr.ph.i ], [ %i.cj, %bb.h ], [ %.sroa.09.1.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.09.2.i, %i.cb
  br i1 %.not.i, label %_ZN4llvm19MachineRegisterInfo24noteCloneVirtualRegisterENS_8RegisterES1_.exit, label %.lr.ph.i

_ZN4llvm19MachineRegisterInfo24noteCloneVirtualRegisterENS_8RegisterES1_.exit: ; preds = %_ZN4llvm19SmallPtrSetIteratorIPNS_19MachineRegisterInfo8DelegateEEppEv.exit.i, %_ZNK4llvm15SmallPtrSetImplIPNS_19MachineRegisterInfo8DelegateEE5beginEv.exit.i
  ret i32 %i.ad
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i32 -2147483648, 0) i32 @_ZN4llvm19MachineRegisterInfo28createGenericVirtualRegisterENS_3LLTENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %0, i64 %1, ptr %2, i64 %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !229  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.d = and i32 %i.b, 2147483647                 ; 5 uses
  %i.e = add nuw i32 %i.d, 1
  %i.f = zext i32 %i.e to i64                     ; 4 uses
  %.not.i.not.i = icmp sgt i32 %i.b, -1
  br i1 %.not.i.not.i, label %bb.b, label %_ZN4llvm19MachineRegisterInfo31createIncompleteVirtualRegisterENS_9StringRefE.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext nneg i32 %i.b to i64                ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.h, align 8 ; 9 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8 ; 9 uses
  %i.i = sub nsw i64 %i.f, %i.g                   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.k = load i32, ptr %i.j, align 4, !tbaa !230
  %.not.i.i.i.i.i.not.i.i = icmp ult i32 %i.d, %i.k
  br i1 %.not.i.i.i.i.i.not.i.i, label %.lr.ph.i.i.i.preheader.i.i.i.i.i, label %bb.c, !prof !258

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(33) %i.c, ptr noundef nonnull %i.h, i64 noundef %i.f, i64 noundef 16) #23
  %.pre.i.i.i.i.i = load i32, ptr %i.a, align 8, !tbaa !229
  %.pre5.i.i.i.i.i = zext i32 %.pre.i.i.i.i.i to i64
  br label %.lr.ph.i.i.i.preheader.i.i.i.i.i

.lr.ph.i.i.i.preheader.i.i.i.i.i:                 ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.i.i.i = phi i64 [ %i.g, %bb.b ], [ %.pre5.i.i.i.i.i, %bb.c ]
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.pre-phi.i.i.i.i.i ; 2 uses
  %i.n = zext nneg i32 %i.b to i64
  %i.o = sub nsw i64 %i.n, %i.g
  %xtraiter = and i64 %i.i, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.preheader.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %i.m, %.lr.ph.i.i.i.preheader.i.i.i.i.i ] ; 3 uses
  %.068.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %i.i, %.lr.ph.i.i.i.preheader.i.i.i.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader.i.i.i.i.i ]
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %.09.i.i.i.i.i.i.i.i.prol, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.prol, i64 8
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.prol, align 8
  %i.p = add i64 %.068.i.i.i.i.i.i.i.i.prol, -1   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !382

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.preheader.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.m, %.lr.ph.i.i.i.preheader.i.i.i.i.i ], [ %i.q, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.068.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.i, %.lr.ph.i.i.i.preheader.i.i.i.i.i ], [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.r = icmp ult i64 %i.o, 7
  br i1 %i.r, label %_ZN4llvm10IndexedMapISt4pairINS_12PointerUnionIJPKNS_15MCRegisterClassEPKNS_12RegisterBankEEEEPNS_14MachineOperandEENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.068.i.i.i.i.i.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.068.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ]
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %.09.i.i.i.i.i.i.i.i, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 8
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 16
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.s, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 24
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.1, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 32
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.t, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 40
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.2, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 48
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.u, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 56
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.3, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 64
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.v, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 72
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.4, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 80
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.w, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 88
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.5, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 96
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.x, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 104
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.6, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 112
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.y, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 120
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.7, align 8
  %i.z = add i64 %.068.i.i.i.i.i.i.i.i, -8        ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 128
  %.not.i.i.i.i.i.i.i.i.7 = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.i.i.i.i.i.7, label %_ZN4llvm10IndexedMapISt4pairINS_12PointerUnionIJPKNS_15MCRegisterClassEPKNS_12RegisterBankEEEEPNS_14MachineOperandEENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !3

_ZN4llvm10IndexedMapISt4pairINS_12PointerUnionIJPKNS_15MCRegisterClassEPKNS_12RegisterBankEEEEPNS_14MachineOperandEENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit
  %.pre4.i.i.i.i.i = load i32, ptr %i.a, align 8, !tbaa !229
  %i.ab = trunc nuw i64 %i.i to i32
  %i.ac = add i32 %.pre4.i.i.i.i.i, %i.ab
  store i32 %i.ac, ptr %i.a, align 8, !tbaa !229
  br label %_ZN4llvm19MachineRegisterInfo31createIncompleteVirtualRegisterENS_9StringRefE.exit

_ZN4llvm19MachineRegisterInfo31createIncompleteVirtualRegisterENS_9StringRefE.exit: ; preds = %bb.a, %_ZN4llvm10IndexedMapISt4pairINS_12PointerUnionIJPKNS_15MCRegisterClassEPKNS_12RegisterBankEEEEPNS_14MachineOperandEENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i
  %i.ad = or i32 %i.b, -2147483648                ; 3 uses
  tail call void @_ZN4llvm19MachineRegisterInfo16insertVRegByNameENS_9StringRefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr %2, i64 %3, i32 %i.ad)
  %i.ae = zext nneg i32 %i.d to i64               ; 2 uses
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ae
  store i64 4, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 4 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !229 ; 2 uses
  %.not.i.i = icmp ugt i32 %i.aj, %i.d
  br i1 %.not.i.i, label %_ZN4llvm19MachineRegisterInfo7setTypeENS_8RegisterENS_3LLTE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm19MachineRegisterInfo31createIncompleteVirtualRegisterENS_9StringRefE.exit
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %.sroa.0.0.copyload.i.i.i12 = load i64, ptr %i.al, align 8, !tbaa !233 ; 2 uses
  %i.am = sub nsw i64 %i.f, %i.ak                 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 476
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !230
  %.not.i.i.i.i.i.not.i.i13 = icmp ult i32 %i.d, %i.ao
  br i1 %.not.i.i.i.i.i.not.i.i13, label %.lr.ph.i.i.i.preheader.i.i.i.i.i16, label %bb.e, !prof !258

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(25) %i.ah, ptr noundef nonnull %i.al, i64 noundef %i.f, i64 noundef 8) #23
  %.pre.i.i.i.i.i14 = load i32, ptr %i.ai, align 8, !tbaa !229
  %.pre5.i.i.i.i.i15 = zext i32 %.pre.i.i.i.i.i14 to i64
  br label %.lr.ph.i.i.i.preheader.i.i.i.i.i16

.lr.ph.i.i.i.preheader.i.i.i.i.i16:               ; preds = %bb.e, %bb.d
  %.pre-phi.i.i.i.i.i17 = phi i64 [ %i.ak, %bb.d ], [ %.pre5.i.i.i.i.i15, %bb.e ]
  %i.ap = load ptr, ptr %i.ah, align 8, !tbaa !28
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.pre-phi.i.i.i.i.i17 ; 3 uses
  %min.iters.check = icmp ult i64 %i.am, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i18.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader.i.i.i.i.i16
  %n.vec = and i64 %i.am, -4                      ; 3 uses
  %i.ar = shl nsw i64 %n.vec, 3
  %i.as = getelementptr i8, ptr %i.aq, i64 %i.ar
  %i.at = and i64 %i.am, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.sroa.0.0.copyload.i.i.i12, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.aq, i64 %i.au ; 2 uses
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !233
  store <2 x i64> %broadcast.splat, ptr %i.av, align 8, !tbaa !233
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !383

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %_ZN4llvm10IndexedMapINS_3LLTENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i18.preheader

.lr.ph.i.i.i.i.i.i.i.i18.preheader:               ; preds = %.lr.ph.i.i.i.preheader.i.i.i.i.i16, %middle.block
  %.09.i.i.i.i.i.i.i.i19.ph = phi ptr [ %i.aq, %.lr.ph.i.i.i.preheader.i.i.i.i.i16 ], [ %i.as, %middle.block ]
  %.068.i.i.i.i.i.i.i.i20.ph = phi i64 [ %i.am, %.lr.ph.i.i.i.preheader.i.i.i.i.i16 ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i18

.lr.ph.i.i.i.i.i.i.i.i18:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i18.preheader, %.lr.ph.i.i.i.i.i.i.i.i18
  %.09.i.i.i.i.i.i.i.i19 = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.i18 ], [ %.09.i.i.i.i.i.i.i.i19.ph, %.lr.ph.i.i.i.i.i.i.i.i18.preheader ] ; 2 uses
  %.068.i.i.i.i.i.i.i.i20 = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.i18 ], [ %.068.i.i.i.i.i.i.i.i20.ph, %.lr.ph.i.i.i.i.i.i.i.i18.preheader ]
  store i64 %.sroa.0.0.copyload.i.i.i12, ptr %.09.i.i.i.i.i.i.i.i19, align 8, !tbaa !233
  %i.ax = add i64 %.068.i.i.i.i.i.i.i.i20, -1     ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i19, i64 8
  %.not.i.i.i.i.i.i.i.i21 = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i.i.i.i.i.i.i21, label %_ZN4llvm10IndexedMapINS_3LLTENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i18, !llvm.loop !384

_ZN4llvm10IndexedMapINS_3LLTENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i18, %middle.block
  %.pre4.i.i.i.i.i22 = load i32, ptr %i.ai, align 8, !tbaa !229
  %i.az = trunc nuw i64 %i.am to i32
  %i.ba = add i32 %.pre4.i.i.i.i.i22, %i.az
  store i32 %i.ba, ptr %i.ai, align 8, !tbaa !229
  br label %_ZN4llvm19MachineRegisterInfo7setTypeENS_8RegisterENS_3LLTE.exit

_ZN4llvm19MachineRegisterInfo7setTypeENS_8RegisterENS_3LLTE.exit: ; preds = %_ZN4llvm19MachineRegisterInfo31createIncompleteVirtualRegisterENS_9StringRefE.exit, %_ZN4llvm10IndexedMapINS_3LLTENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i
  %i.bb = load ptr, ptr %i.ah, align 8, !tbaa !28
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ae
  store i64 %1, ptr %i.bc, align 8, !tbaa !233
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !26 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !23, !range !24, !noundef !25
  %i.bh = trunc nuw i8 %i.bg to i1
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bl = load i32, ptr %i.bk, align 8
  %.v.v.i.i.i.i = select i1 %i.bh, i32 %i.bj, i32 %i.bl ; 2 uses
  %.v.i.i.i.i = zext i32 %.v.v.i.i.i.i to i64     ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %.v.i.i.i.i, 3
  %i.bm = getelementptr i8, ptr %i.be, i64 %.idx.i.i ; 4 uses
  %.not1.i.i.i.i.i.i = icmp eq i32 %.v.v.i.i.i.i, 0
  br i1 %.not1.i.i.i.i.i.i, label %_ZNK4llvm15SmallPtrSetImplIPNS_19MachineRegisterInfo8DelegateEE5beginEv.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN4llvm19MachineRegisterInfo7setTypeENS_8RegisterENS_3LLTE.exit, %bb.f
  %.sroa.0.0.i.i.i = phi ptr [ %i.bp, %bb.f ], [ %i.be, %_ZN4llvm19MachineRegisterInfo7setTypeENS_8RegisterENS_3LLTE.exit ] ; 3 uses
  %i.bn = load ptr, ptr %.sroa.0.0.i.i.i, align 8, !tbaa !284
  %i.bo = icmp eq ptr %i.bn, inttoptr (i64 -1 to ptr)
  br i1 %i.bo, label %bb.f, label %_ZNK4llvm15SmallPtrSetImplIPNS_19MachineRegisterInfo8DelegateEE5beginEv.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bp, %i.bm
  br i1 %.not.i.i.i.i.i.i, label %_ZNK4llvm15SmallPtrSetImplIPNS_19MachineRegisterInfo8DelegateEE5beginEv.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !4

_ZNK4llvm15SmallPtrSetImplIPNS_19MachineRegisterInfo8DelegateEE5beginEv.exit.i: ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i, %_ZN4llvm19MachineRegisterInfo7setTypeENS_8RegisterENS_3LLTE.exit
  %.sroa.0.1.i.i.i = phi ptr [ %i.be, %_ZN4llvm19MachineRegisterInfo7setTypeENS_8RegisterENS_3LLTE.exit ], [ %i.bm, %bb.f ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.v.i.i.i.i ; 2 uses
  %.not10.i = icmp eq ptr %.sroa.0.1.i.i.i, %i.bq
  br i1 %.not10.i, label %_ZN4llvm19MachineRegisterInfo22noteNewVirtualRegisterENS_8RegisterE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK4llvm15SmallPtrSetImplIPNS_19MachineRegisterInfo8DelegateEE5beginEv.exit.i, %_ZN4llvm19SmallPtrSetIteratorIPNS_19MachineRegisterInfo8DelegateEEppEv.exit.i
  %.sroa.07.011.i = phi ptr [ %.sroa.07.2.i, %_ZN4llvm19SmallPtrSetIteratorIPNS_19MachineRegisterInfo8DelegateEEppEv.exit.i ], [ %.sroa.0.1.i.i.i, %_ZNK4llvm15SmallPtrSetImplIPNS_19MachineRegisterInfo8DelegateEE5beginEv.exit.i ] ; 2 uses
  %i.br = load ptr, ptr %.sroa.07.011.i, align 8, !tbaa !284 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !18
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  tail call void %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %i.br, i32 %i.ad) #23, !inline_history !5
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i, i64 8 ; 3 uses
  %.not1.i.i.i.i = icmp eq ptr %i.bv, %i.bm
  br i1 %.not1.i.i.i.i, label %_ZN4llvm19SmallPtrSetIteratorIPNS_19MachineRegisterInfo8DelegateEEppEv.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i, %bb.g
  %.sroa.07.1.i = phi ptr [ %i.by, %bb.g ], [ %i.bv, %.lr.ph.i ] ; 3 uses
  %i.bw = load ptr, ptr %.sroa.07.1.i, align 8, !tbaa !284
  %i.bx = icmp eq ptr %i.bw, inttoptr (i64 -1 to ptr)
  br i1 %i.bx, label %bb.g, label %_ZN4llvm19SmallPtrSetIteratorIPNS_19MachineRegisterInfo8DelegateEEppEv.exit.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i, i64 8 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.by, %i.bm
  br i1 %.not.i.i.i.i, label %_ZN4llvm19SmallPtrSetIteratorIPNS_19MachineRegisterInfo8DelegateEEppEv.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !4

_ZN4llvm19SmallPtrSetIteratorIPNS_19MachineRegisterInfo8DelegateEEppEv.exit.i: ; preds = %bb.g, %.lr.ph.i.i.i.i, %.lr.ph.i
  %.sroa.07.2.i = phi ptr [ %i.bv, %.lr.ph.i ], [ %i.by, %bb.g ], [ %.sroa.07.1.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.07.2.i, %i.bq
  br i1 %.not.i, label %_ZN4llvm19MachineRegisterInfo22noteNewVirtualRegisterENS_8RegisterE.exit, label %.lr.ph.i

_ZN4llvm19MachineRegisterInfo22noteNewVirtualRegisterENS_8RegisterE.exit: ; preds = %_ZN4llvm19SmallPtrSetIteratorIPNS_19MachineRegisterInfo8DelegateEEppEv.exit.i, %_ZNK4llvm15SmallPtrSetImplIPNS_19MachineRegisterInfo8DelegateEE5beginEv.exit.i
  ret i32 %i.ad
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4llvm19MachineRegisterInfo17clearVirtRegTypesEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(520) initializes((472, 476)) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 472
  store i32 0, ptr %i.a, align 8, !tbaa !229
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4llvm19MachineRegisterInfo13clearVirtRegsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(520) initializes((56, 60)) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.a, align 8, !tbaa !229
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !285  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !285  ; 2 uses
  %.not8 = icmp eq ptr %i.c, %i.e
  br i1 %.not8, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.05.09 = phi ptr [ %i.g, %.lr.ph ], [ %i.c, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 4
  store i32 0, ptr %i.f, align 4, !tbaa !286
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZNK4llvm19MachineRegisterInfo13verifyUseListENS_8RegisterE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(520) %0, i32 %1) local_unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZNK4llvm19MachineRegisterInfo14verifyUseListsEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(520) %0) local_unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4llvm19MachineRegisterInfo22addRegOperandToUseListEPNS_14MachineOperandE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(520) %0, ptr noundef %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !233  ; 3 uses
  %i.c = icmp slt i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = and i32 %i.b, 2147483647
  %i.f = zext nneg i32 %i.e to i64
  %i.g = load ptr, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.k = zext nneg i32 %i.b to i64
  %i.l = load ptr, ptr %i.j, align 8
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %.0.i = select i1 %i.c, ptr %i.i, ptr %i.m      ; 3 uses
  %i.n = load ptr, ptr %.0.i, align 8, !tbaa !262 ; 3 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %1, ptr %i.o, align 8, !tbaa !233
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr null, ptr %i.p, align 8, !tbaa !233
  store ptr %1, ptr %.0.i, align 8, !tbaa !262
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !233  ; 2 uses
  store ptr %1, ptr %i.q, align 8, !tbaa !233
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.r, ptr %i.s, align 8, !tbaa !233
  %i.t = load i32, ptr %1, align 8
  %i.u = and i32 %i.t, 16777216
  %.not22 = icmp eq i32 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br i1 %.not22, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.n, ptr %i.v, align 8, !tbaa !233
  store ptr %1, ptr %.0.i, align 8, !tbaa !262
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store ptr null, ptr %i.v, align 8, !tbaa !233
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %1, ptr %i.w, align 8, !tbaa !233
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4llvm19MachineRegisterInfo27removeRegOperandFromUseListEPNS_14MachineOperandE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(520) %0, ptr nofree noundef captures(address) %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !233  ; 3 uses
  %i.c = icmp slt i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = and i32 %i.b, 2147483647
  %i.f = zext nneg i32 %i.e to i64
  %i.g = load ptr, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.k = zext nneg i32 %i.b to i64
  %i.l = load ptr, ptr %i.j, align 8
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %.0.i = select i1 %i.c, ptr %i.i, ptr %i.m      ; 2 uses
  %i.n = load ptr, ptr %.0.i, align 8, !tbaa !262 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !233  ; 4 uses
end_hunk_0
