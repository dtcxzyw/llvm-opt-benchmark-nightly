Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/tetgen?download=true
inline.NumInlined: 6986
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 436
loop-unroll.NumRuntimeUnrolled: 117
loop-unroll.NumUnrolled: 559
begin_hunk_0_@_ZN10tetgenmesh11triangulateEiPNS_9arraypoolES1_iPd:bb.a
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afn, i64 64 ; 2 uses
  %i.afr = load i64, ptr %i.afq, align 8, !tbaa !203
  %i.afs = add nsw i64 %i.afr, -1
  store i64 %i.afs, ptr %i.afq, align 8, !tbaa !203
  %.pre326 = load ptr, ptr %i.mq, align 8, !tbaa !262
  br label %bb.ca

bb.ca:                                            ; preds = %.lr.ph270, %bb.bz
  %i.aft = phi ptr [ %i.aet, %.lr.ph270 ], [ %.pre326, %bb.bz ] ; 3 uses
  %indvars.iv.next309 = add nuw nsw i64 %indvars.iv308, 1 ; 2 uses
  %i.afu = getelementptr inbounds nuw i8, ptr %i.aft, i64 32
  %i.afv = load i64, ptr %i.afu, align 8, !tbaa !101
  %i.afw = icmp sgt i64 %i.afv, %indvars.iv.next309
  br i1 %i.afw, label %.lr.ph270, label %.preheader217, !llvm.loop !804

bb.cb:                                            ; preds = %.lr.ph273, %bb.cd
  %i.afx = phi ptr [ %i.aeo, %.lr.ph273 ], [ %i.agx, %bb.cd ] ; 5 uses
  %indvars.iv311 = phi i64 [ 0, %.lr.ph273 ], [ %indvars.iv.next312, %bb.cd ] ; 2 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afx, i64 24
  %i.afz = load ptr, ptr %i.afy, align 8, !tbaa !105
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afx, i64 8
  %i.agb = load i32, ptr %i.aga, align 8, !tbaa !104
  %i.agc = trunc nuw nsw i64 %indvars.iv311 to i32 ; 2 uses
  %i.agd = lshr i32 %i.agc, %i.agb
  %i.age = zext nneg i32 %i.agd to i64
  %i.agf = getelementptr inbounds nuw [8 x i8], ptr %i.afz, i64 %i.age
  %i.agg = load ptr, ptr %i.agf, align 8, !tbaa !54
  %i.agh = getelementptr inbounds nuw i8, ptr %i.afx, i64 12
  %i.agi = load i32, ptr %i.agh, align 4, !tbaa !111
  %i.agj = and i32 %i.agi, %i.agc
  %i.agk = load i32, ptr %i.afx, align 8, !tbaa !103
  %i.agl = mul nsw i32 %i.agj, %i.agk
  %i.agm = sext i32 %i.agl to i64
  %i.agn = getelementptr inbounds i8, ptr %i.agg, i64 %i.agm
  %i.ago = load ptr, ptr %i.agn, align 8, !tbaa !225 ; 3 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %i.ago, i64 24 ; 2 uses
  %i.agq = load ptr, ptr %i.agp, align 8, !tbaa !221
  %.not145 = icmp eq ptr %i.agq, null
  br i1 %.not145, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.agr = load ptr, ptr %i.aes, align 8, !tbaa !253 ; 2 uses
  store ptr null, ptr %i.agp, align 8, !tbaa !221
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 24 ; 2 uses
  %i.agt = load ptr, ptr %i.ags, align 8, !tbaa !201
  store ptr %i.agt, ptr %i.ago, align 8, !tbaa !112
  store ptr %i.ago, ptr %i.ags, align 8, !tbaa !201
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agr, i64 64 ; 2 uses
  %i.agv = load i64, ptr %i.agu, align 8, !tbaa !203
  %i.agw = add nsw i64 %i.agv, -1
  store i64 %i.agw, ptr %i.agu, align 8, !tbaa !203
  %.pre327 = load ptr, ptr %i.aen, align 8, !tbaa !263
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc
  %i.agx = phi ptr [ %i.afx, %bb.cb ], [ %.pre327, %bb.cc ] ; 3 uses
  %indvars.iv.next312 = add nuw nsw i64 %indvars.iv311, 1 ; 2 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agx, i64 32
  %i.agz = load i64, ptr %i.agy, align 8, !tbaa !101
  %i.aha = icmp sgt i64 %i.agz, %indvars.iv.next312
  br i1 %i.aha, label %bb.cb, label %._crit_edge274.loopexit, !llvm.loop !805

._crit_edge274.loopexit:                          ; preds = %bb.cd
  %.pre328 = load ptr, ptr %i.mq, align 8, !tbaa !262
  br label %._crit_edge274

._crit_edge274:                                   ; preds = %._crit_edge274.loopexit, %.preheader217
  %i.ahb = phi ptr [ %i.aem, %.preheader217 ], [ %.pre328, %._crit_edge274.loopexit ]
  %.lcssa271 = phi ptr [ %i.aeo, %.preheader217 ], [ %i.agx, %._crit_edge274.loopexit ]
  %i.ahc = getelementptr inbounds nuw i8, ptr %.lcssa271, i64 32
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahb, i64 32
  store i64 0, ptr %i.ahd, align 8, !tbaa !101
  store i64 0, ptr %i.ahc, align 8, !tbaa !101
  br label %.loopexit

bb.ce:                                            ; preds = %.thread208
  call void @_ZN10tetgenmesh11scarveholesEiPd(ptr noundef nonnull align 8 dereferenceable(69984) %0, i32 noundef %4, ptr noundef %5)
  %i.ahe = load ptr, ptr %i.mq, align 8, !tbaa !262
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahe, i64 32
  store i64 0, ptr %i.ahf, align 8, !tbaa !101
  %i.ahg = getelementptr inbounds nuw i8, ptr %0, i64 2864
  %i.ahh = load ptr, ptr %i.ahg, align 8, !tbaa !263
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahh, i64 32
  store i64 0, ptr %i.ahi, align 8, !tbaa !101
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN10tetgenmesh13makeshellfaceEPNS_10memorypoolEPNS_4faceE.exit156.2, %bb.r, %bb.s, %bb.n, %bb.o, %bb.e, %bb.ce, %._crit_edge274, %._crit_edge280
  %.0123 = phi i32 [ 1, %bb.n ], [ 1, %bb.e ], [ 0, %bb.r ], [ 0, %._crit_edge280 ], [ 0, %._crit_edge274 ], [ 1, %bb.ce ], [ 1, %bb.o ], [ 0, %bb.s ], [ 1, %_ZN10tetgenmesh13makeshellfaceEPNS_10memorypoolEPNS_4faceE.exit156.2 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  ret i32 %.0123
}

; Function Attrs: mustprogress uwtable
define void @_ZN10tetgenmesh13unifysegmentsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69984) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !219
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 156
  %i.f = load i32, ptr %i.e, align 4, !tbaa !186
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.86) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !252
  call void @_ZN10tetgenmesh16makepoint2submapEPNS_10memorypoolERPiRPNS_4faceE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !253  ; 8 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !197  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !204
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.q = load i32, ptr %i.p, align 8, !tbaa !193
  %i.r = sext i32 %i.q to i64                     ; 4 uses
  %i.s = add i64 %i.r, %i.o
  %i.t = urem i64 %i.o, %i.r
  %i.u = sub i64 %i.s, %i.t
  %i.v = inttoptr i64 %i.u to ptr                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  store ptr %i.v, ptr %i.w, align 8, !tbaa !205
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 60
  %i.y = load i32, ptr %i.x, align 4, !tbaa !196  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 84 ; 2 uses
  store i32 %i.y, ptr %i.z, align 4, !tbaa !206
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !199
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %i.ad = phi ptr [ %i.ap, %bb.g ], [ %i.l, %bb.c ] ; 2 uses
  %i.ae = phi i32 [ %i.ax, %bb.g ], [ %i.y, %bb.c ] ; 2 uses
  %i.af = phi ptr [ %i.aw, %bb.g ], [ %i.v, %bb.c ] ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.ab
  br i1 %i.ag, label %._crit_edge273, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %bb.f, label %_ZN10tetgenmesh10memorypool8traverseEv.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !112 ; 3 uses
  store ptr %i.ai, ptr %i.m, align 8, !tbaa !204
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.al = add i64 %i.ak, %i.r
  %i.am = urem i64 %i.ak, %i.r
  %i.an = sub i64 %i.al, %i.am
  %i.ao = inttoptr i64 %i.an to ptr
  br label %_ZN10tetgenmesh10memorypool8traverseEv.exit.i

_ZN10tetgenmesh10memorypool8traverseEv.exit.i:    ; preds = %bb.f, %bb.e
  %i.ap = phi ptr [ %i.ai, %bb.f ], [ %i.ad, %bb.e ]
  %i.aq = phi i32 [ %i.y, %bb.f ], [ %i.ae, %bb.e ]
  %i.ar = phi ptr [ %i.ao, %bb.f ], [ %i.af, %bb.e ] ; 4 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = load i32, ptr %i.ac, align 4, !tbaa !195
  %i.au = sext i32 %i.at to i64
  %i.av = add i64 %i.au, %i.as
  %i.aw = inttoptr i64 %i.av to ptr               ; 2 uses
  store ptr %i.aw, ptr %i.w, align 8, !tbaa !205
  %i.ax = add nsw i32 %i.aq, -1                   ; 2 uses
  store i32 %i.ax, ptr %i.z, align 4, !tbaa !206
  %i.ay = icmp eq ptr %i.ar, null
  br i1 %i.ay, label %._crit_edge273, label %bb.g

bb.g:                                             ; preds = %_ZN10tetgenmesh10memorypool8traverseEv.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !221
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.d, label %.lr.ph272, !llvm.loop !7

.lr.ph272:                                        ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 68664 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 2752 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 68800 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 68692
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !223
  %i.bh = load ptr, ptr %i.a, align 8
  br label %bb.h

bb.h:                                             ; preds = %_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit130, %.lr.ph272
  %.081271 = phi ptr [ null, %.lr.ph272 ], [ %.182.lcssa, %_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit130 ] ; 2 uses
  %storemerge270 = phi ptr [ %i.ar, %.lr.ph272 ], [ %i.wn, %_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit130 ] ; 6 uses
  %i.bi = load i32, ptr @_ZN10tetgenmesh9sorgpivotE, align 16, !tbaa !60
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %storemerge270, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !221 ; 8 uses
  %i.bm = load i32, ptr @_ZN10tetgenmesh10sdestpivotE, align 16, !tbaa !60
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %storemerge270, i64 %i.bn
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !221 ; 9 uses
  %i.bq = load i32, ptr %i.bc, align 8, !tbaa !224
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !60
  %i.bu = load ptr, ptr %0, align 8, !tbaa !222
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !56
  %i.bw = sub nsw i32 %i.bt, %i.bv
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bx ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !60 ; 2 uses
  %i.ca = getelementptr i8, ptr %i.by, i64 4      ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !60
  %i.cc = icmp slt i32 %i.bz, %i.cb
  br i1 %i.cc, label %.lr.ph256, label %.preheader245

.lr.ph256:                                        ; preds = %bb.h
  %1 = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %i.cd = sext i32 %i.bz to i64
  br label %bb.i

.preheader245:                                    ; preds = %bb.x, %bb.h
  %.182.lcssa = phi ptr [ %.081271, %bb.h ], [ %.283, %bb.x ] ; 4 uses
  %i.ce = load ptr, ptr %i.bd, align 8, !tbaa !264 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 64
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !203
  %i.ch = icmp sgt i64 %i.cg, 0
  br i1 %i.ch, label %.lr.ph260, label %.loopexit244

bb.i:                                             ; preds = %.lr.ph256, %bb.x
  %indvars.iv278 = phi i64 [ %i.cd, %.lr.ph256 ], [ %indvars.iv.next279, %bb.x ] ; 2 uses
  %.182253 = phi ptr [ %.081271, %.lr.ph256 ], [ %.283, %bb.x ] ; 6 uses
  %i.ci = getelementptr inbounds [16 x i8], ptr %i.bh, i64 %indvars.iv278 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !225 ; 6 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !221
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.x, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !226 ; 2 uses
  %i.cp = sext i32 %i.co to i64                   ; 3 uses
  %i.cq = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10sdestpivotE, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !60
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.cs
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !221
  %.not99 = icmp eq ptr %i.cu, %i.bp
  br i1 %.not99, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cv = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10snextpivotE, i64 %i.cp
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !60
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10snextpivotE, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !60
  %i.da = xor i32 %i.cz, 1                        ; 2 uses
  %.pre = sext i32 %i.da to i64                   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10sdestpivotE, i64 %.pre
  %.pre294 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !60
  %.phi.trans.insert295 = sext i32 %.pre294 to i64
  %.phi.trans.insert296 = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %.phi.trans.insert295
  %.pre297 = load ptr, ptr %.phi.trans.insert296, align 8, !tbaa !221
  %i.db = icmp eq ptr %.pre297, %i.bp
  br i1 %i.db, label %.thread, label %bb.x

.thread:                                          ; preds = %bb.j, %bb.k
  %.sroa.11.0339 = phi i32 [ %i.da, %bb.k ], [ %i.co, %bb.j ] ; 2 uses
  %.pre-phi338 = phi i64 [ %.pre, %bb.k ], [ %i.cp, %bb.j ]
  %i.dc = load ptr, ptr %i.bd, align 8, !tbaa !264 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !203 ; 2 uses
  %i.df = icmp sgt i64 %i.de, 1
  br i1 %i.df, label %.lr.ph, label %bb.v

.lr.ph:                                           ; preds = %.thread
  %i.dg = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10sapexpivotE, i64 %.pre-phi338
  br label %bb.m

bb.l:                                             ; preds = %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.pre298.pre, i64 64
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !203
  %i.dj = add nsw i64 %i.di, -1
  %i.dk = icmp sgt i64 %i.dj, %indvars.iv.next
  br i1 %i.dk, label %bb.m, label %._crit_edge, !llvm.loop !806

