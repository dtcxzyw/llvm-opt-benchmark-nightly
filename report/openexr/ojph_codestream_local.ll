inline.NumInlined: 233
inline.NumDeleted: 108
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4ojph5local10codestream14finalize_allocEv:bb.a
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
  store i32 0, ptr %i.fy, align 4, !tbaa !163
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.fz, align 8, !tbaa !164
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !133
  %.not = icmp eq ptr %i.gb, null
  br i1 %.not, label %bb.q, label %bb.o

bb.n:                                             ; preds = %.lr.ph72, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph72 ], [ %indvars.iv.next, %bb.n ] ; 7 uses
  %i.gc = load ptr, ptr %i.ft, align 8, !tbaa !48
  %i.gd = getelementptr inbounds nuw [3 x i8], ptr %i.gc, i64 %indvars.iv ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 1
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !165
  %i.gg = zext i8 %i.gf to i32                    ; 3 uses
  %i.gh = load i32, ptr %i.fu, align 4, !tbaa !167
  %i.gi = add nsw i32 %i.gg, -1                   ; 2 uses
  %i.gj = add i32 %i.gi, %i.gh
  %i.gk = udiv i32 %i.gj, %i.gg
  %i.gl = load i32, ptr %i.fv, align 4, !tbaa !168
  %i.gm = add i32 %i.gl, %i.gi
  %i.gn = udiv i32 %i.gm, %i.gg
  %i.go = sub i32 %i.gk, %i.gn
  %i.gp = load ptr, ptr %i.ex, align 8, !tbaa !159
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv ; 2 uses
  store i32 %i.go, ptr %i.gq, align 4, !tbaa !43
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gd, i64 2
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !169
  %i.gt = zext i8 %i.gs to i32                    ; 3 uses
  %i.gu = load i32, ptr %i.fw, align 8, !tbaa !170
  %i.gv = add nsw i32 %i.gt, -1                   ; 2 uses
  %i.gw = add i32 %i.gv, %i.gu
  %i.gx = udiv i32 %i.gw, %i.gt
  %i.gy = load i32, ptr %i.fx, align 8, !tbaa !171
  %i.gz = add i32 %i.gy, %i.gv
  %i.ha = udiv i32 %i.gz, %i.gt
  %i.hb = sub i32 %i.gx, %i.ha
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  store i32 %i.hb, ptr %i.hc, align 4, !tbaa !44
  %i.hd = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.he = call i64 @_ZNK4ojph5local9param_siz14get_recon_sizeEj(ptr noundef nonnull align 8 dereferenceable(88) %i.bs, i32 noundef %i.hd) ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.he to i32
  %i.hf = load ptr, ptr %i.fj, align 8, !tbaa !160
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %indvars.iv
  store i32 %.sroa.0.0.extract.trunc.i, ptr %i.hg, align 4, !tbaa !43
  %i.hh = call i64 @_ZNK4ojph5local9param_siz14get_recon_sizeEj(ptr noundef nonnull align 8 dereferenceable(88) %i.bs, i32 noundef %i.hd)
  %.sroa.3.0.extract.shift.i = lshr i64 %i.hh, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i64 %.sroa.3.0.extract.shift.i to i32
  %i.hi = load ptr, ptr %i.fj, align 8, !tbaa !160
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %indvars.iv
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  store i32 %.sroa.3.0.extract.trunc.i, ptr %i.hk, align 4, !tbaa !44
  %i.hl = load ptr, ptr %i.ej, align 8, !tbaa !158
  %i.hm = getelementptr inbounds nuw [24 x i8], ptr %i.hl, i64 %indvars.iv
  %i.hn = load ptr, ptr %i.c, align 8, !tbaa !80  ; 2 uses
  %i.ho = and i64 %i.he, 4294967295               ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 48 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 8 ; 2 uses
  %i.hr = shl nuw nsw i64 %i.ho, 2
  %i.hs = add nuw nsw i64 %i.hr, 60
  %i.ht = and i64 %i.hs, 34359738304
  %i.hu = add nuw nsw i64 %i.ht, 127              ; 2 uses
  %i.hv = load ptr, ptr %i.hq, align 8, !tbaa !153 ; 2 uses
  %i.hw = ptrtoint ptr %i.hv to i64
  %i.hx = add nsw i64 %i.hw, 63
  %i.hy = and i64 %i.hx, -64
  %i.hz = inttoptr i64 %i.hy to ptr
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hu
  store ptr %i.ia, ptr %i.hq, align 8, !tbaa !153
  %i.ib = load i64, ptr %i.hp, align 8, !tbaa !123
  %i.ic = sub i64 %i.ib, %i.hu
  store i64 %i.ic, ptr %i.hp, align 8, !tbaa !123
  call void @_ZN4ojph8line_buf4wrapIiEEvPT_mj(ptr noundef nonnull align 8 dereferenceable(24) %i.hm, ptr noundef %i.hz, i64 noundef %i.ho, i32 noundef 0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.id = load i32, ptr %i.ds, align 8, !tbaa !157
  %i.ie = zext i32 %i.id to i64
  %i.if = icmp samesign ult i64 %indvars.iv.next, %i.ie
  br i1 %i.if, label %bb.n, label %._crit_edge73, !llvm.loop !172

bb.o:                                             ; preds = %._crit_edge73
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ih = load i8, ptr %i.ig, align 8, !tbaa !135, !range !136, !noundef !137
  %i.ii = trunc nuw i8 %i.ih to i1
  br i1 %i.ii, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ik = load ptr, ptr %i.c, align 8, !tbaa !80  ; 2 uses
  %i.il = zext i32 %.0.lcssa to i64
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 40 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 16 ; 2 uses
  %i.io = shl nuw nsw i64 %i.il, 3
  %i.ip = add nuw nsw i64 %i.io, 15               ; 2 uses
  %i.iq = load ptr, ptr %i.in, align 8, !tbaa !153 ; 2 uses
  %i.ir = ptrtoint ptr %i.iq to i64
  %i.is = add nsw i64 %i.ir, 7
  %i.it = and i64 %i.is, -8
  %i.iu = inttoptr i64 %i.it to ptr
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.ip
  store ptr %i.iv, ptr %i.in, align 8, !tbaa !153
  %i.iw = load i64, ptr %i.im, align 8, !tbaa !123
  %i.ix = sub i64 %i.iw, %i.ip
  store i64 %i.ix, ptr %i.im, align 8, !tbaa !123
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
  store ptr %i.a, ptr %1, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.b, ptr %2, align 8, !tbaa !176
  %i.c = call noundef zeroext i1 @_ZNK4ojph9param_cod13is_reversibleEv(ptr noundef nonnull align 8 dereferenceable(8) %2) ; 4 uses
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
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !121
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
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !121
  %i.p = load ptr, ptr %i.o, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i32 noundef 196804, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 328, ptr noundef nonnull @.str.6)
  br label %bb.e

