Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/Bcj2Coder?download=true
inline.NumInlined: 98
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN9NCompress5NBcj28CEncoder8CodeRealEPP19ISequentialInStreamPPKyjPP20ISequentialOutStreamS7_jP21ICompressProgressInfo:bb.a
  invoke void @_ZN10COutBuffer9SetStreamEP20ISequentialOutStream(ptr noundef nonnull align 8 dereferenceable(49) %i.f, ptr noundef %i.w)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN10COutBuffer4InitEv(ptr noundef nonnull align 8 dereferenceable(49) %i.f)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !31
  invoke void @_ZN10COutBuffer9SetStreamEP20ISequentialOutStream(ptr noundef nonnull align 8 dereferenceable(49) %i.h, ptr noundef %i.y)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN10COutBuffer4InitEv(ptr noundef nonnull align 8 dereferenceable(49) %i.h)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !31
  invoke void @_ZN10COutBuffer9SetStreamEP20ISequentialOutStream(ptr noundef nonnull align 8 dereferenceable(49) %i.j, ptr noundef %i.aa)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN10COutBuffer4InitEv(ptr noundef nonnull align 8 dereferenceable(49) %i.j)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !31
  invoke void @_ZN10COutBuffer9SetStreamEP20ISequentialOutStream(ptr noundef nonnull align 8 dereferenceable(49) %i.l, ptr noundef %i.ad)
          to label %_ZN9NCompress11NRangeCoder8CEncoder9SetStreamEP20ISequentialOutStream.exit unwind label %bb.q

_ZN9NCompress11NRangeCoder8CEncoder9SetStreamEP20ISequentialOutStream.exit: ; preds = %bb.p
  invoke void @_ZN10COutBuffer4InitEv(ptr noundef nonnull align 8 dereferenceable(49) %i.l)
          to label %_ZN9NCompress11NRangeCoder8CEncoder4InitEv.exit unwind label %bb.q

_ZN9NCompress11NRangeCoder8CEncoder4InitEv.exit:  ; preds = %_ZN9NCompress11NRangeCoder8CEncoder9SetStreamEP20ISequentialOutStream.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  store i64 0, ptr %i.ae, align 8, !tbaa !32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 10 uses
  store i32 -1, ptr %i.af, align 8, !tbaa !69
  store i32 1, ptr %i.ab, align 8, !tbaa !33
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i8 0, ptr %i.ag, align 4, !tbaa !34
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 288
  store <4 x i32> splat (i32 1024), ptr %i.ah, align 8, !tbaa !36
  store <4 x i32> splat (i32 1024), ptr %i.ai, align 8, !tbaa !36
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 320
  store <4 x i32> splat (i32 1024), ptr %i.aj, align 8, !tbaa !36
  store <4 x i32> splat (i32 1024), ptr %i.ak, align 8, !tbaa !36
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 352
  store <4 x i32> splat (i32 1024), ptr %i.al, align 8, !tbaa !36
  store <4 x i32> splat (i32 1024), ptr %i.am, align 8, !tbaa !36
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 384
  store <4 x i32> splat (i32 1024), ptr %i.an, align 8, !tbaa !36
  store <4 x i32> splat (i32 1024), ptr %i.ao, align 8, !tbaa !36
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 416
  store <4 x i32> splat (i32 1024), ptr %i.ap, align 8, !tbaa !36
  store <4 x i32> splat (i32 1024), ptr %i.aq, align 8, !tbaa !36
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 448
  store <4 x i32> splat (i32 1024), ptr %i.ar, align 8, !tbaa !36
  store <4 x i32> splat (i32 1024), ptr %i.as, align 8, !tbaa !36
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 480
  store <4 x i32> splat (i32 1024), ptr %i.at, align 8, !tbaa !36
  store <4 x i32> splat (i32 1024), ptr %i.au, align 8, !tbaa !36
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 512
  store <4 x i32> splat (i32 1024), ptr %i.av, align 8, !tbaa !36
  store <4 x i32> splat (i32 1024), ptr %i.aw, align 8, !tbaa !36
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 544
  store <4 x i32> splat (i32 1024), ptr %i.ax, align 8, !tbaa !36
  store <4 x i32> splat (i32 1024), ptr %i.ay, align 8, !tbaa !36
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 576
  store <4 x i32> splat (i32 1024), ptr %i.az, align 8, !tbaa !36
  store <4 x i32> splat (i32 1024), ptr %i.ba, align 8, !tbaa !36
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 608
  store <4 x i32> splat (i32 1024), ptr %i.bb, align 8, !tbaa !36
  store <4 x i32> splat (i32 1024), ptr %i.bc, align 8, !tbaa !36
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 640
  store <4 x i32> splat (i32 1024), ptr %i.bd, align 8, !tbaa !36
  store <4 x i32> splat (i32 1024), ptr %i.be, align 8, !tbaa !36
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 672
  store <4 x i32> splat (i32 1024), ptr %i.bf, align 8, !tbaa !36
  store <4 x i32> splat (i32 1024), ptr %i.bg, align 8, !tbaa !36
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 704
  store <4 x i32> splat (i32 1024), ptr %i.bh, align 8, !tbaa !36
  store <4 x i32> splat (i32 1024), ptr %i.bi, align 8, !tbaa !36
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 736
  store <4 x i32> splat (i32 1024), ptr %i.bj, align 8, !tbaa !36
  store <4 x i32> splat (i32 1024), ptr %i.bk, align 8, !tbaa !36
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 768
  store <4 x i32> splat (i32 1024), ptr %i.bl, align 8, !tbaa !36
  store <4 x i32> splat (i32 1024), ptr %i.bm, align 8, !tbaa !36
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 800
  store <4 x i32> splat (i32 1024), ptr %i.bn, align 8, !tbaa !36
  store <4 x i32> splat (i32 1024), ptr %i.bo, align 8, !tbaa !36
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 832
  store <4 x i32> splat (i32 1024), ptr %i.bp, align 8, !tbaa !36
  store <4 x i32> splat (i32 1024), ptr %i.bq, align 8, !tbaa !36
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 864
  store <4 x i32> splat (i32 1024), ptr %i.br, align 8, !tbaa !36
  store <4 x i32> splat (i32 1024), ptr %i.bs, align 8, !tbaa !36
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 896
  store <4 x i32> splat (i32 1024), ptr %i.bt, align 8, !tbaa !36
  store <4 x i32> splat (i32 1024), ptr %i.bu, align 8, !tbaa !36
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 928
  store <4 x i32> splat (i32 1024), ptr %i.bv, align 8, !tbaa !36
  store <4 x i32> splat (i32 1024), ptr %i.bw, align 8, !tbaa !36
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 960
  store <4 x i32> splat (i32 1024), ptr %i.bx, align 8, !tbaa !36
  store <4 x i32> splat (i32 1024), ptr %i.by, align 8, !tbaa !36
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 992
  store <4 x i32> splat (i32 1024), ptr %i.bz, align 8, !tbaa !36
  store <4 x i32> splat (i32 1024), ptr %i.ca, align 8, !tbaa !36
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1024
  store <4 x i32> splat (i32 1024), ptr %i.cb, align 8, !tbaa !36
  store <4 x i32> splat (i32 1024), ptr %i.cc, align 8, !tbaa !36
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1056
  store <4 x i32> splat (i32 1024), ptr %i.cd, align 8, !tbaa !36
  store <4 x i32> splat (i32 1024), ptr %i.ce, align 8, !tbaa !36
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1088
  store <4 x i32> splat (i32 1024), ptr %i.cf, align 8, !tbaa !36
  store <4 x i32> splat (i32 1024), ptr %i.cg, align 8, !tbaa !36
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store <4 x i32> splat (i32 1024), ptr %i.ch, align 8, !tbaa !36
  store <4 x i32> splat (i32 1024), ptr %i.ci, align 8, !tbaa !36
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1152
  store <4 x i32> splat (i32 1024), ptr %i.cj, align 8, !tbaa !36
  store <4 x i32> splat (i32 1024), ptr %i.ck, align 8, !tbaa !36
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1184
  store <4 x i32> splat (i32 1024), ptr %i.cl, align 8, !tbaa !36
  store <4 x i32> splat (i32 1024), ptr %i.cm, align 8, !tbaa !36
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1216
  store <4 x i32> splat (i32 1024), ptr %i.cn, align 8, !tbaa !36
  store <4 x i32> splat (i32 1024), ptr %i.co, align 8, !tbaa !36
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1248
  store <4 x i32> splat (i32 1024), ptr %i.cp, align 8, !tbaa !36
  store <4 x i32> splat (i32 1024), ptr %i.cq, align 8, !tbaa !36
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 1280
  store <4 x i32> splat (i32 1024), ptr %i.cr, align 8, !tbaa !36
  store <4 x i32> splat (i32 1024), ptr %i.cs, align 8, !tbaa !36
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 1296
  store i32 1024, ptr %i.ct, align 8, !tbaa !36
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 1300
  store i32 1024, ptr %i.cu, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  store ptr null, ptr %9, align 8, !tbaa !72
  %i.cv = load ptr, ptr %i.v, align 8, !tbaa !23
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = invoke noundef i32 %i.cw(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull align 4 dereferenceable(16) @IID_ICompressGetSubStreamSize, ptr noundef nonnull %9)
          to label %bb.r unwind label %bb.s       ; 0 uses