bb.m:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ]
  %.078249 = phi ptr [ %.182253, %.lr.ph ], [ %i.dm, %bb.l ] ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.078249, i64 128
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !274 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.078249, i64 16 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !225
  %i.dp = getelementptr inbounds nuw i8, ptr %.078249, i64 24 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !226
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10sapexpivotE, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !60
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.du
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !221 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !225
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !226
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10sapexpivotE, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !60
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.ee
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !221 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !59
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %3 = load double, ptr %i.ej, align 8, !tbaa !59
  %4 = load <2 x double>, ptr %i.bp, align 8, !tbaa !59 ; 3 uses
  %5 = load double, ptr %1, align 8, !tbaa !59
  %6 = load <2 x double>, ptr %i.bl, align 8, !tbaa !59 ; 3 uses
  %i.ek = load double, ptr %2, align 8, !tbaa !59
  %7 = shufflevector <2 x double> %4, <2 x double> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %8 = insertelement <3 x double> %7, double %5, i64 2 ; 2 uses
  %9 = shufflevector <2 x double> %6, <2 x double> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %10 = insertelement <3 x double> %9, double %i.ek, i64 2 ; 2 uses
  %i.el = fsub <3 x double> %8, %10               ; 6 uses
  %i.em = load <2 x double>, ptr %i.dw, align 8, !tbaa !59 ; 2 uses
  %i.en = extractelement <3 x double> %i.el, i64 1 ; 2 uses
  %i.eo = fmul double %i.en, %i.en
  %i.ep = extractelement <3 x double> %i.el, i64 0 ; 2 uses
  %i.eq = tail call double @llvm.fmuladd.f64(double %i.ep, double %i.ep, double %i.eo)
  %i.er = extractelement <3 x double> %i.el, i64 2 ; 2 uses
  %i.es = tail call noundef double @llvm.fmuladd.f64(double %i.er, double %i.er, double %i.eq)
  %i.et = load <2 x double>, ptr %i.eg, align 8, !tbaa !59 ; 2 uses
  %i.eu = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ev = shufflevector <2 x double> %i.em, <2 x double> %i.et, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ew = fsub <2 x double> %i.eu, %i.ev          ; 4 uses
  %i.ex = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ey = shufflevector <2 x double> %i.em, <2 x double> %i.et, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ez = fsub <2 x double> %i.ex, %i.ey          ; 4 uses
  %i.fa = shufflevector <3 x double> %10, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.fb = insertelement <2 x double> poison, double %i.ei, i64 0
  %i.fc = insertelement <2 x double> %i.fb, double %3, i64 1 ; 2 uses
  %i.fd = fsub <2 x double> %i.fa, %i.fc          ; 4 uses
  %i.fe = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ff = fsub <2 x double> %i.ev, %i.fe          ; 4 uses
  %i.fg = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fh = fsub <2 x double> %i.ey, %i.fg          ; 4 uses
  %i.fi = shufflevector <3 x double> %8, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.fj = fsub <2 x double> %i.fc, %i.fi          ; 4 uses
  %i.fk = fmul <2 x double> %i.ez, %i.ez
  %i.fl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ew, <2 x double> %i.ew, <2 x double> %i.fk)
  %i.fm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fd, <2 x double> %i.fd, <2 x double> %i.fl) ; 2 uses
  %i.fn = fmul <2 x double> %i.fh, %i.fh
  %i.fo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ff, <2 x double> %i.ff, <2 x double> %i.fn)
  %i.fp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fj, <2 x double> %i.fj, <2 x double> %i.fo)
  %i.fq = insertelement <2 x double> poison, double %i.es, i64 0
  %i.fr = shufflevector <2 x double> %i.fq, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fs = fcmp olt <2 x double> %i.fr, %i.fm      ; 7 uses
  %i.ft = select <2 x i1> %i.fs, <2 x double> %i.fm, <2 x double> %i.fr
  %i.fu = fcmp olt <2 x double> %i.ft, %i.fp      ; 6 uses
  %i.fv = select <2 x i1> %i.fs, <2 x double> %i.fh, <2 x double> %i.ez
  %i.fw = shufflevector <3 x double> %i.el, <3 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.fx = select <2 x i1> %i.fu, <2 x double> %i.fw, <2 x double> %i.fv ; 2 uses
  %i.fy = shufflevector <3 x double> %i.el, <3 x double> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.fz = select <2 x i1> %i.fs, <2 x double> %i.fy, <2 x double> %i.fj
  %i.ga = select <2 x i1> %i.fu, <2 x double> %i.fd, <2 x double> %i.fz ; 2 uses
  %i.gb = select <2 x i1> %i.fs, <2 x double> %i.fw, <2 x double> %i.fh
  %i.gc = select <2 x i1> %i.fu, <2 x double> %i.ez, <2 x double> %i.gb ; 2 uses
  %i.gd = select <2 x i1> %i.fs, <2 x double> %i.fj, <2 x double> %i.fd
  %i.ge = select <2 x i1> %i.fu, <2 x double> %i.fy, <2 x double> %i.gd
  %i.gf = fneg <2 x double> %i.ge                 ; 2 uses
  %i.gg = fmul <2 x double> %i.gc, %i.gf
  %i.gh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fx, <2 x double> %i.ga, <2 x double> %i.gg) ; 4 uses
  %i.gi = select <2 x i1> %i.fs, <2 x double> %i.ff, <2 x double> %i.ew
  %i.gj = shufflevector <3 x double> %i.el, <3 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gk = select <2 x i1> %i.fu, <2 x double> %i.gj, <2 x double> %i.gi ; 2 uses
  %i.gl = select <2 x i1> %i.fs, <2 x double> %i.gj, <2 x double> %i.ff
  %i.gm = select <2 x i1> %i.fu, <2 x double> %i.ew, <2 x double> %i.gl ; 2 uses
  %i.gn = fmul <2 x double> %i.gm, %i.gf
  %i.go = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gk, <2 x double> %i.ga, <2 x double> %i.gn) ; 4 uses
  %i.gp = fneg <2 x double> %i.fx
  %i.gq = fmul <2 x double> %i.gm, %i.gp
  %i.gr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gk, <2 x double> %i.gc, <2 x double> %i.gq) ; 4 uses
  %i.gs = fmul <2 x double> %i.go, %i.go
  %i.gt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gh, <2 x double> %i.gh, <2 x double> %i.gs)
  %i.gu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gr, <2 x double> %i.gr, <2 x double> %i.gt)
  %i.gv = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.gu) ; 2 uses
  %shift = shufflevector <2 x double> %i.go, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.go, %shift
  %i.gw = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.gx = extractelement <2 x double> %i.gh, i64 0
  %i.gy = extractelement <2 x double> %i.gh, i64 1
  %i.gz = tail call double @llvm.fmuladd.f64(double %i.gx, double %i.gy, double %i.gw)
  %i.ha = extractelement <2 x double> %i.gr, i64 0
  %i.hb = extractelement <2 x double> %i.gr, i64 1
  %i.hc = tail call double @llvm.fmuladd.f64(double %i.ha, double %i.hb, double %i.gz)
  %shift355 = shufflevector <2 x double> %i.gv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop356 = fmul <2 x double> %i.gv, %shift355
  %i.hd = extractelement <2 x double> %foldExtExtBinop356, i64 0
  %i.he = fdiv double %i.hc, %i.hd                ; 3 uses
  %i.hf = fcmp ogt double %i.he, 1.000000e+00
  %i.hg = fcmp olt double %i.he, -1.000000e+00
  %spec.store.select.i = select i1 %i.hg, double -1.000000e+00, double %i.he
  %.019.i = select i1 %i.hf, double 1.000000e+00, double %spec.store.select.i
  %i.hh = tail call double @acos(double noundef %.019.i) #40
  %i.hi = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bp, ptr noundef nonnull %i.dw, ptr noundef nonnull %i.eg)
  %i.hj = load double, ptr @_ZN10tetgenmesh2PIE, align 8
  %i.hk = load ptr, ptr %i.dn, align 8, !tbaa !225
  %i.hl = load i32, ptr %i.dp, align 8, !tbaa !226
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10sapexpivotE, i64 %i.hm
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !60
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.hk, i64 %i.hp
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !221 ; 3 uses
  %i.hs = load i32, ptr %i.dg, align 4, !tbaa !60
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.ht
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !221 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !59
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  %11 = load double, ptr %i.hy, align 8, !tbaa !59
  %12 = load <2 x double>, ptr %i.bp, align 8, !tbaa !59 ; 3 uses
  %13 = load double, ptr %1, align 8, !tbaa !59
  %14 = load <2 x double>, ptr %i.bl, align 8, !tbaa !59 ; 3 uses
  %i.hz = load double, ptr %2, align 8, !tbaa !59
  %15 = shufflevector <2 x double> %12, <2 x double> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %16 = insertelement <3 x double> %15, double %13, i64 2 ; 2 uses
  %17 = shufflevector <2 x double> %14, <2 x double> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %18 = insertelement <3 x double> %17, double %i.hz, i64 2 ; 2 uses
  %i.ia = fsub <3 x double> %16, %18              ; 6 uses
  %i.ib = load <2 x double>, ptr %i.hr, align 8, !tbaa !59 ; 2 uses
  %i.ic = extractelement <3 x double> %i.ia, i64 1 ; 2 uses
  %i.id = fmul double %i.ic, %i.ic
  %i.ie = extractelement <3 x double> %i.ia, i64 0 ; 2 uses
  %i.if = tail call double @llvm.fmuladd.f64(double %i.ie, double %i.ie, double %i.id)
  %i.ig = extractelement <3 x double> %i.ia, i64 2 ; 2 uses
  %i.ih = tail call noundef double @llvm.fmuladd.f64(double %i.ig, double %i.ig, double %i.if)
  %i.ii = load <2 x double>, ptr %i.hv, align 8, !tbaa !59 ; 2 uses
  %i.ij = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ik = shufflevector <2 x double> %i.ib, <2 x double> %i.ii, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.il = fsub <2 x double> %i.ij, %i.ik          ; 4 uses
  %i.im = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.in = shufflevector <2 x double> %i.ib, <2 x double> %i.ii, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.io = fsub <2 x double> %i.im, %i.in          ; 4 uses
  %i.ip = shufflevector <3 x double> %18, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.iq = insertelement <2 x double> poison, double %i.hx, i64 0
  %i.ir = insertelement <2 x double> %i.iq, double %11, i64 1 ; 2 uses
  %i.is = fsub <2 x double> %i.ip, %i.ir          ; 4 uses
  %i.it = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iu = fsub <2 x double> %i.ik, %i.it          ; 4 uses
  %i.iv = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.iw = fsub <2 x double> %i.in, %i.iv          ; 4 uses
  %i.ix = shufflevector <3 x double> %16, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.iy = fsub <2 x double> %i.ir, %i.ix          ; 4 uses
  %i.iz = fmul <2 x double> %i.io, %i.io
  %i.ja = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.il, <2 x double> %i.il, <2 x double> %i.iz)
  %i.jb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.is, <2 x double> %i.is, <2 x double> %i.ja) ; 2 uses
  %i.jc = fmul <2 x double> %i.iw, %i.iw
  %i.jd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iu, <2 x double> %i.iu, <2 x double> %i.jc)
  %i.je = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iy, <2 x double> %i.iy, <2 x double> %i.jd)
  %i.jf = insertelement <2 x double> poison, double %i.ih, i64 0
  %i.jg = shufflevector <2 x double> %i.jf, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jh = fcmp olt <2 x double> %i.jg, %i.jb      ; 7 uses
  %i.ji = select <2 x i1> %i.jh, <2 x double> %i.jb, <2 x double> %i.jg
  %i.jj = fcmp olt <2 x double> %i.ji, %i.je      ; 6 uses
  %i.jk = select <2 x i1> %i.jh, <2 x double> %i.iw, <2 x double> %i.io
  %i.jl = shufflevector <3 x double> %i.ia, <3 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.jm = select <2 x i1> %i.jj, <2 x double> %i.jl, <2 x double> %i.jk ; 2 uses
  %i.jn = shufflevector <3 x double> %i.ia, <3 x double> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.jo = select <2 x i1> %i.jh, <2 x double> %i.jn, <2 x double> %i.iy
  %i.jp = select <2 x i1> %i.jj, <2 x double> %i.is, <2 x double> %i.jo ; 2 uses
  %i.jq = select <2 x i1> %i.jh, <2 x double> %i.jl, <2 x double> %i.iw
  %i.jr = select <2 x i1> %i.jj, <2 x double> %i.io, <2 x double> %i.jq ; 2 uses
  %i.js = select <2 x i1> %i.jh, <2 x double> %i.iy, <2 x double> %i.is
  %i.jt = select <2 x i1> %i.jj, <2 x double> %i.jn, <2 x double> %i.js
  %i.ju = fneg <2 x double> %i.jt                 ; 2 uses
  %i.jv = fmul <2 x double> %i.jr, %i.ju
  %i.jw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jm, <2 x double> %i.jp, <2 x double> %i.jv) ; 4 uses
  %i.jx = select <2 x i1> %i.jh, <2 x double> %i.iu, <2 x double> %i.il
  %i.jy = shufflevector <3 x double> %i.ia, <3 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jz = select <2 x i1> %i.jj, <2 x double> %i.jy, <2 x double> %i.jx ; 2 uses
  %i.ka = select <2 x i1> %i.jh, <2 x double> %i.jy, <2 x double> %i.iu
  %i.kb = select <2 x i1> %i.jj, <2 x double> %i.il, <2 x double> %i.ka ; 2 uses
  %i.kc = fmul <2 x double> %i.kb, %i.ju
  %i.kd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jz, <2 x double> %i.jp, <2 x double> %i.kc) ; 4 uses
  %i.ke = fneg <2 x double> %i.jm
  %i.kf = fmul <2 x double> %i.kb, %i.ke
  %i.kg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jz, <2 x double> %i.jr, <2 x double> %i.kf) ; 4 uses
  %i.kh = fmul <2 x double> %i.kd, %i.kd
  %i.ki = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jw, <2 x double> %i.jw, <2 x double> %i.kh)
  %i.kj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kg, <2 x double> %i.kg, <2 x double> %i.ki)
  %i.kk = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.kj) ; 2 uses
  %i.kl = extractelement <2 x double> %i.jw, i64 0
  %i.km = extractelement <2 x double> %i.jw, i64 1
  %i.kn = extractelement <2 x double> %i.kg, i64 0
  %i.ko = extractelement <2 x double> %i.kg, i64 1
  %i.kp = shufflevector <2 x double> %i.kd, <2 x double> %i.kk, <2 x i32> <i32 0, i32 2>
  %i.kq = shufflevector <2 x double> %i.kd, <2 x double> %i.kk, <2 x i32> <i32 1, i32 3>
  %i.kr = fmul <2 x double> %i.kp, %i.kq          ; 2 uses
  %i.ks = extractelement <2 x double> %i.kr, i64 0
  %i.kt = tail call double @llvm.fmuladd.f64(double %i.kl, double %i.km, double %i.ks)
  %i.ku = tail call double @llvm.fmuladd.f64(double %i.kn, double %i.ko, double %i.kt)
  %i.kv = extractelement <2 x double> %i.kr, i64 1
  %i.kw = fdiv double %i.ku, %i.kv                ; 3 uses
  %i.kx = fcmp ogt double %i.kw, 1.000000e+00
  %i.ky = fcmp olt double %i.kw, -1.000000e+00
  %spec.store.select.i118 = select i1 %i.ky, double -1.000000e+00, double %i.kw
  %.019.i119 = select i1 %i.kx, double 1.000000e+00, double %spec.store.select.i118
  %i.kz = tail call double @acos(double noundef %.019.i119) #40
  %i.la = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bp, ptr noundef nonnull %i.hr, ptr noundef nonnull %i.hv)
  %i.lb = load double, ptr @_ZN10tetgenmesh2PIE, align 8
  %i.lc = insertelement <2 x double> poison, double %i.hi, i64 0
  %i.ld = insertelement <2 x double> %i.lc, double %i.la, i64 1
  %i.le = fcmp ogt <2 x double> %i.ld, zeroinitializer
  %i.lf = insertelement <2 x double> poison, double %i.hh, i64 0
  %i.lg = insertelement <2 x double> %i.lf, double %i.kz, i64 1 ; 2 uses
  %i.lh = fneg <2 x double> %i.lg
  %i.li = insertelement <2 x double> poison, double %i.hj, i64 0
  %i.lj = insertelement <2 x double> %i.li, double %i.lb, i64 1
  %i.lk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lj, <2 x double> splat (double 2.000000e+00), <2 x double> %i.lh)
  %i.ll = select <2 x i1> %i.le, <2 x double> %i.lk, <2 x double> %i.lg ; 2 uses
  %i.lm = extractelement <2 x double> %i.ll, i64 0
  %i.ln = extractelement <2 x double> %i.ll, i64 1
  %i.lo = fcmp ult double %i.lm, %i.ln
  %.pre298.pre = load ptr, ptr %i.bd, align 8, !tbaa !264 ; 15 uses
  br i1 %i.lo, label %bb.l, label %._crit_edge