bb.e:                                             ; preds = %.critedge27, %bb.d
  %i.q = call noundef i32 @_ZNK4ojph9param_siz18get_num_componentsEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.r = icmp ugt i32 %i.q, 3
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !121
  %i.u = load ptr, ptr %i.t, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.s, i32 noundef 196805, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 332, ptr noundef nonnull @.str.7)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = call noundef i32 @_ZNK4ojph9param_siz18get_num_componentsEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.not287 = icmp eq i32 %i.v, 0
  br i1 %.not287, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.w = select i1 %i.z, i1 true, i1 %.1239.in
  br i1 %i.w, label %._crit_edge.thread, label %bb.h

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %.0237272 = phi i32 [ %i.aa, %.lr.ph ], [ 0, %bb.g ] ; 3 uses
  %.0238271 = phi i1 [ %.1239.in, %.lr.ph ], [ true, %bb.g ]
  %.0240270 = phi i1 [ %i.z, %.lr.ph ], [ true, %bb.g ]
  %i.x = call i64 @_ZNK4ojph9param_siz16get_downsamplingEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %.0237272) ; 3 uses
  %.sroa.0146.0.extract.trunc = trunc i64 %i.x to i32
  %.sroa.6.0.extract.shift.mask = and i64 %i.x, -4294967296
  %3 = icmp eq i64 %.sroa.6.0.extract.shift.mask, 4294967296
  %4 = select i1 %3, i1 %.0238271, i1 false
  %i.y = icmp eq i64 %i.x, 4294967297
  %i.z = and i1 %.0240270, %i.y                   ; 2 uses
  %5 = add i32 %.0237272, -1
  %or.cond29 = icmp ult i32 %5, 2
  %.pn.v = select i1 %or.cond29, i32 2, i32 1
  %.pn = icmp eq i32 %.pn.v, %.sroa.0146.0.extract.trunc
  %.1239.in = and i1 %.pn, %4                     ; 2 uses
  %i.aa = add nuw i32 %.0237272, 1                ; 2 uses
  %i.ab = call noundef i32 @_ZNK4ojph9param_siz18get_num_componentsEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.ac = icmp ult i32 %i.aa, %i.ab
  br i1 %i.ac, label %.lr.ph, label %._crit_edge, !llvm.loop !178