bb.q:                                             ; preds = %_ZN9NCompress11NRangeCoder8CEncoder9SetStreamEP20ISequentialOutStream.exit, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.r:                                             ; preds = %_ZN9NCompress11NRangeCoder8CEncoder4InitEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 0, ptr %i.a, align 8, !tbaa !25
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %.not247 = icmp eq ptr %7, null
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph396
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.backedge, label %.lr.ph396.epil.preheader

.lr.ph396.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph396.preheader
  %indvars.iv430.epil.init = phi i64 [ %i.ma, %.lr.ph396.preheader ], [ %indvars.iv.next431.3, %.loopexit.loopexit.unr-lcssa ]
  %indvars.iv427.epil.init = phi i64 [ 0, %.lr.ph396.preheader ], [ %indvars.iv.next428.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod575 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod575)
  br label %.lr.ph396.epil

.lr.ph396.epil:                                   ; preds = %.lr.ph396.epil, %.lr.ph396.epil.preheader
  %indvars.iv430.epil = phi i64 [ %indvars.iv430.epil.init, %.lr.ph396.epil.preheader ], [ %indvars.iv.next431.epil, %.lr.ph396.epil ] ; 2 uses
  %indvars.iv427.epil = phi i64 [ %indvars.iv427.epil.init, %.lr.ph396.epil.preheader ], [ %indvars.iv.next428.epil, %.lr.ph396.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph396.epil.preheader ], [ %epil.iter.next, %.lr.ph396.epil ]
  %i.db = load ptr, ptr %i.n, align 8, !tbaa !21  ; 2 uses
  %indvars.iv.next431.epil = add nuw nsw i64 %indvars.iv430.epil, 1
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %indvars.iv430.epil
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !37
  %indvars.iv.next428.epil = add nuw nsw i64 %indvars.iv427.epil, 1
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 %indvars.iv427.epil
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !37
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.backedge, label %.lr.ph396.epil, !llvm.loop !60

.loopexit.backedge:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph396.epil, %bb.bi
  %.0.lcssa = phi i32 [ 0, %bb.bi ], [ %narrow, %.lr.ph396.epil ], [ %narrow, %.loopexit.loopexit.unr-lcssa ]
  br label %.loopexit, !llvm.loop !61