._crit_edge:                                      ; preds = %bb.l, %bb.m
  %.078.lcssa.ph = phi ptr [ %i.dm, %bb.l ], [ %.078249, %bb.m ]
  %.phi.trans.insert299 = getelementptr inbounds nuw i8, ptr %.pre298.pre, i64 24
  %.pre300 = load ptr, ptr %.phi.trans.insert299, align 8, !tbaa !201 ; 3 uses
  %.not.i = icmp eq ptr %.pre300, null
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.lp = getelementptr inbounds nuw i8, ptr %.pre298.pre, i64 24
  %i.lq = load ptr, ptr %.pre300, align 8, !tbaa !112
  store ptr %i.lq, ptr %i.lp, align 8, !tbaa !201
  br label %_ZN10tetgenmesh10memorypool5allocEv.exit

bb.o:                                             ; preds = %._crit_edge
  %i.lr = getelementptr inbounds nuw i8, ptr %.pre298.pre, i64 80 ; 2 uses
  %i.ls = load i32, ptr %i.lr, align 8, !tbaa !200 ; 2 uses
  %i.lt = icmp eq i32 %i.ls, 0
  br i1 %i.lt, label %bb.p, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.o
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre298.pre, i64 16
  %.pre9.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !199
  br label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.lu = getelementptr inbounds nuw i8, ptr %.pre298.pre, i64 8 ; 3 uses
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !198 ; 2 uses
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !112 ; 2 uses
  %i.lx = icmp eq ptr %i.lw, null
  br i1 %i.lx, label %bb.q, label %._crit_edge301

._crit_edge301:                                   ; preds = %bb.p
  %.phi.trans.insert302 = getelementptr inbounds nuw i8, ptr %.pre298.pre, i64 48
  %.pre303 = load i32, ptr %.phi.trans.insert302, align 8, !tbaa !193
  %.phi.trans.insert304 = getelementptr inbounds nuw i8, ptr %.pre298.pre, i64 60
  %.pre305 = load i32, ptr %.phi.trans.insert304, align 4, !tbaa !196
  %.pre310 = sext i32 %.pre303 to i64
  br label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ly = getelementptr inbounds nuw i8, ptr %.pre298.pre, i64 60
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !196 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.pre298.pre, i64 52
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !195
  %i.mc = mul nsw i32 %i.mb, %i.lz
  %i.md = sext i32 %i.mc to i64
  %i.me = add nsw i64 %i.md, 8
  %i.mf = getelementptr inbounds nuw i8, ptr %.pre298.pre, i64 48
  %i.mg = load i32, ptr %i.mf, align 8, !tbaa !193
  %i.mh = sext i32 %i.mg to i64                   ; 2 uses
  %i.mi = add nsw i64 %i.me, %i.mh
  %i.mj = tail call noalias ptr @malloc(i64 noundef %i.mi) #45 ; 3 uses
  %i.mk = icmp eq ptr %i.mj, null
  br i1 %i.mk, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ml = tail call ptr @__cxa_allocate_exception(i64 4) #40 ; 2 uses
  store i32 1, ptr %i.ml, align 16, !tbaa !60
  tail call void @__cxa_throw(ptr nonnull %i.ml, ptr nonnull @_ZTIi, ptr null) #43
  unreachable

bb.s:                                             ; preds = %bb.q
  store ptr %i.mj, ptr %i.lv, align 8, !tbaa !112
  store ptr null, ptr %i.mj, align 8, !tbaa !112
  %.pre7.i = load ptr, ptr %i.lu, align 8, !tbaa !198
  %.pre8.i = load ptr, ptr %.pre7.i, align 8, !tbaa !112
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge301, %bb.s
  %.pre-phi311 = phi i64 [ %.pre310, %._crit_edge301 ], [ %i.mh, %bb.s ] ; 2 uses
  %i.mm = phi i32 [ %.pre305, %._crit_edge301 ], [ %i.lz, %bb.s ]
  %i.mn = phi ptr [ %i.lw, %._crit_edge301 ], [ %.pre8.i, %bb.s ] ; 2 uses
  store ptr %i.mn, ptr %i.lu, align 8, !tbaa !198
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  %i.mp = ptrtoint ptr %i.mo to i64               ; 2 uses
  %i.mq = add i64 %.pre-phi311, %i.mp
  %i.mr = urem i64 %i.mp, %.pre-phi311
  %i.ms = sub i64 %i.mq, %i.mr
  %i.mt = inttoptr i64 %i.ms to ptr
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i
  %i.mu = phi i32 [ %i.ls, %._crit_edge.i ], [ %i.mm, %bb.t ]
  %i.mv = phi ptr [ %.pre9.i, %._crit_edge.i ], [ %i.mt, %bb.t ] ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.pre298.pre, i64 16
  %i.mx = ptrtoint ptr %i.mv to i64
  %i.my = getelementptr inbounds nuw i8, ptr %.pre298.pre, i64 52
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !195
  %i.na = sext i32 %i.mz to i64
  %i.nb = add i64 %i.na, %i.mx
  %i.nc = inttoptr i64 %i.nb to ptr
  store ptr %i.nc, ptr %i.mw, align 8, !tbaa !199
  %i.nd = add nsw i32 %i.mu, -1
  store i32 %i.nd, ptr %i.lr, align 8, !tbaa !200
  %i.ne = getelementptr inbounds nuw i8, ptr %.pre298.pre, i64 72 ; 2 uses
  %i.nf = load i64, ptr %i.ne, align 8, !tbaa !202
  %i.ng = add nsw i64 %i.nf, 1
  store i64 %i.ng, ptr %i.ne, align 8, !tbaa !202
  br label %_ZN10tetgenmesh10memorypool5allocEv.exit

_ZN10tetgenmesh10memorypool5allocEv.exit:         ; preds = %bb.n, %bb.u
  %.0.i121 = phi ptr [ %.pre300, %bb.n ], [ %i.mv, %bb.u ] ; 4 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.pre298.pre, i64 64 ; 2 uses
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !203
  %i.nj = add nsw i64 %i.ni, 1
  store i64 %i.nj, ptr %i.nh, align 8, !tbaa !203
  %i.nk = getelementptr inbounds nuw i8, ptr %.0.i121, i64 16
  store ptr %i.cj, ptr %i.nk, align 8, !tbaa !225
  %i.nl = getelementptr inbounds nuw i8, ptr %.0.i121, i64 24
  store i32 %.sroa.11.0339, ptr %i.nl, align 8, !tbaa !226
  %i.nm = getelementptr inbounds nuw i8, ptr %.078.lcssa.ph, i64 128 ; 2 uses
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !274
  %i.no = getelementptr inbounds nuw i8, ptr %.0.i121, i64 128
  store ptr %i.nn, ptr %i.no, align 8, !tbaa !274
  store ptr %.0.i121, ptr %i.nm, align 8, !tbaa !274
  br label %bb.x

bb.v:                                             ; preds = %.thread
  %i.np = icmp eq i64 %i.de, 1
  %i.nq = tail call noundef ptr @_ZN10tetgenmesh10memorypool5allocEv(ptr noundef nonnull align 8 dereferenceable(88) %i.dc) ; 5 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 16
  store ptr %i.cj, ptr %i.nr, align 8, !tbaa !225
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nq, i64 24
  store i32 %.sroa.11.0339, ptr %i.ns, align 8, !tbaa !226
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nq, i64 128
  store ptr null, ptr %i.nt, align 8, !tbaa !274
end_hunk_0
begin_hunk_1_@_ZN10tetgenmesh15recoversubfacesEPNS_9arraypoolEi:bb.a
.loopexit.loopexit.i253:                          ; preds = %_ZN10tetgenmesh6tsbondERNS_7trifaceERNS_4faceE.exit
  %i.ajj = load ptr, ptr %i.bw, align 8, !tbaa !230
  %i.ajk = call noundef ptr @_ZN10tetgenmesh10memorypool5allocEv(ptr noundef nonnull align 8 dereferenceable(88) %i.ajj) ; 2 uses
  store ptr %i.ajk, ptr %i.ajg, align 8, !tbaa !221
  store ptr null, ptr %i.ajk, align 8, !tbaa !221
  %i.ajl = load ptr, ptr %i.ajg, align 8, !tbaa !221
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajl, i64 8
  store ptr null, ptr %i.ajm, align 8, !tbaa !221
  %i.ajn = load ptr, ptr %i.ajg, align 8, !tbaa !221
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajn, i64 16
  store ptr null, ptr %i.ajo, align 8, !tbaa !221
  %i.ajp = load ptr, ptr %i.ajg, align 8, !tbaa !221
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajp, i64 24
  store ptr null, ptr %i.ajq, align 8, !tbaa !221
  %.pre.i254 = load ptr, ptr %i.ajg, align 8, !tbaa !221
  br label %_ZN10tetgenmesh6tsbondERNS_7trifaceERNS_4faceE.exit255

_ZN10tetgenmesh6tsbondERNS_7trifaceERNS_4faceE.exit255: ; preds = %_ZN10tetgenmesh6tsbondERNS_7trifaceERNS_4faceE.exit, %.loopexit.loopexit.i253
  %i.ajr = phi ptr [ %.pre.i254, %.loopexit.loopexit.i253 ], [ %i.ajh, %_ZN10tetgenmesh6tsbondERNS_7trifaceERNS_4faceE.exit ]
  %i.ajs = sext i32 %i.aje to i64                 ; 2 uses
  %i.ajt = getelementptr inbounds [24 x i8], ptr @_ZN10tetgenmesh9tsbondtblE, i64 %i.ajs
  %i.aju = sext i32 %i.ajf to i64                 ; 2 uses
  %i.ajv = getelementptr inbounds [4 x i8], ptr %i.ajt, i64 %i.aju
  %i.ajw = load i32, ptr %i.ajv, align 4, !tbaa !60
  %i.ajx = sext i32 %i.ajw to i64
  %i.ajy = or i64 %i.ajx, %i.aig
  %i.ajz = inttoptr i64 %i.ajy to ptr
  %i.aka = and i32 %i.aje, 3
  %i.akb = zext nneg i32 %i.aka to i64
  %i.akc = getelementptr inbounds nuw [8 x i8], ptr %i.ajr, i64 %i.akb
  store ptr %i.ajz, ptr %i.akc, align 8, !tbaa !221
  %i.akd = getelementptr inbounds [24 x i8], ptr @_ZN10tetgenmesh9stbondtblE, i64 %i.ajs
  %i.ake = getelementptr inbounds [4 x i8], ptr %i.akd, i64 %i.aju
  %i.akf = load i32, ptr %i.ake, align 4, !tbaa !60
  %i.akg = sext i32 %i.akf to i64
  %i.akh = or i64 %i.aiz, %i.akg
  %i.aki = inttoptr i64 %i.akh to ptr
  %i.akj = and i32 %i.ajf, 1
  %i.akk = zext nneg i32 %i.akj to i64
  %i.akl = getelementptr inbounds nuw [8 x i8], ptr %i.ahc, i64 %i.akk
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akl, i64 72
  store ptr %i.aki, ptr %i.akm, align 8, !tbaa !221
  br label %.outer.backedge

