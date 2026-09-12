Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/unpack?download=true
inline.NumInlined: 353
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN8ModelPPM11UpdateModelEv:bb.a

.lr.ph:                                           ; preds = %bb.s
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.bm = load i16, ptr %i.bl, align 1, !tbaa !35
  %i.bn = zext i16 %i.bm to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 19158 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 19312 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 19296 ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 19120 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 19304 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1644
  %i.bu = icmp ugt i16 %i.bi, 3
  %i.bv = zext i1 %i.bu to i32
  %i.bw = shl nuw nsw i32 %i.c, 1
  %i.bx = add nuw nsw i32 %i.bn, 1
  %i.by = add nuw nsw i32 %i.c, %i.bj
  %i.bz = sub nsw i32 %i.bx, %i.by
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %bb.ah
  %.081124 = phi ptr [ %.081122, %.lr.ph ], [ %.081, %bb.ah ] ; 9 uses
  %i.ca = load i16, ptr %.081124, align 1, !tbaa !55 ; 4 uses
  %i.cb = zext i16 %i.ca to i32                   ; 5 uses
  %.not103 = icmp eq i16 %i.ca, 1
  br i1 %.not103, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cc = and i32 %i.cb, 1
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.ce = getelementptr inbounds nuw i8, ptr %.081124, i64 4 ; 3 uses
  %i.cf = load ptr, ptr %i.ce, align 1, !tbaa !35 ; 4 uses
  %i.cg = lshr exact i32 %i.cb, 1                 ; 2 uses
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr i8, ptr %i.bo, i64 %i.ch  ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 -1
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !35  ; 2 uses
  %i.cl = load i8, ptr %i.ci, align 1, !tbaa !35  ; 3 uses
  %i.cm = icmp eq i8 %i.ck, %i.cl
  br i1 %i.cm, label %_ZN12SubAllocator11ExpandUnitsEPvi.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cn = zext i8 %i.cl to i32
  %i.co = zext i8 %i.cl to i64                    ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.co ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !40 ; 3 uses
  %.not.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i, label %bb.x, label %_ZN12SubAllocator10AllocUnitsEi.exit.thread.i

_ZN12SubAllocator10AllocUnitsEi.exit.thread.i:    ; preds = %bb.w
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !40
  store ptr %i.cr, ptr %i.cp, align 8, !tbaa !40
  br label %_ZN12SubAllocator11ExpandUnitsEPvi.exit.thread111

bb.x:                                             ; preds = %bb.w
  %i.cs = load ptr, ptr %i.bq, align 8, !tbaa !32 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.co ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !35
  %i.cv = zext i8 %i.cu to i64
  %i.cw = mul nuw nsw i64 %i.cv, 20
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cw ; 3 uses
  store ptr %i.cx, ptr %i.bq, align 8, !tbaa !32
  %i.cy = load ptr, ptr %i.bs, align 8, !tbaa !34
  %.not8.i.i = icmp ugt ptr %i.cx, %i.cy
  br i1 %.not8.i.i, label %bb.y, label %_ZN12SubAllocator10AllocUnitsEi.exit.i

bb.y:                                             ; preds = %bb.x
  %i.cz = load i8, ptr %i.ct, align 1, !tbaa !35
  %i.da = zext i8 %i.cz to i64
  %.neg.i.i = mul nsw i64 %i.da, -20
  %i.db = getelementptr inbounds i8, ptr %i.cx, i64 %.neg.i.i
  store ptr %i.db, ptr %i.bq, align 8, !tbaa !32
  %i.dc = tail call noundef ptr @_ZN12SubAllocator14AllocUnitsRareEi(ptr noundef nonnull align 8 dereferenceable(536) %i.ak, i32 noundef %i.cn)
  br label %_ZN12SubAllocator10AllocUnitsEi.exit.i

_ZN12SubAllocator10AllocUnitsEi.exit.i:           ; preds = %bb.y, %bb.x
  %.1.i.i = phi ptr [ %i.cs, %bb.x ], [ %i.dc, %bb.y ] ; 2 uses
  %.not.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i, label %_ZN12SubAllocator11ExpandUnitsEPvi.exit.thread, label %_ZN12SubAllocator11ExpandUnitsEPvi.exit.thread111