.loopexit:                                        ; preds = %.loopexit.backedge, %bb.r
  %.0205 = phi i32 [ 0, %bb.r ], [ %i.lz, %.loopexit.backedge ] ; 2 uses
  %.0195 = phi i32 [ 0, %bb.r ], [ %.0.lcssa, %.loopexit.backedge ] ; 5 uses
  %.0185 = phi i8 [ 0, %bb.r ], [ %.6191, %.loopexit.backedge ] ; 2 uses
  %.0173 = phi i64 [ 0, %bb.r ], [ %.8181, %.loopexit.backedge ]
  %.0161 = phi i64 [ 0, %bb.r ], [ %.8169, %.loopexit.backedge ]
  %.0149 = phi i64 [ 0, %bb.r ], [ %.8157, %.loopexit.backedge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.df = icmp eq i32 %.0195, 131072
  br i1 %i.df, label %select.unfold, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit
  %i.dg = zext i32 %.0195 to i64
  br label %bb.t

bb.s:                                             ; preds = %_ZN9NCompress11NRangeCoder8CEncoder4InitEv.exit
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.t:                                             ; preds = %.lr.ph, %bb.x
  %.0147377 = phi i32 [ 0, %.lr.ph ], [ %i.dv, %bb.x ] ; 3 uses
  %i.di = add i32 %.0147377, %.0195
  %i.dj = sub i32 131072, %i.di
  %i.dk = load ptr, ptr %i.n, align 8, !tbaa !21
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dg
  %i.dm = zext i32 %.0147377 to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dm
  %i.do = load ptr, ptr %i.v, align 8, !tbaa !23
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 40
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = invoke noundef i32 %i.dq(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef %i.dn, i32 noundef %i.dj, ptr noundef nonnull %i.b)
          to label %bb.u unwind label %bb.v       ; 2 uses

bb.u:                                             ; preds = %bb.t
  %.not245 = icmp eq i32 %i.dr, 0
  br i1 %.not245, label %bb.w, label %.thread282

.thread282:                                       ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %.loopexit325

bb.v:                                             ; preds = %bb.t
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.bj

bb.w:                                             ; preds = %bb.u
  %i.dt = load i32, ptr %i.b, align 4, !tbaa !8   ; 2 uses
  %i.du = icmp eq i32 %i.dt, 0
  %i.dv = add i32 %i.dt, %.0147377                ; 4 uses
  br i1 %i.du, label %select.unfold, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %i.dw = add i32 %i.dv, %.0195
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.dx = icmp eq i32 %i.dw, 131072
  br i1 %i.dx, label %select.unfold, label %bb.t

select.unfold:                                    ; preds = %bb.x, %bb.w, %.loopexit
  %.1148.ph = phi i32 [ 0, %.loopexit ], [ %i.dv, %bb.w ], [ %i.dv, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %i.dy = add i32 %.1148.ph, %.0195               ; 6 uses
  %i.dz = icmp ult i32 %i.dy, 5
  br i1 %i.dz, label %.preheader, label %bb.ah

.preheader:                                       ; preds = %select.unfold
  %.not402 = icmp eq i32 %i.dy, 0
  br i1 %.not402, label %._crit_edge401, label %.lr.ph400

.lr.ph400:                                        ; preds = %.preheader
  %wide.trip.count.a = zext nneg i32 %i.dy to i64
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph400, %_ZN9NCompress11NRangeCoder11CBitEncoderILi5EE6EncodeEPNS0_8CEncoderEj.exit
  %indvars.iv436 = phi i64 [ 0, %.lr.ph400 ], [ %indvars.iv.next437, %_ZN9NCompress11NRangeCoder11CBitEncoderILi5EE6EncodeEPNS0_8CEncoderEj.exit ] ; 2 uses
  %.1186399 = phi i8 [ %.0185, %.lr.ph400 ], [ %i.ec, %_ZN9NCompress11NRangeCoder11CBitEncoderILi5EE6EncodeEPNS0_8CEncoderEj.exit ] ; 2 uses
  %i.ea = load ptr, ptr %i.n, align 8, !tbaa !21
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %indvars.iv436
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !37  ; 4 uses
  %i.ed = load ptr, ptr %i.f, align 8, !tbaa !39
  %i.ee = load i32, ptr %i.cz, align 8, !tbaa !40 ; 2 uses
  %i.ef = add i32 %i.ee, 1
  store i32 %i.ef, ptr %i.cz, align 8, !tbaa !40
  %i.eg = zext i32 %i.ee to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.eg
  store i8 %i.ec, ptr %i.eh, align 1, !tbaa !37
  %i.ei = load i32, ptr %i.cz, align 8, !tbaa !40
  %i.ej = load i32, ptr %i.da, align 4, !tbaa !41
  %i.ek = icmp eq i32 %i.ei, %i.ej
  br i1 %i.ek, label %bb.z, label %_ZN10COutBuffer9WriteByteEh.exit

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(49) %i.f)
          to label %_ZN10COutBuffer9WriteByteEh.exit unwind label %bb.ab

_ZN10COutBuffer9WriteByteEh.exit:                 ; preds = %bb.y, %bb.z
  switch i8 %i.ec, label %bb.ac [
    i8 -24, label %bb.aa
    i8 -23, label %bb.ae
  ]

bb.aa:                                            ; preds = %_ZN10COutBuffer9WriteByteEh.exit
  %i.el = zext i8 %.1186399 to i64
  br label %bb.ae

bb.ab:                                            ; preds = %bb.z
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.ac:                                            ; preds = %_ZN10COutBuffer9WriteByteEh.exit
  %i.en = icmp eq i8 %.1186399, 15
  %i.eo = icmp slt i8 %i.ec, -112
  %i.ep = and i1 %i.en, %i.eo
  br i1 %i.ep, label %bb.ae, label %_ZN9NCompress11NRangeCoder11CBitEncoderILi5EE6EncodeEPNS0_8CEncoderEj.exit

bb.ad:                                            ; preds = %bb.af
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.ae:                                            ; preds = %bb.ac, %_ZN10COutBuffer9WriteByteEh.exit, %bb.aa
  %.0136 = phi i64 [ %i.el, %bb.aa ], [ 256, %_ZN10COutBuffer9WriteByteEh.exit ], [ 257, %bb.ac ]
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.0136 ; 2 uses
  %i.es = load i32, ptr %i.af, align 8, !tbaa !69
  %i.et = lshr i32 %i.es, 11
  %i.eu = load i32, ptr %i.er, align 4, !tbaa !36 ; 3 uses
  %i.ev = mul i32 %i.et, %i.eu                    ; 3 uses
  %i.ew = sub i32 2048, %i.eu
  %i.ex = lshr i32 %i.ew, 5
  %i.ey = add i32 %i.ex, %i.eu
  store i32 %i.ev, ptr %i.af, align 8, !tbaa !69
  store i32 %i.ey, ptr %i.er, align 4, !tbaa !36
  %i.ez = icmp ult i32 %i.ev, 16777216
  br i1 %i.ez, label %bb.af, label %_ZN9NCompress11NRangeCoder11CBitEncoderILi5EE6EncodeEPNS0_8CEncoderEj.exit

bb.af:                                            ; preds = %bb.ae
  %i.fa = shl nuw i32 %i.ev, 8
  store i32 %i.fa, ptr %i.af, align 8, !tbaa !69
  invoke void @_ZN9NCompress11NRangeCoder8CEncoder8ShiftLowEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ab)
          to label %_ZN9NCompress11NRangeCoder11CBitEncoderILi5EE6EncodeEPNS0_8CEncoderEj.exit unwind label %bb.ad

_ZN9NCompress11NRangeCoder11CBitEncoderILi5EE6EncodeEPNS0_8CEncoderEj.exit: ; preds = %bb.ae, %bb.af, %bb.ac
  %indvars.iv.next437 = add nuw nsw i64 %indvars.iv436, 1 ; 2 uses
  %exitcond438.not = icmp eq i64 %indvars.iv.next437, %wide.trip.count.a
  br i1 %exitcond438.not, label %._crit_edge401, label %bb.y, !llvm.loop !62

._crit_edge401:                                   ; preds = %_ZN9NCompress11NRangeCoder11CBitEncoderILi5EE6EncodeEPNS0_8CEncoderEj.exit, %.preheader
  %i.fb = invoke noundef i32 @_ZN9NCompress5NBcj28CEncoder5FlushEv(ptr noundef nonnull align 8 dereferenceable(1304) %0)
          to label %.loopexit325 unwind label %bb.ag

bb.ag:                                            ; preds = %._crit_edge401
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.ah:                                            ; preds = %select.unfold
  %i.fd = add i32 %i.dy, -5
  %i.fe = add i32 %.0205, 5
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZN9NCompress11NRangeCoder11CBitEncoderILi5EE6EncodeEPNS0_8CEncoderEj.exit272
  %.1150392 = phi i64 [ %.0149, %bb.ah ], [ %.8157, %_ZN9NCompress11NRangeCoder11CBitEncoderILi5EE6EncodeEPNS0_8CEncoderEj.exit272 ] ; 8 uses
  %.1162391 = phi i64 [ %.0161, %bb.ah ], [ %.8169, %_ZN9NCompress11NRangeCoder11CBitEncoderILi5EE6EncodeEPNS0_8CEncoderEj.exit272 ] ; 6 uses
  %.1174390 = phi i64 [ %.0173, %bb.ah ], [ %.8181, %_ZN9NCompress11NRangeCoder11CBitEncoderILi5EE6EncodeEPNS0_8CEncoderEj.exit272 ] ; 7 uses
  %.3188389 = phi i8 [ %.0185, %bb.ah ], [ %.6191, %_ZN9NCompress11NRangeCoder11CBitEncoderILi5EE6EncodeEPNS0_8CEncoderEj.exit272 ] ; 5 uses
  %.2197388 = phi i32 [ 0, %bb.ah ], [ %.5200, %_ZN9NCompress11NRangeCoder11CBitEncoderILi5EE6EncodeEPNS0_8CEncoderEj.exit272 ] ; 8 uses
  %i.ff = load ptr, ptr %i.n, align 8, !tbaa !21
  %i.fg = zext i32 %.2197388 to i64               ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !37  ; 14 uses
  %i.fj = load ptr, ptr %i.f, align 8, !tbaa !39
  %i.fk = load i32, ptr %i.cz, align 8, !tbaa !40 ; 2 uses
  %i.fl = add i32 %i.fk, 1
  store i32 %i.fl, ptr %i.cz, align 8, !tbaa !40
  %i.fm = zext i32 %i.fk to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fm
  store i8 %i.fi, ptr %i.fn, align 1, !tbaa !37
  %i.fo = load i32, ptr %i.cz, align 8, !tbaa !40
  %i.fp = load i32, ptr %i.da, align 4, !tbaa !41
  %i.fq = icmp eq i32 %i.fo, %i.fp
  br i1 %i.fq, label %bb.aj, label %_ZN10COutBuffer9WriteByteEh.exit265

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(49) %i.f)
          to label %_ZN10COutBuffer9WriteByteEh.exit265 unwind label %bb.al