bb.ct:                                            ; preds = %_ZN10tetgenmesh7tspivotERNS_7trifaceERNS_4faceE.exit
  %i.akn = getelementptr inbounds [4 x i8], ptr %i.aho, i64 %i.aap
  %i.ako = load i32, ptr %i.akn, align 4, !tbaa !60 ; 2 uses
  %i.akp = getelementptr inbounds [4 x i8], ptr %i.ahc, i64 %i.aap
  %i.akq = load i32, ptr %i.akp, align 4, !tbaa !60
  %i.akr = icmp eq i32 %i.ako, %i.akq
  %i.aks = load ptr, ptr %i.r, align 8, !tbaa !219 ; 3 uses
  %i.akt = getelementptr inbounds nuw i8, ptr %i.aks, i64 148
  %i.aku = load i32, ptr %i.akt, align 4, !tbaa !184
  %.not232 = icmp eq i32 %i.aku, 0                ; 2 uses
  br i1 %i.akr, label %bb.cu, label %bb.cy

bb.cu:                                            ; preds = %bb.ct
  br i1 %.not232, label %bb.cv, label %bb.cx

bb.cv:                                            ; preds = %bb.cu
  %i.akv = getelementptr inbounds nuw i8, ptr %i.aks, i64 152
  %i.akw = load i32, ptr %i.akv, align 8, !tbaa !185
  %.not233 = icmp eq i32 %i.akw, 0
  br i1 %.not233, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.akx = getelementptr inbounds nuw i8, ptr %i.ahc, i64 24
  %i.aky = load ptr, ptr %i.akx, align 8, !tbaa !113
  %i.akz = load i32, ptr %i.an, align 8, !tbaa !224
  %i.ala = sext i32 %i.akz to i64                 ; 3 uses
  %i.alb = getelementptr inbounds [4 x i8], ptr %i.aky, i64 %i.ala
  %i.alc = load i32, ptr %i.alb, align 4, !tbaa !60
  %i.ald = getelementptr inbounds nuw i8, ptr %i.ahc, i64 32
  %i.ale = load ptr, ptr %i.ald, align 8, !tbaa !113
  %i.alf = getelementptr inbounds [4 x i8], ptr %i.ale, i64 %i.ala
  %i.alg = load i32, ptr %i.alf, align 4, !tbaa !60
  %i.alh = getelementptr inbounds nuw i8, ptr %i.ahc, i64 40
  %i.ali = load ptr, ptr %i.alh, align 8, !tbaa !113
  %i.alj = getelementptr inbounds [4 x i8], ptr %i.ali, i64 %i.ala
  %i.alk = load i32, ptr %i.alj, align 4, !tbaa !60
  %i.all = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.391, i32 noundef %i.alc, i32 noundef %i.alg, i32 noundef %i.alk, i32 noundef %i.ako) ; 0 uses
  %.pre625 = load i32, ptr %i.am, align 8, !tbaa !240
  %.pre635 = sext i32 %.pre625 to i64
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv, %bb.cu
  %.pre-phi636 = phi i64 [ %.pre635, %bb.cw ], [ %i.aap, %bb.cv ], [ %i.aap, %bb.cu ]
  %i.alm = load i64, ptr %i.bv, align 8, !tbaa !395
  %i.aln = add nsw i64 %i.alm, 1
  store i64 %i.aln, ptr %i.bv, align 8, !tbaa !395
  %i.alo = getelementptr [4 x i8], ptr %i.ahc, i64 %.pre-phi636
  %i.alp = getelementptr i8, ptr %i.alo, i64 4    ; 2 uses
  %i.alq = load i32, ptr %i.alp, align 4, !tbaa !60
  %i.alr = or i32 %i.alq, 8
  store i32 %i.alr, ptr %i.alp, align 4, !tbaa !60
  %i.als = load i32, ptr %i.am, align 8, !tbaa !240
  %i.alt = sext i32 %i.als to i64
  %i.alu = getelementptr [4 x i8], ptr %i.ahc, i64 %i.alt
  %i.alv = getelementptr i8, ptr %i.alu, i64 4    ; 2 uses
  %i.alw = load i32, ptr %i.alv, align 4, !tbaa !60
  %i.alx = or i32 %i.alw, 1
  store i32 %i.alx, ptr %i.alv, align 4, !tbaa !60
  br label %.outer.backedge

bb.cy:                                            ; preds = %bb.ct
  br i1 %.not232, label %bb.cz, label %.thread430.thread

bb.cz:                                            ; preds = %bb.cy
  %i.aly = getelementptr inbounds nuw i8, ptr %i.aks, i64 152
  %i.alz = load i32, ptr %i.aly, align 8, !tbaa !185
  %.not231 = icmp eq i32 %i.alz, 0
  br i1 %.not231, label %bb.da, label %.thread430.thread

bb.da:                                            ; preds = %bb.cz
  %i.ama = getelementptr inbounds nuw i8, ptr %i.aho, i64 24
  %i.amb = load ptr, ptr %i.ama, align 8, !tbaa !113
  %i.amc = load i32, ptr %i.an, align 8, !tbaa !224
  %i.amd = sext i32 %i.amc to i64                 ; 3 uses
  %i.ame = getelementptr inbounds [4 x i8], ptr %i.amb, i64 %i.amd
  %i.amf = load i32, ptr %i.ame, align 4, !tbaa !60
  %i.amg = getelementptr inbounds nuw i8, ptr %i.aho, i64 32
  %i.amh = load ptr, ptr %i.amg, align 8, !tbaa !113
  %i.ami = getelementptr inbounds [4 x i8], ptr %i.amh, i64 %i.amd
  %i.amj = load i32, ptr %i.ami, align 4, !tbaa !60
  %i.amk = getelementptr inbounds nuw i8, ptr %i.aho, i64 40
  %i.aml = load ptr, ptr %i.amk, align 8, !tbaa !113
  %i.amm = getelementptr inbounds [4 x i8], ptr %i.aml, i64 %i.amd
  %i.amn = load i32, ptr %i.amm, align 4, !tbaa !60
  %i.amo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.392, i32 noundef %i.amf, i32 noundef %i.amj, i32 noundef %i.amn) ; 0 uses
  %i.amp = load i32, ptr %i.am, align 8, !tbaa !240
  %i.amq = sext i32 %i.amp to i64
  %i.amr = getelementptr inbounds [4 x i8], ptr %i.aho, i64 %i.amq
  %i.ams = load i32, ptr %i.amr, align 4, !tbaa !60
  %i.amt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.393, i32 noundef %i.ams) ; 0 uses
  %i.amu = load i32, ptr %i.am, align 8, !tbaa !240
  %i.amv = sext i32 %i.amu to i64
  %i.amw = getelementptr inbounds [4 x i8], ptr %i.ahc, i64 %i.amv
  %i.amx = load i32, ptr %i.amw, align 4, !tbaa !60
  %i.amy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.394, i32 noundef %i.amx) ; 0 uses
  br label %.thread430.thread

.thread430.thread:                                ; preds = %bb.cy, %bb.cz, %bb.da
  store i32 10, ptr %i.c, align 4, !tbaa !60
  br label %bb.gh

bb.db:                                            ; preds = %bb.cq
  %i.amz = load i32, ptr %i.c, align 4, !tbaa !60 ; 2 uses
  %i.ana = icmp ne i32 %i.amz, 10
  %or.cond3 = and i1 %i.bx, %i.ana
  br i1 %or.cond3, label %bb.dc, label %.thread430

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #40
  %i.anb = load i32, ptr %i.an, align 8, !tbaa !224
  %i.anc = sext i32 %i.anb to i64                 ; 5 uses
  %i.and = getelementptr inbounds [4 x i8], ptr %i.aac, i64 %i.anc
  %i.ane = load i32, ptr %i.and, align 4, !tbaa !60 ; 3 uses
  %i.anf = getelementptr inbounds [4 x i8], ptr %i.aah, i64 %i.anc
  %i.ang = load i32, ptr %i.anf, align 4, !tbaa !60 ; 3 uses
  %i.anh = getelementptr inbounds [4 x i8], ptr %i.aam, i64 %i.anc
  %i.ani = load i32, ptr %i.anh, align 4, !tbaa !60 ; 4 uses
  %i.anj = icmp slt i32 %i.ane, %i.ang
  br i1 %i.anj, label %bb.dd, label %bb.df

bb.dd:                                            ; preds = %bb.dc
  %i.ank = icmp slt i32 %i.ane, %i.ani
  br i1 %i.ank, label %bb.de, label %_ZN10tetgenmesh9sort_3ptsEPdS0_S0_PS0_.exit

bb.de:                                            ; preds = %bb.dd
  %i.anl = icmp slt i32 %i.ang, %i.ani            ; 2 uses
  %spec.select = select i1 %i.anl, ptr %i.aah, ptr %i.aam
  %spec.select446 = select i1 %i.anl, ptr %i.aam, ptr %i.aah
  br label %_ZN10tetgenmesh9sort_3ptsEPdS0_S0_PS0_.exit

bb.df:                                            ; preds = %bb.dc
  %i.anm = icmp slt i32 %i.ang, %i.ani
  br i1 %i.anm, label %bb.dg, label %_ZN10tetgenmesh9sort_3ptsEPdS0_S0_PS0_.exit

bb.dg:                                            ; preds = %bb.df
  %i.ann = icmp slt i32 %i.ane, %i.ani            ; 2 uses
  %spec.select447 = select i1 %i.ann, ptr %i.aac, ptr %i.aam
  %spec.select448 = select i1 %i.ann, ptr %i.aam, ptr %i.aac
  br label %_ZN10tetgenmesh9sort_3ptsEPdS0_S0_PS0_.exit

_ZN10tetgenmesh9sort_3ptsEPdS0_S0_PS0_.exit:      ; preds = %bb.dg, %bb.de, %bb.df, %bb.dd
  %.sroa.7335.0 = phi ptr [ %spec.select, %bb.de ], [ %i.aah, %bb.df ], [ %spec.select447, %bb.dg ], [ %i.aac, %bb.dd ]
  %.sroa.0334.0 = phi ptr [ %i.aac, %bb.de ], [ %i.aam, %bb.df ], [ %i.aah, %bb.dg ], [ %i.aam, %bb.dd ]
  %.sink.i256 = phi ptr [ %spec.select446, %bb.de ], [ %i.aac, %bb.df ], [ %spec.select448, %bb.dg ], [ %i.aah, %bb.dd ]
  %i.ano = load ptr, ptr %i.a, align 8, !tbaa !113 ; 3 uses
  %i.anp = load ptr, ptr %i.b, align 8, !tbaa !113 ; 3 uses
  %i.anq = getelementptr inbounds [4 x i8], ptr %i.ano, i64 %i.anc
  %i.anr = load i32, ptr %i.anq, align 4, !tbaa !60
  %i.ans = getelementptr inbounds [4 x i8], ptr %i.anp, i64 %i.anc
  %i.ant = load i32, ptr %i.ans, align 4, !tbaa !60
  %i.anu = icmp slt i32 %i.anr, %i.ant            ; 2 uses
  %spec.select.i = select i1 %i.anu, ptr %i.ano, ptr %i.anp
  %spec.select12.i = select i1 %i.anu, ptr %i.anp, ptr %i.ano
  call void @_ZN10tetgenmesh12planelineintEPdS0_S0_S0_S0_S0_S0_(ptr nonnull align 8 poison, ptr noundef nonnull %.sroa.0334.0, ptr noundef nonnull %.sroa.7335.0, ptr noundef nonnull %.sink.i256, ptr noundef %spec.select.i, ptr noundef %spec.select12.i, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e)
  %i.anv = load ptr, ptr %i.av, align 8, !tbaa !220
  %i.anw = call noundef ptr @_ZN10tetgenmesh10memorypool5allocEv(ptr noundef nonnull align 8 dereferenceable(88) %i.anv) ; 23 uses
  %i.anx = load i32, ptr %i.aw, align 8, !tbaa !242 ; 2 uses
  %i.any = icmp sgt i32 %i.anx, 0
  br i1 %i.any, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN10tetgenmesh9sort_3ptsEPdS0_S0_PS0_.exit
  %scevgep.i = getelementptr i8, ptr %i.anw, i64 24
  %i.anz = zext nneg i32 %i.anx to i64
  %i.aoa = shl nuw nsw i64 %i.anz, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.aoa, i1 false), !tbaa !59
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.preheader.i, %_ZN10tetgenmesh9sort_3ptsEPdS0_S0_PS0_.exit
  %i.aob = load i32, ptr %i.ax, align 8, !tbaa !243 ; 2 uses
  %i.aoc = icmp sgt i32 %i.aob, 0
  br i1 %i.aoc, label %.lr.ph23.i, label %._crit_edge.i

.lr.ph23.i:                                       ; preds = %.preheader.i
  %i.aod = load i32, ptr %i.ay, align 4, !tbaa !244
  %i.aoe = sext i32 %i.aod to i64
  %i.aof = shl nsw i64 %i.aoe, 3
  %scevgep25.i = getelementptr i8, ptr %i.anw, i64 %i.aof
  %i.aog = zext nneg i32 %i.aob to i64
  %i.aoh = shl nuw nsw i64 %i.aog, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep25.i, i8 0, i64 %i.aoh, i1 false), !tbaa !59
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph23.i, %.preheader.i
  %i.aoi = load i32, ptr %i.ap, align 4, !tbaa !245
  %i.aoj = sext i32 %i.aoi to i64
  %i.aok = getelementptr inbounds [8 x i8], ptr %i.anw, i64 %i.aoj ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aok, i8 0, i64 16, i1 false)
  %i.aol = load ptr, ptr %i.r, align 8, !tbaa !219 ; 4 uses
  %i.aom = load i32, ptr %i.aol, align 8, !tbaa !118
  %.not.i257 = icmp eq i32 %i.aom, 0
  br i1 %.not.i257, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %._crit_edge.i
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aol, i64 8
  %i.aoo = load i32, ptr %i.aon, align 8, !tbaa !126
  %.not17.i = icmp eq i32 %i.aoo, 0
  br i1 %.not17.i, label %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit, label %bb.di

bb.di:                                            ; preds = %bb.dh, %._crit_edge.i
  %i.aop = getelementptr i8, ptr %i.aok, i64 16
  store ptr null, ptr %i.aop, align 8, !tbaa !221
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aol, i64 44
  %i.aor = load i32, ptr %i.aoq, align 4, !tbaa !144
  %.not18.i = icmp eq i32 %i.aor, 0
  br i1 %.not18.i, label %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.aos = load ptr, ptr %i.az, align 8, !tbaa !246
  %.not19.i258 = icmp eq ptr %i.aos, null
  br i1 %.not19.i258, label %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.aot = getelementptr i8, ptr %i.aok, i64 24
  store ptr null, ptr %i.aot, align 8, !tbaa !221
  br label %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit

_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit:  ; preds = %bb.dh, %bb.di, %bb.dj, %bb.dk
  %i.aou = load ptr, ptr %i.av, align 8, !tbaa !220
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aou, i64 64
  %i.aow = load i64, ptr %i.aov, align 8, !tbaa !203
  %i.aox = trunc i64 %i.aow to i32
  %i.aoy = load ptr, ptr %0, align 8, !tbaa !222
  %i.aoz = load i32, ptr %i.aoy, align 8, !tbaa !56
  %.not20.i = icmp eq i32 %i.aoz, 0
  %.neg.i = sext i1 %.not20.i to i32
  %i.apa = add i32 %.neg.i, %i.aox
  %i.apb = load i32, ptr %i.an, align 8, !tbaa !224
  %i.apc = sext i32 %i.apb to i64
  %i.apd = getelementptr inbounds [4 x i8], ptr %i.anw, i64 %i.apc
  store i32 %i.apa, ptr %i.apd, align 4, !tbaa !60
  %i.ape = load i32, ptr %i.an, align 8, !tbaa !224
  %i.apf = sext i32 %i.ape to i64
  %i.apg = getelementptr [4 x i8], ptr %i.anw, i64 %i.apf
  %i.aph = getelementptr i8, ptr %i.apg, i64 4
  store i32 0, ptr %i.aph, align 4, !tbaa !60
  %i.api = load i32, ptr %i.an, align 8, !tbaa !224
  %i.apj = sext i32 %i.api to i64
  %i.apk = getelementptr [4 x i8], ptr %i.anw, i64 %i.apj
  %i.apl = getelementptr i8, ptr %i.apk, i64 4    ; 2 uses
  %i.apm = load i32, ptr %i.apl, align 4, !tbaa !60
  %i.apn = and i32 %i.apm, 255
  %i.apo = or disjoint i32 %i.apn, 1536
  store i32 %i.apo, ptr %i.apl, align 4, !tbaa !60
  %i.app = load double, ptr %i.e, align 8, !tbaa !59 ; 2 uses
  %i.apq = fcmp ogt double %i.app, 0.000000e+00
  %i.apr = fcmp olt double %i.app, 1.000000e+00
  %or.cond5 = and i1 %i.apq, %i.apr
  br i1 %or.cond5, label %.preheader.preheader, label %.preheader459.preheader

.preheader459.preheader:                          ; preds = %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit
  %i.aps = load double, ptr %i.aac, align 8, !tbaa !59
  %i.apt = load double, ptr %i.aah, align 8, !tbaa !59
  %i.apu = fadd double %i.aps, %i.apt
  %i.apv = load double, ptr %i.aam, align 8, !tbaa !59
  %i.apw = fadd double %i.apu, %i.apv
  %i.apx = getelementptr inbounds nuw i8, ptr %i.aac, i64 8
  %i.apy = getelementptr inbounds nuw i8, ptr %i.aah, i64 8
  %i.apz = getelementptr inbounds nuw i8, ptr %i.aam, i64 8
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.anw, i64 8
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.aac, i64 16 ; 2 uses
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.aah, i64 16 ; 2 uses
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aam, i64 16 ; 2 uses
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.anw, i64 16
  %i.aqf = fdiv double %i.apw, 3.000000e+00       ; 2 uses
  store double %i.aqf, ptr %i.anw, align 8, !tbaa !59
  %i.aqg = load double, ptr %i.apx, align 8, !tbaa !59
  %i.aqh = load double, ptr %i.apy, align 8, !tbaa !59
  %i.aqi = fadd double %i.aqg, %i.aqh
  %i.aqj = load double, ptr %i.apz, align 8, !tbaa !59
  %i.aqk = fadd double %i.aqi, %i.aqj
  %i.aql = fdiv double %i.aqk, 3.000000e+00       ; 3 uses
  store double %i.aql, ptr %i.aqa, align 8, !tbaa !59
  %i.aqm = load double, ptr %i.aqb, align 8, !tbaa !59
  %i.aqn = load double, ptr %i.aqc, align 8, !tbaa !59
  %i.aqo = fadd double %i.aqm, %i.aqn
  %i.aqp = load double, ptr %i.aqd, align 8, !tbaa !59
  %i.aqq = fadd double %i.aqo, %i.aqp
  %i.aqr = fdiv double %i.aqq, 3.000000e+00       ; 3 uses
  store double %i.aqr, ptr %i.aqe, align 8, !tbaa !59
  %i.aqs = load <2 x double>, ptr %i.aac, align 8, !tbaa !59 ; 2 uses
  %i.aqt = load double, ptr %i.aqb, align 8, !tbaa !59
  %i.aqu = load <2 x double>, ptr %i.aah, align 8, !tbaa !59 ; 2 uses
  %i.aqv = shufflevector <2 x double> %i.aqs, <2 x double> %i.aqu, <2 x i32> <i32 0, i32 2>
  %i.aqw = insertelement <2 x double> poison, double %i.aqf, i64 0 ; 2 uses
  %i.aqx = shufflevector <2 x double> %i.aqw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aqy = fsub <2 x double> %i.aqv, %i.aqx       ; 5 uses
  %i.aqz = shufflevector <2 x double> %i.aqs, <2 x double> %i.aqu, <2 x i32> <i32 1, i32 3>
  %i.ara = insertelement <2 x double> poison, double %i.aql, i64 0
  %i.arb = shufflevector <2 x double> %i.ara, <2 x double> poison, <2 x i32> zeroinitializer
  %i.arc = fsub <2 x double> %i.aqz, %i.arb       ; 6 uses
  %i.ard = load double, ptr %i.aqc, align 8, !tbaa !59
  %i.are = insertelement <2 x double> poison, double %i.aqt, i64 0
  %i.arf = insertelement <2 x double> %i.are, double %i.ard, i64 1
  %i.arg = insertelement <2 x double> poison, double %i.aqr, i64 0
  %i.arh = shufflevector <2 x double> %i.arg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ari = fsub <2 x double> %i.arf, %i.arh       ; 4 uses
  %i.arj = fmul <2 x double> %i.arc, %i.arc
  %i.ark = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aqy, <2 x double> %i.aqy, <2 x double> %i.arj)
  %i.arl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ari, <2 x double> %i.ari, <2 x double> %i.ark)
  %i.arm = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.arl) ; 4 uses
  %i.arn = extractelement <2 x double> %i.aqy, i64 0 ; 2 uses
  %i.aro = extractelement <2 x double> %i.aqy, i64 1
  %i.arp = extractelement <2 x double> %i.ari, i64 0 ; 2 uses
  %i.arq = extractelement <2 x double> %i.ari, i64 1 ; 2 uses
  %i.arr = shufflevector <2 x double> %i.arc, <2 x double> %i.arm, <2 x i32> <i32 0, i32 2>
  %i.ars = shufflevector <2 x double> %i.arc, <2 x double> %i.arm, <2 x i32> <i32 1, i32 3>
  %i.art = fmul <2 x double> %i.arr, %i.ars       ; 2 uses
  %i.aru = extractelement <2 x double> %i.art, i64 0
  %i.arv = call double @llvm.fmuladd.f64(double %i.arn, double %i.aro, double %i.aru)
  %i.arw = call double @llvm.fmuladd.f64(double %i.arp, double %i.arq, double %i.arv)
  %i.arx = extractelement <2 x double> %i.art, i64 1
  %i.ary = fdiv double %i.arw, %i.arx
  %i.arz = load double, ptr %i.by, align 8, !tbaa !320 ; 3 uses
  %i.asa = fcmp olt double %i.ary, %i.arz
  br i1 %i.asa, label %bb.dt, label %bb.dr

.preheader.preheader:                             ; preds = %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.anw, ptr noundef nonnull align 16 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa !59
  %i.asb = getelementptr inbounds nuw i8, ptr %i.aac, i64 8
  %i.asc = getelementptr inbounds nuw i8, ptr %i.anw, i64 8 ; 2 uses
  %i.asd = getelementptr inbounds nuw i8, ptr %i.aac, i64 16 ; 3 uses
  %i.ase = load double, ptr %i.asd, align 8, !tbaa !59
  %i.asf = getelementptr inbounds nuw i8, ptr %i.anw, i64 16 ; 2 uses
  %i.asg = getelementptr inbounds nuw i8, ptr %i.aah, i64 8
  %i.ash = getelementptr inbounds nuw i8, ptr %i.aah, i64 16 ; 3 uses
  %i.asi = load double, ptr %i.ash, align 8, !tbaa !59
  %i.asj = load <2 x double>, ptr %i.aac, align 8, !tbaa !59 ; 3 uses
  %9 = load double, ptr %i.asc, align 8, !tbaa !59 ; 2 uses
  %10 = load double, ptr %i.anw, align 8, !tbaa !59 ; 2 uses
  %11 = load double, ptr %i.asf, align 8, !tbaa !59 ; 2 uses
  %i.ask = load <2 x double>, ptr %i.aah, align 8, !tbaa !59 ; 3 uses
  %i.asl = shufflevector <2 x double> %i.asj, <2 x double> %i.ask, <2 x i32> <i32 0, i32 2>
  %12 = insertelement <2 x double> poison, double %10, i64 0
  %i.asm = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> zeroinitializer
  %i.asn = fsub <2 x double> %i.asl, %i.asm       ; 4 uses
  %i.aso = shufflevector <2 x double> %i.asj, <2 x double> %i.ask, <2 x i32> <i32 1, i32 3>
  %13 = insertelement <2 x double> poison, double %9, i64 0
  %14 = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> zeroinitializer
  %i.asp = fsub <2 x double> %i.aso, %14          ; 6 uses
  %15 = insertelement <2 x double> poison, double %i.ase, i64 0
  %i.asq = insertelement <2 x double> %15, double %i.asi, i64 1
  %i.asr = insertelement <2 x double> poison, double %11, i64 0
  %16 = shufflevector <2 x double> %i.asr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ass = fsub <2 x double> %i.asq, %16          ; 4 uses
  %i.ast = fmul <2 x double> %i.asp, %i.asp
  %i.asu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.asn, <2 x double> %i.asn, <2 x double> %i.ast)
  %i.asv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ass, <2 x double> %i.ass, <2 x double> %i.asu)
  %i.asw = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.asv) ; 4 uses
  %i.asx = extractelement <2 x double> %i.asn, i64 0 ; 2 uses
  %i.asy = extractelement <2 x double> %i.asn, i64 1 ; 2 uses
  %i.asz = extractelement <2 x double> %i.ass, i64 0 ; 2 uses
  %i.ata = extractelement <2 x double> %i.ass, i64 1 ; 2 uses
  %i.atb = shufflevector <2 x double> %i.asp, <2 x double> %i.asw, <2 x i32> <i32 0, i32 2>
  %i.atc = shufflevector <2 x double> %i.asp, <2 x double> %i.asw, <2 x i32> <i32 1, i32 3>
  %i.atd = fmul <2 x double> %i.atb, %i.atc       ; 2 uses
  %i.ate = extractelement <2 x double> %i.atd, i64 0
  %i.atf = call double @llvm.fmuladd.f64(double %i.asx, double %i.asy, double %i.ate)
  %i.atg = call double @llvm.fmuladd.f64(double %i.asz, double %i.ata, double %i.atf)
  %i.ath = extractelement <2 x double> %i.atd, i64 1
  %i.ati = fdiv double %i.atg, %i.ath
  %i.atj = load double, ptr %i.by, align 8, !tbaa !320 ; 3 uses
  %i.atk = fcmp olt double %i.ati, %i.atj
  %.pre627 = load double, ptr %i.aam, align 8, !tbaa !59 ; 2 uses
  br i1 %i.atk, label %bb.dn, label %bb.dl

bb.dl:                                            ; preds = %.preheader.preheader
  %i.atl = fsub double %.pre627, %10              ; 4 uses
  %i.atm = getelementptr inbounds nuw i8, ptr %i.aam, i64 8
  %i.atn = load double, ptr %i.atm, align 8, !tbaa !59
  %i.ato = fsub double %i.atn, %9                 ; 4 uses
  %i.atp = getelementptr inbounds nuw i8, ptr %i.aam, i64 16
  %i.atq = load double, ptr %i.atp, align 8, !tbaa !59
  %i.atr = fsub double %i.atq, %11                ; 4 uses
  %i.ats = fmul double %i.ato, %i.ato
  %i.att = call double @llvm.fmuladd.f64(double %i.atl, double %i.atl, double %i.ats)
  %i.atu = call double @llvm.fmuladd.f64(double %i.atr, double %i.atr, double %i.att)
  %sqrt.i260 = call double @llvm.sqrt.f64(double %i.atu) ; 2 uses
  %i.atv = extractelement <2 x double> %i.asp, i64 1
  %i.atw = fmul double %i.atv, %i.ato
  %i.atx = call double @llvm.fmuladd.f64(double %i.asy, double %i.atl, double %i.atw)
  %i.aty = call double @llvm.fmuladd.f64(double %i.ata, double %i.atr, double %i.atx)
  %i.atz = extractelement <2 x double> %i.asw, i64 1
  %i.aua = fmul double %i.atz, %sqrt.i260
  %i.aub = fdiv double %i.aty, %i.aua
  %i.auc = fcmp olt double %i.aub, %i.atj
  br i1 %i.auc, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.aud = extractelement <2 x double> %i.asp, i64 0
  %i.aue = fmul double %i.aud, %i.ato
  %i.auf = call double @llvm.fmuladd.f64(double %i.atl, double %i.asx, double %i.aue)
  %i.aug = call double @llvm.fmuladd.f64(double %i.atr, double %i.asz, double %i.auf)
  %i.auh = extractelement <2 x double> %i.asw, i64 0
  %i.aui = fmul double %i.auh, %sqrt.i260
  %i.auj = fdiv double %i.aug, %i.aui
  %i.auk = fcmp olt double %i.auj, %i.atj
  br i1 %i.auk, label %bb.dn, label %bb.du