_ZN12SubAllocator11ExpandUnitsEPvi.exit.thread:   ; preds = %_ZN12SubAllocator10AllocUnitsEi.exit.i
  store ptr null, ptr %i.ce, align 1, !tbaa !35
  br label %.loopexit

_ZN12SubAllocator11ExpandUnitsEPvi.exit.thread111: ; preds = %_ZN12SubAllocator10AllocUnitsEi.exit.thread.i, %_ZN12SubAllocator10AllocUnitsEi.exit.i
  %.1.i18.i = phi ptr [ %i.cq, %_ZN12SubAllocator10AllocUnitsEi.exit.thread.i ], [ %.1.i.i, %_ZN12SubAllocator10AllocUnitsEi.exit.i ] ; 2 uses
  %i.dd = mul nuw nsw i32 %i.cg, 20
  %i.de = zext nneg i32 %i.dd to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.1.i18.i, ptr align 1 %i.cf, i64 %i.de, i1 false)
  %i.df = zext i8 %i.ck to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.df ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !40
  store ptr %i.dh, ptr %i.cf, align 8, !tbaa !40
  store ptr %i.cf, ptr %i.dg, align 8, !tbaa !40
  store ptr %.1.i18.i, ptr %i.ce, align 1, !tbaa !35
  br label %bb.z

_ZN12SubAllocator11ExpandUnitsEPvi.exit:          ; preds = %bb.v
  %.not105 = icmp eq ptr %i.cf, null
  br i1 %.not105, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %_ZN12SubAllocator11ExpandUnitsEPvi.exit.thread111, %_ZN12SubAllocator11ExpandUnitsEPvi.exit, %bb.u
  %i.di = shl nuw nsw i32 %i.cb, 1
  %i.dj = icmp samesign ult i32 %i.di, %i.bj
  %i.dk = zext i1 %i.dj to i16
  %i.dl = shl nuw nsw i32 %i.cb, 2
  %i.dm = icmp samesign ule i32 %i.dl, %i.bj
  %i.dn = getelementptr inbounds nuw i8, ptr %.081124, i64 2
  %i.do = load i16, ptr %i.dn, align 1, !tbaa !35 ; 2 uses
  %i.dp = zext i16 %i.do to i32
  %i.dq = shl nuw nsw i32 %i.cb, 3
  %i.dr = icmp samesign uge i32 %i.dq, %i.dp
  %i.ds = and i1 %i.dm, %i.dr
  %i.dt = select i1 %i.ds, i16 2, i16 0
  %i.du = add i16 %i.do, %i.dk
  %i.dv = add i16 %i.du, %i.dt
  br label %bb.ae

bb.aa:                                            ; preds = %bb.t
  %i.dw = load i8, ptr %i.bo, align 2, !tbaa !35  ; 2 uses
  %i.dx = zext i8 %i.dw to i32
  %i.dy = zext i8 %i.dw to i64                    ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.dy ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !40 ; 3 uses
  %.not.i108 = icmp eq ptr %i.ea, null
  br i1 %.not.i108, label %bb.ab, label %_ZN12SubAllocator10AllocUnitsEi.exit.thread

_ZN12SubAllocator10AllocUnitsEi.exit.thread:      ; preds = %bb.aa
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !40
  store ptr %i.eb, ptr %i.dz, align 8, !tbaa !40
  br label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.ec = load ptr, ptr %i.bq, align 8, !tbaa !32 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.dy ; 2 uses
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !35
  %i.ef = zext i8 %i.ee to i64
  %i.eg = mul nuw nsw i64 %i.ef, 20
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.eg ; 3 uses
  store ptr %i.eh, ptr %i.bq, align 8, !tbaa !32
  %i.ei = load ptr, ptr %i.bs, align 8, !tbaa !34
  %.not8.i = icmp ugt ptr %i.eh, %i.ei
  br i1 %.not8.i, label %bb.ac, label %_ZN12SubAllocator10AllocUnitsEi.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ej = load i8, ptr %i.ed, align 1, !tbaa !35
  %i.ek = zext i8 %i.ej to i64
  %.neg.i = mul nsw i64 %i.ek, -20
  %i.el = getelementptr inbounds i8, ptr %i.eh, i64 %.neg.i
  store ptr %i.el, ptr %i.bq, align 8, !tbaa !32
  %i.em = tail call noundef ptr @_ZN12SubAllocator14AllocUnitsRareEi(ptr noundef nonnull align 8 dereferenceable(536) %i.ak, i32 noundef %i.dx)
  br label %_ZN12SubAllocator10AllocUnitsEi.exit