_ZN10COutBuffer9WriteByteEh.exit265:              ; preds = %bb.ai, %bb.aj
  %i.fr = and i8 %i.fi, -2
  %i.fs = icmp eq i8 %i.fr, -24
  br i1 %i.fs, label %_ZN9NCompress5NBcj23IsJEhh.exit.thread, label %_ZN9NCompress5NBcj23IsJEhh.exit

_ZN9NCompress5NBcj23IsJEhh.exit:                  ; preds = %_ZN10COutBuffer9WriteByteEh.exit265
  %i.ft = icmp eq i8 %.3188389, 15
  %i.fu = icmp slt i8 %i.fi, -112
  %i.fv = and i1 %i.ft, %i.fu
  br i1 %i.fv, label %_ZN9NCompress5NBcj23IsJEhh.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %_ZN9NCompress5NBcj23IsJEhh.exit
  %i.fw = add nuw i32 %.2197388, 1
  br label %_ZN9NCompress11NRangeCoder11CBitEncoderILi5EE6EncodeEPNS0_8CEncoderEj.exit272, !llvm.loop !63

bb.al:                                            ; preds = %bb.aj
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

_ZN9NCompress5NBcj23IsJEhh.exit.thread:           ; preds = %_ZN10COutBuffer9WriteByteEh.exit265, %_ZN9NCompress5NBcj23IsJEhh.exit
  %i.fy = load ptr, ptr %i.n, align 8, !tbaa !21  ; 4 uses
  %i.fz = add nuw i32 %.2197388, 4
  %i.ga = zext i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.ga
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !37  ; 6 uses
  %i.gd = zext i8 %i.gc to i32
  %i.ge = shl nuw i32 %i.gd, 24
  %i.gf = add nuw i32 %.2197388, 3
  %i.gg = zext i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !37
  %i.gj = zext i8 %i.gi to i32
  %i.gk = shl nuw nsw i32 %i.gj, 16
  %i.gl = or disjoint i32 %i.gk, %i.ge
  %i.gm = add nuw i32 %.2197388, 2
  %i.gn = zext i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !37
  %i.gq = zext i8 %i.gp to i32
  %i.gr = shl nuw nsw i32 %i.gq, 8
  %i.gs = or disjoint i32 %i.gl, %i.gr
  %i.gt = add nuw i32 %.2197388, 1                ; 3 uses
  %i.gu = zext i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.gu
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !37
  %i.gx = zext i8 %i.gw to i32
  %i.gy = or disjoint i32 %i.gs, %i.gx            ; 2 uses
  %i.gz = add i32 %i.fe, %.2197388
  %i.ha = add i32 %i.gz, %i.gy                    ; 6 uses
  %i.hb = load ptr, ptr %9, align 8, !tbaa !72
  %.not249 = icmp eq ptr %i.hb, null
  br i1 %.not249, label %bb.as, label %bb.am

bb.am:                                            ; preds = %_ZN9NCompress5NBcj23IsJEhh.exit.thread
  %i.hc = load i64, ptr %i.a, align 8, !tbaa !25
  %i.hd = add i64 %i.hc, %i.fg                    ; 3 uses
  %.not250380 = icmp ult i64 %.1150392, %i.hd
  br i1 %.not250380, label %.lr.ph383, label %._crit_edge.thread

