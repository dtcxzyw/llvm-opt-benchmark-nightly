Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/HasselbladDecompressor?download=true
inline.NumInlined: 423
inline.NumDeleted: 286
begin_hunk_0_@_ZN8rawspeed22HasselbladDecompressor10decompressEv:bb.a
bb.k:                                             ; preds = %bb.j
  %i.bz = zext nneg i32 %.sroa.75160.1311.us to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.bz
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.us

bb.l:                                             ; preds = %bb.j
  %i.cb = icmp samesign ugt i32 %.sroa.75160.1311.us, %i.bg
  br i1 %i.cb, label %.split.us, label %bb.m, !prof !112

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %.sroa.0.i.i, align 4
  %.sroa.speculated27.i.i.i.us = call i32 @llvm.umin.i32(i32 %.sroa.2.0.copyload, i32 %.sroa.75160.1311.us) ; 3 uses
  %i.cc = add nuw nsw i32 %.sroa.speculated27.i.i.i.us, 4
  %.sroa.speculated.i.i.i.us = call i32 @llvm.umin.i32(i32 %.sroa.2.0.copyload, i32 %i.cc)
  %i.cd = sub nsw i32 %.sroa.speculated.i.i.i.us, %.sroa.speculated27.i.i.i.us ; 2 uses
  %i.ce = icmp samesign ult i32 %i.cd, 5
  call void @llvm.assume(i1 %i.ce)
  %i.cf = zext nneg i32 %.sroa.speculated27.i.i.i.us to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.cf
  %i.ch = zext nneg i32 %i.cd to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i, ptr align 1 %i.cg, i64 %i.ch, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.us

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.us: ; preds = %bb.m, %bb.k
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.us = phi ptr [ %.sroa.0.i.i, %bb.m ], [ %i.ca, %bb.k ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.us = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.us, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.ci = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.us to i64
  %i.cj = or disjoint i32 %.sroa.28.1312.us, 32
  %i.ck = sub nuw nsw i32 32, %.sroa.28.1312.us
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = shl nuw i64 %i.ci, %i.cl
  %i.cn = or i64 %i.cm, %.sroa.0121.1313.us
  br label %.noexc.us

.noexc.us:                                        ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.us, %bb.i
  %.sroa.75160.2.us = phi i32 [ %i.by, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.us ], [ %.sroa.75160.1311.us, %bb.i ] ; 6 uses
  %.sroa.28.6.us = phi i32 [ %i.cj, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.us ], [ %.sroa.28.1312.us, %bb.i ]
  %.sroa.0121.6.us = phi i64 [ %i.cn, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.us ], [ %.sroa.0121.1313.us, %bb.i ] ; 2 uses
  %i.co = and i32 %.sroa.75160.2.us, 3
  %i.cp = icmp eq i32 %i.co, 0
  call void @llvm.assume(i1 %i.cp)
  %i.cq = lshr i64 %.sroa.0121.6.us, 53           ; 3 uses
  %i.cr = trunc nuw nsw i64 %i.cq to i32          ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.cq
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !22 ; 4 uses
  %i.cu = ashr i32 %i.ct, 9                       ; 2 uses
  %i.cv = and i32 %i.ct, 255                      ; 4 uses
  %i.cw = icmp samesign ult i32 %i.cv, 33
  call void @llvm.assume(i1 %i.cw)
  %i.cx = sub nuw nsw i32 %.sroa.28.6.us, %i.cv   ; 3 uses
  %i.cy = zext nneg i32 %i.cv to i64
  %i.cz = shl i64 %.sroa.0121.6.us, %i.cy         ; 3 uses
  %i.da = and i32 %i.ct, 256
  %.not.i.us = icmp eq i32 %i.da, 0
  br i1 %.not.i.us, label %bb.n, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE15decodeCodeValueINS_16BitStreamerMSB32EEEiRT_.exit26.us

bb.n:                                             ; preds = %.noexc.us
  %.not17.i.us = icmp eq i32 %i.ct, 0
  br i1 %.not17.i.us, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.db = trunc i32 %i.cu to i8
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.dc = icmp eq i32 %i.cv, 0
  call void @llvm.assume(i1 %i.dc)
  %i.dd = add nsw i32 %i.cx, -11                  ; 2 uses
  %i.de = shl i64 %i.cz, 11                       ; 2 uses
  %.sroa.0.018.i.us = trunc nuw nsw i64 %i.cq to i16 ; 2 uses
  br i1 %i.bs, label %.lr.ph.i45.us, label %.critedge.i.us

.lr.ph.i45.us:                                    ; preds = %bb.p, %.critedge2.i.us
  %.sroa.28.8.us = phi i32 [ %i.do, %.critedge2.i.us ], [ %i.dd, %bb.p ] ; 4 uses
  %.sroa.0121.8.us = phi i64 [ %i.dp, %.critedge2.i.us ], [ %i.de, %bb.p ] ; 3 uses
  %i.df = phi i64 [ %i.du, %.critedge2.i.us ], [ 11, %bb.p ] ; 2 uses
  %.sroa.0.021.i.us = phi i16 [ %.sroa.0.0.i.us, %.critedge2.i.us ], [ %.sroa.0.018.i.us, %bb.p ] ; 2 uses
  %.sroa.8.020.i.us = phi i8 [ %i.dt, %.critedge2.i.us ], [ 11, %bb.p ] ; 2 uses
  %.sroa.0.0.in19.i.us = phi i32 [ %i.ds, %.critedge2.i.us ], [ %i.cr, %bb.p ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %.pre350, i64 %i.df
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !118 ; 2 uses
  %i.di = icmp eq i16 %i.dh, -1
  %i.dj = icmp ult i16 %i.dh, %.sroa.0.021.i.us
  %or.cond.i.us = select i1 %i.di, i1 true, i1 %i.dj
  br i1 %or.cond.i.us, label %.critedge2.i.us, label %.critedge.i.us.loopexit

.critedge2.i.us:                                  ; preds = %.lr.ph.i45.us
  %i.dk = icmp samesign ult i32 %.sroa.28.8.us, 65
  call void @llvm.assume(i1 %i.dk)
  %i.dl = icmp ne i32 %.sroa.28.8.us, 0
  call void @llvm.assume(i1 %i.dl)
  %i.dm = lshr i64 %.sroa.0121.8.us, 63
  %i.dn = trunc nuw nsw i64 %i.dm to i32
  %i.do = add nsw i32 %.sroa.28.8.us, -1          ; 2 uses
  %i.dp = shl i64 %.sroa.0121.8.us, 1             ; 2 uses
  %i.dq = shl nsw i32 %.sroa.0.0.in19.i.us, 1
  %i.dr = and i32 %i.dq, 131070
  %i.ds = or disjoint i32 %i.dr, %i.dn            ; 3 uses
  %i.dt = add i8 %.sroa.8.020.i.us, 1             ; 3 uses
  %.sroa.0.0.i.us = trunc i32 %i.ds to i16        ; 2 uses
  %i.du = zext i8 %i.dt to i64                    ; 3 uses
  %i.dv = icmp ugt i64 %i.br, %i.du
  br i1 %i.dv, label %.lr.ph.i45.us, label %.critedge.i.us.loopexit, !llvm.loop !151

.critedge.i.us.loopexit:                          ; preds = %.critedge2.i.us, %.lr.ph.i45.us
  %.sroa.28.7.us.ph = phi i32 [ %i.do, %.critedge2.i.us ], [ %.sroa.28.8.us, %.lr.ph.i45.us ]
  %.sroa.0121.7.us.ph = phi i64 [ %i.dp, %.critedge2.i.us ], [ %.sroa.0121.8.us, %.lr.ph.i45.us ]
  %.sroa.0.0.in.lcssa.i.us.ph = phi i32 [ %i.ds, %.critedge2.i.us ], [ %.sroa.0.0.in19.i.us, %.lr.ph.i45.us ]
  %.sroa.8.0.lcssa.i.us.ph = phi i8 [ %i.dt, %.critedge2.i.us ], [ %.sroa.8.020.i.us, %.lr.ph.i45.us ]
  %.sroa.0.0.lcssa.i.us.ph = phi i16 [ %.sroa.0.0.i.us, %.critedge2.i.us ], [ %.sroa.0.021.i.us, %.lr.ph.i45.us ]
  %.lcssa17.i.us.ph = phi i64 [ %i.du, %.critedge2.i.us ], [ %i.df, %.lr.ph.i45.us ]
  %i.dw = zext i8 %.sroa.8.0.lcssa.i.us.ph to i32
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.critedge.i.us.loopexit, %bb.p
  %.sroa.28.7.us = phi i32 [ %i.dd, %bb.p ], [ %.sroa.28.7.us.ph, %.critedge.i.us.loopexit ]
  %.sroa.0121.7.us = phi i64 [ %i.de, %bb.p ], [ %.sroa.0121.7.us.ph, %.critedge.i.us.loopexit ]
  %.sroa.0.0.in.lcssa.i.us = phi i32 [ %i.cr, %bb.p ], [ %.sroa.0.0.in.lcssa.i.us.ph, %.critedge.i.us.loopexit ] ; 2 uses
  %.sroa.8.0.lcssa.i.us = phi i32 [ 11, %bb.p ], [ %i.dw, %.critedge.i.us.loopexit ]
  %.sroa.0.0.lcssa.i.us = phi i16 [ %.sroa.0.018.i.us, %bb.p ], [ %.sroa.0.0.lcssa.i.us.ph, %.critedge.i.us.loopexit ]
  %.lcssa17.i.us = phi i64 [ 11, %bb.p ], [ %.lcssa17.i.us.ph, %.critedge.i.us.loopexit ] ; 3 uses
  %i.dx = icmp ult i64 %i.br, %.lcssa17.i.us
  br i1 %i.dx, label %.split324.us, label %bb.q

bb.q:                                             ; preds = %.critedge.i.us
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %.pre350, i64 %.lcssa17.i.us
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !118
  %i.ea = icmp ult i16 %i.dz, %.sroa.0.0.lcssa.i.us
  br i1 %i.ea, label %.split324.us, label %.noexc31.us

.noexc31.us:                                      ; preds = %bb.q
  %.sroa.0.0.mask.i.us = and i32 %.sroa.0.0.in.lcssa.i.us, 65535
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %.pre351, i64 %.lcssa17.i.us
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !118
  %.tr.i.us = zext i16 %i.ec to i32
  %.narrow.i.us = sub nsw i32 %.sroa.0.0.mask.i.us, %.tr.i.us
  %i.ed = zext i32 %.narrow.i.us to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !111
  br label %bb.r

bb.r:                                             ; preds = %.noexc31.us, %bb.o
  %.0278.us = phi i8 [ %i.ef, %.noexc31.us ], [ %i.db, %bb.o ]
  %.sroa.28.2.us = phi i32 [ %.sroa.28.7.us, %.noexc31.us ], [ %i.cx, %bb.o ]
  %.sroa.0121.2.us = phi i64 [ %.sroa.0121.7.us, %.noexc31.us ], [ %i.cz, %bb.o ]
  %i.eg = zext i8 %.0278.us to i32
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE15decodeCodeValueINS_16BitStreamerMSB32EEEiRT_.exit26.us

_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE15decodeCodeValueINS_16BitStreamerMSB32EEEiRT_.exit26.us: ; preds = %bb.r, %.noexc.us
  %.sroa.28.3.us = phi i32 [ %.sroa.28.2.us, %bb.r ], [ %i.cx, %.noexc.us ] ; 5 uses
  %.sroa.0121.3.us = phi i64 [ %.sroa.0121.2.us, %bb.r ], [ %i.cz, %.noexc.us ] ; 2 uses
  %.0.i.us = phi i32 [ %i.eg, %bb.r ], [ %i.cu, %.noexc.us ] ; 7 uses
  %i.eh = icmp samesign ult i32 %.sroa.28.3.us, 65
  call void @llvm.assume(i1 %i.eh)
  %.not.i48.us = icmp samesign ult i32 %.sroa.28.3.us, 32
  br i1 %.not.i48.us, label %bb.s, label %.noexc37.us

bb.s:                                             ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE15decodeCodeValueINS_16BitStreamerMSB32EEEiRT_.exit26.us
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i47)
  %i.ei = add nuw nsw i32 %.sroa.75160.2.us, 4    ; 2 uses
  %.not.i.i49.us = icmp samesign ugt i32 %i.ei, %.sroa.2.0.copyload
  br i1 %.not.i.i49.us, label %bb.u, label %bb.t, !prof !112

bb.t:                                             ; preds = %bb.s
  %i.ej = zext nneg i32 %.sroa.75160.2.us to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.ej
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i51.us

bb.u:                                             ; preds = %bb.s
  %i.el = icmp samesign ugt i32 %.sroa.75160.2.us, %i.bg
  br i1 %i.el, label %.split335.us.invoke, label %bb.v, !prof !112

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %.sroa.0.i.i47, align 4
  %.sroa.speculated27.i.i.i56.us = call i32 @llvm.umin.i32(i32 %.sroa.2.0.copyload, i32 %.sroa.75160.2.us) ; 3 uses
  %i.em = add nuw nsw i32 %.sroa.speculated27.i.i.i56.us, 4
  %.sroa.speculated.i.i.i57.us = call i32 @llvm.umin.i32(i32 %.sroa.2.0.copyload, i32 %i.em)
  %i.en = sub nsw i32 %.sroa.speculated.i.i.i57.us, %.sroa.speculated27.i.i.i56.us ; 2 uses
  %i.eo = icmp samesign ult i32 %i.en, 5
  call void @llvm.assume(i1 %i.eo)
  %i.ep = zext nneg i32 %.sroa.speculated27.i.i.i56.us to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.ep
  %i.er = zext nneg i32 %i.en to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i47, ptr align 1 %i.eq, i64 %i.er, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i51.us

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i51.us: ; preds = %bb.v, %bb.t
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i52.us = phi ptr [ %.sroa.0.i.i47, %bb.v ], [ %i.ek, %bb.t ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i53.us = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i52.us, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i47)
  %i.es = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i53.us to i64
  %i.et = or disjoint i32 %.sroa.28.3.us, 32
  %i.eu = sub nuw nsw i32 32, %.sroa.28.3.us
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = shl nuw i64 %i.es, %i.ev
  %i.ex = or i64 %i.ew, %.sroa.0121.3.us
  br label %.noexc37.us

.noexc37.us:                                      ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i51.us, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE15decodeCodeValueINS_16BitStreamerMSB32EEEiRT_.exit26.us
  %.sroa.75160.3.us = phi i32 [ %i.ei, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i51.us ], [ %.sroa.75160.2.us, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE15decodeCodeValueINS_16BitStreamerMSB32EEEiRT_.exit26.us ] ; 7 uses
  %.sroa.28.9.us = phi i32 [ %i.et, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i51.us ], [ %.sroa.28.3.us, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE15decodeCodeValueINS_16BitStreamerMSB32EEEiRT_.exit26.us ]
  %.sroa.0121.9.us = phi i64 [ %i.ex, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i51.us ], [ %.sroa.0121.3.us, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE15decodeCodeValueINS_16BitStreamerMSB32EEEiRT_.exit26.us ] ; 2 uses
  %i.ey = icmp sgt i32 %.sroa.75160.3.us, -1
  call void @llvm.assume(i1 %i.ey)
  %i.ez = lshr i64 %.sroa.0121.9.us, 53           ; 3 uses
  %i.fa = trunc nuw nsw i64 %i.ez to i32          ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ez
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !22 ; 4 uses
  %i.fd = ashr i32 %i.fc, 9                       ; 2 uses
  %i.fe = and i32 %i.fc, 255                      ; 4 uses
  %i.ff = icmp samesign ult i32 %i.fe, 33
  call void @llvm.assume(i1 %i.ff)
  %i.fg = sub nuw nsw i32 %.sroa.28.9.us, %i.fe   ; 3 uses
  %i.fh = zext nneg i32 %i.fe to i64
  %i.fi = shl i64 %.sroa.0121.9.us, %i.fh         ; 3 uses
  %i.fj = and i32 %i.fc, 256
  %.not.i32.us = icmp eq i32 %i.fj, 0
  br i1 %.not.i32.us, label %bb.w, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE15decodeCodeValueINS_16BitStreamerMSB32EEEiRT_.exit.us

bb.w:                                             ; preds = %.noexc37.us
  %.not17.i34.us = icmp eq i32 %i.fc, 0
  br i1 %.not17.i34.us, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fk = trunc i32 %i.fd to i8
  br label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.fl = icmp eq i32 %i.fe, 0
  call void @llvm.assume(i1 %i.fl)
  %i.fm = add nsw i32 %i.fg, -11                  ; 2 uses
  %i.fn = shl i64 %i.fi, 11                       ; 2 uses
  %.sroa.0.018.i62.us = trunc nuw nsw i64 %i.ez to i16 ; 2 uses
  br i1 %i.bs, label %.lr.ph.i81.us, label %.critedge.i64.us

.lr.ph.i81.us:                                    ; preds = %bb.y, %.critedge2.i88.us
  %.sroa.28.11.us = phi i32 [ %i.fx, %.critedge2.i88.us ], [ %i.fm, %bb.y ] ; 4 uses
  %.sroa.0121.11.us = phi i64 [ %i.fy, %.critedge2.i88.us ], [ %i.fn, %bb.y ] ; 3 uses
  %i.fo = phi i64 [ %i.gd, %.critedge2.i88.us ], [ 11, %bb.y ] ; 2 uses
  %.sroa.0.021.i84.us = phi i16 [ %.sroa.0.0.i89.us, %.critedge2.i88.us ], [ %.sroa.0.018.i62.us, %bb.y ] ; 2 uses
  %.sroa.8.020.i85.us = phi i8 [ %i.gc, %.critedge2.i88.us ], [ 11, %bb.y ] ; 2 uses
  %.sroa.0.0.in19.i86.us = phi i32 [ %i.gb, %.critedge2.i88.us ], [ %i.fa, %bb.y ] ; 2 uses
  %i.fp = getelementptr inbounds nuw [2 x i8], ptr %.pre350, i64 %i.fo
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !118 ; 2 uses
  %i.fr = icmp eq i16 %i.fq, -1
  %i.fs = icmp ult i16 %i.fq, %.sroa.0.021.i84.us
  %or.cond.i87.us = select i1 %i.fr, i1 true, i1 %i.fs
  br i1 %or.cond.i87.us, label %.critedge2.i88.us, label %.critedge.i64.us.loopexit

.critedge2.i88.us:                                ; preds = %.lr.ph.i81.us
  %i.ft = icmp samesign ult i32 %.sroa.28.11.us, 65
  call void @llvm.assume(i1 %i.ft)
  %i.fu = icmp ne i32 %.sroa.28.11.us, 0
  call void @llvm.assume(i1 %i.fu)
  %i.fv = lshr i64 %.sroa.0121.11.us, 63
  %i.fw = trunc nuw nsw i64 %i.fv to i32
  %i.fx = add nsw i32 %.sroa.28.11.us, -1         ; 2 uses
  %i.fy = shl i64 %.sroa.0121.11.us, 1            ; 2 uses
  %i.fz = shl nsw i32 %.sroa.0.0.in19.i86.us, 1
  %i.ga = and i32 %i.fz, 131070
  %i.gb = or disjoint i32 %i.ga, %i.fw            ; 3 uses
  %i.gc = add i8 %.sroa.8.020.i85.us, 1           ; 3 uses
  %.sroa.0.0.i89.us = trunc i32 %i.gb to i16      ; 2 uses
  %i.gd = zext i8 %i.gc to i64                    ; 3 uses
  %i.ge = icmp ugt i64 %i.br, %i.gd
  br i1 %i.ge, label %.lr.ph.i81.us, label %.critedge.i64.us.loopexit, !llvm.loop !151

.critedge.i64.us.loopexit:                        ; preds = %.critedge2.i88.us, %.lr.ph.i81.us
  %.sroa.28.10.us.ph = phi i32 [ %i.fx, %.critedge2.i88.us ], [ %.sroa.28.11.us, %.lr.ph.i81.us ]
  %.sroa.0121.10.us.ph = phi i64 [ %i.fy, %.critedge2.i88.us ], [ %.sroa.0121.11.us, %.lr.ph.i81.us ]
  %.sroa.0.0.in.lcssa.i65.us.ph = phi i32 [ %i.gb, %.critedge2.i88.us ], [ %.sroa.0.0.in19.i86.us, %.lr.ph.i81.us ]
  %.sroa.8.0.lcssa.i66.us.ph = phi i8 [ %i.gc, %.critedge2.i88.us ], [ %.sroa.8.020.i85.us, %.lr.ph.i81.us ]
  %.sroa.0.0.lcssa.i67.us.ph = phi i16 [ %.sroa.0.0.i89.us, %.critedge2.i88.us ], [ %.sroa.0.021.i84.us, %.lr.ph.i81.us ]
  %.lcssa17.i68.us.ph = phi i64 [ %i.gd, %.critedge2.i88.us ], [ %i.fo, %.lr.ph.i81.us ]
  %i.gf = zext i8 %.sroa.8.0.lcssa.i66.us.ph to i32
  br label %.critedge.i64.us

.critedge.i64.us:                                 ; preds = %.critedge.i64.us.loopexit, %bb.y
  %.sroa.28.10.us = phi i32 [ %i.fm, %bb.y ], [ %.sroa.28.10.us.ph, %.critedge.i64.us.loopexit ]
  %.sroa.0121.10.us = phi i64 [ %i.fn, %bb.y ], [ %.sroa.0121.10.us.ph, %.critedge.i64.us.loopexit ]
  %.sroa.0.0.in.lcssa.i65.us = phi i32 [ %i.fa, %bb.y ], [ %.sroa.0.0.in.lcssa.i65.us.ph, %.critedge.i64.us.loopexit ] ; 2 uses
  %.sroa.8.0.lcssa.i66.us = phi i32 [ 11, %bb.y ], [ %i.gf, %.critedge.i64.us.loopexit ]
  %.sroa.0.0.lcssa.i67.us = phi i16 [ %.sroa.0.018.i62.us, %bb.y ], [ %.sroa.0.0.lcssa.i67.us.ph, %.critedge.i64.us.loopexit ]
  %.lcssa17.i68.us = phi i64 [ 11, %bb.y ], [ %.lcssa17.i68.us.ph, %.critedge.i64.us.loopexit ] ; 3 uses
  %i.gg = icmp ult i64 %i.br, %.lcssa17.i68.us
  br i1 %i.gg, label %.split329.us, label %bb.z

bb.z:                                             ; preds = %.critedge.i64.us
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %.pre350, i64 %.lcssa17.i68.us
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !118
  %i.gj = icmp ult i16 %i.gi, %.sroa.0.0.lcssa.i67.us
  br i1 %i.gj, label %.split329.us, label %.noexc38.us

.noexc38.us:                                      ; preds = %bb.z
  %.sroa.0.0.mask.i70.us = and i32 %.sroa.0.0.in.lcssa.i65.us, 65535
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %.pre351, i64 %.lcssa17.i68.us
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !118
  %.tr.i71.us = zext i16 %i.gl to i32
  %.narrow.i72.us = sub nsw i32 %.sroa.0.0.mask.i70.us, %.tr.i71.us
  %i.gm = zext i32 %.narrow.i72.us to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !111
  br label %bb.aa

bb.aa:                                            ; preds = %.noexc38.us, %bb.x
  %.0279.us = phi i8 [ %i.go, %.noexc38.us ], [ %i.fk, %bb.x ]
  %.sroa.28.4.us = phi i32 [ %.sroa.28.10.us, %.noexc38.us ], [ %i.fg, %bb.x ]
  %.sroa.0121.4.us = phi i64 [ %.sroa.0121.10.us, %.noexc38.us ], [ %i.fi, %bb.x ]
  %i.gp = zext i8 %.0279.us to i32
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE15decodeCodeValueINS_16BitStreamerMSB32EEEiRT_.exit.us

_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE15decodeCodeValueINS_16BitStreamerMSB32EEEiRT_.exit.us: ; preds = %bb.aa, %.noexc37.us
  %.sroa.28.5.us = phi i32 [ %.sroa.28.4.us, %bb.aa ], [ %i.fg, %.noexc37.us ] ; 6 uses
  %.sroa.0121.5.us = phi i64 [ %.sroa.0121.4.us, %bb.aa ], [ %i.fi, %.noexc37.us ] ; 3 uses
  %.0.i33.us = phi i32 [ %i.gp, %bb.aa ], [ %i.fd, %.noexc37.us ] ; 7 uses
  %.not.i92.us = icmp eq i32 %.0.i.us, 0
  br i1 %.not.i92.us, label %_ZN8rawspeed22HasselbladDecompressor7getBitsERNS_16BitStreamerMSB32Ei.exit.us, label %bb.ab

bb.ab:                                            ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE15decodeCodeValueINS_16BitStreamerMSB32EEEiRT_.exit.us
  %i.gq = icmp samesign ult i32 %.sroa.28.5.us, 65
  call void @llvm.assume(i1 %i.gq)
  %i.gr = icmp samesign ult i32 %.0.i.us, 33
  call void @llvm.assume(i1 %i.gr)
  %.not.i.i.i.us = icmp samesign ult i32 %.sroa.28.5.us, %.0.i.us
  br i1 %.not.i.i.i.us, label %bb.ac, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.us

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.gs = add nuw nsw i32 %.sroa.75160.3.us, 4    ; 2 uses
  %.not.i.i.i.i93.us = icmp samesign ugt i32 %i.gs, %.sroa.2.0.copyload
  br i1 %.not.i.i.i.i93.us, label %bb.ae, label %bb.ad, !prof !112

bb.ad:                                            ; preds = %bb.ac
  %i.gt = zext nneg i32 %.sroa.75160.3.us to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.gt
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.us

bb.ae:                                            ; preds = %bb.ac
  %i.gv = icmp samesign ugt i32 %.sroa.75160.3.us, %i.bg
  br i1 %i.gv, label %.split335.us.invoke, label %bb.af, !prof !112

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %.sroa.0.i.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.i.us = call i32 @llvm.umin.i32(i32 %.sroa.2.0.copyload, i32 %.sroa.75160.3.us) ; 3 uses
  %i.gw = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i.us, 4
  %.sroa.speculated.i.i.i.i.i.us = call i32 @llvm.umin.i32(i32 %.sroa.2.0.copyload, i32 %i.gw)
  %i.gx = sub nsw i32 %.sroa.speculated.i.i.i.i.i.us, %.sroa.speculated27.i.i.i.i.i.us ; 2 uses
  %i.gy = icmp samesign ult i32 %i.gx, 5
  call void @llvm.assume(i1 %i.gy)
  %i.gz = zext nneg i32 %.sroa.speculated27.i.i.i.i.i.us to i64
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.gz
  %i.hb = zext nneg i32 %i.gx to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i, ptr align 1 %i.ha, i64 %i.hb, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.us

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.us: ; preds = %bb.af, %bb.ad
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.us = phi ptr [ %.sroa.0.i.i.i.i, %bb.af ], [ %i.gu, %bb.ad ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.us = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.us, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.hc = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.us to i64
  %i.hd = add nuw nsw i32 %.sroa.28.5.us, 32
  %i.he = sub nuw nsw i32 32, %.sroa.28.5.us
  %i.hf = zext nneg i32 %i.he to i64
  %i.hg = shl nuw i64 %i.hc, %i.hf
  %i.hh = or i64 %i.hg, %.sroa.0121.5.us
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.us

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.us: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.us, %bb.ab
  %.sroa.75160.4.us = phi i32 [ %i.gs, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.us ], [ %.sroa.75160.3.us, %bb.ab ]
  %i.hi = phi i64 [ %i.hh, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.us ], [ %.sroa.0121.5.us, %bb.ab ] ; 3 uses
  %i.hj = phi i32 [ %i.hd, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.us ], [ %.sroa.28.5.us, %bb.ab ]
  %i.hk = sub nuw nsw i32 64, %.0.i.us
  %i.hl = zext nneg i32 %i.hk to i64
  %i.hm = lshr i64 %i.hi, %i.hl
  %i.hn = trunc nuw i64 %i.hm to i32
  %i.ho = sub nuw nsw i32 %i.hj, %.0.i.us
  %i.hp = zext nneg i32 %.0.i.us to i64
  %i.hq = shl i64 %i.hi, %i.hp
  %i.hr = icmp sgt i64 %i.hi, -1
  %notmask.i.i.us = shl nsw i32 -1, %.0.i.us
  %.neg.i.i.us = add nuw nsw i32 %notmask.i.i.us, 1
  %i.hs = select i1 %i.hr, i32 %.neg.i.i.us, i32 0
  %.0.i.i.us = add i32 %i.hs, %i.hn               ; 2 uses
  %i.ht = icmp eq i32 %.0.i.i.us, 65535
  %..i.us = select i1 %i.ht, i32 -32768, i32 %.0.i.i.us
  br label %_ZN8rawspeed22HasselbladDecompressor7getBitsERNS_16BitStreamerMSB32Ei.exit.us

_ZN8rawspeed22HasselbladDecompressor7getBitsERNS_16BitStreamerMSB32Ei.exit.us: ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.us, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE15decodeCodeValueINS_16BitStreamerMSB32EEEiRT_.exit.us
  %.sroa.75160.5.us = phi i32 [ %.sroa.75160.3.us, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE15decodeCodeValueINS_16BitStreamerMSB32EEEiRT_.exit.us ], [ %.sroa.75160.4.us, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.us ] ; 7 uses
  %.sroa.28.12.us = phi i32 [ %.sroa.28.5.us, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE15decodeCodeValueINS_16BitStreamerMSB32EEEiRT_.exit.us ], [ %i.ho, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.us ] ; 6 uses
  %.sroa.0121.12.us = phi i64 [ %.sroa.0121.5.us, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE15decodeCodeValueINS_16BitStreamerMSB32EEEiRT_.exit.us ], [ %i.hq, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.us ] ; 3 uses
  %.1.i.us = phi i32 [ 0, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE15decodeCodeValueINS_16BitStreamerMSB32EEEiRT_.exit.us ], [ %..i.us, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.us ]
  %i.hu = add nsw i32 %.1.i.us, %.017314.us       ; 2 uses
  %.not.i96.us = icmp eq i32 %.0.i33.us, 0
  br i1 %.not.i96.us, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %_ZN8rawspeed22HasselbladDecompressor7getBitsERNS_16BitStreamerMSB32Ei.exit.us
  %i.hv = icmp samesign ult i32 %.sroa.28.12.us, 65
  call void @llvm.assume(i1 %i.hv)
  %i.hw = and i32 %.sroa.75160.5.us, 3
  %i.hx = icmp eq i32 %i.hw, 0
  call void @llvm.assume(i1 %i.hx)
  %i.hy = icmp samesign ult i32 %.0.i33.us, 33
  call void @llvm.assume(i1 %i.hy)
end_hunk_0