_ZN12SubAllocator10AllocUnitsEi.exit:             ; preds = %bb.ab, %bb.ac
  %.1.i = phi ptr [ %i.ec, %bb.ab ], [ %i.em, %bb.ac ] ; 2 uses
  %.not104 = icmp eq ptr %.1.i, null
  br i1 %.not104, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %_ZN12SubAllocator10AllocUnitsEi.exit.thread, %_ZN12SubAllocator10AllocUnitsEi.exit
  %.1.i116 = phi ptr [ %i.ea, %_ZN12SubAllocator10AllocUnitsEi.exit.thread ], [ %.1.i, %_ZN12SubAllocator10AllocUnitsEi.exit ] ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.081124, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %.1.i116, ptr noundef nonnull align 1 dereferenceable(10) %i.en, i64 10, i1 false), !tbaa.struct !70
  %i.eo = getelementptr inbounds nuw i8, ptr %.081124, i64 4
  store ptr %.1.i116, ptr %i.eo, align 1, !tbaa !35
  %i.ep = getelementptr inbounds nuw i8, ptr %.1.i116, i64 1 ; 2 uses
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !61  ; 2 uses
  %i.er = icmp ult i8 %i.eq, 30
  %i.es = shl nuw nsw i8 %i.eq, 1
  %storemerge = select i1 %i.er, i8 %i.es, i8 120 ; 2 uses
  store i8 %storemerge, ptr %i.ep, align 1, !tbaa !61
  %i.et = zext nneg i8 %storemerge to i32
  %i.eu = load i32, ptr %i.bt, align 4, !tbaa !98
  %i.ev = add i32 %i.eu, %i.bv
  %i.ew = add i32 %i.ev, %i.et
  %i.ex = trunc i32 %i.ew to i16
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.z
  %i.ey = phi i16 [ %i.ex, %bb.ad ], [ %i.dv, %bb.z ] ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.081124, i64 2
  %i.fa = zext i16 %i.ey to i32                   ; 2 uses
  %i.fb = add nuw nsw i32 %i.fa, 6
  %i.fc = mul nuw nsw i32 %i.fb, %i.bw            ; 6 uses
  %i.fd = add nsw i32 %i.bz, %i.fa                ; 6 uses
  %i.fe = mul nsw i32 %i.fd, 6
  %i.ff = icmp ult i32 %i.fc, %i.fe
  br i1 %i.ff, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fg = icmp ugt i32 %i.fc, %i.fd
  %i.fh = select i1 %i.fg, i32 2, i32 1
  %i.fi = shl nsw i32 %i.fd, 2
  %i.fj = icmp uge i32 %i.fc, %i.fi
  %i.fk = zext i1 %i.fj to i32
  %i.fl = add nuw nsw i32 %i.fh, %i.fk
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.fm = mul nsw i32 %i.fd, 9
  %.not106 = icmp ult i32 %i.fc, %i.fm
  %i.fn = select i1 %.not106, i32 4, i32 5
  %i.fo = mul nsw i32 %i.fd, 12
  %i.fp = icmp uge i32 %i.fc, %i.fo
  %i.fq = zext i1 %i.fp to i32
  %i.fr = add nuw nsw i32 %i.fn, %i.fq
  %i.fs = mul nsw i32 %i.fd, 15
  %i.ft = icmp uge i32 %i.fc, %i.fs
  %i.fu = zext i1 %i.ft to i32
  %i.fv = add nuw nsw i32 %i.fr, %i.fu            ; 2 uses
  %i.fw = trunc nuw nsw i32 %i.fv to i16
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn = phi i16 [ %i.fw, %bb.ag ], [ 3, %bb.af ]
  %.0 = phi i32 [ %i.fv, %bb.ag ], [ %i.fl, %bb.af ]
  %storemerge107 = add i16 %.pn, %i.ey
  store i16 %storemerge107, ptr %i.ez, align 1, !tbaa !35
  %i.fx = getelementptr inbounds nuw i8, ptr %.081124, i64 4
  %i.fy = load ptr, ptr %i.fx, align 1, !tbaa !35
  %i.fz = zext i16 %i.ca to i64
  %i.ga = getelementptr inbounds nuw [10 x i8], ptr %i.fy, i64 %i.fz ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 2
  store ptr %.080, ptr %i.gb, align 1, !tbaa !62
  store i8 %.sroa.0.0.copyload, ptr %i.ga, align 1, !tbaa !60
  %i.gc = trunc nuw nsw i32 %.0 to i8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 1
  store i8 %i.gc, ptr %i.gd, align 1, !tbaa !61
  %i.ge = add i16 %i.ca, 1
  store i16 %i.ge, ptr %.081124, align 1, !tbaa !55
  %i.gf = getelementptr inbounds nuw i8, ptr %.081124, i64 12
  %.081 = load ptr, ptr %i.gf, align 1, !tbaa !69 ; 2 uses
  %i.gg = load ptr, ptr %i.bh, align 8, !tbaa !49
  %.not102 = icmp eq ptr %.081, %i.gg
  br i1 %.not102, label %._crit_edge, label %bb.t, !llvm.loop !223