.lr.ph383:                                        ; preds = %bb.am, %_ZN9CMyComPtrI25ICompressGetSubStreamSizeE7ReleaseEv.exit
  %.2151382 = phi i64 [ %i.hp, %_ZN9CMyComPtrI25ICompressGetSubStreamSizeE7ReleaseEv.exit ], [ %.1150392, %bb.am ] ; 2 uses
  %.2175381 = phi i64 [ %i.hq, %_ZN9CMyComPtrI25ICompressGetSubStreamSizeE7ReleaseEv.exit ], [ %.1174390, %bb.am ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.he = load ptr, ptr %9, align 8, !tbaa !72    ; 2 uses
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !23
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 40
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = invoke noundef i32 %i.hh(ptr noundef nonnull align 8 dereferenceable(8) %i.he, i64 noundef %.2175381, ptr noundef nonnull %i.c)
          to label %bb.an unwind label %.loopexit475 ; 2 uses

bb.an:                                            ; preds = %.lr.ph383
  switch i32 %i.hi, label %_ZN9NCompress11NRangeCoder11CBitEncoderILi5EE6EncodeEPNS0_8CEncoderEj.exit272.thread [
    i32 0, label %_ZN9CMyComPtrI25ICompressGetSubStreamSizeE7ReleaseEv.exit
    i32 -2147467263, label %bb.ap
end_hunk_0
begin_hunk_1_@_ZN9NCompress5NBcj28CEncoder8CodeRealEPP19ISequentialInStreamPPKyjPP20ISequentialOutStreamS7_jP21ICompressProgressInfo:bb.a
  %i.if = add i64 %i.ie, %i.hd                    ; 2 uses
  %i.ig = icmp uge i64 %i.if, %.2163.lcssa473
  %i.ih = icmp ult i64 %i.if, %.2151.lcssa474
  %i.ii = and i1 %i.ig, %i.ih
  %i.ij = icmp eq i8 %i.fi, -24                   ; 2 uses
  %i.ik = zext i8 %.3188389 to i32
  %i.il = icmp eq i8 %i.fi, -23
  %i.im = select i1 %i.il, i32 256, i32 257
  %i.in = select i1 %i.ij, i32 %i.ik, i32 %i.im   ; 2 uses
  br i1 %i.ii, label %bb.au, label %bb.bc

.thread292:                                       ; preds = %._crit_edge.thread
  %i.io = add i8 %i.gc, 1
  %i.ip = icmp ult i8 %i.io, 2
  %i.iq = icmp eq i8 %i.fi, -24                   ; 2 uses
  %i.ir = zext i8 %.3188389 to i32
  %i.is = icmp eq i8 %i.fi, -23
  %i.it = select i1 %i.is, i32 256, i32 257
  %i.iu = select i1 %i.iq, i32 %i.ir, i32 %i.it   ; 2 uses
  br i1 %i.ip, label %bb.au, label %bb.bc

_ZN9NCompress11NRangeCoder11CBitEncoderILi5EE6EncodeEPNS0_8CEncoderEj.exit272.thread: ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %.loopexit325

bb.as:                                            ; preds = %_ZN9NCompress5NBcj23IsJEhh.exit.thread
  %i.iv = icmp eq i8 %i.fi, -24                   ; 3 uses
  %i.iw = zext i8 %.3188389 to i32
  %i.ix = icmp eq i8 %i.fi, -23
  %i.iy = select i1 %i.ix, i32 256, i32 257
  %i.iz = select i1 %i.iv, i32 %i.iw, i32 %i.iy   ; 4 uses
  br i1 %.0229, label %bb.at, label %.split

.split:                                           ; preds = %bb.as
  %i.ja = add i8 %i.gc, 1
  %i.jb = icmp ult i8 %i.ja, 2
  br i1 %i.jb, label %bb.au, label %bb.bc

bb.at:                                            ; preds = %bb.as
  %i.jc = zext i32 %i.ha to i64
  %i.jd = icmp ugt i64 %.0228, %i.jc
  br i1 %i.jd, label %bb.au, label %bb.bc

bb.au:                                            ; preds = %.split324, %.split323, %.split322, %.split, %.thread292, %bb.at
  %i.je = phi i32 [ %i.iu, %.thread292 ], [ %i.iz, %bb.at ], [ %i.iz, %.split ], [ %i.in, %.split322 ], [ %i.hw, %.split323 ], [ %i.hw, %.split324 ]
  %i.jf = phi i1 [ %i.iq, %.thread292 ], [ %i.iv, %bb.at ], [ %i.iv, %.split ], [ %i.ij, %.split322 ], [ %i.hs, %.split323 ], [ %i.hs, %.split324 ]
  %.6155300 = phi i64 [ %.2151.lcssa474, %.thread292 ], [ %.1150392, %bb.at ], [ %.1150392, %.split ], [ %.2151.lcssa474, %.split322 ], [ %.4153468, %.split323 ], [ %.4153468, %.split324 ] ; 2 uses
  %.6167298 = phi i64 [ %.2163.lcssa473, %.thread292 ], [ %.1162391, %bb.at ], [ %.1162391, %.split ], [ %.2163.lcssa473, %.split322 ], [ %.4165467, %.split323 ], [ %.4165467, %.split324 ] ; 2 uses
  %.6179296 = phi i64 [ %.2175.lcssa472, %.thread292 ], [ %.1174390, %bb.at ], [ %.1174390, %.split ], [ %.2175.lcssa472, %.split322 ], [ %.4177466, %.split323 ], [ %.4177466, %.split324 ] ; 2 uses
  %i.jg = zext nneg i32 %i.je to i64
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.jg ; 2 uses
  %i.ji = load i32, ptr %i.af, align 8, !tbaa !69 ; 2 uses
  %i.jj = lshr i32 %i.ji, 11
  %i.jk = load i32, ptr %i.jh, align 4, !tbaa !36 ; 3 uses
  %i.jl = mul i32 %i.jj, %i.jk                    ; 2 uses
  %i.jm = zext i32 %i.jl to i64
  %i.jn = load i64, ptr %i.ae, align 8, !tbaa !32
  %i.jo = add i64 %i.jn, %i.jm
  store i64 %i.jo, ptr %i.ae, align 8, !tbaa !32
  %i.jp = sub i32 %i.ji, %i.jl                    ; 3 uses
  %i.jq = lshr i32 %i.jk, 5
  %i.jr = sub nuw i32 %i.jk, %i.jq
  store i32 %i.jp, ptr %i.af, align 8, !tbaa !69
  store i32 %i.jr, ptr %i.jh, align 4, !tbaa !36
  %i.js = icmp ult i32 %i.jp, 16777216
  br i1 %i.js, label %bb.av, label %_ZN9NCompress11NRangeCoder11CBitEncoderILi5EE6EncodeEPNS0_8CEncoderEj.exit268

bb.av:                                            ; preds = %bb.au
  %i.jt = shl nuw i32 %i.jp, 8
  store i32 %i.jt, ptr %i.af, align 8, !tbaa !69
  invoke void @_ZN9NCompress11NRangeCoder8CEncoder8ShiftLowEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ab)
          to label %_ZN9NCompress11NRangeCoder11CBitEncoderILi5EE6EncodeEPNS0_8CEncoderEj.exit268 unwind label %bb.aw

_ZN9NCompress11NRangeCoder11CBitEncoderILi5EE6EncodeEPNS0_8CEncoderEj.exit268: ; preds = %bb.au, %bb.av
  %i.ju = add nuw i32 %.2197388, 5                ; 2 uses
  %i.jv = select i1 %i.jf, ptr %i.h, ptr %i.j     ; 10 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8 ; 12 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 12 ; 4 uses
  %i.jy = lshr i32 %i.ha, 24
  %i.jz = trunc nuw i32 %i.jy to i8
  %i.ka = load ptr, ptr %i.jv, align 8, !tbaa !39
  %i.kb = load i32, ptr %i.jw, align 8, !tbaa !40 ; 2 uses
  %i.kc = add i32 %i.kb, 1
  store i32 %i.kc, ptr %i.jw, align 8, !tbaa !40
  %i.kd = zext i32 %i.kb to i64
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.kd
  store i8 %i.jz, ptr %i.ke, align 1, !tbaa !37
  %i.kf = load i32, ptr %i.jw, align 8, !tbaa !40 ; 2 uses
  %i.kg = load i32, ptr %i.jx, align 4, !tbaa !41
  %i.kh = icmp eq i32 %i.kf, %i.kg
  br i1 %i.kh, label %bb.ax, label %_ZN10COutBuffer9WriteByteEh.exit270

bb.aw:                                            ; preds = %bb.bd, %bb.av
  %i.ki = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.ax:                                            ; preds = %_ZN9NCompress11NRangeCoder11CBitEncoderILi5EE6EncodeEPNS0_8CEncoderEj.exit268
  invoke void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(49) %i.jv)
          to label %._ZN10COutBuffer9WriteByteEh.exit270_crit_edge unwind label %bb.bb

._ZN10COutBuffer9WriteByteEh.exit270_crit_edge:   ; preds = %bb.ax
  %.pre439 = load i32, ptr %i.jw, align 8, !tbaa !40
  br label %_ZN10COutBuffer9WriteByteEh.exit270

_ZN10COutBuffer9WriteByteEh.exit270:              ; preds = %._ZN10COutBuffer9WriteByteEh.exit270_crit_edge, %_ZN9NCompress11NRangeCoder11CBitEncoderILi5EE6EncodeEPNS0_8CEncoderEj.exit268
  %i.kj = phi i32 [ %.pre439, %._ZN10COutBuffer9WriteByteEh.exit270_crit_edge ], [ %i.kf, %_ZN9NCompress11NRangeCoder11CBitEncoderILi5EE6EncodeEPNS0_8CEncoderEj.exit268 ] ; 2 uses
  %i.kk = lshr i32 %i.ha, 16
  %i.kl = trunc i32 %i.kk to i8
  %i.km = load ptr, ptr %i.jv, align 8, !tbaa !39
  %i.kn = add i32 %i.kj, 1
  store i32 %i.kn, ptr %i.jw, align 8, !tbaa !40
  %i.ko = zext i32 %i.kj to i64
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.ko
  store i8 %i.kl, ptr %i.kp, align 1, !tbaa !37
  %i.kq = load i32, ptr %i.jw, align 8, !tbaa !40 ; 2 uses
  %i.kr = load i32, ptr %i.jx, align 4, !tbaa !41
  %i.ks = icmp eq i32 %i.kq, %i.kr
  br i1 %i.ks, label %bb.ay, label %_ZN10COutBuffer9WriteByteEh.exit270.1

