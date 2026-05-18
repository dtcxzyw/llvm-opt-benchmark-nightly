inline.NumInlined: 428
inline.NumDeleted: 148
begin_hunk_0_@_ZN6Assimp16AssbinFileWriter17WriteBinaryCameraEPNS_8IOStreamEPK8aiCamera:bb.a
  %i.n = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #23
          to label %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i32 unwind label %bb.j ; 3 uses

_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i32:    ; preds = %bb.b
  store ptr %i.n, ptr %i.a, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(4096) %i.n, ptr noundef nonnull align 1 dereferenceable(4096) %i.h, i64 4096, i1 false)
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #22
  store i64 %i.m, ptr %i.d, align 8
  br label %_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit

_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit: ; preds = %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i32, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i
  %i.o = phi i64 [ %i.m, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i32 ], [ 4096, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i ] ; 4 uses
  %i.p = phi ptr [ %i.n, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i32 ], [ %i.h, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 1 %i.j, i64 %i.i, i1 false)
  %i.r = add nuw nsw i64 %i.i, 4                  ; 2 uses
  store i64 %i.r, ptr %i.g, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 1028
  %i.t = add nuw nsw i64 %i.i, 8                  ; 2 uses
  %i.u = icmp samesign ugt i64 %i.t, %i.o
  br i1 %i.u, label %bb.c, label %.noexc11

bb.c:                                             ; preds = %_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit
  %i.v = lshr i64 %i.o, 1
  %i.w = add nuw nsw i64 %i.v, %i.o
  %i.x = tail call i64 @llvm.umax.i64(i64 %i.t, i64 %i.w) ; 2 uses
  %i.y = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.x) #23
          to label %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i34 unwind label %bb.j ; 3 uses

_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i34:    ; preds = %bb.c
  store ptr %i.y, ptr %i.a, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.y, ptr noundef nonnull align 1 dereferenceable(1) %i.p, i64 %i.o, i1 false)
  tail call void @_ZdaPv(ptr noundef nonnull %i.p) #22
  store i64 %i.x, ptr %i.d, align 8
  br label %.noexc11

.noexc11:                                         ; preds = %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i34, %_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit
  %i.z = phi ptr [ %i.y, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i34 ], [ %i.p, %_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.r
  %i.ab = load i32, ptr %i.s, align 4
  store i32 %i.ab, ptr %i.aa, align 1
  %i.ac = load i64, ptr %i.g, align 8
  %i.ad = add i64 %i.ac, 4
  store i64 %i.ad, ptr %i.g, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 1032
  %i.af = load ptr, ptr %3, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = invoke noundef i64 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.ae, i64 noundef 4, i64 noundef 1)
          to label %.noexc12 unwind label %bb.j, !inline_history !29 ; 0 uses

.noexc12:                                         ; preds = %.noexc11
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 1036
  %i.ak = load ptr, ptr %3, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = invoke noundef i64 %i.am(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.aj, i64 noundef 4, i64 noundef 1)
          to label %_ZN6Assimp5WriteI10aiVector3tIfEEEmPNS_8IOStreamERKT_.exit unwind label %bb.j, !inline_history !29 ; 0 uses

_ZN6Assimp5WriteI10aiVector3tIfEEEmPNS_8IOStreamERKT_.exit: ; preds = %.noexc12
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 1052
  %i.ap = load ptr, ptr %3, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = invoke noundef i64 %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.ao, i64 noundef 4, i64 noundef 1)
          to label %.noexc14 unwind label %bb.j, !inline_history !29 ; 0 uses

.noexc14:                                         ; preds = %_ZN6Assimp5WriteI10aiVector3tIfEEEmPNS_8IOStreamERKT_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 1056
  %i.au = load ptr, ptr %3, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = invoke noundef i64 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.at, i64 noundef 4, i64 noundef 1)
          to label %.noexc15 unwind label %bb.j, !inline_history !29 ; 0 uses

.noexc15:                                         ; preds = %.noexc14
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 1060
  %i.az = load ptr, ptr %3, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = invoke noundef i64 %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.ay, i64 noundef 4, i64 noundef 1)
          to label %_ZN6Assimp5WriteI10aiVector3tIfEEEmPNS_8IOStreamERKT_.exit17 unwind label %bb.j, !inline_history !29 ; 0 uses

_ZN6Assimp5WriteI10aiVector3tIfEEEmPNS_8IOStreamERKT_.exit17: ; preds = %.noexc15
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 1040
  %i.be = load ptr, ptr %3, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = invoke noundef i64 %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.bd, i64 noundef 4, i64 noundef 1)
          to label %.noexc18 unwind label %bb.j, !inline_history !29 ; 0 uses

.noexc18:                                         ; preds = %_ZN6Assimp5WriteI10aiVector3tIfEEEmPNS_8IOStreamERKT_.exit17
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 1044
  %i.bj = load ptr, ptr %3, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = invoke noundef i64 %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.bi, i64 noundef 4, i64 noundef 1)
          to label %.noexc19 unwind label %bb.j, !inline_history !29 ; 0 uses

