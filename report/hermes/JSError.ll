inline.NumInlined: 1842
inline.NumDeleted: 1067
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6hermes2vm7JSError29constructStackTraceString_RJSERNS0_7RuntimeENS0_6HandleIS1_EENS4_INS0_8JSObjectEEERNS0_12SmallXStringIDsLj32EEE:bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ae, ptr %i.z, align 8, !tbaa !54
  store i64 %.sroa.0.0.copyload.i80, ptr %i.aa, align 8, !tbaa !62
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.af = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.y, i64 %.sroa.0.0.copyload.i80) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi ptr [ %i.aa, %bb.g ], [ %i.af, %bb.h ]
  %i.ag = call ptr @_ZN6hermes2vm7JSError8toStringENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %0) ; 2 uses
  %.not219 = icmp eq ptr %i.ag, inttoptr (i64 -1 to ptr)
  br i1 %.not219, label %.thread, label %.preheader223.preheader, !prof !334

.preheader223.preheader:                          ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !52
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !53
  %i.am = zext i32 %i.al to i64                   ; 3 uses
  %i.an = sub nsw i64 %i.aj, %i.am
  %i.ao = icmp ult i64 %i.an, 35
  br i1 %i.ao, label %.thread.i, label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit

.thread:                                          ; preds = %bb.e, %bb.d, %bb.i
  %.sroa.0.0.copyload.i81 = load i64, ptr %i.v, align 8, !tbaa !62
  %i.ap = call noundef zeroext i1 @_ZN6hermes2vm18isUncatchableErrorENS0_11HermesValueE(i64 %.sroa.0.0.copyload.i81) #17
  br i1 %i.ap, label %bb.as, label %bb.j

bb.j:                                             ; preds = %.thread
  store i64 -1970324836974592, ptr %i.v, align 8, !tbaa !70
  %i.aq = call noundef nonnull align 8 dereferenceable(80) ptr @_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull @.str.3) ; 0 uses
  br label %bb.k

.thread.i:                                        ; preds = %.preheader223.preheader
  %i.ar = add nuw nsw i64 %i.am, 35
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull %i.as, i64 noundef %i.ar, i64 noundef 2) #17
  %.pre7.pre.i.i = load i32, ptr %i.ak, align 8, !tbaa !53
  %.pre246 = zext i32 %.pre7.pre.i.i to i64
  br label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit

_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit: ; preds = %.thread.i, %.preheader223.preheader
  %.pre-phi247 = phi i64 [ %.pre246, %.thread.i ], [ %i.am, %.preheader223.preheader ]
  %i.at = load ptr, ptr %3, align 8, !tbaa !51
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %.pre-phi247
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(70) %i.au, ptr noundef nonnull align 2 dereferenceable(70) @.str.4, i64 70, i1 false)
  %.pre.i.i = load i32, ptr %i.ak, align 8, !tbaa !53
  %i.av = add i32 %.pre.i.i, 35
  store i32 %i.av, ptr %i.ak, align 8, !tbaa !53
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ag, align 8, !tbaa !62
  %i.aw = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.ax = inttoptr i64 %i.aw to ptr
  call void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %3) #17
  %i.ay = load i32, ptr %i.ah, align 4, !tbaa !52
  %i.az = load i32, ptr %i.ak, align 8, !tbaa !53 ; 2 uses
  %i.ba = zext i32 %i.az to i64                   ; 2 uses
  %i.bb = icmp eq i32 %i.ay, %i.az
  br i1 %i.bb, label %.thread.i88, label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit90

.thread.i88:                                      ; preds = %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit
  %i.bc = add nuw nsw i64 %i.ba, 1
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull %i.bd, i64 noundef %i.bc, i64 noundef 2) #17
  %.pre7.pre.i.i89 = load i32, ptr %i.ak, align 8, !tbaa !53
  %.pre248 = zext i32 %.pre7.pre.i.i89 to i64
  br label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit90

_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit90: ; preds = %.thread.i88, %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit
  %.pre-phi249 = phi i64 [ %.pre248, %.thread.i88 ], [ %i.ba, %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit ]
  %i.be = load ptr, ptr %3, align 8, !tbaa !51
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %.pre-phi249
  store i16 62, ptr %i.bf, align 1
  %.pre.i.i87 = load i32, ptr %i.ak, align 8, !tbaa !53
  %i.bg = add i32 %.pre.i.i87, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !53
  br label %bb.k