bb.dn:                                            ; preds = %bb.dm, %bb.dl, %.preheader.preheader
  %foldExtExtBinop = fadd <2 x double> %i.asj, %i.ask
  %i.aul = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.aum = fadd double %i.aul, %.pre627
  %i.aun = getelementptr inbounds nuw i8, ptr %i.aam, i64 8
  %i.auo = getelementptr inbounds nuw i8, ptr %i.aam, i64 16 ; 2 uses
  %i.aup = fdiv double %i.aum, 3.000000e+00       ; 2 uses
  store double %i.aup, ptr %i.anw, align 8, !tbaa !59
  %i.auq = load double, ptr %i.asb, align 8, !tbaa !59
  %i.aur = load double, ptr %i.asg, align 8, !tbaa !59
  %i.aus = fadd double %i.auq, %i.aur
  %i.aut = load double, ptr %i.aun, align 8, !tbaa !59
  %i.auu = fadd double %i.aus, %i.aut
  %i.auv = fdiv double %i.auu, 3.000000e+00       ; 3 uses
  store double %i.auv, ptr %i.asc, align 8, !tbaa !59
  %i.auw = load double, ptr %i.asd, align 8, !tbaa !59
  %i.aux = load double, ptr %i.ash, align 8, !tbaa !59
  %i.auy = fadd double %i.auw, %i.aux
  %i.auz = load double, ptr %i.auo, align 8, !tbaa !59
  %i.ava = fadd double %i.auy, %i.auz
  %i.avb = fdiv double %i.ava, 3.000000e+00       ; 3 uses
  store double %i.avb, ptr %i.asf, align 8, !tbaa !59
  %i.avc = load <2 x double>, ptr %i.aac, align 8, !tbaa !59 ; 2 uses
  %i.avd = load double, ptr %i.asd, align 8, !tbaa !59
  %i.ave = load <2 x double>, ptr %i.aah, align 8, !tbaa !59 ; 2 uses
  %i.avf = shufflevector <2 x double> %i.avc, <2 x double> %i.ave, <2 x i32> <i32 0, i32 2>
  %i.avg = insertelement <2 x double> poison, double %i.aup, i64 0 ; 2 uses
  %i.avh = shufflevector <2 x double> %i.avg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.avi = fsub <2 x double> %i.avf, %i.avh       ; 5 uses
  %i.avj = shufflevector <2 x double> %i.avc, <2 x double> %i.ave, <2 x i32> <i32 1, i32 3>
  %i.avk = insertelement <2 x double> poison, double %i.auv, i64 0
  %i.avl = shufflevector <2 x double> %i.avk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.avm = fsub <2 x double> %i.avj, %i.avl       ; 6 uses
  %i.avn = load double, ptr %i.ash, align 8, !tbaa !59
  %i.avo = insertelement <2 x double> poison, double %i.avd, i64 0
  %i.avp = insertelement <2 x double> %i.avo, double %i.avn, i64 1
  %i.avq = insertelement <2 x double> poison, double %i.avb, i64 0
  %i.avr = shufflevector <2 x double> %i.avq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.avs = fsub <2 x double> %i.avp, %i.avr       ; 4 uses
  %i.avt = fmul <2 x double> %i.avm, %i.avm
  %i.avu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.avi, <2 x double> %i.avi, <2 x double> %i.avt)
  %i.avv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.avs, <2 x double> %i.avs, <2 x double> %i.avu)
  %i.avw = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.avv) ; 4 uses
  %i.avx = extractelement <2 x double> %i.avi, i64 0 ; 2 uses
  %i.avy = extractelement <2 x double> %i.avi, i64 1
  %i.avz = extractelement <2 x double> %i.avs, i64 0 ; 2 uses
  %i.awa = extractelement <2 x double> %i.avs, i64 1 ; 2 uses
  %i.awb = shufflevector <2 x double> %i.avm, <2 x double> %i.avw, <2 x i32> <i32 0, i32 2>
  %i.awc = shufflevector <2 x double> %i.avm, <2 x double> %i.avw, <2 x i32> <i32 1, i32 3>
  %i.awd = fmul <2 x double> %i.awb, %i.awc       ; 2 uses
  %i.awe = extractelement <2 x double> %i.awd, i64 0
  %i.awf = call double @llvm.fmuladd.f64(double %i.avx, double %i.avy, double %i.awe)
  %i.awg = call double @llvm.fmuladd.f64(double %i.avz, double %i.awa, double %i.awf)
  %i.awh = extractelement <2 x double> %i.awd, i64 1
  %i.awi = fdiv double %i.awg, %i.awh
  %i.awj = load double, ptr %i.by, align 8, !tbaa !320 ; 3 uses
  %i.awk = fcmp olt double %i.awi, %i.awj
  br i1 %i.awk, label %bb.dq, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.awl = load double, ptr %i.auo, align 8, !tbaa !59
  %i.awm = fsub double %i.awl, %i.avb             ; 4 uses
  %i.awn = load <2 x double>, ptr %i.aam, align 8, !tbaa !59
  %i.awo = insertelement <2 x double> %i.avg, double %i.auv, i64 1
  %i.awp = fsub <2 x double> %i.awn, %i.awo       ; 6 uses
  %i.awq = shufflevector <2 x double> %i.awp, <2 x double> %i.avm, <2 x i32> <i32 1, i32 3>
  %i.awr = shufflevector <2 x double> %i.awp, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aws = fmul <2 x double> %i.awq, %i.awr
  %i.awt = shufflevector <2 x double> %i.awp, <2 x double> %i.avi, <2 x i32> <i32 0, i32 3>
  %i.awu = shufflevector <2 x double> %i.awp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.awv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.awt, <2 x double> %i.awu, <2 x double> %i.aws) ; 2 uses
  %i.aww = extractelement <2 x double> %i.awv, i64 0
  %i.awx = call double @llvm.fmuladd.f64(double %i.awm, double %i.awm, double %i.aww)
  %sqrt.i266 = call double @llvm.sqrt.f64(double %i.awx) ; 2 uses
  %i.awy = extractelement <2 x double> %i.awv, i64 1
  %i.awz = call double @llvm.fmuladd.f64(double %i.awa, double %i.awm, double %i.awy)
  %i.axa = extractelement <2 x double> %i.avw, i64 1
  %i.axb = fmul double %i.axa, %sqrt.i266
  %i.axc = fdiv double %i.awz, %i.axb
  %i.axd = fcmp olt double %i.axc, %i.awj
  br i1 %i.axd, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %shift = shufflevector <2 x double> %i.awp, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop817 = fmul <2 x double> %i.avm, %shift
  %i.axe = extractelement <2 x double> %foldExtExtBinop817, i64 0
  %i.axf = extractelement <2 x double> %i.awp, i64 0
  %i.axg = call double @llvm.fmuladd.f64(double %i.axf, double %i.avx, double %i.axe)
  %i.axh = call double @llvm.fmuladd.f64(double %i.awm, double %i.avz, double %i.axg)
  %i.axi = extractelement <2 x double> %i.avw, i64 0
  %i.axj = fmul double %i.axi, %sqrt.i266
  %i.axk = fdiv double %i.axh, %i.axj
  %i.axl = fcmp olt double %i.axk, %i.awj
  br i1 %i.axl, label %bb.dq, label %bb.du

bb.dq:                                            ; preds = %bb.dp, %bb.do, %bb.dn
  %i.axm = call ptr @__cxa_allocate_exception(i64 4) #40 ; 2 uses
  store i32 2, ptr %i.axm, align 16, !tbaa !60
  call void @__cxa_throw(ptr nonnull %i.axm, ptr nonnull @_ZTIi, ptr null) #43
  unreachable

bb.dr:                                            ; preds = %.preheader459.preheader
  %i.axn = load double, ptr %i.aqd, align 8, !tbaa !59
  %i.axo = fsub double %i.axn, %i.aqr             ; 4 uses
  %i.axp = load <2 x double>, ptr %i.aam, align 8, !tbaa !59
  %i.axq = insertelement <2 x double> %i.aqw, double %i.aql, i64 1
  %i.axr = fsub <2 x double> %i.axp, %i.axq       ; 6 uses
  %i.axs = shufflevector <2 x double> %i.axr, <2 x double> %i.arc, <2 x i32> <i32 1, i32 3>
  %i.axt = shufflevector <2 x double> %i.axr, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.axu = fmul <2 x double> %i.axs, %i.axt
  %i.axv = shufflevector <2 x double> %i.axr, <2 x double> %i.aqy, <2 x i32> <i32 0, i32 3>
  %i.axw = shufflevector <2 x double> %i.axr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.axx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.axv, <2 x double> %i.axw, <2 x double> %i.axu) ; 2 uses
  %i.axy = extractelement <2 x double> %i.axx, i64 0
  %i.axz = call double @llvm.fmuladd.f64(double %i.axo, double %i.axo, double %i.axy)
  %sqrt.i272 = call double @llvm.sqrt.f64(double %i.axz) ; 2 uses
  %i.aya = extractelement <2 x double> %i.axx, i64 1
  %i.ayb = call double @llvm.fmuladd.f64(double %i.arq, double %i.axo, double %i.aya)
  %i.ayc = extractelement <2 x double> %i.arm, i64 1
  %i.ayd = fmul double %i.ayc, %sqrt.i272
  %i.aye = fdiv double %i.ayb, %i.ayd
  %i.ayf = fcmp olt double %i.aye, %i.arz
  br i1 %i.ayf, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %shift819 = shufflevector <2 x double> %i.axr, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop820 = fmul <2 x double> %i.arc, %shift819
  %i.ayg = extractelement <2 x double> %foldExtExtBinop820, i64 0
  %i.ayh = extractelement <2 x double> %i.axr, i64 0
  %i.ayi = call double @llvm.fmuladd.f64(double %i.ayh, double %i.arn, double %i.ayg)
  %i.ayj = call double @llvm.fmuladd.f64(double %i.axo, double %i.arp, double %i.ayi)
  %i.ayk = extractelement <2 x double> %i.arm, i64 0
  %i.ayl = fmul double %i.ayk, %sqrt.i272
  %i.aym = fdiv double %i.ayj, %i.ayl
  %i.ayn = fcmp olt double %i.aym, %i.arz
  br i1 %i.ayn, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds, %bb.dr, %.preheader459.preheader
  %i.ayo = call ptr @__cxa_allocate_exception(i64 4) #40 ; 2 uses
  store i32 2, ptr %i.ayo, align 16, !tbaa !60
  call void @__cxa_throw(ptr nonnull %i.ayo, ptr nonnull @_ZTIi, ptr null) #43
  unreachable

bb.du:                                            ; preds = %bb.ds, %bb.dm, %bb.dp
  %i.ayp = load ptr, ptr %4, align 8, !tbaa !225
  %i.ayq = ptrtoint ptr %i.ayp to i64
  %i.ayr = load i32, ptr %i.j, align 8, !tbaa !226
  %i.ays = sext i32 %i.ayr to i64
  %i.ayt = or i64 %i.ays, %i.ayq
  %i.ayu = inttoptr i64 %i.ayt to ptr
  %i.ayv = load i32, ptr %i.ap, align 4, !tbaa !245
  %i.ayw = sext i32 %i.ayv to i64                 ; 2 uses
  %i.ayx = getelementptr [8 x i8], ptr %i.anw, i64 %i.ayw
  %i.ayy = getelementptr i8, ptr %i.ayx, i64 16
  store ptr %i.ayu, ptr %i.ayy, align 8, !tbaa !221
  store ptr null, ptr %i.n, align 8, !tbaa !367
  store i32 0, ptr %i.p, align 8, !tbaa !337
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %6, i8 0, i64 72, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.ayz = getelementptr inbounds [8 x i8], ptr %i.aac, i64 %i.ayw
  %i.aza = load ptr, ptr %i.ayz, align 8, !tbaa !221
  %i.azb = ptrtoint ptr %i.aza to i64
  %i.azc = and i64 %i.azb, -16
  %i.azd = inttoptr i64 %i.azc to ptr             ; 4 uses
  store ptr %i.azd, ptr %3, align 8, !tbaa !232
  %i.aze = getelementptr inbounds nuw i8, ptr %i.azd, i64 32
  %i.azf = load ptr, ptr %i.aze, align 16, !tbaa !221
  %i.azg = icmp eq ptr %i.azf, %i.aac
  br i1 %i.azg, label %_ZN10tetgenmesh12point2tetorgEPdRNS_7trifaceE.exit278, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.azh = getelementptr inbounds nuw i8, ptr %i.azd, i64 40
  %i.azi = load ptr, ptr %i.azh, align 8, !tbaa !221
  %i.azj = icmp eq ptr %i.azi, %i.aac
  br i1 %i.azj, label %_ZN10tetgenmesh12point2tetorgEPdRNS_7trifaceE.exit278, label %bb.dw
end_hunk_1
begin_hunk_2_@_ZN10tetgenmesh12lawsonflip3dEPNS_15flipconstraintsE:.preheader435
  %i.yz = zext nneg i32 %i.yy to i64
  %i.za = getelementptr inbounds nuw [8 x i8], ptr %i.xw, i64 %i.yz
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !113
  %.not258.2 = icmp ne ptr %i.zb, null
  %spec.select = zext i1 %.not258.2 to i64
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay, %.preheader433.preheader
  %.3180.lcssa = phi i64 [ 1, %.preheader433.preheader ], [ %.mux, %bb.ay ], [ %.mux601, %bb.az ], [ %spec.select, %bb.ba ]
  %i.zc = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.3180.lcssa ; 2 uses
  %i.zd = load ptr, ptr %i.zc, align 16, !tbaa !232
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zc, i64 8
  %i.zf = load i32, ptr %i.ze, align 8, !tbaa !237
  %i.zg = sext i32 %i.zf to i64                   ; 2 uses
  %i.zh = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8eprevtblE, i64 %i.zg
  %i.zi = load i32, ptr %i.zh, align 4, !tbaa !60
  %i.zj = sext i32 %i.zi to i64
  %i.zk = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.zj
  %i.zl = load i32, ptr %i.zk, align 4, !tbaa !60
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zd, i64 72
  %i.zn = load ptr, ptr %i.zm, align 8, !tbaa !221 ; 3 uses
  %.not259 = icmp eq ptr %i.zn, null
  br i1 %.not259, label %.thread385, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.zo = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.zg
  %i.zp = load i32, ptr %i.zo, align 4, !tbaa !60
  %i.zq = sext i32 %i.zp to i64
  %i.zr = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.zq
  %i.zs = load i32, ptr %i.zr, align 4, !tbaa !60
  %i.zt = and i32 %i.zs, 3
  %i.zu = zext nneg i32 %i.zt to i64
  %i.zv = getelementptr inbounds nuw [8 x i8], ptr %i.zn, i64 %i.zu
  %i.zw = load ptr, ptr %i.zv, align 8, !tbaa !113
  %.not260 = icmp eq ptr %i.zw, null
  br i1 %.not260, label %bb.bd, label %_ZN10tetgenmesh9isdeadtetERNS_7trifaceE.exit.backedge, !llvm.loop !1250