.noexc19:                                         ; preds = %.noexc18
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 1048
  %i.bo = load ptr, ptr %3, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = invoke noundef i64 %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.bn, i64 noundef 4, i64 noundef 1)
          to label %_ZN6Assimp5WriteI10aiVector3tIfEEEmPNS_8IOStreamERKT_.exit21 unwind label %bb.j, !inline_history !29 ; 0 uses

_ZN6Assimp5WriteI10aiVector3tIfEEEmPNS_8IOStreamERKT_.exit21: ; preds = %.noexc19
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 1064
  %i.bt = load ptr, ptr %3, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = invoke noundef i64 %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.bs, i64 noundef 4, i64 noundef 1)
          to label %_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit unwind label %bb.j, !inline_history !46 ; 0 uses

_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit:     ; preds = %_ZN6Assimp5WriteI10aiVector3tIfEEEmPNS_8IOStreamERKT_.exit21
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 1068
  %i.by = load ptr, ptr %3, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = invoke noundef i64 %i.ca(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.bx, i64 noundef 4, i64 noundef 1)
          to label %_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit24 unwind label %bb.j, !inline_history !46 ; 0 uses

_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit24:   ; preds = %_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 1072
  %i.cd = load ptr, ptr %3, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = invoke noundef i64 %i.cf(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.cc, i64 noundef 4, i64 noundef 1)
          to label %_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit26 unwind label %bb.j, !inline_history !46 ; 0 uses

_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit26:   ; preds = %_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit24
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 1076
  %i.ci = load ptr, ptr %3, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = invoke noundef i64 %i.ck(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.ch, i64 noundef 4, i64 noundef 1)
          to label %_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit28 unwind label %bb.j, !inline_history !46 ; 0 uses

_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit28:   ; preds = %_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit26
  %i.cm = load ptr, ptr %i.c, align 8             ; 3 uses
  %.not.i = icmp eq ptr %i.cm, null
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit28
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = invoke noundef i64 %i.cp(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef nonnull %i.b, i64 noundef 4, i64 noundef 1)
          to label %bb.e unwind label %bb.i       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.cr = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = invoke noundef i64 %i.cu(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr noundef nonnull %i.g, i64 noundef 4, i64 noundef 1)
          to label %bb.f unwind label %bb.i       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.cw = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.cx = load ptr, ptr %i.a, align 8
  %i.cy = load i64, ptr %i.g, align 8
  %i.cz = load ptr, ptr %i.cw, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = invoke noundef i64 %i.db(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, ptr noundef %i.cx, i64 noundef 1, i64 noundef %i.cy)
          to label %bb.g unwind label %bb.i       ; 0 uses

bb.g:                                             ; preds = %bb.f, %_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit28
  %i.dd = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not2.i = icmp eq ptr %i.dd, null
  br i1 %.not2.i, label %_ZN6Assimp17AssbinChunkWriterD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.dd) #22
  br label %_ZN6Assimp17AssbinChunkWriterD2Ev.exit

bb.i:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  call void @__clang_call_terminate(ptr %i.df) #24
  unreachable

_ZN6Assimp17AssbinChunkWriterD2Ev.exit:           ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