bb.h:                                             ; preds = %._crit_edge
  %i.ad = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !121
  %i.af = load ptr, ptr %i.ae, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, i32 noundef 196806, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 350, ptr noundef nonnull @.str.8)
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.g, %bb.h, %._crit_edge
  %i.ag = call noundef i32 @_ZNK4ojph9param_siz18get_num_componentsEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.not288 = icmp eq i32 %i.ag, 0
  br i1 %.not288, label %.critedge286, label %.lr.ph277

._crit_edge278:                                   ; preds = %.lr.ph277
  br i1 %i.am, label %.critedge286, label %bb.i

.lr.ph277:                                        ; preds = %._crit_edge.thread, %.lr.ph277
  %.0235275 = phi i32 [ %i.an, %.lr.ph277 ], [ 0, %._crit_edge.thread ] ; 3 uses
  %.0236274 = phi i1 [ %i.am, %.lr.ph277 ], [ true, %._crit_edge.thread ]
  %i.ah = call noundef i32 @_ZNK4ojph9param_siz13get_bit_depthEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %.0235275)
  %i.ai = call noundef zeroext i1 @_ZNK4ojph9param_siz9is_signedEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %.0235275)
  %i.aj = add i32 %i.ah, -8
  %or.cond33 = icmp ult i32 %i.aj, 9
  %i.ak = xor i1 %i.ai, true
  %i.al = and i1 %or.cond33, %i.ak
  %i.am = and i1 %.0236274, %i.al                 ; 2 uses
  %i.an = add nuw i32 %.0235275, 1                ; 2 uses
  %i.ao = call noundef i32 @_ZNK4ojph9param_siz18get_num_componentsEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.ap = icmp ult i32 %i.an, %i.ao
  br i1 %i.ap, label %.lr.ph277, label %._crit_edge278, !llvm.loop !179

bb.i:                                             ; preds = %._crit_edge278
  %i.aq = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !121
  %i.as = load ptr, ptr %i.ar, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, i32 noundef 196807, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 362, ptr noundef nonnull @.str.9)
  br label %.critedge286

.critedge286:                                     ; preds = %._crit_edge.thread, %bb.i, %._crit_edge278
  %i.at = call i64 @_ZNK4ojph9param_cod18get_log_block_dimsEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.au = and i64 %i.at, 4294967295
  %.not260 = icmp eq i64 %i.au, 5
  br i1 %.not260, label %bb.j, label %.critedge35

bb.j:                                             ; preds = %.critedge286
  %i.av = call i64 @_ZNK4ojph9param_cod18get_log_block_dimsEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.sroa.4135.0.extract.shift.mask = and i64 %i.av, -4294967296
  %.not261 = icmp eq i64 %.sroa.4135.0.extract.shift.mask, 21474836480
  br i1 %.not261, label %bb.k, label %.critedge35

.critedge35:                                      ; preds = %.critedge286, %bb.j
  %i.aw = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !121
  %i.ay = load ptr, ptr %i.ax, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i32 noundef 196808, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 367, ptr noundef nonnull @.str.10)
  br label %bb.k

bb.k:                                             ; preds = %.critedge35, %bb.j
  %i.az = call noundef i32 @_ZNK4ojph9param_cod22get_num_decompositionsEv(ptr noundef nonnull align 8 dereferenceable(8) %2) ; 7 uses
  %i.ba = call i64 @_ZNK4ojph9param_cod21get_log_precinct_sizeEj(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0)
  %i.bb = and i64 %i.ba, 4294967295
  %i.bc = icmp eq i64 %i.bb, 7
  br i1 %i.bc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bd = call i64 @_ZNK4ojph9param_cod21get_log_precinct_sizeEj(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0)
  %.sroa.3113.0.extract.shift.mask = and i64 %i.bd, -4294967296
  %i.be = icmp eq i64 %.sroa.3113.0.extract.shift.mask, 30064771072
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bf = phi i1 [ false, %bb.k ], [ %i.be, %bb.l ]
  %.not262280.not = icmp eq i32 %i.az, 0
  br i1 %.not262280.not, label %._crit_edge284, label %.lr.ph283