.critedge:                                        ; preds = %bb.c
  %.sroa.0.0.copyload.i.i91 = load i64, ptr %i.u, align 8, !tbaa !62
  %i.bh = and i64 %.sroa.0.0.copyload.i.i91, 281474976710655
  %i.bi = inttoptr i64 %i.bh to ptr
  call void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %3) #17
  br label %bb.k

bb.k:                                             ; preds = %.critedge, %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit90, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %5, i8 0, i64 20, i1 false)
  %i.bj = load ptr, ptr %i.r, align 8, !tbaa !54
  %i.bk = load i32, ptr %i.t, align 8, !tbaa !56  ; 2 uses
  %.sroa.0.0.copyload.i.i92 = load i64, ptr %1, align 8, !tbaa !62
  %i.bl = and i64 %.sroa.0.0.copyload.i.i92, 281474976710655
  %i.bm = inttoptr i64 %i.bl to ptr               ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !7  ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !314
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !10
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = ashr exact i64 %i.bu, 4                 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !315 ; 2 uses
  %i.by = sub i64 %i.bv, %i.bx                    ; 4 uses
  %.not226 = icmp eq i64 %i.bv, %i.bx
  br i1 %.not226, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.bz = icmp ugt i64 %i.by, 100
  %i.ca = add i64 %i.by, -50
  %i.cb = zext i32 %i.bk to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 12 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 40 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.cm = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.co = add i64 %i.by, -100
  %i.cp = uitofp i64 %i.co to double
  %scevgep = getelementptr i8, ptr %i.a, i64 -1   ; 2 uses
  %i.cq = add i64 %i.b, -1
  %i.cr = add i64 %i.b, -1
  br label %bb.l

._crit_edge.loopexit:                             ; preds = %bb.ar
  %.pre235 = load ptr, ptr %5, align 8, !tbaa !335
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.k
  %i.cs = phi ptr [ %.pre235, %._crit_edge.loopexit ], [ null, %bb.k ]
  call void @_ZdlPv(ptr noundef %i.cs) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.as

bb.l:                                             ; preds = %.lr.ph, %bb.ar
  %.076225 = phi i64 [ 0, %.lr.ph ], [ %.2, %bb.ar ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  br i1 %i.bz, label %bb.m, label %bb.q, !prof !309

bb.m:                                             ; preds = %bb.l
  %i.ct = icmp eq i64 %.076225, 50
  br i1 %i.ct, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cu = call noundef nonnull align 8 dereferenceable(80) ptr @_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr nonnull @.str.6, i64 18) ; 0 uses
  %i.cv = call noundef i64 @_ZN6hermes14numberToStringEdPcm(double noundef %i.cp, ptr noundef nonnull %i.a, i64 noundef 32) #17 ; 0 uses
  %i.cw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #18
  %i.cx = call noundef nonnull align 8 dereferenceable(80) ptr @_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr nonnull %i.a, i64 %i.cw) ; 0 uses
  %i.cy = call noundef nonnull align 8 dereferenceable(80) ptr @_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr nonnull @.str.7, i64 7) ; 0 uses
  br label %bb.ar

bb.o:                                             ; preds = %bb.m
  %i.cz = icmp ugt i64 %.076225, 50
  br i1 %i.cz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %spec.select = call i64 @llvm.umax.i64(i64 %.076225, i64 %i.ca)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.l
  %.177 = phi i64 [ %.076225, %bb.l ], [ %spec.select, %bb.p ], [ %.076225, %bb.o ] ; 2 uses
  %.sroa.0.0.copyload.i.i94 = load i64, ptr %1, align 8, !tbaa !62
  %i.da = and i64 %.sroa.0.0.copyload.i.i94, 281474976710655
  %i.db = inttoptr i64 %i.da to ptr               ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !315
  %i.de = add i64 %i.dd, %.177                    ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !7  ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !314
  %i.dj = load ptr, ptr %i.dg, align 8, !tbaa !10 ; 2 uses
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 4                 ; 2 uses
  %.not.i.i = icmp ult i64 %i.de, %i.dn
  br i1 %.not.i.i, label %_ZNSt6vectorIN6hermes2vm14StackTraceInfoESaIS2_EE2atEm.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.19, i64 noundef %i.de, i64 noundef %i.dn) #19
  unreachable