bb.j:                                             ; preds = %bb.c, %bb.b, %bb.a, %_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit26, %_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit24, %_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit, %_ZN6Assimp5WriteI10aiVector3tIfEEEmPNS_8IOStreamERKT_.exit21, %.noexc19, %.noexc18, %_ZN6Assimp5WriteI10aiVector3tIfEEEmPNS_8IOStreamERKT_.exit17, %.noexc15, %.noexc14, %_ZN6Assimp5WriteI10aiVector3tIfEEEmPNS_8IOStreamERKT_.exit, %.noexc12, %.noexc11
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp17AssbinChunkWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %i.dg
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN6Assimp11WriteBoundsI10aiVector3tIfEEEmPNS_8IOStreamEPKT_j(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #16 comdat {
bb.a:
  %3 = alloca %class.aiVector3t, align 8          ; 7 uses
  %4 = alloca %class.aiVector3t, align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store <2 x float> splat (float -1.000000e+10), ptr %4, align 8
  store float -1.000000e+10, ptr %i.b, align 8
  store <2 x float> splat (float 1.000000e+10), ptr %3, align 8
  store float 1.000000e+10, ptr %i.a, align 8
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %_ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext i32 %2 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %i.c = phi float [ -1.000000e+10, %.lr.ph.preheader.i ], [ %i.r, %.lr.ph.i ] ; 2 uses
  %i.d = phi float [ 1.000000e+10, %.lr.ph.preheader.i ], [ %i.k, %.lr.ph.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.e = phi <2 x float> [ splat (float -1.000000e+10), %.lr.ph.preheader.i ], [ %i.p, %.lr.ph.i ] ; 2 uses
  %i.f = phi <2 x float> [ splat (float 1.000000e+10), %.lr.ph.preheader.i ], [ %i.n, %.lr.ph.i ] ; 2 uses
  %i.g = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv.i ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load float, ptr %i.h, align 4            ; 4 uses
  %i.j = fcmp olt float %i.d, %i.i
  %i.k = select i1 %i.j, float %i.d, float %i.i   ; 2 uses
  %i.l = load <2 x float>, ptr %i.g, align 4      ; 4 uses
  %i.m = fcmp olt <2 x float> %i.f, %i.l
  %i.n = select <2 x i1> %i.m, <2 x float> %i.f, <2 x float> %i.l ; 2 uses
  %i.o = fcmp olt <2 x float> %i.l, %i.e
  %i.p = select <2 x i1> %i.o, <2 x float> %i.e, <2 x float> %i.l ; 2 uses
  %i.q = fcmp olt float %i.i, %i.c
  %i.r = select i1 %i.q, float %i.c, float %i.i   ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit.loopexit, label %.lr.ph.i, !llvm.loop !48

_ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit.loopexit: ; preds = %.lr.ph.i
  store <2 x float> %i.n, ptr %3, align 8
  store <2 x float> %i.p, ptr %4, align 8
  store float %i.k, ptr %i.a, align 8
  store float %i.r, ptr %i.b, align 8
  br label %_ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit

_ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit: ; preds = %_ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit.loopexit, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.u = load ptr, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call noundef i64 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 noundef 4, i64 noundef 1), !inline_history !49 ; 0 uses
  %i.y = load ptr, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = call noundef i64 %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.t, i64 noundef 4, i64 noundef 1), !inline_history !49 ; 0 uses
  %i.ac = load ptr, ptr %0, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call noundef i64 %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i64 noundef 4, i64 noundef 1), !inline_history !49 ; 0 uses
  %i.ag = load ptr, ptr %0, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = call noundef i64 %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(12) %4, i64 noundef 4, i64 noundef 1), !inline_history !49 ; 0 uses
  %i.ak = load ptr, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = call noundef i64 %i.am(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.s, i64 noundef 4, i64 noundef 1), !inline_history !49 ; 0 uses
  %i.ao = load ptr, ptr %0, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef i64 %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i64 noundef 4, i64 noundef 1), !inline_history !49 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret i64 24
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN6Assimp11WriteBoundsI9aiColor4tIfEEEmPNS_8IOStreamEPKT_j(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #16 comdat {
bb.a:
  %3 = alloca %class.aiColor4t, align 16          ; 8 uses
  %4 = alloca %class.aiColor4t, align 16          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store <4 x float> splat (float -1.000000e+10), ptr %4, align 16
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store <4 x float> splat (float 1.000000e+10), ptr %3, align 16
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %_ZN6Assimp11ArrayBoundsI9aiColor4tIfEEEvPKT_jRS3_S6_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext i32 %2 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.a = phi <2 x float> [ splat (float -1.000000e+10), %.lr.ph.preheader.i ], [ %i.p, %.lr.ph.i ] ; 2 uses
  %i.b = phi <2 x float> [ splat (float -1.000000e+10), %.lr.ph.preheader.i ], [ %i.k, %.lr.ph.i ] ; 2 uses
  %i.c = phi <2 x float> [ splat (float 1.000000e+10), %.lr.ph.preheader.i ], [ %i.n, %.lr.ph.i ] ; 2 uses
  %i.d = phi <2 x float> [ splat (float 1.000000e+10), %.lr.ph.preheader.i ], [ %i.i, %.lr.ph.i ] ; 2 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv.i ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load <2 x float>, ptr %i.e, align 4      ; 4 uses
  %i.h = fcmp olt <2 x float> %i.d, %i.g
  %i.i = select <2 x i1> %i.h, <2 x float> %i.d, <2 x float> %i.g ; 2 uses
  %i.j = fcmp olt <2 x float> %i.g, %i.b
  %i.k = select <2 x i1> %i.j, <2 x float> %i.b, <2 x float> %i.g ; 2 uses
  %i.l = load <2 x float>, ptr %i.f, align 4      ; 4 uses
  %i.m = fcmp olt <2 x float> %i.c, %i.l
  %i.n = select <2 x i1> %i.m, <2 x float> %i.c, <2 x float> %i.l ; 2 uses
  %i.o = fcmp olt <2 x float> %i.l, %i.a
  %i.p = select <2 x i1> %i.o, <2 x float> %i.a, <2 x float> %i.l ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6Assimp11ArrayBoundsI9aiColor4tIfEEEvPKT_jRS3_S6_.exit.loopexit, label %.lr.ph.i, !llvm.loop !50

_ZN6Assimp11ArrayBoundsI9aiColor4tIfEEEvPKT_jRS3_S6_.exit.loopexit: ; preds = %.lr.ph.i
  store <2 x float> %i.i, ptr %3, align 16
  store <2 x float> %i.n, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  store <2 x float> %i.k, ptr %4, align 16
  store <2 x float> %i.p, ptr %.sroa.54.0..sroa_idx.i.i, align 8
  br label %_ZN6Assimp11ArrayBoundsI9aiColor4tIfEEEvPKT_jRS3_S6_.exit

_ZN6Assimp11ArrayBoundsI9aiColor4tIfEEEvPKT_jRS3_S6_.exit: ; preds = %_ZN6Assimp11ArrayBoundsI9aiColor4tIfEEEvPKT_jRS3_S6_.exit.loopexit, %bb.a
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 12
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.q = load ptr, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = call noundef i64 %i.s(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 noundef 4, i64 noundef 1), !inline_history !51 ; 0 uses
  %i.u = load ptr, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call noundef i64 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.4.0..sroa_idx.i.i, i64 noundef 4, i64 noundef 1), !inline_history !51 ; 0 uses
  %i.y = load ptr, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = call noundef i64 %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.5.0..sroa_idx.i.i, i64 noundef 4, i64 noundef 1), !inline_history !51 ; 0 uses
  %i.ac = load ptr, ptr %0, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call noundef i64 %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.6.0..sroa_idx.i.i, i64 noundef 4, i64 noundef 1), !inline_history !51 ; 0 uses
  %i.ag = load ptr, ptr %0, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = call noundef i64 %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 noundef 4, i64 noundef 1), !inline_history !51 ; 0 uses
  %i.ak = load ptr, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = call noundef i64 %i.am(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.43.0..sroa_idx.i.i, i64 noundef 4, i64 noundef 1), !inline_history !51 ; 0 uses
  %i.ao = load ptr, ptr %0, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef i64 %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.54.0..sroa_idx.i.i, i64 noundef 4, i64 noundef 1), !inline_history !51 ; 0 uses
  %i.as = load ptr, ptr %0, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call noundef i64 %i.au(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.65.0..sroa_idx.i.i, i64 noundef 4, i64 noundef 1), !inline_history !51 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret i64 32
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp16AssbinFileWriter15WriteBinaryBoneEPNS_8IOStreamEPK6aiBone(ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %3 = alloca %struct.aiVertexWeight, align 8     ; 5 uses
  %4 = alloca %struct.aiVertexWeight, align 8     ; 5 uses
  %5 = alloca %"class.Assimp::AssbinChunkWriter", align 8 ; 38 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6Assimp17AssbinChunkWriterE, i64 16), ptr %5, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store ptr null, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i32 4666, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store i64 4096, ptr %i.h, align 8
  %i.i = load i32, ptr %2, align 4                ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 6 uses
  %i.k = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #23
          to label %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp ; 5 uses