bb.ay:                                            ; preds = %_ZN10COutBuffer9WriteByteEh.exit270
  invoke void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(49) %i.jv)
          to label %._ZN10COutBuffer9WriteByteEh.exit270.1_crit_edge unwind label %bb.bb

._ZN10COutBuffer9WriteByteEh.exit270.1_crit_edge: ; preds = %bb.ay
  %.pre440 = load i32, ptr %i.jw, align 8, !tbaa !40
  br label %_ZN10COutBuffer9WriteByteEh.exit270.1

_ZN10COutBuffer9WriteByteEh.exit270.1:            ; preds = %._ZN10COutBuffer9WriteByteEh.exit270.1_crit_edge, %_ZN10COutBuffer9WriteByteEh.exit270
  %i.kt = phi i32 [ %.pre440, %._ZN10COutBuffer9WriteByteEh.exit270.1_crit_edge ], [ %i.kq, %_ZN10COutBuffer9WriteByteEh.exit270 ] ; 2 uses
  %i.ku = lshr i32 %i.ha, 8
  %i.kv = trunc i32 %i.ku to i8
  %i.kw = load ptr, ptr %i.jv, align 8, !tbaa !39
  %i.kx = add i32 %i.kt, 1
  store i32 %i.kx, ptr %i.jw, align 8, !tbaa !40
  %i.ky = zext i32 %i.kt to i64
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.ky
  store i8 %i.kv, ptr %i.kz, align 1, !tbaa !37
  %i.la = load i32, ptr %i.jw, align 8, !tbaa !40 ; 2 uses
  %i.lb = load i32, ptr %i.jx, align 4, !tbaa !41
  %i.lc = icmp eq i32 %i.la, %i.lb
  br i1 %i.lc, label %bb.az, label %_ZN10COutBuffer9WriteByteEh.exit270.2

bb.az:                                            ; preds = %_ZN10COutBuffer9WriteByteEh.exit270.1
  invoke void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(49) %i.jv)
          to label %._ZN10COutBuffer9WriteByteEh.exit270.2_crit_edge unwind label %bb.bb

._ZN10COutBuffer9WriteByteEh.exit270.2_crit_edge: ; preds = %bb.az
  %.pre441 = load i32, ptr %i.jw, align 8, !tbaa !40
  br label %_ZN10COutBuffer9WriteByteEh.exit270.2

_ZN10COutBuffer9WriteByteEh.exit270.2:            ; preds = %._ZN10COutBuffer9WriteByteEh.exit270.2_crit_edge, %_ZN10COutBuffer9WriteByteEh.exit270.1
  %i.ld = phi i32 [ %.pre441, %._ZN10COutBuffer9WriteByteEh.exit270.2_crit_edge ], [ %i.la, %_ZN10COutBuffer9WriteByteEh.exit270.1 ] ; 2 uses
  %i.le = trunc i32 %i.ha to i8
  %i.lf = load ptr, ptr %i.jv, align 8, !tbaa !39
  %i.lg = add i32 %i.ld, 1
  store i32 %i.lg, ptr %i.jw, align 8, !tbaa !40
  %i.lh = zext i32 %i.ld to i64
  %i.li = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.lh
  store i8 %i.le, ptr %i.li, align 1, !tbaa !37
  %i.lj = load i32, ptr %i.jw, align 8, !tbaa !40
  %i.lk = load i32, ptr %i.jx, align 4, !tbaa !41
  %i.ll = icmp eq i32 %i.lj, %i.lk
  br i1 %i.ll, label %bb.ba, label %_ZN9NCompress11NRangeCoder11CBitEncoderILi5EE6EncodeEPNS0_8CEncoderEj.exit272

bb.ba:                                            ; preds = %_ZN10COutBuffer9WriteByteEh.exit270.2
  invoke void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(49) %i.jv)
          to label %_ZN9NCompress11NRangeCoder11CBitEncoderILi5EE6EncodeEPNS0_8CEncoderEj.exit272 unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay, %bb.ax
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bc:                                            ; preds = %.split324, %.split323, %.split322, %.split, %.thread292, %bb.at
  %i.ln = phi i32 [ %i.iu, %.thread292 ], [ %i.iz, %bb.at ], [ %i.iz, %.split ], [ %i.in, %.split322 ], [ %i.hw, %.split323 ], [ %i.hw, %.split324 ]
  %.6155299 = phi i64 [ %.2151.lcssa474, %.thread292 ], [ %.1150392, %bb.at ], [ %.1150392, %.split ], [ %.2151.lcssa474, %.split322 ], [ %.4153468, %.split323 ], [ %.4153468, %.split324 ] ; 2 uses
  %.6167297 = phi i64 [ %.2163.lcssa473, %.thread292 ], [ %.1162391, %bb.at ], [ %.1162391, %.split ], [ %.2163.lcssa473, %.split322 ], [ %.4165467, %.split323 ], [ %.4165467, %.split324 ] ; 2 uses
  %.6179295 = phi i64 [ %.2175.lcssa472, %.thread292 ], [ %.1174390, %bb.at ], [ %.1174390, %.split ], [ %.2175.lcssa472, %.split322 ], [ %.4177466, %.split323 ], [ %.4177466, %.split324 ] ; 2 uses
  %i.lo = zext nneg i32 %i.ln to i64
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.lo ; 2 uses
  %i.lq = load i32, ptr %i.af, align 8, !tbaa !69
  %i.lr = lshr i32 %i.lq, 11
  %i.ls = load i32, ptr %i.lp, align 4, !tbaa !36 ; 3 uses
  %i.lt = mul i32 %i.lr, %i.ls                    ; 3 uses
  %i.lu = sub i32 2048, %i.ls
  %i.lv = lshr i32 %i.lu, 5
  %i.lw = add i32 %i.lv, %i.ls
  store i32 %i.lt, ptr %i.af, align 8, !tbaa !69
  store i32 %i.lw, ptr %i.lp, align 4, !tbaa !36
  %i.lx = icmp ult i32 %i.lt, 16777216
  br i1 %i.lx, label %bb.bd, label %_ZN9NCompress11NRangeCoder11CBitEncoderILi5EE6EncodeEPNS0_8CEncoderEj.exit272

bb.bd:                                            ; preds = %bb.bc
  %i.ly = shl nuw i32 %i.lt, 8
  store i32 %i.ly, ptr %i.af, align 8, !tbaa !69
  invoke void @_ZN9NCompress11NRangeCoder8CEncoder8ShiftLowEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ab)
          to label %_ZN9NCompress11NRangeCoder11CBitEncoderILi5EE6EncodeEPNS0_8CEncoderEj.exit272 unwind label %bb.aw

