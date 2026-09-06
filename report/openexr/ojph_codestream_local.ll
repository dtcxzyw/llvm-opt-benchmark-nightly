Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_codestream_local?download=true
inline.NumInlined: 233
inline.NumDeleted: 108
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4ojph5local10codestream14finalize_allocEv:bb.a
  store i64 %i.ei, ptr %i.dv, align 8, !tbaa !93
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.ef, ptr %i.ej, align 8, !tbaa !108
  %i.ek = load ptr, ptr %i.c, align 8, !tbaa !74  ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 40 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 16 ; 2 uses
  %i.en = shl nuw nsw i64 %i.du, 3
  %i.eo = add nuw nsw i64 %i.en, 15               ; 4 uses
  %i.ep = load ptr, ptr %i.em, align 8, !tbaa !187 ; 2 uses
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = add nsw i64 %i.eq, 7
  %i.es = and i64 %i.er, -8
  %i.et = inttoptr i64 %i.es to ptr
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.eo
  store ptr %i.eu, ptr %i.em, align 8, !tbaa !187
  %i.ev = load i64, ptr %i.el, align 8, !tbaa !93
  %i.ew = sub i64 %i.ev, %i.eo
  store i64 %i.ew, ptr %i.el, align 8, !tbaa !93
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.et, ptr %i.ex, align 8, !tbaa !109
  %i.ey = load ptr, ptr %i.c, align 8, !tbaa !74  ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 40 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 16 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !187 ; 2 uses
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = add nsw i64 %i.fc, 7
  %i.fe = and i64 %i.fd, -8
  %i.ff = inttoptr i64 %i.fe to ptr
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.eo
  store ptr %i.fg, ptr %i.fa, align 8, !tbaa !187
  %i.fh = load i64, ptr %i.ez, align 8, !tbaa !93
  %i.fi = sub i64 %i.fh, %i.eo
  store i64 %i.fi, ptr %i.ez, align 8, !tbaa !93
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store ptr %i.ff, ptr %i.fj, align 8, !tbaa !110
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 200
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %bb.m, %._crit_edge69
  %.tr.i = phi ptr [ %i.fk, %._crit_edge69 ], [ %i.fn, %bb.m ] ; 3 uses
  %i.fl = load i8, ptr %.tr.i, align 8, !tbaa !51
  switch i8 %i.fl, label %bb.m [
    i8 1, label %_ZNK4ojph5local9param_cod28is_employing_color_transformEv.exit
    i8 3, label %_ZNK4ojph5local9param_cod28is_employing_color_transformEv.exit
  ]

bb.m:                                             ; preds = %tailrecurse.i
  %i.fm = getelementptr inbounds nuw i8, ptr %.tr.i, i64 72
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !84
  br label %tailrecurse.i

_ZNK4ojph5local9param_cod28is_employing_color_transformEv.exit: ; preds = %tailrecurse.i, %tailrecurse.i
  %i.fo = getelementptr inbounds nuw i8, ptr %.tr.i, i64 10
  %i.fp = load i8, ptr %i.fo, align 2, !tbaa !111
  %i.fq = icmp eq i8 %i.fp, 1
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fs = zext i1 %i.fq to i8
  store i8 %i.fs, ptr %i.fr, align 8, !tbaa !188
  %.not76 = icmp eq i32 %i.dr, 0
  br i1 %.not76, label %._crit_edge73, label %.lr.ph72

.lr.ph72:                                         ; preds = %_ZNK4ojph5local9param_cod28is_employing_color_transformEv.exit
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.n

._crit_edge73:                                    ; preds = %bb.n, %_ZNK4ojph5local9param_cod28is_employing_color_transformEv.exit
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.fy, align 4, !tbaa !112
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.fz, align 8, !tbaa !113
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !101
  %.not = icmp eq ptr %i.gb, null
  br i1 %.not, label %bb.q, label %bb.o