_ZNSt6vectorIN6hermes2vm14StackTraceInfoESaIS2_EE2atEm.exit: ; preds = %bb.q
  %i.do = load ptr, ptr %i.m, align 8, !tbaa !51
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.cb
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !330
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 128
  store i32 %i.bk, ptr %i.t, align 8, !tbaa !56
  store ptr %i.dr, ptr %i.s, align 8, !tbaa !55
  store ptr %i.bj, ptr %i.r, align 8, !tbaa !54
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %i.de ; 6 uses
  %i.dt = load i32, ptr %i.cc, align 4, !tbaa !52
  %i.du = zext i32 %i.dt to i64
  %i.dv = load i32, ptr %i.cd, align 8, !tbaa !53
  %i.dw = zext i32 %i.dv to i64                   ; 3 uses
  %i.dx = sub nsw i64 %i.du, %i.dw
  %i.dy = icmp ult i64 %i.dx, 8
  br i1 %i.dy, label %.thread.i102, label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit104

.thread.i102:                                     ; preds = %_ZNSt6vectorIN6hermes2vm14StackTraceInfoESaIS2_EE2atEm.exit
  %i.dz = add nuw nsw i64 %i.dw, 8
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull %i.ce, i64 noundef %i.dz, i64 noundef 2) #17
  %.pre7.pre.i.i103 = load i32, ptr %i.cd, align 8, !tbaa !53
  %.pre237 = zext i32 %.pre7.pre.i.i103 to i64
  br label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit104

_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit104: ; preds = %.thread.i102, %_ZNSt6vectorIN6hermes2vm14StackTraceInfoESaIS2_EE2atEm.exit
  %.pre-phi = phi i64 [ %.pre237, %.thread.i102 ], [ %i.dw, %_ZNSt6vectorIN6hermes2vm14StackTraceInfoESaIS2_EE2atEm.exit ]
  %i.ea = load ptr, ptr %3, align 8, !tbaa !51
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.ea, i64 %.pre-phi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.eb, ptr noundef nonnull align 2 dereferenceable(16) @.str.8, i64 16, i1 false)
  %.pre.i.i101 = load i32, ptr %i.cd, align 8, !tbaa !53
  %i.ec = add i32 %.pre.i.i101, 8
  store i32 %i.ec, ptr %i.cd, align 8, !tbaa !53
  %i.ed = call ptr @_ZN6hermes2vm7JSError22getFunctionNameAtIndexERNS0_7RuntimeENS0_6HandleIS1_EEm(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull readonly %1, i64 noundef %i.de)
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !70 ; 2 uses
  %i.ef = icmp ugt i64 %i.ee, -844424930131969
  %i.eg = and i64 %i.ee, 281474976710655          ; 2 uses
  %i.eh = icmp ne i64 %i.eg, 0
  %i.ei = and i1 %i.ef, %i.eh
  br i1 %i.ei, label %_ZN6hermes2vm7JSError25appendFunctionNameAtIndexERNS0_7RuntimeENS0_6HandleIS1_EEmRN4llvh15SmallVectorImplIDsEE.exit.thread, label %_ZN6hermes2vm7JSError25appendFunctionNameAtIndexERNS0_7RuntimeENS0_6HandleIS1_EEmRN4llvh15SmallVectorImplIDsEE.exit.preheader

_ZN6hermes2vm7JSError25appendFunctionNameAtIndexERNS0_7RuntimeENS0_6HandleIS1_EEmRN4llvh15SmallVectorImplIDsEE.exit.preheader: ; preds = %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit104
  %i.ej = load i32, ptr %i.cc, align 4, !tbaa !52
  %i.ek = zext i32 %i.ej to i64
  %i.el = load i32, ptr %i.cd, align 8, !tbaa !53
  %i.em = zext i32 %i.el to i64                   ; 3 uses
  %i.en = sub nsw i64 %i.ek, %i.em
  %i.eo = icmp ult i64 %i.en, 9
  br i1 %i.eo, label %.thread.i111, label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit113

_ZN6hermes2vm7JSError25appendFunctionNameAtIndexERNS0_7RuntimeENS0_6HandleIS1_EEmRN4llvh15SmallVectorImplIDsEE.exit.thread: ; preds = %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit104
  %i.ep = inttoptr i64 %i.eg to ptr
  call void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8) %i.ep, ptr noundef nonnull align 8 dereferenceable(16) %3) #17
  br label %bb.s