bb.bd:                                            ; preds = %bb.bc
  %i.zx = and i32 %i.zl, 3
  %i.zy = zext nneg i32 %i.zx to i64
  %i.zz = getelementptr inbounds nuw [8 x i8], ptr %i.zn, i64 %i.zy
  %i.aaa = load ptr, ptr %i.zz, align 8, !tbaa !113
  %.not262 = icmp eq ptr %i.aaa, null
  br i1 %.not262, label %.thread385, label %_ZN10tetgenmesh9isdeadtetERNS_7trifaceE.exit.backedge, !llvm.loop !1250

.thread385:                                       ; preds = %bb.bb, %bb.bd, %bb.ax
  call void @_ZN10tetgenmesh6flip32EPNS_7trifaceEiPNS_15flipconstraintsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %2, i32 noundef 0, ptr noundef %1)
  %i.aab = add nsw i64 %.0188449, 1               ; 2 uses
  %i.aac = load i32, ptr %i.aa, align 8, !tbaa !280
  %.not263 = icmp eq i32 %i.aac, 0
  br i1 %.not263, label %_ZN10tetgenmesh9isdeadtetERNS_7trifaceE.exit.backedge, label %bb.be, !llvm.loop !1250

bb.be:                                            ; preds = %.thread385
  %i.aad = load double, ptr %i.ab, align 8, !tbaa !281
  %i.aae = load double, ptr %i.ac, align 8, !tbaa !392
  %i.aaf = fadd double %i.aad, %i.aae
  store double %i.aaf, ptr %i.ac, align 8, !tbaa !392
  store double 0.000000e+00, ptr %i.ab, align 8, !tbaa !281
  br label %_ZN10tetgenmesh9isdeadtetERNS_7trifaceE.exit.backedge, !llvm.loop !1250

bb.bf:                                            ; preds = %bb.aw
  %i.aag = sext i32 %i.yo to i64                  ; 4 uses
  %i.aah = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10facepivot1E, i64 %i.aag
  %i.aai = load i32, ptr %i.aah, align 4, !tbaa !60
  %i.aaj = sext i32 %i.aai to i64
  %i.aak = getelementptr inbounds [8 x i8], ptr %i.yk, i64 %i.aaj
  %i.aal = load ptr, ptr %i.aak, align 8, !tbaa !221
  %i.aam = ptrtoint ptr %i.aal to i64             ; 2 uses
  %i.aan = and i64 %i.aam, -16
  %i.aao = inttoptr i64 %i.aan to ptr             ; 2 uses
  store ptr %i.aao, ptr %.ptr.4, align 16, !tbaa !232
  %i.aap = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh10facepivot2E, i64 %i.aag
  %i.aaq = and i64 %i.aam, 15
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %i.aap, i64 %i.aaq
  %i.aas = load i32, ptr %i.aar, align 4, !tbaa !60
  store i32 %i.aas, ptr %i.s, align 8, !tbaa !237
  %i.aat = icmp eq ptr %i.wc, %i.aao
  br i1 %i.aat, label %bb.bg, label %bb.ch

bb.bg:                                            ; preds = %bb.bf
  %i.aau = fcmp une double %.4196383, 0.000000e+00
  br i1 %i.aau, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.aav = load i32, ptr %i.t, align 8, !tbaa !293
  %.not237 = icmp eq i32 %i.aav, 0
  br i1 %.not237, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.aaw = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.aag
  %i.aax = load i32, ptr %i.aaw, align 4, !tbaa !60
  %i.aay = sext i32 %i.aax to i64
  %i.aaz = getelementptr inbounds [8 x i8], ptr %i.yk, i64 %i.aay
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !221
  %i.abb = load ptr, ptr %i.m, align 8, !tbaa !251
  %i.abc = icmp eq ptr %i.aba, %i.abb
  br i1 %i.abc, label %.thread389, label %bb.bj

bb.bj:                                            ; preds = %bb.bh, %bb.bi, %bb.bg
  %i.abd = fcmp oeq double %.4196383, 0.000000e+00
  br i1 %i.abd, label %.thread389, label %bb.ch

.thread389:                                       ; preds = %bb.bi, %bb.bj
  %.3176394 = phi i32 [ %.2175384, %bb.bj ], [ 1, %bb.bi ]
  br i1 %.not264, label %bb.br, label %bb.bk

bb.bk:                                            ; preds = %.thread389
  %i.abe = and i32 %i.wg, 3
  %i.abf = zext nneg i32 %i.abe to i64
  %i.abg = getelementptr inbounds nuw [8 x i8], ptr %i.wi, i64 %i.abf
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !113
  %.not239 = icmp eq ptr %i.abh, null
  br i1 %.not239, label %bb.br, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  br i1 %.not264.2, label %_ZN10tetgenmesh9isdeadtetERNS_7trifaceE.exit.backedge, label %bb.bm, !llvm.loop !1250

bb.bm:                                            ; preds = %bb.bl
  %i.abi = and i32 %i.xu, 3
  %i.abj = zext nneg i32 %i.abi to i64
  %i.abk = getelementptr inbounds nuw [8 x i8], ptr %i.xw, i64 %i.abj
  %i.abl = load ptr, ptr %i.abk, align 8, !tbaa !113
  %.not247 = icmp eq ptr %i.abl, null
  br i1 %.not247, label %_ZN10tetgenmesh9isdeadtetERNS_7trifaceE.exit.backedge, label %bb.bn, !llvm.loop !1250

bb.bn:                                            ; preds = %bb.bm
  br i1 %.not264.1, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.abm = and i32 %i.xa, 3
  %i.abn = zext nneg i32 %i.abm to i64
  %i.abo = getelementptr inbounds nuw [8 x i8], ptr %i.xc, i64 %i.abn
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !113
  %.not249 = icmp eq ptr %i.abp, null
  br i1 %.not249, label %bb.bp, label %_ZN10tetgenmesh9isdeadtetERNS_7trifaceE.exit.backedge, !llvm.loop !1250

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.abq = getelementptr inbounds nuw i8, ptr %i.yk, i64 72
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !221 ; 2 uses
  %.not250 = icmp eq ptr %i.abr, null
  br i1 %.not250, label %bb.bx, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.abs = and i32 %i.yo, 3
  %i.abt = zext nneg i32 %i.abs to i64
  %i.abu = getelementptr inbounds nuw [8 x i8], ptr %i.abr, i64 %i.abt
  %i.abv = load ptr, ptr %i.abu, align 8, !tbaa !113
  %.not251 = icmp eq ptr %i.abv, null
  br i1 %.not251, label %bb.bx, label %_ZN10tetgenmesh9isdeadtetERNS_7trifaceE.exit.backedge, !llvm.loop !1250

bb.br:                                            ; preds = %bb.bk, %.thread389
  br i1 %.not264.1, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.abw = and i32 %i.xa, 3
  %i.abx = zext nneg i32 %i.abw to i64
  %i.aby = getelementptr inbounds nuw [8 x i8], ptr %i.xc, i64 %i.abx
  %i.abz = load ptr, ptr %i.aby, align 8, !tbaa !113
  %.not241 = icmp eq ptr %i.abz, null
  br i1 %.not241, label %bb.bt, label %_ZN10tetgenmesh9isdeadtetERNS_7trifaceE.exit.backedge, !llvm.loop !1250

bb.bt:                                            ; preds = %bb.bs, %bb.br
  br i1 %.not264.2, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.aca = and i32 %i.xu, 3
  %i.acb = zext nneg i32 %i.aca to i64
  %i.acc = getelementptr inbounds nuw [8 x i8], ptr %i.xw, i64 %i.acb
  %i.acd = load ptr, ptr %i.acc, align 8, !tbaa !113
  %.not243 = icmp eq ptr %i.acd, null
  br i1 %.not243, label %bb.bv, label %_ZN10tetgenmesh9isdeadtetERNS_7trifaceE.exit.backedge, !llvm.loop !1250

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.ace = getelementptr inbounds nuw i8, ptr %i.yk, i64 72
  %i.acf = load ptr, ptr %i.ace, align 8, !tbaa !221 ; 2 uses
  %.not244 = icmp eq ptr %i.acf, null
  br i1 %.not244, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.acg = and i32 %i.yo, 3
  %i.ach = zext nneg i32 %i.acg to i64
  %i.aci = getelementptr inbounds nuw [8 x i8], ptr %i.acf, i64 %i.ach
  %i.acj = load ptr, ptr %i.aci, align 8, !tbaa !113
  %.not245 = icmp eq ptr %i.acj, null
  br i1 %.not245, label %bb.bx, label %_ZN10tetgenmesh9isdeadtetERNS_7trifaceE.exit.backedge, !llvm.loop !1250

bb.bx:                                            ; preds = %bb.bv, %bb.bw, %bb.bp, %bb.bq
  %i.ack = icmp eq i32 %.3176394, 1
  br i1 %i.ack, label %bb.by, label %.thread399

bb.by:                                            ; preds = %bb.bx
  %i.acl = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8orgpivotE, i64 %i.wo
  %i.acm = load i32, ptr %i.acl, align 4, !tbaa !60
  %i.acn = sext i32 %i.acm to i64
  %i.aco = getelementptr inbounds [8 x i8], ptr %i.wc, i64 %i.acn
  %i.acp = load ptr, ptr %i.aco, align 8, !tbaa !221 ; 5 uses
  %i.acq = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9destpivotE, i64 %i.wo
  %i.acr = load i32, ptr %i.acq, align 4, !tbaa !60
  %i.acs = sext i32 %i.acr to i64
  %i.act = getelementptr inbounds [8 x i8], ptr %i.wc, i64 %i.acs
  %i.acu = load ptr, ptr %i.act, align 8, !tbaa !221 ; 7 uses
  %i.acv = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.xi
  %i.acw = load i32, ptr %i.acv, align 4, !tbaa !60
  %i.acx = sext i32 %i.acw to i64
  %i.acy = getelementptr inbounds [8 x i8], ptr %i.ww, i64 %i.acx
  %i.acz = load ptr, ptr %i.acy, align 8, !tbaa !221 ; 3 uses
  %i.ada = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.aag
  %i.adb = load i32, ptr %i.ada, align 4, !tbaa !60
  %i.adc = sext i32 %i.adb to i64
  %i.add = getelementptr inbounds [8 x i8], ptr %i.yk, i64 %i.adc
  %i.ade = load ptr, ptr %i.add, align 8, !tbaa !221 ; 5 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.acu, i64 8
  %4 = getelementptr inbounds nuw i8, ptr %i.acu, i64 16
  %i.adf = load <2 x double>, ptr %i.qp, align 8, !tbaa !59 ; 2 uses
  %i.adg = load <2 x double>, ptr %i.qx, align 8, !tbaa !59 ; 2 uses
  %5 = load double, ptr %3, align 8, !tbaa !59
  %6 = load double, ptr %i.acu, align 8, !tbaa !59
  %7 = load double, ptr %4, align 8, !tbaa !59
  %i.adh = load <2 x double>, ptr %i.rd, align 8, !tbaa !59 ; 2 uses
  %i.adi = shufflevector <2 x double> %i.adf, <2 x double> %i.adg, <2 x i32> <i32 0, i32 2> ; 2 uses
  %8 = insertelement <2 x double> poison, double %6, i64 0
  %i.adj = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer
  %i.adk = fsub <2 x double> %i.adi, %i.adj       ; 4 uses
  %i.adl = load <2 x double>, ptr %i.rb, align 8, !tbaa !59 ; 2 uses
  %i.adm = shufflevector <2 x double> %i.adh, <2 x double> %i.adl, <2 x i32> <i32 0, i32 2>
  %9 = insertelement <2 x double> poison, double %5, i64 0
  %10 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  %i.adn = fsub <2 x double> %i.adm, %10          ; 4 uses
  %i.ado = shufflevector <2 x double> %i.adh, <2 x double> %i.adl, <2 x i32> <i32 1, i32 3> ; 2 uses
  %11 = insertelement <2 x double> poison, double %7, i64 0
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %i.adp = fsub <2 x double> %i.ado, %12          ; 4 uses
  %i.adq = fmul <2 x double> %i.adn, %i.adn
  %i.adr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.adk, <2 x double> %i.adk, <2 x double> %i.adq)
  %i.ads = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.adp, <2 x double> %i.adp, <2 x double> %i.adr)
  %i.adt = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ads) ; 2 uses
  %i.adu = extractelement <2 x double> %i.adk, i64 0
  %i.adv = extractelement <2 x double> %i.adk, i64 1
  %i.adw = extractelement <2 x double> %i.adp, i64 0
  %i.adx = extractelement <2 x double> %i.adp, i64 1
  %i.ady = shufflevector <2 x double> %i.adn, <2 x double> %i.adt, <2 x i32> <i32 0, i32 2>
  %i.adz = shufflevector <2 x double> %i.adn, <2 x double> %i.adt, <2 x i32> <i32 1, i32 3>
  %i.aea = fmul <2 x double> %i.ady, %i.adz       ; 2 uses
  %i.aeb = extractelement <2 x double> %i.aea, i64 0
  %i.aec = call double @llvm.fmuladd.f64(double %i.adu, double %i.adv, double %i.aeb)
  %i.aed = call double @llvm.fmuladd.f64(double %i.adw, double %i.adx, double %i.aec)
  %i.aee = extractelement <2 x double> %i.aea, i64 1
  %i.aef = fdiv double %i.aed, %i.aee
  %i.aeg = load double, ptr %i.w, align 8, !tbaa !320 ; 2 uses
  %i.aeh = fcmp olt double %i.aef, %i.aeg
  br i1 %i.aeh, label %_ZN10tetgenmesh9isdeadtetERNS_7trifaceE.exit.backedge, label %bb.bz, !llvm.loop !1250