bb.n:                                             ; preds = %.lr.ph72, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph72 ], [ %indvars.iv.next, %bb.n ] ; 7 uses
  %i.gc = load ptr, ptr %i.ft, align 8, !tbaa !48
  %i.gd = getelementptr inbounds nuw [3 x i8], ptr %i.gc, i64 %indvars.iv ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 1
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !115
  %i.gg = zext i8 %i.gf to i32                    ; 3 uses
  %i.gh = load i32, ptr %i.fu, align 4, !tbaa !116
  %i.gi = add nsw i32 %i.gg, -1                   ; 2 uses
  %i.gj = add i32 %i.gi, %i.gh
  %i.gk = udiv i32 %i.gj, %i.gg
  %i.gl = load i32, ptr %i.fv, align 4, !tbaa !117
  %i.gm = add i32 %i.gl, %i.gi
  %i.gn = udiv i32 %i.gm, %i.gg
  %i.go = sub i32 %i.gk, %i.gn
  %i.gp = load ptr, ptr %i.ex, align 8, !tbaa !109
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv ; 2 uses
  store i32 %i.go, ptr %i.gq, align 4, !tbaa !45
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gd, i64 2
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !118
  %i.gt = zext i8 %i.gs to i32                    ; 3 uses
  %i.gu = load i32, ptr %i.fw, align 8, !tbaa !119
  %i.gv = add nsw i32 %i.gt, -1                   ; 2 uses
  %i.gw = add i32 %i.gv, %i.gu
  %i.gx = udiv i32 %i.gw, %i.gt
  %i.gy = load i32, ptr %i.fx, align 8, !tbaa !120
  %i.gz = add i32 %i.gy, %i.gv
  %i.ha = udiv i32 %i.gz, %i.gt
  %i.hb = sub i32 %i.gx, %i.ha
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  store i32 %i.hb, ptr %i.hc, align 4, !tbaa !46
  %i.hd = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.he = call i64 @_ZNK4ojph5local9param_siz14get_recon_sizeEj(ptr noundef nonnull align 8 dereferenceable(88) %i.bs, i32 noundef %i.hd) ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.he to i32
  %i.hf = load ptr, ptr %i.fj, align 8, !tbaa !110
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %indvars.iv
  store i32 %.sroa.0.0.extract.trunc.i, ptr %i.hg, align 4, !tbaa !45
  %i.hh = call i64 @_ZNK4ojph5local9param_siz14get_recon_sizeEj(ptr noundef nonnull align 8 dereferenceable(88) %i.bs, i32 noundef %i.hd)
  %.sroa.3.0.extract.shift.i = lshr i64 %i.hh, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i64 %.sroa.3.0.extract.shift.i to i32
  %i.hi = load ptr, ptr %i.fj, align 8, !tbaa !110
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %indvars.iv
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  store i32 %.sroa.3.0.extract.trunc.i, ptr %i.hk, align 4, !tbaa !46
  %i.hl = load ptr, ptr %i.ej, align 8, !tbaa !108
  %i.hm = getelementptr inbounds nuw [24 x i8], ptr %i.hl, i64 %indvars.iv
  %i.hn = load ptr, ptr %i.c, align 8, !tbaa !74  ; 2 uses
  %i.ho = and i64 %i.he, 4294967295               ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 48 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 8 ; 2 uses
  %i.hr = shl nuw nsw i64 %i.ho, 2
  %i.hs = add nuw nsw i64 %i.hr, 60
  %i.ht = and i64 %i.hs, 34359738304
  %i.hu = add nuw nsw i64 %i.ht, 127              ; 2 uses
  %i.hv = load ptr, ptr %i.hq, align 8, !tbaa !187 ; 2 uses
  %i.hw = ptrtoint ptr %i.hv to i64
  %i.hx = add nsw i64 %i.hw, 63
  %i.hy = and i64 %i.hx, -64
  %i.hz = inttoptr i64 %i.hy to ptr
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hu
  store ptr %i.ia, ptr %i.hq, align 8, !tbaa !187
  %i.ib = load i64, ptr %i.hp, align 8, !tbaa !93
  %i.ic = sub i64 %i.ib, %i.hu
  store i64 %i.ic, ptr %i.hp, align 8, !tbaa !93
  call void @_ZN4ojph8line_buf4wrapIiEEvPT_mj(ptr noundef nonnull align 8 dereferenceable(24) %i.hm, ptr noundef %i.hz, i64 noundef %i.ho, i32 noundef 0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.id = load i32, ptr %i.ds, align 8, !tbaa !107
  %i.ie = zext i32 %i.id to i64
  %i.if = icmp samesign ult i64 %indvars.iv.next, %i.ie
  br i1 %i.if, label %bb.n, label %._crit_edge73, !llvm.loop !178

bb.o:                                             ; preds = %._crit_edge73
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ih = load i8, ptr %i.ig, align 8, !tbaa !102, !range !103, !noundef !104
  %i.ii = trunc nuw i8 %i.ih to i1
  br i1 %i.ii, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ik = load ptr, ptr %i.c, align 8, !tbaa !74  ; 2 uses
  %i.il = zext i32 %.0.lcssa to i64
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 40 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 16 ; 2 uses
  %i.io = shl nuw nsw i64 %i.il, 3
  %i.ip = add nuw nsw i64 %i.io, 15               ; 2 uses
  %i.iq = load ptr, ptr %i.in, align 8, !tbaa !187 ; 2 uses
  %i.ir = ptrtoint ptr %i.iq to i64
  %i.is = add nsw i64 %i.ir, 7
  %i.it = and i64 %i.is, -8
  %i.iu = inttoptr i64 %i.it to ptr
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.ip
  store ptr %i.iv, ptr %i.in, align 8, !tbaa !187
  %i.iw = load i64, ptr %i.im, align 8, !tbaa !93
  %i.ix = sub i64 %i.iw, %i.ip
  store i64 %i.ix, ptr %i.im, align 8, !tbaa !93
  call void @_ZN4ojph5local9param_tlm4initEjPNS1_14Ttlm_Ptlm_pairE(ptr noundef nonnull align 8 dereferenceable(24) %i.ij, i32 noundef %.0.lcssa, ptr noundef %i.iu)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %._crit_edge73
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret void
}