_ZN9NCompress11NRangeCoder11CBitEncoderILi5EE6EncodeEPNS0_8CEncoderEj.exit272: ; preds = %_ZN10COutBuffer9WriteByteEh.exit270.2, %bb.ba, %bb.bc, %bb.bd, %bb.ak
  %.5200 = phi i32 [ %i.fw, %bb.ak ], [ %i.gt, %bb.bc ], [ %i.gt, %bb.bd ], [ %i.ju, %bb.ba ], [ %i.ju, %_ZN10COutBuffer9WriteByteEh.exit270.2 ] ; 6 uses
  %.6191 = phi i8 [ %i.fi, %bb.ak ], [ %i.fi, %bb.bc ], [ %i.fi, %bb.bd ], [ %i.gc, %bb.ba ], [ %i.gc, %_ZN10COutBuffer9WriteByteEh.exit270.2 ] ; 2 uses
  %.8181 = phi i64 [ %.1174390, %bb.ak ], [ %.6179295, %bb.bc ], [ %.6179295, %bb.bd ], [ %.6179296, %bb.ba ], [ %.6179296, %_ZN10COutBuffer9WriteByteEh.exit270.2 ] ; 2 uses
  %.8169 = phi i64 [ %.1162391, %bb.ak ], [ %.6167297, %bb.bc ], [ %.6167297, %bb.bd ], [ %.6167298, %bb.ba ], [ %.6167298, %_ZN10COutBuffer9WriteByteEh.exit270.2 ] ; 2 uses
  %.8157 = phi i64 [ %.1150392, %bb.ak ], [ %.6155299, %bb.bc ], [ %.6155299, %bb.bd ], [ %.6155300, %bb.ba ], [ %.6155300, %_ZN10COutBuffer9WriteByteEh.exit270.2 ] ; 2 uses
  %.not246 = icmp ugt i32 %.5200, %i.fd
  br i1 %.not246, label %bb.be, label %bb.ai

bb.be:                                            ; preds = %_ZN9NCompress11NRangeCoder11CBitEncoderILi5EE6EncodeEPNS0_8CEncoderEj.exit272
  %i.lz = add i32 %.5200, %.0205
  %i.ma = zext i32 %.5200 to i64                  ; 3 uses
  %i.mb = load i64, ptr %i.a, align 8, !tbaa !25
  %i.mc = add i64 %i.mb, %i.ma
  store i64 %i.mc, ptr %i.a, align 8, !tbaa !25
  br i1 %.not247, label %bb.bi, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.md = load ptr, ptr %7, align 8, !tbaa !23
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 40
  %i.mf = load ptr, ptr %i.me, align 8
  %i.mg = invoke noundef i32 %i.mf(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %i.a, ptr noundef null)
          to label %bb.bg unwind label %bb.bh     ; 2 uses

bb.bg:                                            ; preds = %bb.bf
  %.not248 = icmp eq i32 %i.mg, 0
  br i1 %.not248, label %bb.bi, label %.loopexit325

bb.bh:                                            ; preds = %bb.bf
  %i.mh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg, %bb.be
  %i.mi = icmp ult i32 %.5200, %i.dy
  br i1 %i.mi, label %.lr.ph396.preheader, label %.loopexit.backedge

.lr.ph396.preheader:                              ; preds = %bb.bi
  %narrow = sub nuw i32 %i.dy, %.5200             ; 4 uses
  %i.mj = zext i32 %narrow to i64                 ; 2 uses
  %xtraiter = and i64 %i.mj, 3                    ; 3 uses
  %i.mk = add i32 %narrow, -1
  %i.ml = icmp ult i32 %i.mk, 3
  br i1 %i.ml, label %.lr.ph396.epil.preheader, label %.lr.ph396.preheader.new

.lr.ph396.preheader.new:                          ; preds = %.lr.ph396.preheader
  %unroll_iter = and i64 %i.mj, 4294967292
  br label %.lr.ph396

.lr.ph396:                                        ; preds = %.lr.ph396, %.lr.ph396.preheader.new
  %indvars.iv430 = phi i64 [ %i.ma, %.lr.ph396.preheader.new ], [ %indvars.iv.next431.3, %.lr.ph396 ] ; 5 uses
  %indvars.iv427 = phi i64 [ 0, %.lr.ph396.preheader.new ], [ %indvars.iv.next428.3, %.lr.ph396 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph396.preheader.new ], [ %niter.next.3, %.lr.ph396 ]
  %i.mm = load ptr, ptr %i.n, align 8, !tbaa !21  ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 %indvars.iv430
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !37
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mm, i64 %indvars.iv427
  store i8 %i.mo, ptr %i.mp, align 1, !tbaa !37
  %i.mq = load ptr, ptr %i.n, align 8, !tbaa !21  ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 %indvars.iv430
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 1
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !37
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mq, i64 %indvars.iv427
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 1
  store i8 %i.mt, ptr %i.mv, align 1, !tbaa !37
  %i.mw = load ptr, ptr %i.n, align 8, !tbaa !21  ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 %indvars.iv430
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 2
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !37
  %i.na = getelementptr inbounds nuw i8, ptr %i.mw, i64 %indvars.iv427
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 2
  store i8 %i.mz, ptr %i.nb, align 1, !tbaa !37
  %i.nc = load ptr, ptr %i.n, align 8, !tbaa !21  ; 2 uses
  %indvars.iv.next431.3 = add nuw nsw i64 %indvars.iv430, 4 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 %indvars.iv430
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 3
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !37
  %indvars.iv.next428.3 = add nuw nsw i64 %indvars.iv427, 4 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nc, i64 %indvars.iv427
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 3
  store i8 %i.nf, ptr %i.nh, align 1, !tbaa !37
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph396, !llvm.loop !66