._crit_edge284:                                   ; preds = %bb.o, %bb.m
  %.0234.lcssa = phi i1 [ %i.bf, %bb.m ], [ %i.bl, %bb.o ]
  br i1 %.0234.lcssa, label %bb.q, label %bb.p

.lr.ph283:                                        ; preds = %bb.m, %bb.o
  %.0233281 = phi i32 [ %i.bm, %bb.o ], [ 1, %bb.m ] ; 3 uses
  %i.bg = call i64 @_ZNK4ojph9param_cod21get_log_precinct_sizeEj(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %.0233281)
  %i.bh = and i64 %i.bg, 4294967295
  %i.bi = icmp eq i64 %i.bh, 8
  br i1 %i.bi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph283
  %i.bj = call i64 @_ZNK4ojph9param_cod21get_log_precinct_sizeEj(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %.0233281)
  %.sroa.3105.0.extract.shift.mask = and i64 %i.bj, -4294967296
  %i.bk = icmp eq i64 %.sroa.3105.0.extract.shift.mask, 34359738368
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph283
  %i.bl = phi i1 [ false, %.lr.ph283 ], [ %i.bk, %bb.n ]
  %i.bm = add i32 %.0233281, 1                    ; 2 uses
  %.not262 = icmp ugt i32 %i.bm, %i.az
  br i1 %.not262, label %._crit_edge284, label %.lr.ph283, !llvm.loop !180

bb.p:                                             ; preds = %._crit_edge284
  %i.bn = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !121
  %i.bp = load ptr, ptr %i.bo, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, i32 noundef 196809, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 378, ptr noundef nonnull @.str.11)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge284
  %i.bq = call noundef i32 @_ZNK4ojph9param_cod21get_progression_orderEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.not263 = icmp eq i32 %i.bq, 4
  br i1 %.not263, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !121
  %i.bt = load ptr, ptr %i.bs, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.br, i32 noundef 196810, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 383, ptr noundef nonnull @.str.12)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bu = icmp ult i32 %i.az, 6                   ; 2 uses
  %i.bv = and i1 %i.c, %i.bu
  %i.bw = icmp ult i32 %i.az, 7                   ; 2 uses
  %i.bx = and i1 %i.c, %i.bw                      ; 2 uses
  %i.by = icmp ult i32 %i.az, 8                   ; 2 uses
  %i.bz = and i1 %i.c, %i.by                      ; 3 uses
  %i.ca = add i32 %i.az, -1
  %brmerge.not = icmp ult i32 %i.ca, 7
  br i1 %brmerge.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cb = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !121
  %i.cd = load ptr, ptr %i.cc, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.cd(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, i32 noundef 196811, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 396, ptr noundef nonnull @.str.13)
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.ce = call i64 @_ZNK4ojph9param_siz16get_image_extentEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.sroa.0100.0.extract.trunc = trunc i64 %i.ce to i32
  %i.cf = call i64 @_ZNK4ojph9param_siz13get_tile_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.sroa.098.0.extract.trunc = trunc i64 %i.cf to i32
  %i.cg = add i32 %.sroa.0100.0.extract.trunc, -1
  %i.ch = add i32 %i.cg, %.sroa.098.0.extract.trunc
  %i.ci = call i64 @_ZNK4ojph9param_siz13get_tile_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.sroa.097.0.extract.trunc = trunc i64 %i.ci to i32
  %i.cj = udiv i32 %i.ch, %.sroa.097.0.extract.trunc
  %i.ck = call i64 @_ZNK4ojph9param_siz16get_image_extentEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.sroa.394.0.extract.shift = lshr i64 %i.ck, 32
  %.sroa.394.0.extract.trunc = trunc nuw i64 %.sroa.394.0.extract.shift to i32
  %i.cl = call i64 @_ZNK4ojph9param_siz13get_tile_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.sroa.392.0.extract.shift = lshr i64 %i.cl, 32
  %.sroa.392.0.extract.trunc = trunc nuw i64 %.sroa.392.0.extract.shift to i32
  %i.cm = add i32 %.sroa.394.0.extract.trunc, -1
  %i.cn = add i32 %i.cm, %.sroa.392.0.extract.trunc
  %i.co = call i64 @_ZNK4ojph9param_siz13get_tile_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.sroa.3.0.extract.shift = lshr i64 %i.co, 32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.cp = udiv i32 %i.cn, %.sroa.3.0.extract.trunc
  %i.cq = mul i32 %i.cp, %i.cj
  %i.cr = icmp ugt i32 %i.cq, 1
  br i1 %i.cr, label %bb.v, label %bb.ae