declare void @_ZN4ojph5local4tile14finalize_allocEPNS0_10codestreamERKNS_4rectEjRjS7_(ptr noundef nonnull align 8 dereferenceable(164), ptr noundef, ptr noundef nonnull align 4 dereferenceable(16), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare void @_ZN4ojph8line_buf4wrapIiEEvPT_mj(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4ojph5local9param_tlm4initEjPNS1_14Ttlm_Ptlm_pairE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ojph5local10codestream18check_imf_validityEv(ptr noundef nonnull align 8 dereferenceable(832) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.ojph::param_siz", align 8   ; 23 uses
  %2 = alloca %"class.ojph::param_cod", align 8   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.a, ptr %1, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.b, ptr %2, align 8, !tbaa !125
  %i.c = call noundef zeroext i1 @_ZNK4ojph9param_cod13is_reversibleEv(ptr noundef nonnull align 8 dereferenceable(8) %2) ; 5 uses
  %i.d = call i64 @_ZNK4ojph9param_siz16get_image_extentEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 0 uses
  %i.e = call i64 @_ZNK4ojph9param_siz16get_image_offsetEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.f = and i64 %i.e, 4294967295
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.g = call i64 @_ZNK4ojph9param_siz16get_image_offsetEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.not257 = icmp ult i64 %i.g, 4294967296
  br i1 %.not257, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.h = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !92
  %i.j = load ptr, ptr %i.i, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i32 noundef 196803, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 325, ptr noundef nonnull @.str.5)
  br label %bb.c

bb.c:                                             ; preds = %.critedge, %bb.b
  %i.k = call i64 @_ZNK4ojph9param_siz15get_tile_offsetEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.l = and i64 %i.k, 4294967295
  %.not258 = icmp eq i64 %i.l, 0
  br i1 %.not258, label %bb.d, label %.critedge27

bb.d:                                             ; preds = %bb.c
  %i.m = call i64 @_ZNK4ojph9param_siz15get_tile_offsetEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.not259 = icmp ult i64 %i.m, 4294967296
  br i1 %.not259, label %bb.e, label %.critedge27

.critedge27:                                      ; preds = %bb.c, %bb.d
  %i.n = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !92
  %i.p = load ptr, ptr %i.o, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i32 noundef 196804, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 328, ptr noundef nonnull @.str.6)
  br label %bb.e

bb.e:                                             ; preds = %.critedge27, %bb.d
  %i.q = call noundef i32 @_ZNK4ojph9param_siz18get_num_componentsEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.r = icmp ugt i32 %i.q, 3
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !92
  %i.u = load ptr, ptr %i.t, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.s, i32 noundef 196805, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 332, ptr noundef nonnull @.str.7)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = call noundef i32 @_ZNK4ojph9param_siz18get_num_componentsEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.not287 = icmp eq i32 %i.v, 0
  br i1 %.not287, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.w = select i1 %i.ab, i1 true, i1 %.1239.in
  br i1 %i.w, label %._crit_edge.thread, label %bb.h

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %.0237272 = phi i32 [ %i.ad, %.lr.ph ], [ 0, %bb.g ] ; 3 uses
  %.0238271 = phi i1 [ %.1239.in, %.lr.ph ], [ true, %bb.g ]
  %.0240270 = phi i1 [ %i.ab, %.lr.ph ], [ true, %bb.g ]
  %i.x = call i64 @_ZNK4ojph9param_siz16get_downsamplingEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %.0237272) ; 3 uses
  %.sroa.0146.0.extract.trunc = trunc i64 %i.x to i32
  %.sroa.6.0.extract.shift.mask = and i64 %i.x, -4294967296
  %i.y = icmp eq i64 %.sroa.6.0.extract.shift.mask, 4294967296
  %i.z = select i1 %i.y, i1 %.0238271, i1 false
  %i.aa = icmp eq i64 %i.x, 4294967297
  %i.ab = and i1 %.0240270, %i.aa                 ; 2 uses
  %i.ac = add i32 %.0237272, -1
  %or.cond29 = icmp ult i32 %i.ac, 2
  %.pn.v = select i1 %or.cond29, i32 2, i32 1
  %.pn = icmp eq i32 %.pn.v, %.sroa.0146.0.extract.trunc
  %.1239.in = and i1 %.pn, %i.z                   ; 2 uses
  %i.ad = add nuw i32 %.0237272, 1                ; 2 uses
  %i.ae = call noundef i32 @_ZNK4ojph9param_siz18get_num_componentsEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.af = icmp ult i32 %i.ad, %i.ae
  br i1 %i.af, label %.lr.ph, label %._crit_edge, !llvm.loop !189