._crit_edge:                                      ; preds = %bb.ah, %bb.s
  store ptr %.sroa.10.1, ptr %i.bh, align 8, !tbaa !49
  store ptr %.sroa.10.1, ptr %i.bk, align 8, !tbaa !48
  br label %bb.ai

.loopexit:                                        ; preds = %_ZN12SubAllocator10AllocUnitsEi.exit, %_ZN12SubAllocator11ExpandUnitsEPvi.exit, %_ZN12SubAllocator11ExpandUnitsEPvi.exit.thread, %bb.o, %bb.l, %bb.k
  tail call void @_ZN8ModelPPM16RestartModelRareEv(ptr noundef nonnull align 8 dereferenceable(19648) %0)
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 2688
  store i8 0, ptr %i.gh, align 8, !tbaa !67
  br label %bb.ai

bb.ai:                                            ; preds = %bb.k, %.loopexit, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Unpack8Unpack15Eb(ptr noundef nonnull align 8 dereferenceable(59688) initializes((8, 16), (104, 112), (176, 204), (19856, 19864)) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6Unpack11UnpInitDataEb(ptr noundef nonnull align 8 dereferenceable(59688) %0, i1 noundef zeroext %1)
  br i1 %1, label %_ZN6Unpack13UnpInitData15Ei.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 22692
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 22688
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store i32 13568, ptr %i.b, align 8, !tbaa !104
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 22736
  store i32 8193, ptr %i.c, align 8, !tbaa !105
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 22732
  store i32 128, ptr %i.d, align 4, !tbaa !106
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 22728
  store i32 128, ptr %i.e, align 8, !tbaa !107
  br label %_ZN6Unpack13UnpInitData15Ei.exit

_ZN6Unpack13UnpInitData15Ei.exit:                 ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 22724 ; 7 uses
  store i32 0, ptr %i.f, align 4, !tbaa !108
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 22684 ; 5 uses
  store i32 0, ptr %i.g, align 4, !tbaa !109
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 22716 ; 2 uses
  store i32 0, ptr %i.h, align 4, !tbaa !110
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 22720
  store i32 0, ptr %i.i, align 8, !tbaa !111
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 7 uses
  store i32 0, ptr %i.j, align 8, !tbaa !90
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !89   ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %_ZN6Unpack10UnpReadBufEv.exit, label %.thread

.thread:                                          ; preds = %_ZN6Unpack13UnpInitData15Ei.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !91
  %.neg.i = sub i32 %i.p, %i.l
  %i.q = load i32, ptr %i.n, align 8, !tbaa !92
  %i.r = add i32 %.neg.i, %i.q
  store i32 %i.r, ptr %i.n, align 8, !tbaa !92
  %i.s = load ptr, ptr %0, align 8, !tbaa !94
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !93
  %i.v = tail call noundef i32 @_ZN11ComprDataIO7UnpReadEPhm(ptr noundef nonnull align 8 dereferenceable(266) %i.s, ptr noundef %i.u, i64 noundef 32768) ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  %.pre.i = load i32, ptr %i.j, align 8, !tbaa !90 ; 2 uses
  br i1 %i.w, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %.thread
  %i.x = add nsw i32 %.pre.i, %i.v                ; 2 uses
  store i32 %i.x, ptr %i.j, align 8, !tbaa !90
  br label %.thread.i

.thread.i:                                        ; preds = %bb.c, %.thread
  %i.y = phi i32 [ %.pre.i, %.thread ], [ %i.x, %bb.c ]
  %i.z = add nsw i32 %i.y, -30                    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !95
  %i.ab = load i32, ptr %i.k, align 8, !tbaa !89  ; 2 uses
  store i32 %i.ab, ptr %i.o, align 8, !tbaa !91
  %i.ac = load i32, ptr %i.n, align 8, !tbaa !92  ; 2 uses
  %.not19.i = icmp eq i32 %i.ac, -1
  br i1 %.not19.i, label %_ZN6Unpack10UnpReadBufEv.exit, label %bb.d

bb.d:                                             ; preds = %.thread.i
  %i.ad = add i32 %i.ab, -1
  %i.ae = add i32 %i.ad, %i.ac
  %..i = tail call i32 @llvm.smin.i32(i32 %i.z, i32 %i.ae)
  store i32 %..i, ptr %i.aa, align 4, !tbaa !95
  br label %_ZN6Unpack10UnpReadBufEv.exit

_ZN6Unpack10UnpReadBufEv.exit:                    ; preds = %.thread.i, %bb.d, %_ZN6Unpack13UnpInitData15Ei.exit
  br i1 %1, label %bb.e, label %vector.ph

vector.ph:                                        ; preds = %_ZN6Unpack10UnpReadBufEv.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 20890 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 19866
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 20378
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 21402
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.ind = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add <8 x i16> %vec.ind, splat (i16 8) ; 3 uses
  %i.aj = shl nuw <8 x i16> %vec.ind, splat (i16 8) ; 2 uses
  %i.ak = shl nuw <8 x i16> %step.add, splat (i16 8) ; 2 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <8 x i16> %i.aj, ptr %i.al, align 2, !tbaa !63
  store <8 x i16> %i.ak, ptr %i.am, align 2, !tbaa !63
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store <8 x i16> %i.aj, ptr %i.an, align 2, !tbaa !63
  store <8 x i16> %i.ak, ptr %i.ao, align 2, !tbaa !63
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <8 x i16> %vec.ind, ptr %i.ap, align 2, !tbaa !63
  store <8 x i16> %step.add, ptr %i.aq, align 2, !tbaa !63
  %i.ar = mul <8 x i16> %vec.ind, splat (i16 -256)
  %i.as = mul <8 x i16> %step.add, splat (i16 -256)
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store <8 x i16> %i.ar, ptr %i.at, align 2, !tbaa !63
  store <8 x i16> %i.as, ptr %i.au, align 2, !tbaa !63
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <8 x i16> %vec.ind, splat (i16 16)
  %i.av = icmp eq i64 %index.next, 256
  br i1 %i.av, label %_ZN6Unpack8InitHuffEv.exit, label %vector.body, !llvm.loop !225

_ZN6Unpack8InitHuffEv.exit:                       ; preds = %vector.body
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 21914
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 22170
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(768) %i.aw, i8 0, i64 768, i1 false)
  tail call void @_ZN6Unpack8CorrHuffEPtPh(ptr nonnull align 8 poison, ptr noundef nonnull %i.af, ptr noundef nonnull %i.ax)
  br label %bb.f

bb.e:                                             ; preds = %_ZN6Unpack10UnpReadBufEv.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !114
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN6Unpack8InitHuffEv.exit
  %.sink = phi i64 [ %i.az, %bb.e ], [ 0, %_ZN6Unpack8InitHuffEv.exit ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %.sink, ptr %i.ba, align 8, !tbaa !115
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 19840 ; 4 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !116 ; 2 uses
  %i.bd = add nsw i64 %i.bc, -1
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !116
  %i.be = icmp sgt i64 %i.bc, 0
  br i1 %i.be, label %bb.g, label %_ZN6Unpack10UnpReadBufEv.exit17.thread

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN6Unpack11GetFlagsBufEv(ptr noundef nonnull align 8 dereferenceable(59688) %0)
  store i32 8, ptr %i.f, align 4, !tbaa !108
  %.pre = load i64, ptr %i.bb, align 8, !tbaa !116
  %i.bf = icmp sgt i64 %.pre, -1
  br i1 %i.bf, label %.lr.ph, label %_ZN6Unpack10UnpReadBufEv.exit17.thread

.lr.ph:                                           ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 59680 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 19850
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 19312 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 19849
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 22732 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 22728 ; 2 uses
  br label %bb.h
end_hunk_0