bb.v:                                             ; preds = %bb.u
  br i1 %i.c, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cs = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !121
  %i.cu = load ptr, ptr %i.ct, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.cu(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, i32 noundef 196812, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 408, ptr noundef nonnull @.str.14)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cv = call i64 @_ZNK4ojph9param_siz13get_tile_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.cv to i32 ; 8 uses
  %.sroa.18.0.extract.shift = lshr i64 %i.cv, 32  ; 4 uses
  %i.cw = icmp eq i32 %.sroa.0.0.extract.trunc, 1024
  %i.cx = icmp eq i64 %.sroa.18.0.extract.shift, 1024
  %i.cy = and i1 %i.cw, %i.cx                     ; 3 uses
  %i.cz = and i1 %i.bv, %i.cy
  %i.da = icmp ugt i32 %.sroa.0.0.extract.trunc, 1023
  %i.db = icmp ult i32 %i.az, 5                   ; 2 uses
  %or.cond47 = and i1 %i.db, %i.da
  %spec.select266 = and i1 %i.db, %i.cz
  br i1 %i.cy, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dc = icmp eq i32 %.sroa.0.0.extract.trunc, 2048
  %i.dd = icmp eq i64 %.sroa.18.0.extract.shift, 2048
  %i.de = and i1 %i.dc, %i.dd
  %i.df = and i1 %i.bx, %i.de
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.dg = phi i1 [ %i.bx, %bb.x ], [ %i.df, %bb.y ]
  %i.dh = icmp ugt i32 %.sroa.0.0.extract.trunc, 2047
  %or.cond54 = and i1 %i.bu, %i.dh
  %or.cond267 = or i1 %or.cond47, %or.cond54      ; 2 uses
  %i.di = icmp ugt i32 %.sroa.0.0.extract.trunc, 4095
  %i.dj = and i1 %i.bw, %i.di                     ; 2 uses
  %i.dk = or i1 %i.dj, %or.cond267
  %i.dl = and i1 %i.dk, %i.dg
  br i1 %i.cy, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dm = icmp eq i32 %.sroa.0.0.extract.trunc, 2048
  %i.dn = icmp eq i64 %.sroa.18.0.extract.shift, 2048
  %or.cond60 = and i1 %i.dm, %i.dn
  br i1 %or.cond60, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.do = icmp eq i32 %.sroa.0.0.extract.trunc, 4096
  %i.dp = icmp eq i64 %.sroa.18.0.extract.shift, 4096
  %i.dq = and i1 %i.do, %i.dp
  %i.dr = and i1 %i.bz, %i.dq
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.z, %bb.ab
  %i.ds = phi i1 [ %i.bz, %bb.aa ], [ %i.bz, %bb.z ], [ %i.dr, %bb.ab ]
  %i.dt = icmp ugt i32 %.sroa.0.0.extract.trunc, 8191
  %i.du = and i1 %i.by, %i.dt
  %i.dv = or i1 %i.dj, %i.du
  %i.dw = or i1 %i.dv, %or.cond267
  %i.dx = and i1 %i.dw, %i.ds
  %or.cond68 = or i1 %spec.select266, %i.dl
  %or.cond70 = or i1 %or.cond68, %i.dx
  br i1 %or.cond70, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dy = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !121
  %i.ea = load ptr, ptr %i.dz, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.ea(ptr noundef nonnull align 8 dereferenceable(8) %i.dy, i32 noundef 196813, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 430, ptr noundef nonnull @.str.15)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.u
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 1, ptr %i.eb, align 8, !tbaa !135
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 3 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !181
  %i.ee = or i32 %i.ed, 2                         ; 2 uses
  store i32 %i.ee, ptr %i.ec, align 4, !tbaa !181
  %.not264 = icmp eq i32 %i.ee, 2
  br i1 %.not264, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i32 2, ptr %i.ec, align 4, !tbaa !181
  %i.ef = call noundef ptr @_ZN4ojph11get_warningEv() ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !121
  %i.eh = load ptr, ptr %i.eg, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.eh(ptr noundef nonnull align 8 dereferenceable(8) %i.ef, i32 noundef 196801, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 441, ptr noundef nonnull @.str.16)
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
  store ptr %i.a, ptr %1, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.b, ptr %2, align 8, !tbaa !176
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
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !121
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
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !121
  %i.n = load ptr, ptr %i.m, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i32 noundef 196786, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 456, ptr noundef nonnull @.str.18)
  br label %bb.e