_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i:      ; preds = %bb.a
  store ptr %i.k, ptr %i.d, align 8
  store i64 4096, ptr %i.g, align 8
  store i32 %i.i, ptr %i.k, align 1
  store i64 4, ptr %i.j, align 8
  %i.l = zext i32 %i.i to i64                     ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.n = icmp ugt i32 %i.i, 4092
  br i1 %i.n, label %bb.b, label %_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit

bb.b:                                             ; preds = %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i
  %i.o = tail call i64 @llvm.umax.i64(i64 %i.l, i64 6140)
  %i.p = add nuw nsw i64 %i.o, 4                  ; 3 uses
  %i.q = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #23
          to label %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i62 unwind label %.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i62:    ; preds = %bb.b
  store ptr %i.q, ptr %i.d, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(4096) %i.q, ptr noundef nonnull align 1 dereferenceable(4096) %i.k, i64 4096, i1 false)
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #22
  store i64 %i.p, ptr %i.g, align 8
  br label %_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit

_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit: ; preds = %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i62, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i
  %i.r = phi i64 [ %i.p, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i62 ], [ 4096, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i ] ; 4 uses
  %i.s = phi ptr [ %i.q, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i62 ], [ %i.k, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull align 1 %i.m, i64 %i.l, i1 false)
  %i.u = add nuw nsw i64 %i.l, 4                  ; 2 uses
  store i64 %i.u, ptr %i.j, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 1028 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4
  %i.x = add nuw nsw i64 %i.l, 8                  ; 2 uses
  %i.y = icmp samesign ugt i64 %i.x, %i.r
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit
  %i.z = lshr i64 %i.r, 1
  %i.aa = add nuw nsw i64 %i.z, %i.r
  %i.ab = tail call i64 @llvm.umax.i64(i64 %i.x, i64 %i.aa) ; 2 uses
  %i.ac = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ab) #23
          to label %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i78 unwind label %.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i78:    ; preds = %bb.c
  store ptr %i.ac, ptr %i.d, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ac, ptr noundef nonnull align 1 dereferenceable(1) %i.s, i64 %i.r, i1 false)
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #22
  store i64 %i.ab, ptr %i.g, align 8
  br label %bb.d
end_hunk_0
begin_hunk_1_@_ZN6Assimp16AssbinFileWriter19WriteBinaryNodeAnimEPNS_8IOStreamEPK10aiNodeAnim:bb.a
  br i1 %.not28, label %_ZN6Assimp10WriteArrayI9aiQuatKeyEEmPNS_8IOStreamEPKT_j.exit, label %bb.n

bb.n:                                             ; preds = %_ZN6Assimp10WriteArrayI11aiVectorKeyEEmPNS_8IOStreamEPKT_j.exit
  %i.ck = load i8, ptr %0, align 1, !range !4, !noundef !5
  %i.cl = trunc nuw i8 %i.ck to i1
  %i.cm = load i32, ptr %i.ai, align 8            ; 3 uses
  br i1 %i.cl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cn = invoke noundef i64 @_ZN6Assimp11WriteBoundsI9aiQuatKeyEEmPNS_8IOStreamEPKT_j(ptr noundef nonnull %3, ptr noundef nonnull %i.cj, i32 noundef %i.cm)
          to label %_ZN6Assimp10WriteArrayI9aiQuatKeyEEmPNS_8IOStreamEPKT_j.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.p:                                             ; preds = %bb.n
  %.not.i45 = icmp eq i32 %i.cm, 0
  br i1 %.not.i45, label %_ZN6Assimp10WriteArrayI9aiQuatKeyEEmPNS_8IOStreamEPKT_j.exit, label %.lr.ph.preheader.i46