bb.h:                                             ; preds = %._crit_edge
  %i.ag = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !92
  %i.ai = load ptr, ptr %i.ah, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i32 noundef 196806, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 350, ptr noundef nonnull @.str.8)
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.g, %bb.h, %._crit_edge
  %i.aj = call noundef i32 @_ZNK4ojph9param_siz18get_num_componentsEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.not288 = icmp eq i32 %i.aj, 0
  br i1 %.not288, label %.critedge286, label %.lr.ph277

._crit_edge278:                                   ; preds = %.lr.ph277
  br i1 %i.ap, label %.critedge286, label %bb.i

.lr.ph277:                                        ; preds = %._crit_edge.thread, %.lr.ph277
  %.0235275 = phi i32 [ %i.aq, %.lr.ph277 ], [ 0, %._crit_edge.thread ] ; 3 uses
  %.0236274 = phi i1 [ %i.ap, %.lr.ph277 ], [ true, %._crit_edge.thread ]
  %i.ak = call noundef i32 @_ZNK4ojph9param_siz13get_bit_depthEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %.0235275)
  %i.al = call noundef zeroext i1 @_ZNK4ojph9param_siz9is_signedEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %.0235275)
  %i.am = add i32 %i.ak, -8
  %or.cond33 = icmp ult i32 %i.am, 9
  %i.an = xor i1 %i.al, true
  %i.ao = and i1 %or.cond33, %i.an
  %i.ap = and i1 %.0236274, %i.ao                 ; 2 uses
  %i.aq = add nuw i32 %.0235275, 1                ; 2 uses
  %i.ar = call noundef i32 @_ZNK4ojph9param_siz18get_num_componentsEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.as = icmp ult i32 %i.aq, %i.ar
  br i1 %i.as, label %.lr.ph277, label %._crit_edge278, !llvm.loop !190

bb.i:                                             ; preds = %._crit_edge278
  %i.at = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !92
  %i.av = load ptr, ptr %i.au, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.av(ptr noundef nonnull align 8 dereferenceable(8) %i.at, i32 noundef 196807, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 362, ptr noundef nonnull @.str.9)
  br label %.critedge286

.critedge286:                                     ; preds = %._crit_edge.thread, %bb.i, %._crit_edge278
  %i.aw = call i64 @_ZNK4ojph9param_cod18get_log_block_dimsEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.ax = and i64 %i.aw, 4294967295
  %.not260 = icmp eq i64 %i.ax, 5
  br i1 %.not260, label %bb.j, label %.critedge35

