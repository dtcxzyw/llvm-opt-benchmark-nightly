Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/rdppm-8?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@start_input_ppm:bb.a
  %.not244 = phi i1 [ true, %bb.k ], [ true, %bb.bi ], [ true, %bb.o ], [ true, %bb.af ], [ true, %bb.ah ], [ true, %bb.aj ], [ true, %bb.ak ], [ false, %bb.am ], [ true, %bb.an ], [ true, %bb.ap ], [ true, %bb.ar ], [ true, %bb.as ], [ true, %bb.ax ], [ true, %bb.az ], [ true, %bb.ba ], [ false, %bb.bd ], [ true, %bb.bf ], [ true, %bb.bh ], [ true, %bb.q ], [ true, %bb.t ], [ true, %bb.s ], [ true, %bb.z ], [ true, %bb.aa ], [ true, %bb.x ]
  %.not245 = phi i1 [ false, %bb.k ], [ false, %bb.bi ], [ false, %bb.o ], [ false, %bb.af ], [ false, %bb.ah ], [ false, %bb.aj ], [ false, %bb.ak ], [ true, %bb.am ], [ false, %bb.an ], [ false, %bb.ap ], [ false, %bb.ar ], [ false, %bb.as ], [ false, %bb.ax ], [ false, %bb.az ], [ false, %bb.ba ], [ true, %bb.bd ], [ false, %bb.bf ], [ false, %bb.bh ], [ false, %bb.q ], [ false, %bb.t ], [ false, %bb.s ], [ false, %bb.z ], [ false, %bb.aa ], [ false, %bb.x ]
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !46 ; 6 uses
  %i.ew = icmp eq i32 %i.ev, 2
  %i.ex = add i32 %i.ev, -6
  %or.cond257 = icmp ult i32 %i.ex, 10
  %or.cond262 = or i1 %i.ew, %or.cond257
  br i1 %or.cond262, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ey = zext nneg i32 %i.ev to i64
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr @rgb_pixelsize, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !47
  br label %.sink.split

bb.bl:                                            ; preds = %bb.bj
  switch i32 %i.ev, label %bb.bm [
    i32 1, label %.sink.split
    i32 4, label %.sink.split
  ]

.sink.split:                                      ; preds = %bb.bl, %bb.bl, %bb.bk
  %.sink270 = phi i32 [ %i.fa, %bb.bk ], [ %i.ev, %bb.bl ], [ %i.ev, %bb.bl ]
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.sink270, ptr %i.fb, align 8, !tbaa !63
  br label %bb.bm