.lr.ph.preheader.i46:                             ; preds = %bb.p
  %wide.trip.count.i47 = zext i32 %i.cm to i64
  br label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %.noexc58, %.lr.ph.preheader.i46
  %indvars.iv.i49 = phi i64 [ 0, %.lr.ph.preheader.i46 ], [ %indvars.iv.next.i50, %.noexc58 ] ; 2 uses
  %i.co = getelementptr inbounds nuw [32 x i8], ptr %i.cj, i64 %indvars.iv.i49 ; 5 uses
  %i.cp = load ptr, ptr %3, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = invoke noundef i64 %i.cr(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(28) %i.co, i64 noundef 8, i64 noundef 1)
          to label %.noexc54 unwind label %.loopexit.split-lp.loopexit, !inline_history !58 ; 0 uses

.noexc54:                                         ; preds = %.lr.ph.i48
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cu = load ptr, ptr %3, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = invoke noundef i64 %i.cw(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(16) %i.ct, i64 noundef 4, i64 noundef 1)
          to label %.noexc55 unwind label %.loopexit.split-lp.loopexit, !inline_history !58 ; 0 uses

.noexc55:                                         ; preds = %.noexc54
  %i.cy = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  %i.cz = load ptr, ptr %3, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = invoke noundef i64 %i.db(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.cy, i64 noundef 4, i64 noundef 1)
          to label %.noexc56 unwind label %.loopexit.split-lp.loopexit, !inline_history !58 ; 0 uses

.noexc56:                                         ; preds = %.noexc55
  %i.dd = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.de = load ptr, ptr %3, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = invoke noundef i64 %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.dd, i64 noundef 4, i64 noundef 1)
          to label %.noexc57 unwind label %.loopexit.split-lp.loopexit, !inline_history !58 ; 0 uses

.noexc57:                                         ; preds = %.noexc56
  %i.di = getelementptr inbounds nuw i8, ptr %i.co, i64 20
  %i.dj = load ptr, ptr %3, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = invoke noundef i64 %i.dl(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.di, i64 noundef 4, i64 noundef 1)
          to label %.noexc58 unwind label %.loopexit.split-lp.loopexit, !inline_history !58 ; 0 uses

.noexc58:                                         ; preds = %.noexc57
  %indvars.iv.next.i50 = add nuw nsw i64 %indvars.iv.i49, 1 ; 2 uses
  %exitcond.not.i51 = icmp eq i64 %indvars.iv.next.i50, %wide.trip.count.i47
  br i1 %exitcond.not.i51, label %_ZN6Assimp10WriteArrayI9aiQuatKeyEEmPNS_8IOStreamEPKT_j.exit, label %.lr.ph.i48, !llvm.loop !59

_ZN6Assimp10WriteArrayI9aiQuatKeyEEmPNS_8IOStreamEPKT_j.exit: ; preds = %.noexc58, %bb.p, %bb.o, %_ZN6Assimp10WriteArrayI11aiVectorKeyEEmPNS_8IOStreamEPKT_j.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 1064
  %i.do = load ptr, ptr %i.dn, align 8            ; 3 uses
  %.not29 = icmp eq ptr %i.do, null
  br i1 %.not29, label %_ZN6Assimp10WriteArrayI11aiVectorKeyEEmPNS_8IOStreamEPKT_j.exit72, label %bb.q

bb.q:                                             ; preds = %_ZN6Assimp10WriteArrayI9aiQuatKeyEEmPNS_8IOStreamEPKT_j.exit
  %i.dp = load i8, ptr %0, align 1, !range !4, !noundef !5
  %i.dq = trunc nuw i8 %i.dp to i1
  %i.dr = load i32, ptr %i.ao, align 8            ; 3 uses
  br i1 %i.dq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ds = invoke noundef i64 @_ZN6Assimp11WriteBoundsI11aiVectorKeyEEmPNS_8IOStreamEPKT_j(ptr noundef nonnull %3, ptr noundef nonnull %i.do, i32 noundef %i.dr)
          to label %_ZN6Assimp10WriteArrayI11aiVectorKeyEEmPNS_8IOStreamEPKT_j.exit72 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.s:                                             ; preds = %bb.q
  %.not.i59 = icmp eq i32 %i.dr, 0
  br i1 %.not.i59, label %_ZN6Assimp10WriteArrayI11aiVectorKeyEEmPNS_8IOStreamEPKT_j.exit72, label %.lr.ph.preheader.i60

.lr.ph.preheader.i60:                             ; preds = %bb.s
  %wide.trip.count.i61 = zext i32 %i.dr to i64
  br label %.lr.ph.i62