bb.e:                                             ; preds = %.critedge2, %bb.d
  %i.o = call noundef i32 @_ZNK4ojph9param_siz18get_num_componentsEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.p = icmp ugt i32 %i.o, 4
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !121
  %i.s = load ptr, ptr %i.r, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i32 noundef 196787, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 460, ptr noundef nonnull @.str.19)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = call noundef i32 @_ZNK4ojph9param_siz18get_num_componentsEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.not128 = icmp eq i32 %i.t, 0
  br i1 %.not128, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.u = select i1 %i.x, i1 true, i1 %.1.in
  br i1 %i.u, label %._crit_edge.thread, label %bb.h

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %.0113 = phi i1 [ %i.x, %.lr.ph ], [ true, %bb.g ]
  %.086112 = phi i1 [ %.1.in, %.lr.ph ], [ true, %bb.g ]
  %.087111 = phi i32 [ %i.y, %.lr.ph ], [ 0, %bb.g ] ; 3 uses
  %i.v = call i64 @_ZNK4ojph9param_siz16get_downsamplingEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %.087111) ; 3 uses
  %.sroa.062.0.extract.trunc = trunc i64 %i.v to i32
  %.sroa.6.0.extract.shift.mask = and i64 %i.v, -4294967296
  %3 = icmp eq i64 %.sroa.6.0.extract.shift.mask, 4294967296
  %4 = select i1 %3, i1 %.086112, i1 false
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = and i1 %.0113, %i.w                      ; 2 uses
  %5 = add i32 %.087111, -1
  %or.cond = icmp ult i32 %5, 2
  %.pn.v = select i1 %or.cond, i32 2, i32 1
  %.pn = icmp eq i32 %.pn.v, %.sroa.062.0.extract.trunc
  %.1.in = and i1 %.pn, %4                        ; 2 uses
  %i.y = add nuw i32 %.087111, 1                  ; 2 uses
  %i.z = call noundef i32 @_ZNK4ojph9param_siz18get_num_componentsEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.aa = icmp ult i32 %i.y, %i.z
  br i1 %i.aa, label %.lr.ph, label %._crit_edge, !llvm.loop !182

bb.h:                                             ; preds = %._crit_edge
  %i.ab = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !121
  %i.ad = load ptr, ptr %i.ac, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i32 noundef 196788, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 478, ptr noundef nonnull @.str.20)
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.g, %bb.h, %._crit_edge
  %i.ae = call noundef i32 @_ZNK4ojph9param_siz18get_num_componentsEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.not129 = icmp eq i32 %i.ae, 0
  br i1 %.not129, label %.critedge127, label %.lr.ph118

._crit_edge119:                                   ; preds = %.lr.ph118
  br i1 %i.ak, label %.critedge127, label %bb.i