bb.j:                                             ; preds = %.critedge286
  %i.ay = call i64 @_ZNK4ojph9param_cod18get_log_block_dimsEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.sroa.4135.0.extract.shift.mask = and i64 %i.ay, -4294967296
  %.not261 = icmp eq i64 %.sroa.4135.0.extract.shift.mask, 21474836480
  br i1 %.not261, label %bb.k, label %.critedge35

.critedge35:                                      ; preds = %.critedge286, %bb.j
  %i.az = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !92
  %i.bb = load ptr, ptr %i.ba, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.az, i32 noundef 196808, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 367, ptr noundef nonnull @.str.10)
  br label %bb.k

bb.k:                                             ; preds = %.critedge35, %bb.j
  %i.bc = call noundef i32 @_ZNK4ojph9param_cod22get_num_decompositionsEv(ptr noundef nonnull align 8 dereferenceable(8) %2) ; 7 uses
  %i.bd = call i64 @_ZNK4ojph9param_cod21get_log_precinct_sizeEj(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0)
  %i.be = and i64 %i.bd, 4294967295
  %i.bf = icmp eq i64 %i.be, 7
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bg = call i64 @_ZNK4ojph9param_cod21get_log_precinct_sizeEj(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0)
  %.sroa.3113.0.extract.shift.mask = and i64 %i.bg, -4294967296
  %i.bh = icmp eq i64 %.sroa.3113.0.extract.shift.mask, 30064771072
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bi = phi i1 [ false, %bb.k ], [ %i.bh, %bb.l ]
  %.not262280.not = icmp eq i32 %i.bc, 0
  br i1 %.not262280.not, label %._crit_edge284, label %.lr.ph283

._crit_edge284:                                   ; preds = %bb.o, %bb.m
  %.0234.lcssa = phi i1 [ %i.bi, %bb.m ], [ %i.bo, %bb.o ]
  br i1 %.0234.lcssa, label %bb.q, label %bb.p

.lr.ph283:                                        ; preds = %bb.m, %bb.o
  %.0233281 = phi i32 [ %i.bp, %bb.o ], [ 1, %bb.m ] ; 3 uses
  %i.bj = call i64 @_ZNK4ojph9param_cod21get_log_precinct_sizeEj(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %.0233281)
  %i.bk = and i64 %i.bj, 4294967295
  %i.bl = icmp eq i64 %i.bk, 8
  br i1 %i.bl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph283
  %i.bm = call i64 @_ZNK4ojph9param_cod21get_log_precinct_sizeEj(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %.0233281)
  %.sroa.3105.0.extract.shift.mask = and i64 %i.bm, -4294967296
  %i.bn = icmp eq i64 %.sroa.3105.0.extract.shift.mask, 34359738368
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph283
  %i.bo = phi i1 [ false, %.lr.ph283 ], [ %i.bn, %bb.n ]
  %i.bp = add i32 %.0233281, 1                    ; 2 uses
  %.not262 = icmp ugt i32 %i.bp, %i.bc
  br i1 %.not262, label %._crit_edge284, label %.lr.ph283, !llvm.loop !191