.lr.ph.i62:                                       ; preds = %.noexc71, %.lr.ph.preheader.i60
  %indvars.iv.i63 = phi i64 [ 0, %.lr.ph.preheader.i60 ], [ %indvars.iv.next.i64, %.noexc71 ] ; 2 uses
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.do, i64 %indvars.iv.i63 ; 4 uses
  %i.du = load ptr, ptr %3, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = invoke noundef i64 %i.dw(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.dt, i64 noundef 8, i64 noundef 1)
          to label %.noexc68 unwind label %.loopexit, !inline_history !56 ; 0 uses

.noexc68:                                         ; preds = %.lr.ph.i62
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dz = load ptr, ptr %3, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = invoke noundef i64 %i.eb(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.dy, i64 noundef 4, i64 noundef 1)
          to label %.noexc69 unwind label %.loopexit, !inline_history !56 ; 0 uses

.noexc69:                                         ; preds = %.noexc68
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dt, i64 12
  %i.ee = load ptr, ptr %3, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = invoke noundef i64 %i.eg(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.ed, i64 noundef 4, i64 noundef 1)
          to label %.noexc70 unwind label %.loopexit, !inline_history !56 ; 0 uses

.noexc70:                                         ; preds = %.noexc69
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.ej = load ptr, ptr %3, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = invoke noundef i64 %i.el(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.ei, i64 noundef 4, i64 noundef 1)
          to label %.noexc71 unwind label %.loopexit, !inline_history !56 ; 0 uses

.noexc71:                                         ; preds = %.noexc70
  %indvars.iv.next.i64 = add nuw nsw i64 %indvars.iv.i63, 1 ; 2 uses
  %exitcond.not.i65 = icmp eq i64 %indvars.iv.next.i64, %wide.trip.count.i61
  br i1 %exitcond.not.i65, label %_ZN6Assimp10WriteArrayI11aiVectorKeyEEmPNS_8IOStreamEPKT_j.exit72, label %.lr.ph.i62, !llvm.loop !57

_ZN6Assimp10WriteArrayI11aiVectorKeyEEmPNS_8IOStreamEPKT_j.exit72: ; preds = %.noexc71, %bb.s, %bb.r, %_ZN6Assimp10WriteArrayI9aiQuatKeyEEmPNS_8IOStreamEPKT_j.exit
  %i.en = load ptr, ptr %i.g, align 8             ; 3 uses
  %.not.i73 = icmp eq ptr %i.en, null
  br i1 %.not.i73, label %bb.w, label %bb.t

bb.t:                                             ; preds = %_ZN6Assimp10WriteArrayI11aiVectorKeyEEmPNS_8IOStreamEPKT_j.exit72
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = invoke noundef i64 %i.eq(ptr noundef nonnull align 8 dereferenceable(8) %i.en, ptr noundef nonnull %i.f, i64 noundef 4, i64 noundef 1)
          to label %bb.u unwind label %bb.y       ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.es = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = invoke noundef i64 %i.ev(ptr noundef nonnull align 8 dereferenceable(8) %i.es, ptr noundef nonnull %i.k, i64 noundef 4, i64 noundef 1)
          to label %bb.v unwind label %bb.y       ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.ex = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ey = load ptr, ptr %i.e, align 8
  %i.ez = load i64, ptr %i.k, align 8
  %i.fa = load ptr, ptr %i.ex, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = invoke noundef i64 %i.fc(ptr noundef nonnull align 8 dereferenceable(8) %i.ex, ptr noundef %i.ey, i64 noundef 1, i64 noundef %i.ez)
          to label %bb.w unwind label %bb.y       ; 0 uses

bb.w:                                             ; preds = %bb.v, %_ZN6Assimp10WriteArrayI11aiVectorKeyEEmPNS_8IOStreamEPKT_j.exit72
  %i.fe = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not2.i = icmp eq ptr %i.fe, null
  br i1 %.not2.i, label %_ZN6Assimp17AssbinChunkWriterD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.fe) #22
  br label %_ZN6Assimp17AssbinChunkWriterD2Ev.exit

bb.y:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.ff = landingpad { ptr, i32 }
          catch ptr null
  %i.fg = extractvalue { ptr, i32 } %i.ff, 0
  call void @__clang_call_terminate(ptr %i.fg) #24
  unreachable