.lr.ph118:                                        ; preds = %._crit_edge.thread, %.lr.ph118
  %.090116 = phi i1 [ %i.ak, %.lr.ph118 ], [ true, %._crit_edge.thread ]
  %.091115 = phi i32 [ %i.al, %.lr.ph118 ], [ 0, %._crit_edge.thread ] ; 3 uses
  %i.af = call noundef i32 @_ZNK4ojph9param_siz13get_bit_depthEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %.091115)
  %i.ag = call noundef zeroext i1 @_ZNK4ojph9param_siz9is_signedEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %.091115)
  %i.ah = add i32 %i.af, -8
  %or.cond7 = icmp ult i32 %i.ah, 5
  %i.ai = xor i1 %i.ag, true
  %i.aj = and i1 %or.cond7, %i.ai
  %i.ak = and i1 %.090116, %i.aj                  ; 2 uses
  %i.al = add nuw i32 %.091115, 1                 ; 2 uses
  %i.am = call noundef i32 @_ZNK4ojph9param_siz18get_num_componentsEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.an = icmp ult i32 %i.al, %i.am
  br i1 %i.an, label %.lr.ph118, label %._crit_edge119, !llvm.loop !183

bb.i:                                             ; preds = %._crit_edge119
  %i.ao = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !121
  %i.aq = load ptr, ptr %i.ap, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, i32 noundef 196789, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 490, ptr noundef nonnull @.str.21)
  br label %.critedge127

.critedge127:                                     ; preds = %._crit_edge.thread, %bb.i, %._crit_edge119
  %i.ar = call noundef i32 @_ZNK4ojph9param_cod22get_num_decompositionsEv(ptr noundef nonnull align 8 dereferenceable(8) %2) ; 3 uses
  %i.as = add i32 %i.ar, -6
  %or.cond9 = icmp ult i32 %i.as, -5
  br i1 %or.cond9, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.critedge127
  %i.at = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !121
  %i.av = load ptr, ptr %i.au, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.av(ptr noundef nonnull align 8 dereferenceable(8) %i.at, i32 noundef 196790, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 496, ptr noundef nonnull @.str.22)
  br label %bb.k

bb.k:                                             ; preds = %.critedge127, %bb.j
  %i.aw = call i64 @_ZNK4ojph9param_cod18get_log_block_dimsEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.sroa.048.0.extract.trunc = trunc i64 %i.aw to i32
  %i.ax = icmp ult i32 %.sroa.048.0.extract.trunc, 5
  br i1 %i.ax, label %.critedge11, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = call i64 @_ZNK4ojph9param_cod18get_log_block_dimsEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.az = and i64 %i.ay, 4294967288
  %.not107 = icmp eq i64 %i.az, 0
  br i1 %.not107, label %bb.m, label %.critedge11

.critedge11:                                      ; preds = %bb.k, %bb.l
  %i.ba = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !121
  %i.bc = load ptr, ptr %i.bb, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, i32 noundef 196791, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 501, ptr noundef nonnull @.str.23)
  br label %bb.m

bb.m:                                             ; preds = %.critedge11, %bb.l
  %i.bd = call i64 @_ZNK4ojph9param_cod18get_log_block_dimsEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.be = icmp ult i64 %i.bd, 21474836480
  br i1 %i.be, label %.critedge13, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = call i64 @_ZNK4ojph9param_cod18get_log_block_dimsEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.bg = icmp ugt i64 %i.bf, 34359738367
  br i1 %i.bg, label %.critedge13, label %bb.o

.critedge13:                                      ; preds = %bb.m, %bb.n
  %i.bh = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !121
  %i.bj = load ptr, ptr %i.bi, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, i32 noundef 196792, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 506, ptr noundef nonnull @.str.24)
  br label %bb.o

bb.o:                                             ; preds = %.critedge13, %bb.n
  %i.bk = call i64 @_ZNK4ojph9param_cod21get_log_precinct_sizeEj(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0)
  %i.bl = and i64 %i.bk, 4294967295
  %i.bm = icmp eq i64 %i.bl, 7
  br i1 %i.bm, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bn = call i64 @_ZNK4ojph9param_cod21get_log_precinct_sizeEj(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0)
  %.sroa.339.0.extract.shift.mask = and i64 %i.bn, -4294967296
  %i.bo = icmp eq i64 %.sroa.339.0.extract.shift.mask, 30064771072
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bp = phi i1 [ false, %bb.o ], [ %i.bo, %bb.p ]
  %.not108121 = icmp eq i32 %i.ar, 0
  br i1 %.not108121, label %._crit_edge125, label %.lr.ph124

._crit_edge125:                                   ; preds = %bb.s, %bb.q
  %.089.lcssa = phi i1 [ %i.bp, %bb.q ], [ %i.bv, %bb.s ]
  br i1 %.089.lcssa, label %bb.u, label %bb.t