bb.bm:                                            ; preds = %.sink.split, %bb.bl
  br i1 %.not243, label %bb.br, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.fc = icmp eq i32 %i.h, 54
  br i1 %i.fc, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.fd = icmp ult i32 %i.q, 256
  %i.fe = select i1 %i.fd, i64 3, i64 6
  %i.ff = mul nuw nsw i64 %i.fe, %i.x
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  %i.fg = icmp ugt i32 %i.q, 255
  %i.fh = zext i1 %i.fg to i64
  %i.fi = shl nuw nsw i64 %i.x, %i.fh
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.sink = phi i64 [ %i.ff, %bb.bo ], [ %i.fi, %bb.bp ] ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 %.sink, ptr %i.fj, align 8, !tbaa !48
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !35
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !37
  %i.fn = tail call ptr %i.fm(ptr noundef nonnull %0, i32 noundef 1, i64 noundef %.sink) #6
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.fn, ptr %i.fo, align 8, !tbaa !49
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bm
  br i1 %.not244, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !49
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  store ptr %i.fq, ptr %i.fr, align 8, !tbaa !64
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !35
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !65
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !63
  %i.fy = mul i32 %i.fx, %i.m
  %i.fz = tail call ptr %i.fv(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %i.fy, i32 noundef 1) #6
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.sink264 = phi ptr [ %i.fz, %bb.bt ], [ %i.fr, %bb.bs ]
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %.sink264, ptr %i.ga, align 8, !tbaa !50
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i32 1, ptr %i.gb, align 8, !tbaa !66
  br i1 %.not245, label %.loopexit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !35
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !37
  %i.gf = tail call i32 @llvm.umax.i32(i32 %i.q, i32 255)
  %i.gg = zext i32 %i.gf to i64
  %i.gh = add nuw nsw i64 %i.gg, 1                ; 2 uses
  %i.gi = tail call ptr %i.ge(ptr noundef nonnull %0, i32 noundef 1, i64 noundef %i.gh) #6 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  store ptr %i.gi, ptr %i.gj, align 8, !tbaa !51
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.gi, i8 0, i64 %i.gh, i1 false)
  %i.gk = zext i32 %i.q to i64                    ; 6 uses
  %i.gl = lshr i64 %i.gk, 1                       ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.gn = add nuw nsw i64 %i.gk, 1                ; 2 uses
  %i.go = icmp eq i32 %i.q, 0
  br i1 %i.go, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.bv
  %unroll_iter = and i64 %i.gn, 8589934590
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bw, %.new
  %.0263 = phi i64 [ 0, %.new ], [ %i.hi, %bb.bw ] ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.bw ]
  %i.gp = load i32, ptr %i.gm, align 8, !tbaa !26
  %notmask247 = shl nsw i32 -1, %i.gp
  %i.gq = xor i32 %notmask247, -1
  %i.gr = zext nneg i32 %i.gq to i64
  %i.gs = mul nuw nsw i64 %.0263, %i.gr
  %i.gt = add nuw nsw i64 %i.gs, %i.gl
  %i.gu = udiv i64 %i.gt, %i.gk
  %i.gv = trunc i64 %i.gu to i8
  %i.gw = load ptr, ptr %i.gj, align 8, !tbaa !51
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.0263
  store i8 %i.gv, ptr %i.gx, align 1, !tbaa !33
  %i.gy = or disjoint i64 %.0263, 1               ; 2 uses
  %i.gz = load i32, ptr %i.gm, align 8, !tbaa !26
  %notmask247.1 = shl nsw i32 -1, %i.gz
  %i.ha = xor i32 %notmask247.1, -1
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = mul nuw nsw i64 %i.gy, %i.hb
  %i.hd = add nuw nsw i64 %i.hc, %i.gl
  %i.he = udiv i64 %i.hd, %i.gk
  %i.hf = trunc i64 %i.he to i8
  %i.hg = load ptr, ptr %i.gj, align 8, !tbaa !51
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.gy
  store i8 %i.hf, ptr %i.hh, align 1, !tbaa !33
  %i.hi = add nuw nsw i64 %.0263, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.bw, !llvm.loop !58

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.bw
  %i.hj = and i64 %i.gk, 1
  %lcmp.mod.not.not = icmp eq i64 %i.hj, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %.loopexit

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %bb.bv
  %.0263.epil.init = phi i64 [ 0, %bb.bv ], [ %i.hi, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod274 = trunc i64 %i.gn to i1
  tail call void @llvm.assume(i1 %lcmp.mod274)
  %i.hk = load i32, ptr %i.gm, align 8, !tbaa !26
  %notmask247.epil = shl nsw i32 -1, %i.hk
  %i.hl = xor i32 %notmask247.epil, -1
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = mul nuw nsw i64 %.0263.epil.init, %i.hm
  %i.ho = add nuw nsw i64 %i.hn, %i.gl
  %i.hp = udiv i64 %i.ho, %i.gk
  %i.hq = trunc i64 %i.hp to i8
  %i.hr = load ptr, ptr %i.gj, align 8, !tbaa !51
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 %.0263.epil.init
  store i8 %i.hq, ptr %i.hs, align 1, !tbaa !33
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.bu
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @read_icc_profile_ppm(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) #1 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @finish_input_ppm(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @read_pbm_integer(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %bb.a
  %i.a = tail call i32 @getc(ptr noundef %1)      ; 2 uses
  %i.b = icmp eq i32 %i.a, 35
  br i1 %i.b, label %.preheader.i, label %pbm_getc.exit

.preheader.i:                                     ; preds = %.critedge, %.preheader.i
  %i.c = tail call i32 @getc(ptr noundef %1)      ; 3 uses
  switch i32 %i.c, label %.preheader.i [
    i32 -1, label %pbm_getc.exit
    i32 10, label %pbm_getc.exit
  ]

pbm_getc.exit:                                    ; preds = %.preheader.i, %.preheader.i, %.critedge
  %.0.i = phi i32 [ %i.a, %.critedge ], [ %i.c, %.preheader.i ], [ %i.c, %.preheader.i ] ; 4 uses
  switch i32 %.0.i, label %bb.b [
    i32 -1, label %.thread
    i32 32, label %.critedge.backedge
    i32 13, label %.critedge.backedge
    i32 10, label %.critedge.backedge
    i32 9, label %.critedge.backedge
  ]

.critedge.backedge:                               ; preds = %pbm_getc.exit, %pbm_getc.exit, %pbm_getc.exit, %pbm_getc.exit
  br label %.critedge

.thread:                                          ; preds = %pbm_getc.exit
  %i.d = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i32 43, ptr %i.e, align 8, !tbaa !32
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !34
  tail call void %i.f(ptr noundef nonnull %0) #6
  br label %bb.c

bb.b:                                             ; preds = %pbm_getc.exit
  %i.g = add i32 %.0.i, -58
  %or.cond5 = icmp ult i32 %i.g, -10
  br i1 %or.cond5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread, %bb.b
  %.0.i60 = phi i32 [ -1, %.thread ], [ %.0.i, %bb.b ]
  %i.h = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i32 1036, ptr %i.i, align 8, !tbaa !32
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !34
  tail call void %i.j(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0.i59 = phi i32 [ %.0.i, %bb.b ], [ %.0.i60, %bb.c ]
  %i.k = add nsw i32 %.0.i59, -48
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.0 = phi i32 [ %i.k, %bb.d ], [ %i.r, %.backedge ] ; 2 uses
  %i.l = tail call i32 @getc(ptr noundef %1)      ; 2 uses
  %i.m = icmp eq i32 %i.l, 35
  br i1 %i.m, label %.preheader.i35, label %pbm_getc.exit36

.preheader.i35:                                   ; preds = %bb.e, %.preheader.i35
  %i.n = tail call i32 @getc(ptr noundef %1)      ; 3 uses
  switch i32 %i.n, label %.preheader.i35 [
    i32 -1, label %pbm_getc.exit36
    i32 10, label %pbm_getc.exit36
  ]

pbm_getc.exit36:                                  ; preds = %.preheader.i35, %.preheader.i35, %bb.e
  %.0.i34 = phi i32 [ %i.l, %bb.e ], [ %i.n, %.preheader.i35 ], [ %i.n, %.preheader.i35 ]
  %i.o = add i32 %.0.i34, -48                     ; 2 uses
  %i.p = icmp ult i32 %i.o, 10
  br i1 %i.p, label %bb.f, label %bb.h

bb.f:                                             ; preds = %pbm_getc.exit36
  %i.q = mul i32 %.0, 10
  %i.r = add i32 %i.o, %i.q                       ; 2 uses
  %i.s = icmp ugt i32 %i.r, %2
  br i1 %i.s, label %bb.g, label %.backedge

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store i32 1038, ptr %i.u, align 8, !tbaa !32
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !34
  tail call void %i.v(ptr noundef nonnull %0) #6
  br label %.backedge

.backedge:                                        ; preds = %bb.g, %bb.f
  br label %bb.e, !llvm.loop !67

bb.h:                                             ; preds = %pbm_getc.exit36
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @get_text_gray_row(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.f = load i32, ptr %i.e, align 8, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i32, ptr %i.g, align 8, !tbaa !44   ; 2 uses
  %.not13 = icmp eq i32 %i.h, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !53
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.015 = phi i32 [ %i.q, %.lr.ph ], [ %i.h, %.lr.ph.preheader ]
  %.01214 = phi ptr [ %i.p, %.lr.ph ], [ %i.k, %.lr.ph.preheader ] ; 2 uses
  %i.l = tail call fastcc i32 @read_pbm_integer(ptr noundef nonnull %0, ptr noundef %i.b, i32 noundef %i.f)
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %.01214, i64 1
  store i8 %i.o, ptr %.01214, align 1, !tbaa !33
  %i.q = add i32 %.015, -1                        ; 2 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !68

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @get_text_gray_rgb_row(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.f = load i32, ptr %i.e, align 8, !tbaa !45   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.h = load i32, ptr %i.g, align 4, !tbaa !46
  %i.i = zext i32 %i.h to i64                     ; 6 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @rgb_red, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !47   ; 4 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @rgb_green, i64 %i.i
  %i.m = load i32, ptr %i.l, align 4, !tbaa !47   ; 4 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr @rgb_blue, i64 %i.i
  %i.o = load i32, ptr %i.n, align 4, !tbaa !47   ; 4 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr @alpha_index, i64 %i.i
  %i.q = load i32, ptr %i.p, align 4, !tbaa !47   ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @rgb_pixelsize, i64 %i.i
  %i.s = load i32, ptr %i.r, align 4, !tbaa !47   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !50
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !53   ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !26
  %notmask = shl nsw i32 -1, %i.x
  %i.y = xor i32 %notmask, %i.f
  %i.z = icmp eq i32 %i.y, -1
  %i.aa = and i64 %i.i, 4294967292
  %i.ab = icmp eq i64 %i.aa, 12                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !44 ; 5 uses
  %.not88103 = icmp eq i32 %i.ad, 0               ; 4 uses
  br i1 %i.z, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %i.ab, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %.not88103, label %.loopexit, label %.lr.ph106

.lr.ph106:                                        ; preds = %bb.c
  %i.ae = sext i32 %i.o to i64
  %i.af = sext i32 %i.m to i64
  %i.ag = sext i32 %i.k to i64
  %i.ah = trunc i32 %i.f to i8
  %i.ai = zext nneg i32 %i.q to i64
  %i.aj = sext i32 %i.s to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph106, %bb.d
  %.0105 = phi i32 [ %i.ad, %.lr.ph106 ], [ %i.ar, %bb.d ]
  %.077104 = phi ptr [ %i.v, %.lr.ph106 ], [ %i.aq, %bb.d ] ; 5 uses
  %i.ak = tail call fastcc i32 @read_pbm_integer(ptr noundef nonnull %0, ptr noundef %i.b, i32 noundef %i.f)
  %i.al = trunc i32 %i.ak to i8                   ; 3 uses
  %i.am = getelementptr inbounds i8, ptr %.077104, i64 %i.ae
  store i8 %i.al, ptr %i.am, align 1, !tbaa !33
  %i.an = getelementptr inbounds i8, ptr %.077104, i64 %i.af
  store i8 %i.al, ptr %i.an, align 1, !tbaa !33
  %i.ao = getelementptr inbounds i8, ptr %.077104, i64 %i.ag
  store i8 %i.al, ptr %i.ao, align 1, !tbaa !33
  %i.ap = getelementptr inbounds nuw i8, ptr %.077104, i64 %i.ai
  store i8 %i.ah, ptr %i.ap, align 1, !tbaa !33
  %i.aq = getelementptr inbounds i8, ptr %.077104, i64 %i.aj
  %i.ar = add i32 %.0105, -1                      ; 2 uses
  %.not88 = icmp eq i32 %i.ar, 0
  br i1 %.not88, label %.loopexit, label %bb.d, !llvm.loop !69

bb.e:                                             ; preds = %bb.b
  br i1 %.not88103, label %.loopexit, label %.lr.ph102

.lr.ph102:                                        ; preds = %bb.e
  %i.as = sext i32 %i.o to i64
  %i.at = sext i32 %i.m to i64
  %i.au = sext i32 %i.k to i64
  %i.av = sext i32 %i.s to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph102, %bb.f
  %.1101 = phi i32 [ %i.ad, %.lr.ph102 ], [ %i.bc, %bb.f ]
  %.178100 = phi ptr [ %i.v, %.lr.ph102 ], [ %i.bb, %bb.f ] ; 4 uses
  %i.aw = tail call fastcc i32 @read_pbm_integer(ptr noundef nonnull %0, ptr noundef %i.b, i32 noundef %i.f)
  %i.ax = trunc i32 %i.aw to i8                   ; 3 uses
  %i.ay = getelementptr inbounds i8, ptr %.178100, i64 %i.as
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !33
  %i.az = getelementptr inbounds i8, ptr %.178100, i64 %i.at
  store i8 %i.ax, ptr %i.az, align 1, !tbaa !33
  %i.ba = getelementptr inbounds i8, ptr %.178100, i64 %i.au
  store i8 %i.ax, ptr %i.ba, align 1, !tbaa !33
  %i.bb = getelementptr inbounds i8, ptr %.178100, i64 %i.av
  %i.bc = add i32 %.1101, -1                      ; 2 uses
  %.not87 = icmp eq i32 %i.bc, 0
  br i1 %.not87, label %.loopexit, label %bb.f, !llvm.loop !70

bb.g:                                             ; preds = %bb.a
  br i1 %i.ab, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  br i1 %.not88103, label %.loopexit, label %.lr.ph98

.lr.ph98:                                         ; preds = %bb.h
  %i.bd = sext i32 %i.o to i64
  %i.be = sext i32 %i.m to i64
  %i.bf = sext i32 %i.k to i64
  %i.bg = zext nneg i32 %i.q to i64
  %i.bh = sext i32 %i.s to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph98, %bb.i
  %.297 = phi i32 [ %i.ad, %.lr.ph98 ], [ %i.bu, %bb.i ]
  %.27996 = phi ptr [ %i.v, %.lr.ph98 ], [ %i.bt, %bb.i ] ; 5 uses
  %i.bi = tail call fastcc i32 @read_pbm_integer(ptr noundef nonnull %0, ptr noundef %i.b, i32 noundef %i.f)
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !33  ; 3 uses
  %i.bm = getelementptr inbounds i8, ptr %.27996, i64 %i.bd
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !33
  %i.bn = getelementptr inbounds i8, ptr %.27996, i64 %i.be
  store i8 %i.bl, ptr %i.bn, align 1, !tbaa !33
end_hunk_0