.thread.i111:                                     ; preds = %_ZN6hermes2vm7JSError25appendFunctionNameAtIndexERNS0_7RuntimeENS0_6HandleIS1_EEmRN4llvh15SmallVectorImplIDsEE.exit.preheader
  %i.eq = add nuw nsw i64 %i.em, 9
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull %i.ce, i64 noundef %i.eq, i64 noundef 2) #17
  %.pre7.pre.i.i112 = load i32, ptr %i.cd, align 8, !tbaa !53
  %.pre244 = zext i32 %.pre7.pre.i.i112 to i64
  br label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit113

_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit113: ; preds = %.thread.i111, %_ZN6hermes2vm7JSError25appendFunctionNameAtIndexERNS0_7RuntimeENS0_6HandleIS1_EEmRN4llvh15SmallVectorImplIDsEE.exit.preheader
  %.pre-phi245 = phi i64 [ %.pre244, %.thread.i111 ], [ %i.em, %_ZN6hermes2vm7JSError25appendFunctionNameAtIndexERNS0_7RuntimeENS0_6HandleIS1_EEmRN4llvh15SmallVectorImplIDsEE.exit.preheader ]
  %i.er = load ptr, ptr %3, align 8, !tbaa !51
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.er, i64 %.pre-phi245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.es, ptr noundef nonnull align 2 dereferenceable(18) @.str.9, i64 18, i1 false)
  %.pre.i.i110 = load i32, ptr %i.cd, align 8, !tbaa !53
  %i.et = add i32 %.pre.i.i110, 9
  store i32 %i.et, ptr %i.cd, align 8, !tbaa !53
  br label %bb.s

bb.s:                                             ; preds = %_ZN6hermes2vm7JSError25appendFunctionNameAtIndexERNS0_7RuntimeENS0_6HandleIS1_EEmRN4llvh15SmallVectorImplIDsEE.exit.thread, %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit113
  %i.eu = load ptr, ptr %i.ds, align 8, !tbaa !338 ; 3 uses
  %.not = icmp eq ptr %i.eu, null
  br i1 %.not, label %.preheader.preheader, label %bb.t

.preheader.preheader:                             ; preds = %bb.s
  %i.ev = load i32, ptr %i.cc, align 4, !tbaa !52
  %i.ew = zext i32 %i.ev to i64
  %i.ex = load i32, ptr %i.cd, align 8, !tbaa !53
  %i.ey = zext i32 %i.ex to i64                   ; 3 uses
  %i.ez = sub nsw i64 %i.ew, %i.ey
  %i.fa = icmp ult i64 %i.ez, 9
  br i1 %i.fa, label %.thread.i120, label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit122

.thread.i120:                                     ; preds = %.preheader.preheader
  %i.fb = add nuw nsw i64 %i.ey, 9
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull %i.ce, i64 noundef %i.fb, i64 noundef 2) #17
  %.pre7.pre.i.i121 = load i32, ptr %i.cd, align 8, !tbaa !53
  %.pre238 = zext i32 %.pre7.pre.i.i121 to i64
  br label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit122

_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit122: ; preds = %.thread.i120, %.preheader.preheader
  %.pre-phi239 = phi i64 [ %.pre238, %.thread.i120 ], [ %i.ey, %.preheader.preheader ]
  %i.fc = load ptr, ptr %3, align 8, !tbaa !51
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %i.fc, i64 %.pre-phi239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.fd, ptr noundef nonnull align 2 dereferenceable(18) @.str.10, i64 18, i1 false)
  %.pre.i.i119 = load i32, ptr %i.cd, align 8, !tbaa !53
  %i.fe = add i32 %.pre.i.i119, 9
  store i32 %i.fe, ptr %i.cd, align 8, !tbaa !53
  br label %bb.aq

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !340
  call void @llvm.experimental.noalias.scope.decl(metadata !341)
  %i.fh = call i64 @_ZNK6hermes2vm9CodeBlock29getDebugSourceLocationsOffsetEv(ptr noundef nonnull align 8 dereferenceable(40) %i.eu) #17, !noalias !341 ; 2 uses
  %i.fi = and i64 %i.fh, 4294967296
  %.not.i = icmp eq i64 %i.fi, 0
  br i1 %.not.i, label %_ZN6hermes2vm7JSError12getDebugInfoEPNS0_9CodeBlockEj.exit.thread, label %bb.u