bb.bz:                                            ; preds = %bb.by
  %i.aei = load <3 x double>, ptr %i.acp, align 8, !tbaa !59 ; 3 uses
  %i.aej = shufflevector <3 x double> %i.aei, <3 x double> poison, <2 x i32> zeroinitializer
  %i.aek = fsub <2 x double> %i.adi, %i.aej       ; 4 uses
  %i.ael = shufflevector <2 x double> %i.adf, <2 x double> %i.adg, <2 x i32> <i32 1, i32 3>
  %i.aem = shufflevector <3 x double> %i.aei, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aen = fsub <2 x double> %i.ael, %i.aem       ; 4 uses
  %i.aeo = shufflevector <3 x double> %i.aei, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.aep = fsub <2 x double> %i.ado, %i.aeo       ; 4 uses
  %i.aeq = fmul <2 x double> %i.aen, %i.aen
  %i.aer = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aek, <2 x double> %i.aek, <2 x double> %i.aeq)
  %i.aes = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aep, <2 x double> %i.aep, <2 x double> %i.aer)
  %i.aet = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.aes) ; 2 uses
  %i.aeu = extractelement <2 x double> %i.aek, i64 0
  %i.aev = extractelement <2 x double> %i.aek, i64 1
  %i.aew = extractelement <2 x double> %i.aep, i64 0
  %i.aex = extractelement <2 x double> %i.aep, i64 1
  %i.aey = shufflevector <2 x double> %i.aen, <2 x double> %i.aet, <2 x i32> <i32 0, i32 2>
  %i.aez = shufflevector <2 x double> %i.aen, <2 x double> %i.aet, <2 x i32> <i32 1, i32 3>
  %i.afa = fmul <2 x double> %i.aey, %i.aez       ; 2 uses
  %i.afb = extractelement <2 x double> %i.afa, i64 0
  %i.afc = call double @llvm.fmuladd.f64(double %i.aeu, double %i.aev, double %i.afb)
  %i.afd = call double @llvm.fmuladd.f64(double %i.aew, double %i.aex, double %i.afc)
  %i.afe = extractelement <2 x double> %i.afa, i64 1
  %i.aff = fdiv double %i.afd, %i.afe
  %i.afg = fcmp olt double %i.aff, %i.aeg
  br i1 %i.afg, label %_ZN10tetgenmesh9isdeadtetERNS_7trifaceE.exit.backedge, label %bb.ca, !llvm.loop !1250

bb.ca:                                            ; preds = %bb.bz
  %i.afh = call noundef double @_Z8orient3dPdS_S_S_(ptr noundef nonnull %i.qx, ptr noundef nonnull %i.qp, ptr noundef %i.acz, ptr noundef nonnull %i.acu)
  %i.afi = call noundef double @_Z8orient3dPdS_S_S_(ptr noundef nonnull %i.qx, ptr noundef nonnull %i.qp, ptr noundef nonnull %i.acp, ptr noundef %i.acz)
  %i.afj = fcmp oge double %i.afh, 0.000000e+00
  %i.afk = fcmp oge double %i.afi, 0.000000e+00
  %or.cond = or i1 %i.afj, %i.afk
  br i1 %or.cond, label %_ZN10tetgenmesh9isdeadtetERNS_7trifaceE.exit.backedge, label %bb.cb, !llvm.loop !1250

bb.cb:                                            ; preds = %bb.ca
  %i.afl = load ptr, ptr %i.m, align 8, !tbaa !251
  %.not252 = icmp eq ptr %i.ade, %i.afl
  br i1 %.not252, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.afm = call noundef double @_Z8orient3dPdS_S_S_(ptr noundef nonnull %i.qx, ptr noundef nonnull %i.qp, ptr noundef nonnull %i.acu, ptr noundef %i.ade)
  %i.afn = call noundef double @_Z8orient3dPdS_S_S_(ptr noundef nonnull %i.qx, ptr noundef nonnull %i.qp, ptr noundef %i.ade, ptr noundef nonnull %i.acp)
  %i.afo = fcmp ult double %i.afm, 0.000000e+00
  %i.afp = fcmp ult double %i.afn, 0.000000e+00
  %or.cond6.not = and i1 %i.afo, %i.afp
  br i1 %or.cond6.not, label %bb.cd, label %_ZN10tetgenmesh9isdeadtetERNS_7trifaceE.exit.backedge

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.afq = call noundef double @_ZN10tetgenmesh10insphere_sEPdS0_S0_S0_S0_(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %i.qx, ptr noundef nonnull %i.qp, ptr noundef %i.acz, ptr noundef nonnull %i.acu, ptr noundef nonnull %i.acp)
  %i.afr = fcmp olt double %i.afq, 0.000000e+00
  br i1 %i.afr, label %_ZN10tetgenmesh9isdeadtetERNS_7trifaceE.exit.backedge, label %bb.ce, !llvm.loop !1250

bb.ce:                                            ; preds = %bb.cd
  %i.afs = load ptr, ptr %i.m, align 8, !tbaa !251
  %.not255 = icmp eq ptr %i.ade, %i.afs
  br i1 %.not255, label %.thread399, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.aft = call noundef double @_ZN10tetgenmesh10insphere_sEPdS0_S0_S0_S0_(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %i.qx, ptr noundef nonnull %i.qp, ptr noundef %i.ade, ptr noundef nonnull %i.acp, ptr noundef nonnull %i.acu)
  %i.afu = fcmp olt double %i.aft, 0.000000e+00
  br i1 %i.afu, label %_ZN10tetgenmesh9isdeadtetERNS_7trifaceE.exit.backedge, label %.thread399, !llvm.loop !1250

.thread399:                                       ; preds = %bb.cf, %bb.ce, %bb.bx
  %i.afv = load i32, ptr %i.a, align 8, !tbaa !237
  %i.afw = sext i32 %i.afv to i64
  %i.afx = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.afw
  %i.afy = load i32, ptr %i.afx, align 4, !tbaa !60
  store i32 %i.afy, ptr %i.a, align 8, !tbaa !237
  call void @_ZN10tetgenmesh6flip23EPNS_7trifaceEiPNS_15flipconstraintsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %2, i32 noundef 0, ptr noundef %1)
  %i.afz = load ptr, ptr %.ptr.3, align 16, !tbaa !232 ; 2 uses
  %i.aga = load i32, ptr %i.q, align 8, !tbaa !237
  %i.agb = sext i32 %i.aga to i64                 ; 3 uses
  %i.agc = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10facepivot1E, i64 %i.agb
  %i.agd = load i32, ptr %i.agc, align 4, !tbaa !60
  %i.age = sext i32 %i.agd to i64
  %i.agf = getelementptr inbounds [8 x i8], ptr %i.afz, i64 %i.age
  %i.agg = load ptr, ptr %i.agf, align 8, !tbaa !221
  %i.agh = ptrtoint ptr %i.agg to i64             ; 2 uses
  %i.agi = and i64 %i.agh, -16
  %i.agj = inttoptr i64 %i.agi to ptr             ; 2 uses
  store ptr %i.agj, ptr %.ptr.1, align 16, !tbaa !232
  %i.agk = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh10facepivot2E, i64 %i.agb
  %i.agl = and i64 %i.agh, 15
  %i.agm = getelementptr inbounds nuw [4 x i8], ptr %i.agk, i64 %i.agl
  %i.agn = load i32, ptr %i.agm, align 4, !tbaa !60 ; 2 uses
  store i32 %i.agn, ptr %i.n, align 8, !tbaa !237
  %i.ago = sext i32 %i.agn to i64                 ; 2 uses
  %i.agp = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10facepivot1E, i64 %i.ago
  %i.agq = load i32, ptr %i.agp, align 4, !tbaa !60
  %i.agr = sext i32 %i.agq to i64
  %i.ags = getelementptr inbounds [8 x i8], ptr %i.agj, i64 %i.agr
  %i.agt = load ptr, ptr %i.ags, align 8, !tbaa !221
  %i.agu = ptrtoint ptr %i.agt to i64             ; 2 uses
  %i.agv = and i64 %i.agu, -16
  %i.agw = inttoptr i64 %i.agv to ptr
  store ptr %i.agw, ptr %.ptr.2, align 16, !tbaa !232
  %i.agx = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh10facepivot2E, i64 %i.ago
  %i.agy = and i64 %i.agu, 15
  %i.agz = getelementptr inbounds nuw [4 x i8], ptr %i.agx, i64 %i.agy
  %i.aha = load i32, ptr %i.agz, align 4, !tbaa !60
  store i32 %i.aha, ptr %i.p, align 8, !tbaa !237
  %i.ahb = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.agb
  %i.ahc = load i32, ptr %i.ahb, align 4, !tbaa !60
  %i.ahd = sext i32 %i.ahc to i64
  %i.ahe = getelementptr inbounds [8 x i8], ptr %i.afz, i64 %i.ahd
  %i.ahf = load ptr, ptr %i.ahe, align 8, !tbaa !221
  %i.ahg = load ptr, ptr %i.m, align 8, !tbaa !251
  %i.ahh = icmp eq ptr %i.ahf, %i.ahg
  %i.ahi = zext i1 %i.ahh to i32
  call void @_ZN10tetgenmesh6flip32EPNS_7trifaceEiPNS_15flipconstraintsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %.ptr.1, i32 noundef %i.ahi, ptr noundef %1)
  %i.ahj = add nsw i64 %.0188449, 1               ; 2 uses
  %i.ahk = load <2 x i64>, ptr %i.x, align 8, !tbaa !366
  %i.ahl = add nsw <2 x i64> %i.ahk, splat (i64 -1)
  store <2 x i64> %i.ahl, ptr %i.x, align 8, !tbaa !366
  %i.ahm = load i64, ptr %i.z, align 8, !tbaa !375
  %i.ahn = add nsw i64 %i.ahm, 1
  store i64 %i.ahn, ptr %i.z, align 8, !tbaa !375
  %i.aho = load i32, ptr %i.aa, align 8, !tbaa !280
  %.not256 = icmp eq i32 %i.aho, 0
  br i1 %.not256, label %_ZN10tetgenmesh9isdeadtetERNS_7trifaceE.exit.backedge, label %bb.cg, !llvm.loop !1250

bb.cg:                                            ; preds = %.thread399
  %i.ahp = load double, ptr %i.ab, align 8, !tbaa !281
  %i.ahq = load double, ptr %i.ac, align 8, !tbaa !392
  %i.ahr = fadd double %i.ahp, %i.ahq
  store double %i.ahr, ptr %i.ac, align 8, !tbaa !392
  store double 0.000000e+00, ptr %i.ab, align 8, !tbaa !281
  br label %_ZN10tetgenmesh9isdeadtetERNS_7trifaceE.exit.backedge, !llvm.loop !1250

bb.ch:                                            ; preds = %bb.bf, %bb.bj
  %i.ahs = load ptr, ptr %i.f, align 8, !tbaa !264
  %i.aht = call noundef ptr @_ZN10tetgenmesh10memorypool5allocEv(ptr noundef nonnull align 8 dereferenceable(88) %i.ahs) ; 12 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 32
  store ptr null, ptr %i.aht, align 8, !tbaa !309
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.aht, i64 8 ; 2 uses
  store i32 0, ptr %i.ahv, align 8, !tbaa !310
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.aht, i64 16
  store ptr null, ptr %i.ahw, align 8, !tbaa !311
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.aht, i64 24
  store i32 0, ptr %i.ahx, align 8, !tbaa !312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ahu, i8 0, i64 104, i1 false)
  %i.ahy = load i32, ptr %i.a, align 8, !tbaa !237
  %i.ahz = sext i32 %i.ahy to i64
  %i.aia = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.ahz
  %i.aib = load i32, ptr %i.aia, align 4, !tbaa !60 ; 2 uses
  store i32 %i.aib, ptr %i.a, align 8, !tbaa !237
  %i.aic = load ptr, ptr %2, align 16, !tbaa !232 ; 4 uses
  store ptr %i.aic, ptr %i.aht, align 8, !tbaa !232
  store i32 %i.aib, ptr %i.ahv, align 8, !tbaa !237
  %i.aid = load i32, ptr %i.a, align 8, !tbaa !237
  %i.aie = sext i32 %i.aid to i64                 ; 3 uses
  %i.aif = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8orgpivotE, i64 %i.aie
  %i.aig = load i32, ptr %i.aif, align 4, !tbaa !60
  %i.aih = sext i32 %i.aig to i64
  %i.aii = getelementptr inbounds [8 x i8], ptr %i.aic, i64 %i.aih
  %i.aij = load ptr, ptr %i.aii, align 8, !tbaa !221
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aht, i64 88
  store ptr %i.aij, ptr %i.aik, align 8, !tbaa !289
  %i.ail = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9destpivotE, i64 %i.aie
  %i.aim = load i32, ptr %i.ail, align 4, !tbaa !60
  %i.ain = sext i32 %i.aim to i64
  %i.aio = getelementptr inbounds [8 x i8], ptr %i.aic, i64 %i.ain
  %i.aip = load ptr, ptr %i.aio, align 8, !tbaa !221
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aht, i64 96
  store ptr %i.aip, ptr %i.aiq, align 8, !tbaa !290
  %i.air = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.aie
  %i.ais = load i32, ptr %i.air, align 4, !tbaa !60
  %i.ait = sext i32 %i.ais to i64
  %i.aiu = getelementptr inbounds [8 x i8], ptr %i.aic, i64 %i.ait
  %i.aiv = load ptr, ptr %i.aiu, align 8, !tbaa !221
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aht, i64 104
  store ptr %i.aiv, ptr %i.aiw, align 8, !tbaa !313
  %i.aix = load ptr, ptr %i.u, align 8, !tbaa !1255
  %i.aiy = icmp eq ptr %i.aix, null
  br i1 %i.aiy, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  store ptr %i.aht, ptr %i.u, align 8, !tbaa !1255
end_hunk_2