bb.p:                                             ; preds = %._crit_edge284
  %i.bq = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !92
  %i.bs = load ptr, ptr %i.br, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, i32 noundef 196809, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 378, ptr noundef nonnull @.str.11)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge284
  %i.bt = call noundef i32 @_ZNK4ojph9param_cod21get_progression_orderEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.not263 = icmp eq i32 %i.bt, 4
  br i1 %.not263, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bu = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !92
  %i.bw = load ptr, ptr %i.bv, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.bw(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, i32 noundef 196810, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 383, ptr noundef nonnull @.str.12)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bx = icmp ult i32 %i.bc, 6                   ; 3 uses
  %i.by = and i1 %i.c, %i.bx
  %i.bz = icmp ult i32 %i.bc, 7                   ; 2 uses
  %i.ca = and i1 %i.c, %i.bz                      ; 2 uses
  %i.cb = icmp ult i32 %i.bc, 8                   ; 3 uses
  %i.cc = and i1 %i.c, %i.cb                      ; 4 uses
  %3 = icmp ne i32 %i.bc, 0
  %or.cond41 = select i1 %i.c, i1 %i.bx, i1 %i.cb
  %or.cond45 = or i1 %or.cond41, %i.cc
  %or.cond = and i1 %3, %or.cond45
  br i1 %or.cond, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cd = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !92
  %i.cf = load ptr, ptr %i.ce, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.cf(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, i32 noundef 196811, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 396, ptr noundef nonnull @.str.13)
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.cg = call i64 @_ZNK4ojph9param_siz16get_image_extentEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.sroa.0100.0.extract.trunc = trunc i64 %i.cg to i32
  %i.ch = call i64 @_ZNK4ojph9param_siz13get_tile_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.sroa.098.0.extract.trunc = trunc i64 %i.ch to i32
  %i.ci = add i32 %.sroa.0100.0.extract.trunc, -1
  %i.cj = add i32 %i.ci, %.sroa.098.0.extract.trunc
  %i.ck = call i64 @_ZNK4ojph9param_siz13get_tile_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.sroa.097.0.extract.trunc = trunc i64 %i.ck to i32
  %i.cl = udiv i32 %i.cj, %.sroa.097.0.extract.trunc
  %i.cm = call i64 @_ZNK4ojph9param_siz16get_image_extentEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.sroa.394.0.extract.shift = lshr i64 %i.cm, 32
  %.sroa.394.0.extract.trunc = trunc nuw i64 %.sroa.394.0.extract.shift to i32
  %i.cn = call i64 @_ZNK4ojph9param_siz13get_tile_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.sroa.392.0.extract.shift = lshr i64 %i.cn, 32
  %.sroa.392.0.extract.trunc = trunc nuw i64 %.sroa.392.0.extract.shift to i32
  %i.co = add i32 %.sroa.394.0.extract.trunc, -1
  %i.cp = add i32 %i.co, %.sroa.392.0.extract.trunc
  %i.cq = call i64 @_ZNK4ojph9param_siz13get_tile_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.sroa.3.0.extract.shift = lshr i64 %i.cq, 32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.cr = udiv i32 %i.cp, %.sroa.3.0.extract.trunc
  %i.cs = mul i32 %i.cr, %i.cl
  %i.ct = icmp ugt i32 %i.cs, 1
  br i1 %i.ct, label %bb.v, label %bb.ae

bb.v:                                             ; preds = %bb.u
  br i1 %i.c, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cu = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !92
  %i.cw = load ptr, ptr %i.cv, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.cw(ptr noundef nonnull align 8 dereferenceable(8) %i.cu, i32 noundef 196812, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 408, ptr noundef nonnull @.str.14)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cx = call i64 @_ZNK4ojph9param_siz13get_tile_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.cx to i32 ; 8 uses
  %.sroa.18.0.extract.shift = lshr i64 %i.cx, 32  ; 4 uses
  %i.cy = icmp eq i32 %.sroa.0.0.extract.trunc, 1024
  %i.cz = icmp eq i64 %.sroa.18.0.extract.shift, 1024
  %i.da = and i1 %i.cy, %i.cz                     ; 3 uses
  %i.db = and i1 %i.by, %i.da
  %i.dc = icmp ugt i32 %.sroa.0.0.extract.trunc, 1023
  %i.dd = icmp ult i32 %i.bc, 5                   ; 2 uses
  %or.cond47 = and i1 %i.dd, %i.dc
  %spec.select266 = and i1 %i.dd, %i.db
  br i1 %i.da, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.de = icmp eq i32 %.sroa.0.0.extract.trunc, 2048
  %i.df = icmp eq i64 %.sroa.18.0.extract.shift, 2048
  %i.dg = and i1 %i.de, %i.df
  %i.dh = and i1 %i.ca, %i.dg
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.di = phi i1 [ %i.ca, %bb.x ], [ %i.dh, %bb.y ]
  %i.dj = icmp ugt i32 %.sroa.0.0.extract.trunc, 2047
  %or.cond54 = and i1 %i.bx, %i.dj
  %or.cond267 = or i1 %or.cond47, %or.cond54      ; 2 uses
  %i.dk = icmp ugt i32 %.sroa.0.0.extract.trunc, 4095
  %i.dl = and i1 %i.bz, %i.dk                     ; 2 uses
  %i.dm = or i1 %i.dl, %or.cond267
  %i.dn = and i1 %i.dm, %i.di
  br i1 %i.da, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.do = icmp eq i32 %.sroa.0.0.extract.trunc, 2048
  %i.dp = icmp eq i64 %.sroa.18.0.extract.shift, 2048
  %or.cond60 = and i1 %i.do, %i.dp
  br i1 %or.cond60, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dq = icmp eq i32 %.sroa.0.0.extract.trunc, 4096
  %i.dr = icmp eq i64 %.sroa.18.0.extract.shift, 4096
  %i.ds = and i1 %i.dq, %i.dr
  %i.dt = and i1 %i.cc, %i.ds
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.z, %bb.ab
  %i.du = phi i1 [ %i.cc, %bb.aa ], [ %i.cc, %bb.z ], [ %i.dt, %bb.ab ]
  %i.dv = icmp ugt i32 %.sroa.0.0.extract.trunc, 8191
  %i.dw = and i1 %i.cb, %i.dv
  %i.dx = or i1 %i.dl, %i.dw
  %i.dy = or i1 %i.dx, %or.cond267
  %i.dz = and i1 %i.dy, %i.du
  %or.cond68 = or i1 %spec.select266, %i.dn
  %or.cond70 = or i1 %or.cond68, %i.dz
  br i1 %or.cond70, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ea = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !92
  %i.ec = load ptr, ptr %i.eb, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.ec(ptr noundef nonnull align 8 dereferenceable(8) %i.ea, i32 noundef 196813, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 430, ptr noundef nonnull @.str.15)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.u
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 1, ptr %i.ed, align 8, !tbaa !102
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 3 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !126
  %i.eg = or i32 %i.ef, 2                         ; 2 uses
  store i32 %i.eg, ptr %i.ee, align 4, !tbaa !126
  %.not264 = icmp eq i32 %i.eg, 2
  br i1 %.not264, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i32 2, ptr %i.ee, align 4, !tbaa !126
  %i.eh = call noundef ptr @_ZN4ojph11get_warningEv() ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !92
  %i.ej = load ptr, ptr %i.ei, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.ej(ptr noundef nonnull align 8 dereferenceable(8) %i.eh, i32 noundef 196801, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 441, ptr noundef nonnull @.str.16)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret void
}