_ZN6hermes2vm7JSError12getDebugInfoEPNS0_9CodeBlockEj.exit.thread: ; preds = %bb.t
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(33) %6, i8 0, i64 28, i1 false), !alias.scope !341
  store i32 -1, ptr %i.cf, align 4, !tbaa !344, !alias.scope !341
  store i8 0, ptr %i.cg, align 4, !tbaa !346, !alias.scope !341
  br label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.fj = load ptr, ptr %i.eu, align 8, !tbaa !348, !noalias !341
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 80
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !351, !noalias !341 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 240 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !354, !noalias !341 ; 2 uses
  %.not.i.i123 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i123, label %bb.v, label %_ZN6hermes2vm7JSError12getDebugInfoEPNS0_9CodeBlockEj.exit

bb.v:                                             ; preds = %bb.u
  %i.fo = load ptr, ptr %i.fl, align 8, !tbaa !368, !noalias !341
  %i.fp = load ptr, ptr %i.fo, align 8, !noalias !341
  call void %i.fp(ptr noundef nonnull align 8 dereferenceable(280) %i.fl) #17, !noalias !341, !inline_history !370
  %.pre.i.i124 = load ptr, ptr %i.fm, align 8, !tbaa !354, !noalias !341
  br label %_ZN6hermes2vm7JSError12getDebugInfoEPNS0_9CodeBlockEj.exit

_ZN6hermes2vm7JSError12getDebugInfoEPNS0_9CodeBlockEj.exit: ; preds = %bb.u, %bb.v
  %i.fq = phi ptr [ %.pre.i.i124, %bb.v ], [ %i.fn, %bb.u ]
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.fh to i32
  call void @_ZNK6hermes3hbc9DebugInfo21getLocationForAddressEjj(ptr dead_on_unwind nonnull writable sret(%"class.hermes::OptValue.211") align 4 %6, ptr noundef nonnull align 8 dereferenceable(136) %i.fq, i32 noundef %.sroa.0.0.extract.trunc.i, i32 noundef %i.fg) #17
  %.pre = load i8, ptr %i.cg, align 4, !tbaa !346, !range !17
  %i.fr = trunc nuw i8 %.pre to i1
  br i1 %i.fr, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZN6hermes2vm7JSError12getDebugInfoEPNS0_9CodeBlockEj.exit
  %i.fs = load i32, ptr %i.cj, align 4, !tbaa !371
  %i.ft = load i32, ptr %i.ck, align 4, !tbaa !372
  br label %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i127

bb.x:                                             ; preds = %_ZN6hermes2vm7JSError12getDebugInfoEPNS0_9CodeBlockEj.exit.thread, %_ZN6hermes2vm7JSError12getDebugInfoEPNS0_9CodeBlockEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.fu = load ptr, ptr %i.ds, align 8, !tbaa !373
  store ptr %i.fu, ptr %8, align 8, !tbaa !374
  store i32 0, ptr %i.ch, align 8, !tbaa !376
  call void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes2vm9CodeBlockEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E11try_emplaceIJjEEESt4pairINS_16DenseMapIteratorIS6_jS8_SB_Lb0EEEbEOS6_DpOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.289") align 8 %7, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(4) %i.ch)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.fv = load ptr, ptr %7, align 8, !tbaa !377
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 2 uses
  %i.fx = load i8, ptr %i.ci, align 8, !tbaa !379, !range !17, !noundef !18
  %i.fy = trunc nuw i8 %i.fx to i1
  br i1 %i.fy, label %bb.y, label %._crit_edge232

._crit_edge232:                                   ; preds = %bb.x
  %.pre233 = load i32, ptr %i.fw, align 4, !tbaa !3
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fz = load ptr, ptr %i.ds, align 8, !tbaa !338
  %i.ga = call noundef i32 @_ZNK6hermes2vm9CodeBlock16getVirtualOffsetEv(ptr noundef nonnull align 8 dereferenceable(40) %i.fz) #17 ; 2 uses
  store i32 %i.ga, ptr %i.fw, align 4, !tbaa !3
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge232, %bb.y
  %i.gb = phi i32 [ %.pre233, %._crit_edge232 ], [ %i.ga, %bb.y ]
  %i.gc = load ptr, ptr %i.ds, align 8, !tbaa !338
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !348
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 80
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !351
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 184
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !381
  %i.gi = add i32 %i.gh, 1
  %i.gj = load i32, ptr %i.ff, align 8, !tbaa !340
  %i.gk = add i32 %i.gb, %i.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i127