_ZN6Assimp17AssbinChunkWriterD2Ev.exit:           ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bm, %bb.k ], [ %i.bn, %bb.l ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit75, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit78, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6Assimp17AssbinChunkWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN6Assimp11WriteBoundsI11aiVectorKeyEEmPNS_8IOStreamEPKT_j(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #16 comdat {
bb.a:
  %3 = alloca %struct.aiVectorKey, align 8        ; 9 uses
  %4 = alloca %struct.aiVectorKey, align 8        ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  store i32 1, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 1, ptr %i.b, align 4
  store double -1.000000e+10, ptr %4, align 8
  store double 1.000000e+10, ptr %3, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store <2 x float> splat (float -1.000000e+10), ptr %i.d, align 8
  %.sroa.54.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store float -1.000000e+10, ptr %.sroa.54.0..sroa_idx.i.i.i, align 8
  store <2 x float> splat (float 1.000000e+10), ptr %i.c, align 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store float 1.000000e+10, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %_ZN6Assimp11ArrayBoundsI11aiVectorKeyEEvPKT_jRS2_S5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %wide.trip.count.i = zext i32 %2 to i64
  store i32 1, ptr %i.a, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %i.e = phi float [ -1.000000e+10, %.lr.ph.i ], [ %i.ab, %bb.b ] ; 2 uses
  %i.f = phi double [ -1.000000e+10, %.lr.ph.i ], [ %i.u, %bb.b ] ; 2 uses
  %i.g = phi float [ 1.000000e+10, %.lr.ph.i ], [ %i.s, %bb.b ] ; 2 uses
  %i.h = phi double [ 1.000000e+10, %.lr.ph.i ], [ %i.n, %bb.b ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.i = phi <2 x float> [ splat (float -1.000000e+10), %.lr.ph.i ], [ %i.z, %bb.b ] ; 2 uses
  %i.j = phi <2 x float> [ splat (float 1.000000e+10), %.lr.ph.i ], [ %i.x, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.i ; 3 uses
  %i.l = load double, ptr %i.k, align 8, !noalias !60 ; 4 uses
  %i.m = fcmp olt double %i.h, %i.l
  %i.n = select i1 %i.m, double %i.h, double %i.l ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.q = load float, ptr %i.p, align 8, !noalias !60 ; 4 uses
  %i.r = fcmp olt float %i.g, %i.q
  %i.s = select i1 %i.r, float %i.g, float %i.q   ; 2 uses
  %i.t = fcmp olt double %i.l, %i.f
  %i.u = select i1 %i.t, double %i.f, double %i.l ; 2 uses
  %i.v = load <2 x float>, ptr %i.o, align 8, !noalias !60 ; 4 uses
  %i.w = fcmp olt <2 x float> %i.j, %i.v
  %i.x = select <2 x i1> %i.w, <2 x float> %i.j, <2 x float> %i.v ; 2 uses
  %i.y = fcmp olt <2 x float> %i.v, %i.i
  %i.z = select <2 x i1> %i.y, <2 x float> %i.i, <2 x float> %i.v ; 2 uses
  %i.aa = fcmp olt float %i.q, %i.e
  %i.ab = select i1 %i.aa, float %i.e, float %i.q ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6Assimp11ArrayBoundsI11aiVectorKeyEEvPKT_jRS2_S5_.exit.loopexit, label %bb.b, !llvm.loop !63

_ZN6Assimp11ArrayBoundsI11aiVectorKeyEEvPKT_jRS2_S5_.exit.loopexit: ; preds = %bb.b
  store <2 x float> %i.x, ptr %i.c, align 8
  store <2 x float> %i.z, ptr %i.d, align 8
  store double %i.n, ptr %3, align 8
  store float %i.s, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8
  store double %i.u, ptr %4, align 8
  store float %i.ab, ptr %.sroa.54.0..sroa_idx.i.i.i, align 8
  br label %_ZN6Assimp11ArrayBoundsI11aiVectorKeyEEvPKT_jRS2_S5_.exit

_ZN6Assimp11ArrayBoundsI11aiVectorKeyEEvPKT_jRS2_S5_.exit: ; preds = %_ZN6Assimp11ArrayBoundsI11aiVectorKeyEEvPKT_jRS2_S5_.exit.loopexit, %bb.a
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ac = load ptr, ptr %0, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call noundef i64 %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 8, i64 noundef 1), !inline_history !64 ; 0 uses
  %i.ag = load ptr, ptr %0, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = call noundef i64 %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.c, i64 noundef 4, i64 noundef 1), !inline_history !65 ; 0 uses
  %i.ak = load ptr, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = call noundef i64 %i.am(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.4.0..sroa_idx.i.i.i, i64 noundef 4, i64 noundef 1), !inline_history !65 ; 0 uses
  %i.ao = load ptr, ptr %0, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef i64 %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.5.0..sroa_idx.i.i.i, i64 noundef 4, i64 noundef 1), !inline_history !65 ; 0 uses
  %i.as = load ptr, ptr %0, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call noundef i64 %i.au(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef 8, i64 noundef 1), !inline_history !64 ; 0 uses
  %i.aw = load ptr, ptr %0, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = call noundef i64 %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.d, i64 noundef 4, i64 noundef 1), !inline_history !65 ; 0 uses
  %i.ba = load ptr, ptr %0, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = call noundef i64 %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.43.0..sroa_idx.i.i.i, i64 noundef 4, i64 noundef 1), !inline_history !65 ; 0 uses
  %i.be = load ptr, ptr %0, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = call noundef i64 %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.54.0..sroa_idx.i.i.i, i64 noundef 4, i64 noundef 1), !inline_history !65 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret i64 40
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN6Assimp11WriteBoundsI9aiQuatKeyEEmPNS_8IOStreamEPKT_j(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #16 comdat {
bb.a:
  %3 = alloca %struct.aiQuatKey, align 8          ; 10 uses
  %4 = alloca %struct.aiQuatKey, align 8          ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i32 1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.f, align 8
  store double -1.000000e+10, ptr %4, align 8
  store double 1.000000e+10, ptr %3, align 8
  store <4 x float> splat (float -1.000000e+10), ptr %i.d, align 8
  store <4 x float> splat (float 1.000000e+10), ptr %i.a, align 8
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %_ZN6Assimp11ArrayBoundsI9aiQuatKeyEEvPKT_jRS2_S5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %wide.trip.count.i = zext i32 %2 to i64
  store i32 1, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %i.g = phi double [ -1.000000e+10, %.lr.ph.i ], [ %i.t, %bb.b ] ; 2 uses
  %i.h = phi double [ 1.000000e+10, %.lr.ph.i ], [ %i.p, %bb.b ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.i = phi <2 x float> [ splat (float -1.000000e+10), %.lr.ph.i ], [ %i.ad, %bb.b ] ; 2 uses
  %i.j = phi <2 x float> [ splat (float -1.000000e+10), %.lr.ph.i ], [ %i.y, %bb.b ] ; 2 uses
  %i.k = phi <2 x float> [ splat (float 1.000000e+10), %.lr.ph.i ], [ %i.ab, %bb.b ] ; 2 uses
  %i.l = phi <2 x float> [ splat (float 1.000000e+10), %.lr.ph.i ], [ %i.w, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %indvars.iv.i ; 3 uses
  %i.n = load double, ptr %i.m, align 8, !noalias !66 ; 4 uses
  %i.o = fcmp olt double %i.h, %i.n
  %i.p = select i1 %i.o, double %i.h, double %i.n ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.s = fcmp olt double %i.n, %i.g
  %i.t = select i1 %i.s, double %i.g, double %i.n ; 2 uses
  %i.u = load <2 x float>, ptr %i.q, align 8, !noalias !66 ; 4 uses
  %i.v = fcmp olt <2 x float> %i.l, %i.u
  %i.w = select <2 x i1> %i.v, <2 x float> %i.l, <2 x float> %i.u ; 2 uses
  %i.x = fcmp olt <2 x float> %i.u, %i.j
  %i.y = select <2 x i1> %i.x, <2 x float> %i.j, <2 x float> %i.u ; 2 uses
  %i.z = load <2 x float>, ptr %i.r, align 8, !noalias !66 ; 4 uses
  %i.aa = fcmp olt <2 x float> %i.k, %i.z
  %i.ab = select <2 x i1> %i.aa, <2 x float> %i.k, <2 x float> %i.z ; 2 uses
  %i.ac = fcmp olt <2 x float> %i.z, %i.i
  %i.ad = select <2 x i1> %i.ac, <2 x float> %i.i, <2 x float> %i.z ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6Assimp11ArrayBoundsI9aiQuatKeyEEvPKT_jRS2_S5_.exit.loopexit, label %bb.b, !llvm.loop !69

_ZN6Assimp11ArrayBoundsI9aiQuatKeyEEvPKT_jRS2_S5_.exit.loopexit: ; preds = %bb.b
  store <2 x float> %i.w, ptr %i.a, align 8
  store <2 x float> %i.ab, ptr %i.b, align 8
  store <2 x float> %i.y, ptr %i.d, align 8
  store <2 x float> %i.ad, ptr %i.e, align 8
  store double %i.p, ptr %3, align 8
  store double %i.t, ptr %4, align 8
  br label %_ZN6Assimp11ArrayBoundsI9aiQuatKeyEEvPKT_jRS2_S5_.exit

_ZN6Assimp11ArrayBoundsI9aiQuatKeyEEvPKT_jRS2_S5_.exit: ; preds = %_ZN6Assimp11ArrayBoundsI9aiQuatKeyEEvPKT_jRS2_S5_.exit.loopexit, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ai = load ptr, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = call noundef i64 %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %3, i64 noundef 8, i64 noundef 1), !inline_history !70 ; 0 uses
  %i.am = load ptr, ptr %0, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call noundef i64 %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 noundef 4, i64 noundef 1), !inline_history !71 ; 0 uses
  %i.aq = load ptr, ptr %0, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = call noundef i64 %i.as(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.ah, i64 noundef 4, i64 noundef 1), !inline_history !71 ; 0 uses
  %i.au = load ptr, ptr %0, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = call noundef i64 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i64 noundef 4, i64 noundef 1), !inline_history !71 ; 0 uses
  %i.ay = load ptr, ptr %0, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = call noundef i64 %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.ag, i64 noundef 4, i64 noundef 1), !inline_history !71 ; 0 uses
  %i.bc = load ptr, ptr %0, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = call noundef i64 %i.be(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %4, i64 noundef 8, i64 noundef 1), !inline_history !70 ; 0 uses
  %i.bg = load ptr, ptr %0, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = call noundef i64 %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.d, i64 noundef 4, i64 noundef 1), !inline_history !71 ; 0 uses
  %i.bk = load ptr, ptr %0, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = call noundef i64 %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.af, i64 noundef 4, i64 noundef 1), !inline_history !71 ; 0 uses
  %i.bo = load ptr, ptr %0, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = call noundef i64 %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.e, i64 noundef 4, i64 noundef 1), !inline_history !71 ; 0 uses
  %i.bs = load ptr, ptr %0, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = call noundef i64 %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.ae, i64 noundef 4, i64 noundef 1), !inline_history !71 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
end_hunk_1