declare noundef zeroext i1 @_ZNK4ojph9param_cod13is_reversibleEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare i64 @_ZNK4ojph9param_siz16get_downsamplingEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare noundef i32 @_ZNK4ojph9param_siz13get_bit_depthEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK4ojph9param_siz9is_signedEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare i64 @_ZNK4ojph9param_cod18get_log_block_dimsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef i32 @_ZNK4ojph9param_cod22get_num_decompositionsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare i64 @_ZNK4ojph9param_cod21get_log_precinct_sizeEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare noundef i32 @_ZNK4ojph9param_cod21get_progression_orderEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef ptr @_ZN4ojph11get_warningEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ojph5local10codestream24check_broadcast_validityEv(ptr noundef nonnull align 8 dereferenceable(832) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.ojph::param_siz", align 8   ; 21 uses
  %2 = alloca %"class.ojph::param_cod", align 8   ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.a, ptr %1, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.b, ptr %2, align 8, !tbaa !125
  %i.c = call i64 @_ZNK4ojph9param_siz16get_image_offsetEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.d = and i64 %i.c, 4294967295
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.e = call i64 @_ZNK4ojph9param_siz16get_image_offsetEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.not104 = icmp ult i64 %i.e, 4294967296
  br i1 %.not104, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.f = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !92
  %i.h = load ptr, ptr %i.g, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i32 noundef 196785, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 453, ptr noundef nonnull @.str.17)
  br label %bb.c

bb.c:                                             ; preds = %.critedge, %bb.b
  %i.i = call i64 @_ZNK4ojph9param_siz15get_tile_offsetEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.j = and i64 %i.i, 4294967295
  %.not105 = icmp eq i64 %i.j, 0
  br i1 %.not105, label %bb.d, label %.critedge2

bb.d:                                             ; preds = %bb.c
  %i.k = call i64 @_ZNK4ojph9param_siz15get_tile_offsetEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.not106 = icmp ult i64 %i.k, 4294967296
  br i1 %.not106, label %bb.e, label %.critedge2

.critedge2:                                       ; preds = %bb.c, %bb.d
  %i.l = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !92
  %i.n = load ptr, ptr %i.m, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i32 noundef 196786, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 456, ptr noundef nonnull @.str.18)
  br label %bb.e

bb.e:                                             ; preds = %.critedge2, %bb.d
  %i.o = call noundef i32 @_ZNK4ojph9param_siz18get_num_componentsEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.p = icmp ugt i32 %i.o, 4
  br i1 %i.p, label %bb.f, label %bb.g

end_hunk_0