bb.bj:                                            ; preds = %bb.ag, %bb.ad, %bb.ab, %bb.al, %bb.aw, %bb.bb, %bb.ao, %bb.bh, %bb.v
  %.pn255.pn.pn = phi { ptr, i32 } [ %i.ds, %bb.v ], [ %i.em, %bb.ab ], [ %i.fc, %bb.ag ], [ %i.eq, %bb.ad ], [ %i.mh, %bb.bh ], [ %i.fx, %bb.al ], [ %lpad.phi, %bb.ao ], [ %i.lm, %bb.bb ], [ %i.ki, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.br

.loopexit325:                                     ; preds = %bb.bg, %.thread282, %._crit_edge401, %_ZN9NCompress11NRangeCoder11CBitEncoderILi5EE6EncodeEPNS0_8CEncoderEj.exit272.thread
  %.15.ph = phi i32 [ %i.dr, %.thread282 ], [ %i.hi, %_ZN9NCompress11NRangeCoder11CBitEncoderILi5EE6EncodeEPNS0_8CEncoderEj.exit272.thread ], [ %i.fb, %._crit_edge401 ], [ %i.mg, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.ni = load ptr, ptr %9, align 8, !tbaa !72    ; 3 uses
  %.not.i273 = icmp eq ptr %i.ni, null
  br i1 %.not.i273, label %_ZN9CMyComPtrI25ICompressGetSubStreamSizeED2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %.loopexit325
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !23
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  %i.nl = load ptr, ptr %i.nk, align 8
  %i.nm = invoke noundef i32 %i.nl(ptr noundef nonnull align 8 dereferenceable(8) %i.ni)
          to label %_ZN9CMyComPtrI25ICompressGetSubStreamSizeED2Ev.exit unwind label %bb.bl ; 0 uses

bb.bl:                                            ; preds = %bb.bk
  %i.nn = landingpad { ptr, i32 }
          catch ptr null
  %i.no = extractvalue { ptr, i32 } %i.nn, 0
  call void @__clang_call_terminate(ptr %i.no) #13
  unreachable

_ZN9CMyComPtrI25ICompressGetSubStreamSizeED2Ev.exit: ; preds = %.loopexit325, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !24 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.nq, null
  br i1 %.not.i.i.i.i, label %_ZN10COutBuffer13ReleaseStreamEv.exit.i.i, label %bb.bm

bb.bm:                                            ; preds = %_ZN9CMyComPtrI25ICompressGetSubStreamSizeED2Ev.exit
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !23
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %i.nt = load ptr, ptr %i.ns, align 8
  %i.nu = invoke noundef i32 %i.nt(ptr noundef nonnull align 8 dereferenceable(8) %i.nq)
          to label %.noexc.i unwind label %bb.bq, !inline_history !0 ; 0 uses

.noexc.i:                                         ; preds = %bb.bm
  store ptr null, ptr %i.np, align 8, !tbaa !24
  br label %_ZN10COutBuffer13ReleaseStreamEv.exit.i.i

_ZN10COutBuffer13ReleaseStreamEv.exit.i.i:        ; preds = %.noexc.i, %_ZN9CMyComPtrI25ICompressGetSubStreamSizeED2Ev.exit
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !24 ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.nw, null
  br i1 %.not.i.i1.i.i, label %_ZN10COutBuffer13ReleaseStreamEv.exit2.i.i, label %bb.bn

bb.bn:                                            ; preds = %_ZN10COutBuffer13ReleaseStreamEv.exit.i.i
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !23
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 16
  %i.nz = load ptr, ptr %i.ny, align 8
  %i.oa = invoke noundef i32 %i.nz(ptr noundef nonnull align 8 dereferenceable(8) %i.nw)
          to label %.noexc1.i unwind label %bb.bq, !inline_history !0 ; 0 uses

.noexc1.i:                                        ; preds = %bb.bn
  store ptr null, ptr %i.nv, align 8, !tbaa !24
  br label %_ZN10COutBuffer13ReleaseStreamEv.exit2.i.i

_ZN10COutBuffer13ReleaseStreamEv.exit2.i.i:       ; preds = %.noexc1.i, %_ZN10COutBuffer13ReleaseStreamEv.exit.i.i
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !24 ; 3 uses
  %.not.i.i3.i.i = icmp eq ptr %i.oc, null
  br i1 %.not.i.i3.i.i, label %_ZN10COutBuffer13ReleaseStreamEv.exit4.i.i, label %bb.bo

bb.bo:                                            ; preds = %_ZN10COutBuffer13ReleaseStreamEv.exit2.i.i
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !23
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 16
  %i.of = load ptr, ptr %i.oe, align 8
  %i.og = invoke noundef i32 %i.of(ptr noundef nonnull align 8 dereferenceable(8) %i.oc)
          to label %.noexc2.i unwind label %bb.bq, !inline_history !0 ; 0 uses

.noexc2.i:                                        ; preds = %bb.bo
  store ptr null, ptr %i.ob, align 8, !tbaa !24
  br label %_ZN10COutBuffer13ReleaseStreamEv.exit4.i.i

_ZN10COutBuffer13ReleaseStreamEv.exit4.i.i:       ; preds = %.noexc2.i, %_ZN10COutBuffer13ReleaseStreamEv.exit2.i.i
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !24 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.oi, null
  br i1 %.not.i.i.i.i.i, label %_ZN9NCompress5NBcj28CEncoder14CCoderReleaserD2Ev.exit, label %bb.bp

bb.bp:                                            ; preds = %_ZN10COutBuffer13ReleaseStreamEv.exit4.i.i
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !23
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  %i.ol = load ptr, ptr %i.ok, align 8
  %i.om = invoke noundef i32 %i.ol(ptr noundef nonnull align 8 dereferenceable(8) %i.oi)
          to label %.noexc3.i unwind label %bb.bq, !inline_history !0 ; 0 uses

.noexc3.i:                                        ; preds = %bb.bp
  store ptr null, ptr %i.oh, align 8, !tbaa !24
  br label %_ZN9NCompress5NBcj28CEncoder14CCoderReleaserD2Ev.exit

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bn, %bb.bm
  %i.on = landingpad { ptr, i32 }
          catch ptr null
  %i.oo = extractvalue { ptr, i32 } %i.on, 0
  call void @__clang_call_terminate(ptr %i.oo) #13
  unreachable

_ZN9NCompress5NBcj28CEncoder14CCoderReleaserD2Ev.exit: ; preds = %_ZN10COutBuffer13ReleaseStreamEv.exit4.i.i, %.noexc3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %_ZN9NCompress5NBcj28CEncoder6CreateEv.exit.thread

bb.br:                                            ; preds = %bb.bj, %bb.s
  %.pn255.pn.pn.pn = phi { ptr, i32 } [ %.pn255.pn.pn, %bb.bj ], [ %i.dh, %bb.s ]
  %i.op = load ptr, ptr %9, align 8, !tbaa !72    ; 3 uses
  %.not.i274 = icmp eq ptr %i.op, null
  br i1 %.not.i274, label %_ZN9CMyComPtrI25ICompressGetSubStreamSizeED2Ev.exit275, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !23
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  %i.os = load ptr, ptr %i.or, align 8
  %i.ot = invoke noundef i32 %i.os(ptr noundef nonnull align 8 dereferenceable(8) %i.op)
          to label %_ZN9CMyComPtrI25ICompressGetSubStreamSizeED2Ev.exit275 unwind label %bb.bt ; 0 uses

bb.bt:                                            ; preds = %bb.bs
  %i.ou = landingpad { ptr, i32 }
          catch ptr null
  %i.ov = extractvalue { ptr, i32 } %i.ou, 0
  call void @__clang_call_terminate(ptr %i.ov) #13
  unreachable

_ZN9CMyComPtrI25ICompressGetSubStreamSizeED2Ev.exit275: ; preds = %bb.br, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  br label %bb.bu

bb.bu:                                            ; preds = %_ZN9CMyComPtrI25ICompressGetSubStreamSizeED2Ev.exit275, %bb.q
  %.pn255.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn255.pn.pn.pn, %_ZN9CMyComPtrI25ICompressGetSubStreamSizeED2Ev.exit275 ], [ %i.cy, %bb.q ]
  call void @_ZN9NCompress5NBcj28CEncoder14CCoderReleaserD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  resume { ptr, i32 } %.pn255.pn.pn.pn.pn

_ZN9NCompress5NBcj28CEncoder6CreateEv.exit.thread: ; preds = %bb.g, %bb.b, %bb.c, %bb.d, %bb.e, %bb.a, %_ZN9NCompress5NBcj28CEncoder14CCoderReleaserD2Ev.exit
  %.16 = phi i32 [ -2147024809, %bb.a ], [ %.15.ph, %_ZN9NCompress5NBcj28CEncoder14CCoderReleaserD2Ev.exit ], [ -2147024882, %bb.e ], [ -2147024882, %bb.d ], [ -2147024882, %bb.c ], [ -2147024882, %bb.b ], [ -2147024882, %bb.g ]
  ret i32 %.16
}

declare void @_ZN10COutBuffer9SetStreamEP20ISequentialOutStream(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef) local_unnamed_addr #1

declare void @_ZN10COutBuffer4InitEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9NCompress5NBcj28CEncoder14CCoderReleaserD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !28     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN10COutBuffer13ReleaseStreamEv.exit.i, label %bb.b

end_hunk_1