.lr.ph124:                                        ; preds = %bb.q, %bb.s
  %.088122 = phi i32 [ %i.bw, %bb.s ], [ 1, %bb.q ] ; 3 uses
  %i.bq = call i64 @_ZNK4ojph9param_cod21get_log_precinct_sizeEj(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %.088122)
  %i.br = and i64 %i.bq, 4294967295
  %i.bs = icmp eq i64 %i.br, 8
  br i1 %i.bs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph124
  %i.bt = call i64 @_ZNK4ojph9param_cod21get_log_precinct_sizeEj(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %.088122)
  %.sroa.331.0.extract.shift.mask = and i64 %i.bt, -4294967296
  %i.bu = icmp eq i64 %.sroa.331.0.extract.shift.mask, 34359738368
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph124
  %i.bv = phi i1 [ false, %.lr.ph124 ], [ %i.bu, %bb.r ]
  %i.bw = add i32 %.088122, 1                     ; 2 uses
  %.not108 = icmp ugt i32 %i.bw, %i.ar
  br i1 %.not108, label %._crit_edge125, label %.lr.ph124, !llvm.loop !184

bb.t:                                             ; preds = %._crit_edge125
  %i.bx = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !121
  %i.bz = load ptr, ptr %i.by, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.bz(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, i32 noundef 196793, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 516, ptr noundef nonnull @.str.25)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge125
  %i.ca = call noundef i32 @_ZNK4ojph9param_cod21get_progression_orderEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.not109 = icmp eq i32 %i.ca, 4
  br i1 %.not109, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cb = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !121
  %i.cd = load ptr, ptr %i.cc, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.cd(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, i32 noundef 196794, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 521, ptr noundef nonnull @.str.26)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ce = call i64 @_ZNK4ojph9param_siz16get_image_extentEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.sroa.026.0.extract.trunc = trunc i64 %i.ce to i32
  %i.cf = call i64 @_ZNK4ojph9param_siz13get_tile_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.sroa.024.0.extract.trunc = trunc i64 %i.cf to i32
  %i.cg = add i32 %.sroa.026.0.extract.trunc, -1
  %i.ch = add i32 %i.cg, %.sroa.024.0.extract.trunc
  %i.ci = call i64 @_ZNK4ojph9param_siz13get_tile_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.sroa.023.0.extract.trunc = trunc i64 %i.ci to i32
  %i.cj = udiv i32 %i.ch, %.sroa.023.0.extract.trunc
  %i.ck = call i64 @_ZNK4ojph9param_siz16get_image_extentEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.sroa.320.0.extract.shift = lshr i64 %i.ck, 32
  %.sroa.320.0.extract.trunc = trunc nuw i64 %.sroa.320.0.extract.shift to i32
  %i.cl = call i64 @_ZNK4ojph9param_siz13get_tile_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.sroa.318.0.extract.shift = lshr i64 %i.cl, 32
  %.sroa.318.0.extract.trunc = trunc nuw i64 %.sroa.318.0.extract.shift to i32
  %i.cm = add i32 %.sroa.320.0.extract.trunc, -1
  %i.cn = add i32 %i.cm, %.sroa.318.0.extract.trunc
  %i.co = call i64 @_ZNK4ojph9param_siz13get_tile_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.sroa.3.0.extract.shift = lshr i64 %i.co, 32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.cp = udiv i32 %i.cn, %.sroa.3.0.extract.trunc
  %i.cq = mul i32 %i.cp, %i.cj
  switch i32 %i.cq, label %bb.x [
    i32 4, label %bb.y
    i32 1, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.cr = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !121
  %i.ct = load ptr, ptr %i.cs, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.ct(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, i32 noundef 196795, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 531, ptr noundef nonnull @.str.27)
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.w, %bb.x
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 1, ptr %i.cu, align 8, !tbaa !135
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 3 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !181
  %i.cx = or i32 %i.cw, 2                         ; 2 uses
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !181
  %.not110 = icmp eq i32 %i.cx, 2
  br i1 %.not110, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 2, ptr %i.cv, align 4, !tbaa !181
  %i.cy = call noundef ptr @_ZN4ojph11get_warningEv() ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !121
  %i.da = load ptr, ptr %i.cz, align 8
end_hunk_0