_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i127:     ; preds = %bb.z, %bb.w
  %i.gl = phi i1 [ true, %bb.w ], [ false, %bb.z ]
  %.075 = phi i32 [ %i.fs, %bb.w ], [ %i.gi, %bb.z ]
  %.074 = phi i32 [ %i.ft, %bb.w ], [ %i.gk, %bb.z ]
  %i.gm = load i32, ptr %i.cc, align 4, !tbaa !52
  %i.gn = zext i32 %i.gm to i64
  %i.go = load i32, ptr %i.cd, align 8, !tbaa !53
  %i.gp = zext i32 %i.go to i64                   ; 3 uses
  %i.gq = sub nsw i64 %i.gn, %i.gp
  %i.gr = icmp ult i64 %i.gq, 2
  br i1 %i.gr, label %.thread.i131, label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit133

.thread.i131:                                     ; preds = %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i127
  %i.gs = add nuw nsw i64 %i.gp, 2
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull %i.ce, i64 noundef %i.gs, i64 noundef 2) #17
  %.pre7.pre.i.i132 = load i32, ptr %i.cd, align 8, !tbaa !53
  %.pre240 = zext i32 %.pre7.pre.i.i132 to i64
  br label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit133

_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit133: ; preds = %.thread.i131, %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i127
  %.pre-phi241 = phi i64 [ %.pre240, %.thread.i131 ], [ %i.gp, %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i127 ]
  %i.gt = load ptr, ptr %3, align 8, !tbaa !51
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr %i.gt, i64 %.pre-phi241
  store i32 2621472, ptr %i.gu, align 1
  %.pre.i.i130 = load i32, ptr %i.cd, align 8, !tbaa !53
  %i.gv = add i32 %.pre.i.i130, 2                 ; 3 uses
  store i32 %i.gv, ptr %i.cd, align 8, !tbaa !53
  br i1 %i.gl, label %bb.aa, label %.preheader222.preheader

.preheader222.preheader:                          ; preds = %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit133
  %i.gw = load i32, ptr %i.cc, align 4, !tbaa !52
  %i.gx = zext i32 %i.gw to i64
  %i.gy = zext i32 %i.gv to i64                   ; 3 uses
  %i.gz = sub nsw i64 %i.gx, %i.gy
  %i.ha = icmp ult i64 %i.gz, 11
  br i1 %i.ha, label %.thread.i140, label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit142

.thread.i140:                                     ; preds = %.preheader222.preheader
  %i.hb = add nuw nsw i64 %i.gy, 11
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull %i.ce, i64 noundef %i.hb, i64 noundef 2) #17
  %.pre7.pre.i.i141 = load i32, ptr %i.cd, align 8, !tbaa !53
  %.pre242 = zext i32 %.pre7.pre.i.i141 to i64
  br label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit142

_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit142: ; preds = %.thread.i140, %.preheader222.preheader
  %.pre-phi243 = phi i64 [ %.pre242, %.thread.i140 ], [ %i.gy, %.preheader222.preheader ]
  %i.hc = load ptr, ptr %3, align 8, !tbaa !51
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %i.hc, i64 %.pre-phi243
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.hd, ptr noundef nonnull align 2 dereferenceable(22) @.str.12, i64 22, i1 false)
  %.pre.i.i139 = load i32, ptr %i.cd, align 8, !tbaa !53
  %i.he = add i32 %.pre.i.i139, 11                ; 2 uses
  store i32 %i.he, ptr %i.cd, align 8, !tbaa !53
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit142, %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit133
  %i.hf = phi i32 [ %i.he, %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit142 ], [ %i.gv, %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit133 ] ; 2 uses
  %i.hg = load ptr, ptr %i.ds, align 8, !tbaa !338
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !348 ; 3 uses
  %i.hi = load i8, ptr %i.cg, align 4, !tbaa !346, !range !17, !noundef !18
  %i.hj = trunc nuw i8 %i.hi to i1
  br i1 %i.hj, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 80
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !351 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 240 ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !354 ; 2 uses
  %.not.i143 = icmp eq ptr %i.hn, null
  br i1 %.not.i143, label %bb.ac, label %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ho = load ptr, ptr %i.hl, align 8, !tbaa !368
  %i.hp = load ptr, ptr %i.ho, align 8
  call void %i.hp(ptr noundef nonnull align 8 dereferenceable(280) %i.hl) #17, !inline_history !382
  %.pre.i = load ptr, ptr %i.hm, align 8, !tbaa !354
  br label %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit

_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit: ; preds = %bb.ab, %bb.ac
  %i.hq = phi ptr [ %.pre.i, %bb.ac ], [ %i.hn, %bb.ab ]
  %i.hr = load i32, ptr %i.cl, align 4, !tbaa !383
  call void @_ZNK6hermes3hbc9DebugInfo15getFilenameByIDB5cxx11Ej(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(136) %i.hq, i32 noundef %i.hr)
  %i.hs = load ptr, ptr %9, align 8, !tbaa !384   ; 8 uses
  %i.ht = load i64, ptr %i.cm, align 8, !tbaa !385 ; 17 uses
  %i.hu = load i32, ptr %i.cc, align 4, !tbaa !52
  %i.hv = zext i32 %i.hu to i64
  %i.hw = load i32, ptr %i.cd, align 8, !tbaa !53 ; 2 uses
  %i.hx = zext i32 %i.hw to i64                   ; 3 uses
  %i.hy = sub nsw i64 %i.hv, %i.hx
  %i.hz = icmp ugt i64 %i.ht, %i.hy
  br i1 %i.hz, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit
  %i.ia = add i64 %i.ht, %i.hx
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull %i.ce, i64 noundef %i.ia, i64 noundef 2) #17
  %.pre.i.i144 = load i32, ptr %i.cd, align 8, !tbaa !53 ; 2 uses
  %.pre7.i.i = zext i32 %.pre.i.i144 to i64
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit
  %.pre-phi.i.i = phi i64 [ %.pre7.i.i, %bb.ad ], [ %i.hx, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit ] ; 2 uses
  %i.ib = phi i32 [ %.pre.i.i144, %bb.ad ], [ %i.hw, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit ]
  %i.ic = icmp sgt i64 %i.ht, 0
  br i1 %i.ic, label %iter.check355, label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh9StringRefE.exit

iter.check355:                                    ; preds = %bb.ae
  %i.id = load ptr, ptr %3, align 8, !tbaa !51    ; 2 uses
  %i.ie = getelementptr [2 x i8], ptr %i.id, i64 %.pre-phi.i.i ; 7 uses
  %min.iters.check337 = icmp ult i64 %i.ht, 4
  br i1 %min.iters.check337, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.memcheck331

vector.memcheck331:                               ; preds = %iter.check355
  %i.if = add nuw i64 %.pre-phi.i.i, %i.ht
  %i.ig = shl i64 %i.if, 1
  %scevgep332.a = getelementptr i8, ptr %i.id, i64 %i.ig
  %scevgep333 = getelementptr i8, ptr %i.hs, i64 %i.ht
  %bound0334 = icmp ult ptr %i.ie, %scevgep333
  %bound1335 = icmp ult ptr %i.hs, %scevgep332.a
  %found.conflict336 = and i1 %bound0334, %bound1335
  br i1 %found.conflict336, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check338

vector.main.loop.iter.check338:                   ; preds = %vector.memcheck331
  %min.iters.check339 = icmp ult i64 %i.ht, 16
  br i1 %min.iters.check339, label %vec.epilog.ph359, label %vector.ph340

vector.ph340:                                     ; preds = %vector.main.loop.iter.check338
  %n.mod.vf341 = and i64 %i.ht, 12
  %n.vec342 = and i64 %i.ht, 9223372036854775792  ; 5 uses
  %i.ih = and i64 %i.ht, 15
  %i.ii = shl nuw i64 %n.vec342, 1
  %i.ij = getelementptr i8, ptr %i.ie, i64 %i.ii
  %i.ik = getelementptr i8, ptr %i.hs, i64 %n.vec342
  br label %vector.body343

vector.body343:                                   ; preds = %vector.body343, %vector.ph340
end_hunk_0
