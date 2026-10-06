Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinygltf/original/tiny_gltf_v3?download=true
inline.NumInlined: 786
inline.NumDeleted: 104
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@tg3__parse_from_json:bb.a
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 224
  br label %bb.y

bb.y:                                             ; preds = %.preheader2235, %bb.dv
  %.06682344 = phi i64 [ 0, %.preheader2235 ], [ %i.ul, %bb.dv ] ; 6 uses
  %i.ew = load i32, ptr %i.cr, align 8, !tbaa !37
  %.not8.i = icmp eq i32 %i.ew, 5
  br i1 %.not8.i, label %bb.z, label %tg3__json_is_object.exit928.thread

bb.z:                                             ; preds = %bb.y
  %i.ex = load i64, ptr %i.ct, align 8, !tbaa !34
  %.not9.i = icmp ult i64 %.06682344, %i.ex
  br i1 %.not9.i, label %tg3json_array_get.exit, label %tg3__json_is_object.exit928.thread

tg3json_array_get.exit:                           ; preds = %bb.z
  %i.ey = load ptr, ptr %i.ek, align 8, !tbaa !34 ; 2 uses
  %i.ez = getelementptr inbounds nuw [24 x i8], ptr %i.ey, i64 %.06682344 ; 6 uses
  %.not.i927 = icmp eq ptr %i.ey, null
  br i1 %.not.i927, label %tg3__json_is_object.exit928.thread, label %tg3__json_is_object.exit928

tg3__json_is_object.exit928:                      ; preds = %tg3json_array_get.exit
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !37
  %.not2153 = icmp eq i32 %i.fa, 6
  br i1 %.not2153, label %bb.aa, label %tg3__json_is_object.exit928.thread

tg3__json_is_object.exit928.thread:               ; preds = %bb.y, %bb.z, %tg3json_array_get.exit, %tg3__json_is_object.exit928
  %i.fb = load ptr, ptr %i.en, align 8, !tbaa !139
  %i.fc = load ptr, ptr %0, align 8, !tbaa !138
  %i.fd = trunc i64 %.06682344 to i32
  call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.fb, ptr noundef %i.fc, i32 poison, i32 noundef 11, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.50, i32 noundef %i.fd)
  br label %bb.dv

bb.aa:                                            ; preds = %tg3__json_is_object.exit928
  %i.fe = getelementptr inbounds nuw [112 x i8], ptr %i.ej, i64 %.06682344 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #28
  store i64 0, ptr %i.h, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(112) %i.fe, i8 0, i64 112, i1 false)
  call fastcc void @tg3__parse_string(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.ez, ptr noundef nonnull @.str.65, ptr noundef nonnull %i.fe, i32 noundef 0, ptr noundef nonnull @.str.66)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 40 ; 2 uses
  call fastcc void @tg3__parse_string(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.ez, ptr noundef nonnull @.str.67, ptr noundef %i.ff, i32 noundef 0, ptr noundef nonnull @.str.66)
  call fastcc void @tg3__parse_uint64(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.ez, ptr noundef nonnull @.str.68, ptr noundef %i.h, i32 noundef 1, ptr noundef nonnull @.str.66)
  %i.fg = load i64, ptr %i.h, align 8, !tbaa !27  ; 9 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  store i64 %i.fg, ptr %i.fh, align 8, !tbaa !160
  %i.fi = load i32, ptr %i.el, align 8, !tbaa !161
  %i.fj = icmp ne i32 %i.fi, 0
  %i.fk = and i64 %.06682344, 4294967295
  %i.fl = icmp eq i64 %i.fk, 0
  %or.cond.i929 = and i1 %i.fl, %i.fj
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fe, i64 48
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !162 ; 11 uses
  %i.fo = icmp eq i32 %i.fn, 0                    ; 2 uses
  br i1 %or.cond.i929, label %bb.ab, label %bb.ba

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.fo, label %bb.ac, label %.thread.i

bb.ac:                                            ; preds = %bb.ab
  %i.fp = load ptr, ptr %i.et, align 8, !tbaa !163 ; 2 uses
  %.not96.i = icmp eq ptr %i.fp, null
  br i1 %.not96.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fq = load i64, ptr %i.eu, align 8, !tbaa !164
  %i.fr = icmp ult i64 %i.fq, %i.fg
  br i1 %i.fr, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.fs = load ptr, ptr %i.en, align 8, !tbaa !139 ; 6 uses
  %.not.i.i = icmp eq ptr %i.fs, null
  br i1 %.not.i.i, label %tg3__parse_buffer.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8 ; 3 uses
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !62 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 12 ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !116 ; 3 uses
  %.not27.i.i = icmp ult i32 %i.fu, %i.fw
  %.pre.i.i = load ptr, ptr %i.fs, align 8, !tbaa !63 ; 2 uses
  br i1 %.not27.i.i, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not28.i.i = icmp eq i32 %i.fw, 0
  %i.fx = shl i32 %i.fw, 1
  %spec.select.i.i932 = select i1 %.not28.i.i, i32 16, i32 %i.fx ; 2 uses
  %i.fy = zext i32 %spec.select.i.i932 to i64
  %i.fz = shl nuw nsw i64 %i.fy, 5
  %i.ga = call ptr @realloc(ptr noundef %.pre.i.i, i64 noundef %i.fz) #29 ; 3 uses
  %.not29.i.i = icmp eq ptr %i.ga, null
  br i1 %.not29.i.i, label %tg3__parse_buffer.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store ptr %i.ga, ptr %i.fs, align 8, !tbaa !63
  store i32 %spec.select.i.i932, ptr %i.fv, align 4, !tbaa !116
  %.pre30.i.i = load i32, ptr %i.ft, align 8, !tbaa !62
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af
  %i.gb = phi i32 [ %.pre30.i.i, %bb.ah ], [ %i.fu, %bb.af ] ; 2 uses
  %i.gc = phi ptr [ %i.ga, %bb.ah ], [ %.pre.i.i, %bb.af ]
  %i.gd = add i32 %i.gb, 1
  store i32 %i.gd, ptr %i.ft, align 8, !tbaa !62
  %i.ge = zext i32 %i.gb to i64
  %i.gf = getelementptr inbounds nuw [32 x i8], ptr %i.gc, i64 %i.ge ; 5 uses
  store i32 2, ptr %i.gf, align 8, !tbaa !118
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  store i32 45, ptr %i.gg, align 4, !tbaa !119
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store ptr @.str.69, ptr %i.gh, align 8, !tbaa !120
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  store ptr null, ptr %i.gi, align 8, !tbaa !121
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  store i64 -1, ptr %i.gj, align 8, !tbaa !122
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  store i32 1, ptr %i.gk, align 8, !tbaa !61
  br label %tg3__parse_buffer.exit

bb.aj:                                            ; preds = %bb.ad
  %i.gl = load i32, ptr %i.ev, align 8, !tbaa !420
  %.not97.i = icmp eq i32 %i.gl, 0
  br i1 %.not97.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  store ptr %i.fp, ptr %i.gm, align 8, !tbaa !165
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  store i64 %i.fg, ptr %i.gn, align 8, !tbaa !166
  %i.go = getelementptr inbounds nuw i8, ptr %i.fe, i64 56
  call fastcc void @tg3__parse_extras_and_extensions(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.ez, ptr noundef %i.go)
  br label %tg3__parse_buffer.exit

bb.al:                                            ; preds = %bb.aj
  %i.gp = load ptr, ptr %0, align 8, !tbaa !138   ; 9 uses
  %i.gq = icmp eq ptr %i.gp, null
  %i.gr = icmp eq i64 %i.fg, 0                    ; 3 uses
  %or.cond.i.i931 = or i1 %i.gr, %i.gq
  br i1 %or.cond.i.i931, label %tg3__arena_alloc.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 32
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !130 ; 3 uses
  %.not.i98.i = icmp ne i64 %i.gt, 0              ; 2 uses
  %i.gu = icmp ugt i64 %i.fg, %i.gt
  %or.cond28.i.i = and i1 %.not.i98.i, %i.gu
  br i1 %or.cond28.i.i, label %tg3__arena_alloc.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gv = add i64 %i.fg, 7
  %i.gw = and i64 %i.gv, -8                       ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gp, i64 8 ; 3 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !148 ; 5 uses
  %.not26.i.i = icmp eq ptr %i.gy, null
  br i1 %.not26.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !150 ; 2 uses
  %i.hb = add i64 %i.ha, %i.gw
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !151
  %i.he = icmp ugt i64 %i.hb, %i.hd
  br i1 %i.he, label %bb.ap, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.ao
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %.pre.i99.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !156
  br label %bb.as

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gp, i64 40
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !128
  %spec.select.i.i.i = call i64 @llvm.umax.i64(i64 %i.hg, i64 range(i64 0, -7) %i.gw) ; 3 uses
  %i.hh = icmp ugt i64 %spec.select.i.i.i, %i.gt
  %or.cond.i.i.i = select i1 %.not.i98.i, i1 %i.hh, i1 false
  br i1 %or.cond.i.i.i, label %tg3__arena_alloc.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gp, i64 16 ; 3 uses
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !152
  %i.hk = add i64 %spec.select.i.i.i, 32          ; 3 uses
  %i.hl = add i64 %i.hj, %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !129
  %i.ho = icmp ugt i64 %i.hl, %i.hn
  br i1 %i.ho, label %tg3__arena_alloc.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gp, i64 48
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !153
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gp, i64 72
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !154
  %i.ht = call ptr %i.hq(i64 noundef %i.hk, ptr noundef %i.hs) #28, !inline_history !337 ; 8 uses
  %.not37.i.i.i = icmp eq ptr %i.ht, null
  br i1 %.not37.i.i.i, label %tg3__arena_alloc.exit.i, label %tg3__arena_new_block.exit.i.i

tg3__arena_new_block.exit.i.i:                    ; preds = %bb.ar
  store ptr null, ptr %i.ht, align 8, !tbaa !155
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 32 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  store ptr %i.hu, ptr %i.hv, align 8, !tbaa !156
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  store i64 %spec.select.i.i.i, ptr %i.hw, align 8, !tbaa !151
  %i.hx = load i64, ptr %i.hi, align 8, !tbaa !152
  %i.hy = add i64 %i.hx, %i.hk
  store i64 %i.hy, ptr %i.hi, align 8, !tbaa !152
  %i.hz = load ptr, ptr %i.gx, align 8, !tbaa !148 ; 2 uses
  %.not38.i.i.i = icmp eq ptr %i.hz, null
  %..i.i.i = select i1 %.not38.i.i.i, ptr %i.gp, ptr %i.hz
  store ptr %i.ht, ptr %..i.i.i, align 8, !tbaa !157
  store ptr %i.ht, ptr %i.gx, align 8, !tbaa !148
  br label %bb.as

bb.as:                                            ; preds = %tg3__arena_new_block.exit.i.i, %._crit_edge.i.i
  %i.ia = phi i64 [ 0, %tg3__arena_new_block.exit.i.i ], [ %i.ha, %._crit_edge.i.i ] ; 2 uses
  %i.ib = phi ptr [ %i.hu, %tg3__arena_new_block.exit.i.i ], [ %.pre.i99.i, %._crit_edge.i.i ]
  %.0.i.i = phi ptr [ %i.ht, %tg3__arena_new_block.exit.i.i ], [ %i.gy, %._crit_edge.i.i ]
  %i.ic = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.ia
  %i.ie = add i64 %i.ia, %i.gw
  store i64 %i.ie, ptr %i.ic, align 8, !tbaa !150
  br label %tg3__arena_alloc.exit.i

tg3__arena_alloc.exit.i:                          ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.am, %bb.al
  %.020.i.i = phi ptr [ null, %bb.am ], [ null, %bb.al ], [ %i.id, %bb.as ], [ null, %bb.aq ], [ null, %bb.ap ], [ null, %bb.ar ] ; 3 uses
  %i.if = icmp ne ptr %.020.i.i, null
  %or.cond6.not.i = or i1 %i.gr, %i.if
  br i1 %or.cond6.not.i, label %bb.ay, label %bb.at

bb.at:                                            ; preds = %tg3__arena_alloc.exit.i
  %i.ig = load ptr, ptr %i.en, align 8, !tbaa !139 ; 6 uses
  %.not.i1802 = icmp eq ptr %i.ig, null
  br i1 %.not.i1802, label %tg3__parse_buffer.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8 ; 3 uses
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !62 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 12 ; 2 uses
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !116 ; 3 uses
  %.not27.i1803 = icmp ult i32 %i.ii, %i.ik
  %.pre.i1804 = load ptr, ptr %i.ig, align 8, !tbaa !63 ; 2 uses
  br i1 %.not27.i1803, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.not28.i1805 = icmp eq i32 %i.ik, 0
  %i.il = shl i32 %i.ik, 1
  %spec.select.i1806 = select i1 %.not28.i1805, i32 16, i32 %i.il ; 2 uses
  %i.im = zext i32 %spec.select.i1806 to i64
  %i.in = shl nuw nsw i64 %i.im, 5
  %i.io = call ptr @realloc(ptr noundef %.pre.i1804, i64 noundef %i.in) #29 ; 3 uses
  %.not29.i1807 = icmp eq ptr %i.io, null
  br i1 %.not29.i1807, label %tg3__parse_buffer.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store ptr %i.io, ptr %i.ig, align 8, !tbaa !63
  store i32 %spec.select.i1806, ptr %i.ij, align 4, !tbaa !116
  %.pre30.i1808 = load i32, ptr %i.ih, align 8, !tbaa !62
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.au
  %i.ip = phi i32 [ %.pre30.i1808, %bb.aw ], [ %i.ii, %bb.au ] ; 2 uses
  %i.iq = phi ptr [ %i.io, %bb.aw ], [ %.pre.i1804, %bb.au ]
  %i.ir = add i32 %i.ip, 1
  store i32 %i.ir, ptr %i.ih, align 8, !tbaa !62
  %i.is = zext i32 %i.ip to i64
  %i.it = getelementptr inbounds nuw [32 x i8], ptr %i.iq, i64 %i.is ; 5 uses
  store i32 2, ptr %i.it, align 8, !tbaa !118
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 4
  store i32 50, ptr %i.iu, align 4, !tbaa !119
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  store ptr @.str.71, ptr %i.iv, align 8, !tbaa !120
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  store ptr null, ptr %i.iw, align 8, !tbaa !121
  %i.ix = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  store i64 -1, ptr %i.ix, align 8, !tbaa !122
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  store i32 1, ptr %i.iy, align 8, !tbaa !61
  br label %tg3__parse_buffer.exit

bb.ay:                                            ; preds = %tg3__arena_alloc.exit.i
  br i1 %i.gr, label %tg3__error_push.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.iz = load ptr, ptr %i.et, align 8, !tbaa !163
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.020.i.i, ptr readonly align 1 %i.iz, i64 %i.fg, i1 false)
  br label %tg3__error_push.exit.i

tg3__error_push.exit.i:                           ; preds = %bb.az, %bb.ay
  %i.ja = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  store ptr %.020.i.i, ptr %i.ja, align 8, !tbaa !165
  %i.jb = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  store i64 %i.fg, ptr %i.jb, align 8, !tbaa !166
  br label %bb.du

bb.ba:                                            ; preds = %bb.aa
  br i1 %i.fo, label %bb.du, label %.thread.i

.thread.i:                                        ; preds = %bb.ba, %bb.ab
  %i.jc = load ptr, ptr %i.ff, align 8, !tbaa !167 ; 13 uses
  %i.jd = icmp ne ptr %i.jc, null                 ; 2 uses
  %i.je = icmp ugt i32 %i.fn, 4
  %or.cond.i100.i = and i1 %i.je, %i.jd
  br i1 %or.cond.i100.i, label %tg3_is_data_uri.exit.i, label %tg3_is_data_uri.exit.thread.i

tg3_is_data_uri.exit.i:                           ; preds = %.thread.i
  %i.jf = load i32, ptr %i.jc, align 1
  %i.jg = xor i32 %i.jf, 1635017060
  %i.jh = getelementptr i8, ptr %i.jc, i64 4
  %i.ji = load i8, ptr %i.jh, align 1
  %i.jj = zext i8 %i.ji to i32
  %i.jk = xor i32 %i.jj, 58
  %i.jl = or i32 %i.jg, %i.jk
  %i.jm = icmp ne i32 %i.jl, 0
  %i.jn = zext i1 %i.jm to i32
  %.not152.i = icmp eq i32 %i.jn, 0
  br i1 %.not152.i, label %bb.bb, label %tg3_is_data_uri.exit.thread.i

bb.bb:                                            ; preds = %tg3_is_data_uri.exit.i
  %i.jo = load ptr, ptr %0, align 8, !tbaa !138   ; 9 uses
  %i.jp = zext i32 %i.fn to i64
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.jp ; 2 uses
  %i.jr = icmp ugt i32 %i.fn, 5
  br i1 %i.jr, label %.lr.ph.i.i.preheader.i, label %tg3__decode_data_uri.exit.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.bb
  %i.js = getelementptr inbounds nuw i8, ptr %i.jc, i64 5
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bc, %.lr.ph.i.i.preheader.i
  %.041.i.i.i = phi ptr [ %i.ju, %bb.bc ], [ %i.js, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %i.jt = load i8, ptr %.041.i.i.i, align 1, !tbaa !34
  %.not36.i.i.i = icmp eq i8 %i.jt, 59
  %i.ju = getelementptr inbounds nuw i8, ptr %.041.i.i.i, i64 1 ; 5 uses
  br i1 %.not36.i.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.i.i.i
  %i.jv = icmp ult ptr %i.ju, %i.jq
  br i1 %i.jv, label %.lr.ph.i.i.i, label %tg3__decode_data_uri.exit.i, !llvm.loop !338

bb.bd:                                            ; preds = %.lr.ph.i.i.i
  %i.jw = ptrtoint ptr %i.jq to i64               ; 2 uses
  %i.jx = ptrtoint ptr %i.ju to i64
  %i.jy = sub i64 %i.jw, %i.jx
  %i.jz = icmp ult i64 %i.jy, 7
  br i1 %i.jz, label %tg3__decode_data_uri.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ka = load i32, ptr %i.ju, align 1
  %i.kb = xor i32 %i.ka, 1702060386
  %i.kc = getelementptr i8, ptr %i.ju, i64 3
  %i.kd = load i32, ptr %i.kc, align 1
  %i.ke = xor i32 %i.kd, 741619301
  %i.kf = or i32 %i.kb, %i.ke
  %i.kg = icmp ne i32 %i.kf, 0
  %i.kh = zext i1 %i.kg to i32
  %.not38.i.i102.i = icmp eq i32 %i.kh, 0
  br i1 %.not38.i.i102.i, label %bb.bf, label %tg3__decode_data_uri.exit.i

bb.bf:                                            ; preds = %bb.be
  %i.ki = getelementptr inbounds nuw i8, ptr %.041.i.i.i, i64 8 ; 3 uses
  %i.kj = ptrtoint ptr %i.ki to i64
  %i.kk = sub i64 %i.jw, %i.kj                    ; 2 uses
  %i.kl = icmp eq i64 %i.kk, 0
  br i1 %i.kl, label %tg3__decode_data_uri.exit.i, label %.preheader48.i.i.i

.preheader48.i.i.i:                               ; preds = %bb.bf, %bb.bg
  %.03649.i.i.i = phi i64 [ %i.kq, %bb.bg ], [ %i.kk, %bb.bf ] ; 3 uses
  %i.km = getelementptr i8, ptr %i.ki, i64 %.03649.i.i.i
  %i.kn = getelementptr i8, ptr %i.km, i64 -1
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !34
  %i.kp = icmp eq i8 %i.ko, 61
  br i1 %i.kp, label %bb.bg, label %.critedge.i.i.i

bb.bg:                                            ; preds = %.preheader48.i.i.i
  %i.kq = add i64 %.03649.i.i.i, -1               ; 2 uses
  %.not.i20.i.i = icmp eq i64 %i.kq, 0
  br i1 %.not.i20.i.i, label %.critedge.i.i.i, label %.preheader48.i.i.i, !llvm.loop !339

.critedge.i.i.i:                                  ; preds = %bb.bg, %.preheader48.i.i.i
  %.036.lcssa.i.i.i = phi i64 [ 0, %bb.bg ], [ %.03649.i.i.i, %.preheader48.i.i.i ] ; 3 uses
  %i.kr = mul i64 %.036.lcssa.i.i.i, 3
  %i.ks = lshr i64 %i.kr, 2                       ; 2 uses
  %i.kt = icmp eq ptr %i.jo, null
  br i1 %i.kt, label %tg3__decode_data_uri.exit.i, label %bb.bh

bb.bh:                                            ; preds = %.critedge.i.i.i
  %i.ku = getelementptr inbounds nuw i8, ptr %i.jo, i64 32
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !130 ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.kv, 0
  %i.kw = add i64 %i.kv, -1
  %or.cond28.i.i.i.i = icmp ult i64 %i.kw, %i.ks
  br i1 %or.cond28.i.i.i.i, label %tg3__decode_data_uri.exit.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.kx = add nuw nsw i64 %i.ks, 8
  %i.ky = and i64 %i.kx, 9223372036854775800      ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.jo, i64 8 ; 3 uses
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !148 ; 4 uses
  %.not26.i.i.i.i = icmp eq ptr %i.la, null
  br i1 %.not26.i.i.i.i, label %bb.bk, label %bb.bj

end_hunk_0
begin_hunk_1_@tg3__parse_from_json:bb.a
tg3json_object_at.exit.i.i:                       ; preds = %tg3__json_number_to_int32.exit.i.i, %.preheader273.i.i
  %.0106277.i.i = phi i64 [ 0, %.preheader273.i.i ], [ %i.atb, %tg3__json_number_to_int32.exit.i.i ] ; 4 uses
  %i.arv = load i64, ptr %i.aqf, align 8, !tbaa !34
  %.not9.i.i.i = icmp ult i64 %.0106277.i.i, %i.arv
  call void @llvm.assume(i1 %.not9.i.i.i)
  %i.arw = load ptr, ptr %i.aru, align 8, !tbaa !34
  %i.arx = getelementptr inbounds nuw [24 x i8], ptr %i.arw, i64 %.0106277.i.i ; 4 uses
  %i.ary = getelementptr inbounds nuw [24 x i8], ptr %i.art, i64 %.0106277.i.i ; 3 uses
  %i.arz = load ptr, ptr %0, align 8, !tbaa !138
  %i.asa = load ptr, ptr %i.arx, align 8, !tbaa !45
  %i.asb = getelementptr inbounds nuw i8, ptr %i.arx, i64 8
  %i.asc = load i64, ptr %i.asb, align 8, !tbaa !46
  %i.asd = trunc i64 %i.asc to i32
  %i.ase = call fastcc { ptr, i32 } @tg3__arena_str(ptr noundef %i.arz, ptr noundef %i.asa, i32 noundef %i.asd) ; 2 uses
  %i.asf = extractvalue { ptr, i32 } %i.ase, 0
  %i.asg = extractvalue { ptr, i32 } %i.ase, 1
  store ptr %i.asf, ptr %i.ary, align 8, !tbaa !20
  %.sroa.444.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ary, i64 8
  store i32 %i.asg, ptr %.sroa.444.0..sroa_idx.i.i, align 8, !tbaa !41
  %i.ash = getelementptr inbounds nuw i8, ptr %i.arx, i64 16
  %i.asi = load ptr, ptr %i.ash, align 8, !tbaa !47 ; 4 uses
  %i.asj = getelementptr inbounds nuw i8, ptr %i.ary, i64 16
  %.not.i.i.i42.i = icmp eq ptr %i.asi, null
  br i1 %.not.i.i.i42.i, label %bb.hx, label %bb.ht

bb.ht:                                            ; preds = %tg3json_object_at.exit.i.i
  %i.ask = load i32, ptr %i.asi, align 8, !tbaa !37
  switch i32 %i.ask, label %bb.hx [
    i32 2, label %.thread.i.i.i
    i32 3, label %bb.hv
  ]

.thread.i.i.i:                                    ; preds = %bb.ht
  %i.asl = getelementptr inbounds nuw i8, ptr %i.asi, i64 8
  %i.asm = load i64, ptr %i.asl, align 8, !tbaa !34 ; 2 uses
  %i.asn = add i64 %i.asm, -2147483648
  %or.cond.i132.i.i = icmp ult i64 %i.asn, -4294967296
  br i1 %or.cond.i132.i.i, label %bb.hx, label %bb.hu

bb.hu:                                            ; preds = %.thread.i.i.i
  %i.aso = trunc nsw i64 %i.asm to i32
  br label %tg3__json_number_to_int32.exit.i.i

bb.hv:                                            ; preds = %bb.ht
  %i.asp = getelementptr inbounds nuw i8, ptr %i.asi, i64 8
  %i.asq = load double, ptr %i.asp, align 8, !tbaa !34 ; 5 uses
  %i.asr = call double @llvm.fabs.f64(double %i.asq)
  %i.ass = fcmp ueq double %i.asr, +inf
  %i.ast = fcmp olt double %i.asq, f0xC1E0000000000000
  %or.cond3.i.i.i = or i1 %i.ast, %i.ass
  %i.asu = fcmp ogt double %i.asq, f0x41DFFFFFFFC00000
  %or.cond5.i.i.i = or i1 %i.asu, %or.cond3.i.i.i
  br i1 %or.cond5.i.i.i, label %bb.hx, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.asv = fptosi double %i.asq to i32            ; 2 uses
  %i.asw = sitofp i32 %i.asv to double
  %i.asx = fcmp une double %i.asq, %i.asw
  br i1 %i.asx, label %bb.hx, label %tg3__json_number_to_int32.exit.i.i

bb.hx:                                            ; preds = %bb.hw, %bb.hv, %.thread.i.i.i, %bb.ht, %tg3json_object_at.exit.i.i
  %i.asy = load ptr, ptr %i.amc, align 8, !tbaa !139
  %i.asz = load ptr, ptr %0, align 8, !tbaa !138
  %i.ata = load ptr, ptr %i.arx, align 8, !tbaa !45 ; 2 uses
  %.not124.i.i = icmp eq ptr %i.ata, null
  %spec.select.i.i1081 = select i1 %.not124.i.i, ptr @.str, ptr %i.ata
  call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.asy, ptr noundef %i.asz, i32 poison, i32 noundef 11, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.119, ptr noundef nonnull %spec.select.i.i1081)
  br label %tg3__json_number_to_int32.exit.i.i

tg3__json_number_to_int32.exit.i.i:               ; preds = %bb.hu, %bb.hw, %bb.hx
  %storemerge = phi i32 [ 0, %bb.hx ], [ %i.aso, %bb.hu ], [ %i.asv, %bb.hw ]
  store i32 %storemerge, ptr %i.asj, align 8, !tbaa !41
  %i.atb = add nuw i64 %.0106277.i.i, 1           ; 2 uses
  %exitcond.not.i.i1080 = icmp eq i64 %i.atb, %i.aqg
  br i1 %exitcond.not.i.i1080, label %bb.hy, label %tg3json_object_at.exit.i.i, !llvm.loop !353

bb.hy:                                            ; preds = %tg3__json_number_to_int32.exit.i.i
  store ptr %i.art, ptr %i.apd, align 8, !tbaa !190
  %i.atc = trunc i64 %i.aqg to i32
  %i.atd = getelementptr inbounds nuw i8, ptr %i.apd, i64 8
  store i32 %i.atc, ptr %i.atd, align 8, !tbaa !191
  br label %tg3__json_is_object.exit.thread.thread.i.i

tg3__json_is_object.exit.thread.thread.i.i:       ; preds = %bb.hl, %bb.hy, %tg3__arena_alloc.exit.i.i, %bb.hs, %bb.hr, %bb.hq, %bb.hn, %bb.hm, %tg3json_object_size.exit.i.i, %tg3__json_is_object.exit.i.i1078, %tg3__json_get.exit.i.i1076, %.preheader.i.i.i.i.i1067
  %.pr.i.i1072 = load i32, ptr %.0.i37.i, align 8, !tbaa !37
  %.not18.i.i.i134.i.i = icmp eq i32 %.pr.i.i1072, 6
  br i1 %.not18.i.i.i134.i.i, label %.preheader.i.i.i136.i.i, label %tg3__parse_primitive.exit.i

.preheader.i.i.i136.i.i:                          ; preds = %tg3__json_is_object.exit.thread.thread.i.i
  %i.ate = load i64, ptr %i.api, align 8, !tbaa !34 ; 2 uses
  %.not23.i.i.i137.i.i = icmp eq i64 %i.ate, 0
  br i1 %.not23.i.i.i137.i.i, label %tg3__parse_primitive.exit.i, label %.lr.ph.i.i.i138.i.i

.lr.ph.i.i.i138.i.i:                              ; preds = %.preheader.i.i.i136.i.i
  %i.atf = getelementptr inbounds nuw i8, ptr %.0.i37.i, i64 8
  %i.atg = load ptr, ptr %i.atf, align 8, !tbaa !34
  br label %bb.hz

bb.hz:                                            ; preds = %bb.ib, %.lr.ph.i.i.i138.i.i
  %.01422.i.i.i139.i.i = phi i64 [ 0, %.lr.ph.i.i.i138.i.i ], [ %i.atv, %bb.ib ] ; 2 uses
  %i.ath = getelementptr inbounds nuw [24 x i8], ptr %i.atg, i64 %.01422.i.i.i139.i.i ; 3 uses
  %i.ati = getelementptr inbounds nuw i8, ptr %i.ath, i64 8
  %i.atj = load i64, ptr %i.ati, align 8, !tbaa !46
  %i.atk = icmp eq i64 %i.atj, 7
  br i1 %i.atk, label %bb.ia, label %bb.ib

bb.ia:                                            ; preds = %bb.hz
  %i.atl = load ptr, ptr %i.ath, align 8, !tbaa !45 ; 2 uses
  %i.atm = load i32, ptr %i.atl, align 1
  %i.atn = xor i32 %i.atm, 1735549300
  %i.ato = getelementptr i8, ptr %i.atl, i64 3
  %i.atp = load i32, ptr %i.ato, align 1
  %i.atq = xor i32 %i.atp, 1937007975
  %i.atr = or i32 %i.atn, %i.atq
  %i.ats = icmp ne i32 %i.atr, 0
  %i.att = zext i1 %i.ats to i32
  %i.atu = icmp eq i32 %i.att, 0
  br i1 %i.atu, label %tg3__json_get.exit142.i.i, label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %bb.hz
  %i.atv = add nuw i64 %.01422.i.i.i139.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i140.i.i = icmp eq i64 %i.atv, %i.ate
  br i1 %exitcond.not.i.i.i140.i.i, label %tg3__parse_primitive.exit.i, label %bb.hz, !llvm.loop !2

tg3__json_get.exit142.i.i:                        ; preds = %bb.ia
  %i.atw = getelementptr inbounds nuw i8, ptr %i.ath, i64 16
  %i.atx = load ptr, ptr %i.atw, align 8, !tbaa !47 ; 5 uses
  %.not.i143.i.i = icmp eq ptr %i.atx, null
  br i1 %.not.i143.i.i, label %tg3__parse_primitive.exit.i, label %tg3__json_is_array.exit.i.i

tg3__json_is_array.exit.i.i:                      ; preds = %tg3__json_get.exit142.i.i
  %i.aty = load i32, ptr %i.atx, align 8, !tbaa !37
  %.not270.i.i = icmp eq i32 %i.aty, 5
  br i1 %.not270.i.i, label %tg3json_array_size.exit.i.i, label %tg3__parse_primitive.exit.i

tg3json_array_size.exit.i.i:                      ; preds = %tg3__json_is_array.exit.i.i
  %i.atz = getelementptr inbounds nuw i8, ptr %i.atx, i64 16 ; 2 uses
  %i.aua = load i64, ptr %i.atz, align 8, !tbaa !34 ; 5 uses
  %.not118.i.i = icmp eq i64 %i.aua, 0
  br i1 %.not118.i.i, label %tg3__parse_primitive.exit.i, label %bb.ic

bb.ic:                                            ; preds = %tg3json_array_size.exit.i.i
  %i.aub = load ptr, ptr %0, align 8, !tbaa !138  ; 9 uses
  %i.auc = shl i64 %i.aua, 3                      ; 5 uses
  %i.aud = icmp eq ptr %i.aub, null
  %i.aue = icmp eq i64 %i.auc, 0
  %or.cond.i147.i.i = or i1 %i.aue, %i.aud
  br i1 %or.cond.i147.i.i, label %tg3__arena_alloc.exit162.i.i, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.auf = getelementptr inbounds nuw i8, ptr %i.aub, i64 32
  %i.aug = load i64, ptr %i.auf, align 8, !tbaa !130 ; 3 uses
  %.not.i148.i.i = icmp ne i64 %i.aug, 0          ; 2 uses
  %i.auh = icmp ugt i64 %i.auc, %i.aug
  %or.cond28.i149.i.i = and i1 %.not.i148.i.i, %i.auh
  br i1 %or.cond28.i149.i.i, label %tg3__arena_alloc.exit162.i.i, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.aui = getelementptr inbounds nuw i8, ptr %i.aub, i64 8 ; 3 uses
  %i.auj = load ptr, ptr %i.aui, align 8, !tbaa !148 ; 5 uses
  %.not26.i150.i.i = icmp eq ptr %i.auj, null
  br i1 %.not26.i150.i.i, label %bb.ig, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.auk = getelementptr inbounds nuw i8, ptr %i.auj, i64 16
  %i.aul = load i64, ptr %i.auk, align 8, !tbaa !150 ; 2 uses
  %i.aum = add i64 %i.aul, %i.auc
  %i.aun = getelementptr inbounds nuw i8, ptr %i.auj, i64 24
  %i.auo = load i64, ptr %i.aun, align 8, !tbaa !151
  %i.aup = icmp ugt i64 %i.aum, %i.auo
  br i1 %i.aup, label %bb.ig, label %._crit_edge.i151.i.i

._crit_edge.i151.i.i:                             ; preds = %bb.if
  %.phi.trans.insert.i152.i.i = getelementptr inbounds nuw i8, ptr %i.auj, i64 8
  %.pre.i153.i.i = load ptr, ptr %.phi.trans.insert.i152.i.i, align 8, !tbaa !156
  br label %bb.ij

bb.ig:                                            ; preds = %bb.if, %bb.ie
  %i.auq = getelementptr inbounds nuw i8, ptr %i.aub, i64 40
  %i.aur = load i64, ptr %i.auq, align 8, !tbaa !128
  %spec.select.i.i156.i.i = call i64 @llvm.umax.i64(i64 %i.aur, i64 range(i64 0, -7) %i.auc) ; 3 uses
  %i.aus = icmp ugt i64 %spec.select.i.i156.i.i, %i.aug
  %or.cond.i.i157.i.i = select i1 %.not.i148.i.i, i1 %i.aus, i1 false
  br i1 %or.cond.i.i157.i.i, label %tg3__arena_alloc.exit162.i.i, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.aut = getelementptr inbounds nuw i8, ptr %i.aub, i64 16 ; 3 uses
  %i.auu = load i64, ptr %i.aut, align 8, !tbaa !152
  %i.auv = add i64 %spec.select.i.i156.i.i, 32    ; 3 uses
  %i.auw = add i64 %i.auu, %i.auv
  %i.aux = getelementptr inbounds nuw i8, ptr %i.aub, i64 24
  %i.auy = load i64, ptr %i.aux, align 8, !tbaa !129
  %i.auz = icmp ugt i64 %i.auw, %i.auy
  br i1 %i.auz, label %tg3__arena_alloc.exit162.i.i, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.ava = getelementptr inbounds nuw i8, ptr %i.aub, i64 48
  %i.avb = load ptr, ptr %i.ava, align 8, !tbaa !153
  %i.avc = getelementptr inbounds nuw i8, ptr %i.aub, i64 72
  %i.avd = load ptr, ptr %i.avc, align 8, !tbaa !154
  %i.ave = call ptr %i.avb(i64 noundef %i.auv, ptr noundef %i.avd) #28, !inline_history !352 ; 8 uses
  %.not37.i.i158.i.i = icmp eq ptr %i.ave, null
  br i1 %.not37.i.i158.i.i, label %tg3__arena_alloc.exit162.i.i, label %tg3__arena_new_block.exit.i159.i.i

tg3__arena_new_block.exit.i159.i.i:               ; preds = %bb.ii
  store ptr null, ptr %i.ave, align 8, !tbaa !155
  %i.avf = getelementptr inbounds nuw i8, ptr %i.ave, i64 32 ; 2 uses
  %i.avg = getelementptr inbounds nuw i8, ptr %i.ave, i64 8
  store ptr %i.avf, ptr %i.avg, align 8, !tbaa !156
  %i.avh = getelementptr inbounds nuw i8, ptr %i.ave, i64 24
  store i64 %spec.select.i.i156.i.i, ptr %i.avh, align 8, !tbaa !151
  %i.avi = load i64, ptr %i.aut, align 8, !tbaa !152
  %i.avj = add i64 %i.avi, %i.auv
  store i64 %i.avj, ptr %i.aut, align 8, !tbaa !152
  %i.avk = load ptr, ptr %i.aui, align 8, !tbaa !148 ; 2 uses
  %.not38.i.i160.i.i = icmp eq ptr %i.avk, null
  %..i.i161.i.i = select i1 %.not38.i.i160.i.i, ptr %i.aub, ptr %i.avk
  store ptr %i.ave, ptr %..i.i161.i.i, align 8, !tbaa !157
  store ptr %i.ave, ptr %i.aui, align 8, !tbaa !148
  br label %bb.ij

bb.ij:                                            ; preds = %tg3__arena_new_block.exit.i159.i.i, %._crit_edge.i151.i.i
  %i.avl = phi i64 [ 0, %tg3__arena_new_block.exit.i159.i.i ], [ %i.aul, %._crit_edge.i151.i.i ] ; 2 uses
  %i.avm = phi ptr [ %i.avf, %tg3__arena_new_block.exit.i159.i.i ], [ %.pre.i153.i.i, %._crit_edge.i151.i.i ]
  %.0.i154.i.i = phi ptr [ %i.ave, %tg3__arena_new_block.exit.i159.i.i ], [ %i.auj, %._crit_edge.i151.i.i ]
  %i.avn = getelementptr inbounds nuw i8, ptr %.0.i154.i.i, i64 16
  %i.avo = getelementptr inbounds nuw i8, ptr %i.avm, i64 %i.avl
  %i.avp = add i64 %i.avl, %i.auc
  store i64 %i.avp, ptr %i.avn, align 8, !tbaa !150
  br label %tg3__arena_alloc.exit162.i.i

tg3__arena_alloc.exit162.i.i:                     ; preds = %bb.ij, %bb.ii, %bb.ih, %bb.ig, %bb.id, %bb.ic
  %.020.i155.i.i = phi ptr [ null, %bb.id ], [ null, %bb.ic ], [ %i.avo, %bb.ij ], [ null, %bb.ih ], [ null, %bb.ig ], [ null, %bb.ii ] ; 5 uses
  %i.avq = load ptr, ptr %0, align 8, !tbaa !138  ; 9 uses
  %i.avr = shl i64 %i.aua, 2                      ; 3 uses
  %i.avs = icmp eq ptr %i.avq, null
  %i.avt = icmp eq i64 %i.avr, 0
  %or.cond.i163.i.i = or i1 %i.avt, %i.avs
  br i1 %or.cond.i163.i.i, label %tg3__parse_primitive.exit.i, label %bb.ik

bb.ik:                                            ; preds = %tg3__arena_alloc.exit162.i.i
  %i.avu = getelementptr inbounds nuw i8, ptr %i.avq, i64 32
  %i.avv = load i64, ptr %i.avu, align 8, !tbaa !130 ; 3 uses
  %.not.i164.i.i = icmp ne i64 %i.avv, 0          ; 2 uses
  %i.avw = icmp ugt i64 %i.avr, %i.avv
  %or.cond28.i165.i.i = and i1 %.not.i164.i.i, %i.avw
  br i1 %or.cond28.i165.i.i, label %tg3__parse_primitive.exit.i, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.avx = add i64 %i.avr, 4
  %i.avy = and i64 %i.avx, -8                     ; 3 uses
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avq, i64 8 ; 3 uses
  %i.awa = load ptr, ptr %i.avz, align 8, !tbaa !148 ; 5 uses
  %.not26.i166.i.i = icmp eq ptr %i.awa, null
  br i1 %.not26.i166.i.i, label %bb.in, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.awb = getelementptr inbounds nuw i8, ptr %i.awa, i64 16
  %i.awc = load i64, ptr %i.awb, align 8, !tbaa !150 ; 2 uses
  %i.awd = add i64 %i.awc, %i.avy
  %i.awe = getelementptr inbounds nuw i8, ptr %i.awa, i64 24
  %i.awf = load i64, ptr %i.awe, align 8, !tbaa !151
  %i.awg = icmp ugt i64 %i.awd, %i.awf
  br i1 %i.awg, label %bb.in, label %._crit_edge.i167.i.i

._crit_edge.i167.i.i:                             ; preds = %bb.im
  %.phi.trans.insert.i168.i.i = getelementptr inbounds nuw i8, ptr %i.awa, i64 8
  %.pre.i169.i.i = load ptr, ptr %.phi.trans.insert.i168.i.i, align 8, !tbaa !156
  br label %tg3__arena_alloc.exit178.i.i

bb.in:                                            ; preds = %bb.im, %bb.il
  %i.awh = getelementptr inbounds nuw i8, ptr %i.avq, i64 40
  %i.awi = load i64, ptr %i.awh, align 8, !tbaa !128
  %spec.select.i.i172.i.i = call i64 @llvm.umax.i64(i64 %i.awi, i64 range(i64 0, -7) %i.avy) ; 3 uses
  %i.awj = icmp ugt i64 %spec.select.i.i172.i.i, %i.avv
  %or.cond.i.i173.i.i = select i1 %.not.i164.i.i, i1 %i.awj, i1 false
  br i1 %or.cond.i.i173.i.i, label %tg3__parse_primitive.exit.i, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.awk = getelementptr inbounds nuw i8, ptr %i.avq, i64 16 ; 3 uses
  %i.awl = load i64, ptr %i.awk, align 8, !tbaa !152
  %i.awm = add i64 %spec.select.i.i172.i.i, 32    ; 3 uses
  %i.awn = add i64 %i.awl, %i.awm
  %i.awo = getelementptr inbounds nuw i8, ptr %i.avq, i64 24
  %i.awp = load i64, ptr %i.awo, align 8, !tbaa !129
  %i.awq = icmp ugt i64 %i.awn, %i.awp
  br i1 %i.awq, label %tg3__parse_primitive.exit.i, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.awr = getelementptr inbounds nuw i8, ptr %i.avq, i64 48
  %i.aws = load ptr, ptr %i.awr, align 8, !tbaa !153
  %i.awt = getelementptr inbounds nuw i8, ptr %i.avq, i64 72
  %i.awu = load ptr, ptr %i.awt, align 8, !tbaa !154
  %i.awv = call ptr %i.aws(i64 noundef %i.awm, ptr noundef %i.awu) #28, !inline_history !352 ; 8 uses
  %.not37.i.i174.i.i = icmp eq ptr %i.awv, null
  br i1 %.not37.i.i174.i.i, label %tg3__parse_primitive.exit.i, label %tg3__arena_new_block.exit.i175.i.i

tg3__arena_new_block.exit.i175.i.i:               ; preds = %bb.ip
  store ptr null, ptr %i.awv, align 8, !tbaa !155
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awv, i64 32 ; 2 uses
  %i.awx = getelementptr inbounds nuw i8, ptr %i.awv, i64 8
  store ptr %i.aww, ptr %i.awx, align 8, !tbaa !156
  %i.awy = getelementptr inbounds nuw i8, ptr %i.awv, i64 24
  store i64 %spec.select.i.i172.i.i, ptr %i.awy, align 8, !tbaa !151
  %i.awz = load i64, ptr %i.awk, align 8, !tbaa !152
  %i.axa = add i64 %i.awz, %i.awm
  store i64 %i.axa, ptr %i.awk, align 8, !tbaa !152
  %i.axb = load ptr, ptr %i.avz, align 8, !tbaa !148 ; 2 uses
  %.not38.i.i176.i.i = icmp eq ptr %i.axb, null
  %..i.i177.i.i = select i1 %.not38.i.i176.i.i, ptr %i.avq, ptr %i.axb
  store ptr %i.awv, ptr %..i.i177.i.i, align 8, !tbaa !157
  store ptr %i.awv, ptr %i.avz, align 8, !tbaa !148
  br label %tg3__arena_alloc.exit178.i.i

tg3__arena_alloc.exit178.i.i:                     ; preds = %tg3__arena_new_block.exit.i175.i.i, %._crit_edge.i167.i.i
  %i.axc = phi i64 [ 0, %tg3__arena_new_block.exit.i175.i.i ], [ %i.awc, %._crit_edge.i167.i.i ] ; 2 uses
  %i.axd = phi ptr [ %i.aww, %tg3__arena_new_block.exit.i175.i.i ], [ %.pre.i169.i.i, %._crit_edge.i167.i.i ] ; 2 uses
  %.0.i170.i.i = phi ptr [ %i.awv, %tg3__arena_new_block.exit.i175.i.i ], [ %i.awa, %._crit_edge.i167.i.i ]
  %i.axe = getelementptr inbounds nuw i8, ptr %.0.i170.i.i, i64 16
  %i.axf = getelementptr inbounds nuw i8, ptr %i.axd, i64 %i.axc ; 2 uses
  %i.axg = add i64 %i.axc, %i.avy
  store i64 %i.axg, ptr %i.axe, align 8, !tbaa !150
  %i.axh = icmp ne ptr %.020.i155.i.i, null
  %i.axi = icmp ne ptr %i.axd, null
  %or.cond.i38.i = select i1 %i.axh, i1 %i.axi, i1 false
  br i1 %or.cond.i38.i, label %.preheader272.i.i, label %tg3__parse_primitive.exit.i

.preheader272.i.i:                                ; preds = %tg3__arena_alloc.exit178.i.i
  %i.axj = getelementptr inbounds nuw i8, ptr %i.atx, i64 8
  br label %bb.iq

bb.iq:                                            ; preds = %bb.jm, %.preheader272.i.i
  %.0105279.i.i = phi i64 [ 0, %.preheader272.i.i ], [ %i.bcd, %bb.jm ] ; 7 uses
  %i.axk = load i32, ptr %i.atx, align 8, !tbaa !37
  %.not8.i180.i.i = icmp eq i32 %i.axk, 5
  br i1 %.not8.i180.i.i, label %bb.ir, label %tg3__json_is_object.exit184.thread.i.i

bb.ir:                                            ; preds = %bb.iq
  %i.axl = load i64, ptr %i.atz, align 8, !tbaa !34
  %.not9.i182.i.i = icmp ult i64 %.0105279.i.i, %i.axl
  br i1 %.not9.i182.i.i, label %tg3json_array_get.exit.i.i, label %tg3__json_is_object.exit184.thread.i.i

tg3json_array_get.exit.i.i:                       ; preds = %bb.ir
  %i.axm = load ptr, ptr %i.axj, align 8, !tbaa !34 ; 2 uses
  %i.axn = getelementptr inbounds nuw [24 x i8], ptr %i.axm, i64 %.0105279.i.i ; 3 uses
  %.not.i183.i.i = icmp eq ptr %i.axm, null
  br i1 %.not.i183.i.i, label %tg3__json_is_object.exit184.thread.i.i, label %tg3__json_is_object.exit184.i.i

tg3__json_is_object.exit184.i.i:                  ; preds = %tg3json_array_get.exit.i.i
  %i.axo = load i32, ptr %i.axn, align 8, !tbaa !37
  %.not271.i.i = icmp eq i32 %i.axo, 6
  br i1 %.not271.i.i, label %tg3json_object_size.exit188.i.i, label %tg3__json_is_object.exit184.thread.i.i

tg3__json_is_object.exit184.thread.i.i:           ; preds = %tg3__json_is_object.exit184.i.i, %tg3json_array_get.exit.i.i, %bb.ir, %bb.iq
  %i.axp = getelementptr inbounds nuw [8 x i8], ptr %.020.i155.i.i, i64 %.0105279.i.i
  store ptr null, ptr %i.axp, align 8, !tbaa !192
  br label %bb.jm

tg3json_object_size.exit188.i.i:                  ; preds = %tg3__json_is_object.exit184.i.i
  %i.axq = getelementptr inbounds nuw i8, ptr %i.axn, i64 16 ; 2 uses
  %i.axr = load i64, ptr %i.axq, align 8, !tbaa !34 ; 4 uses
  %i.axs = load ptr, ptr %0, align 8, !tbaa !138  ; 9 uses
  %i.axt = mul i64 %i.axr, 24                     ; 5 uses
  %i.axu = icmp eq ptr %i.axs, null
  %i.axv = icmp eq i64 %i.axt, 0
  %or.cond.i189.i.i = or i1 %i.axu, %i.axv
  br i1 %or.cond.i189.i.i, label %.thread.i.i1074, label %bb.is

bb.is:                                            ; preds = %tg3json_object_size.exit188.i.i
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axs, i64 32
  %i.axx = load i64, ptr %i.axw, align 8, !tbaa !130 ; 3 uses
  %.not.i190.i.i = icmp ne i64 %i.axx, 0          ; 2 uses
  %i.axy = icmp ugt i64 %i.axt, %i.axx
  %or.cond28.i191.i.i = and i1 %.not.i190.i.i, %i.axy
  br i1 %or.cond28.i191.i.i, label %.thread.i.i1074, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axs, i64 8 ; 3 uses
  %i.aya = load ptr, ptr %i.axz, align 8, !tbaa !148 ; 4 uses
  %.not26.i192.i.i = icmp eq ptr %i.aya, null
  br i1 %.not26.i192.i.i, label %bb.iv, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.aya, i64 16 ; 2 uses
  %i.ayc = load i64, ptr %i.ayb, align 8, !tbaa !150 ; 2 uses
  %i.ayd = add i64 %i.ayc, %i.axt                 ; 2 uses
  %i.aye = getelementptr inbounds nuw i8, ptr %i.aya, i64 24
  %i.ayf = load i64, ptr %i.aye, align 8, !tbaa !151
  %i.ayg = icmp ugt i64 %i.ayd, %i.ayf
  br i1 %i.ayg, label %bb.iv, label %tg3__arena_alloc.exit204.i.i

bb.iv:                                            ; preds = %bb.iu, %bb.it
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.axs, i64 40
  %i.ayi = load i64, ptr %i.ayh, align 8, !tbaa !128
  %spec.select.i.i198.i.i = call i64 @llvm.umax.i64(i64 %i.ayi, i64 range(i64 0, -7) %i.axt) ; 3 uses
  %i.ayj = icmp ugt i64 %spec.select.i.i198.i.i, %i.axx
  %or.cond.i.i199.i.i = select i1 %.not.i190.i.i, i1 %i.ayj, i1 false
  br i1 %or.cond.i.i199.i.i, label %.thread.i.i1074, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.axs, i64 16 ; 3 uses
  %i.ayl = load i64, ptr %i.ayk, align 8, !tbaa !152
  %i.aym = add i64 %spec.select.i.i198.i.i, 32    ; 3 uses
  %i.ayn = add i64 %i.ayl, %i.aym
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.axs, i64 24
  %i.ayp = load i64, ptr %i.ayo, align 8, !tbaa !129
  %i.ayq = icmp ugt i64 %i.ayn, %i.ayp
  br i1 %i.ayq, label %.thread.i.i1074, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.axs, i64 48
  %i.ays = load ptr, ptr %i.ayr, align 8, !tbaa !153
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.axs, i64 72
  %i.ayu = load ptr, ptr %i.ayt, align 8, !tbaa !154
  %i.ayv = call ptr %i.ays(i64 noundef %i.aym, ptr noundef %i.ayu) #28, !inline_history !352 ; 8 uses
  %.not37.i.i200.i.i = icmp eq ptr %i.ayv, null
  br i1 %.not37.i.i200.i.i, label %.thread.i.i1074, label %tg3__arena_alloc.exit204.thread.i.i

tg3__arena_alloc.exit204.thread.i.i:              ; preds = %bb.ix
  store ptr null, ptr %i.ayv, align 8, !tbaa !155
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayv, i64 32 ; 2 uses
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ayv, i64 8
  store ptr %i.ayw, ptr %i.ayx, align 8, !tbaa !156
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ayv, i64 24
  store i64 %spec.select.i.i198.i.i, ptr %i.ayy, align 8, !tbaa !151
  %i.ayz = load i64, ptr %i.ayk, align 8, !tbaa !152
  %i.aza = add i64 %i.ayz, %i.aym
  store i64 %i.aza, ptr %i.ayk, align 8, !tbaa !152
  %i.azb = load ptr, ptr %i.axz, align 8, !tbaa !148 ; 2 uses
  %.not38.i.i202.i.i = icmp eq ptr %i.azb, null
  %..i.i203.i.i = select i1 %.not38.i.i202.i.i, ptr %i.axs, ptr %i.azb
  store ptr %i.ayv, ptr %..i.i203.i.i, align 8, !tbaa !157
  store ptr %i.ayv, ptr %i.axz, align 8, !tbaa !148
  %i.azc = getelementptr inbounds nuw i8, ptr %i.ayv, i64 16
  store i64 %i.axt, ptr %i.azc, align 8, !tbaa !150
  br label %.preheader.i.i1073

tg3__arena_alloc.exit204.i.i:                     ; preds = %bb.iu
  %.phi.trans.insert.i194.i.i = getelementptr inbounds nuw i8, ptr %i.aya, i64 8
  %.pre.i195.i.i = load ptr, ptr %.phi.trans.insert.i194.i.i, align 8, !tbaa !156 ; 2 uses
  %i.azd = getelementptr inbounds nuw i8, ptr %.pre.i195.i.i, i64 %i.ayc
  store i64 %i.ayd, ptr %i.ayb, align 8, !tbaa !150
  %.not120.i.i = icmp eq ptr %.pre.i195.i.i, null
  br i1 %.not120.i.i, label %.thread.i.i1074, label %.preheader.i.i1073

.preheader.i.i1073:                               ; preds = %tg3__arena_alloc.exit204.i.i, %tg3__arena_alloc.exit204.thread.i.i
  %i.aze = phi ptr [ %i.ayw, %tg3__arena_alloc.exit204.thread.i.i ], [ %i.azd, %tg3__arena_alloc.exit204.i.i ] ; 2 uses
  %.not281.i.i = icmp eq i64 %i.axr, 0
  br i1 %.not281.i.i, label %._crit_edge.i39.i, label %tg3json_object_at.exit209.lr.ph.i.i

tg3json_object_at.exit209.lr.ph.i.i:              ; preds = %.preheader.i.i1073
  %i.azf = getelementptr inbounds nuw i8, ptr %i.axn, i64 8
  br label %tg3json_object_at.exit209.i.i

tg3json_object_at.exit209.i.i:                    ; preds = %tg3__json_number_to_int32.exit223.i.i, %tg3json_object_at.exit209.lr.ph.i.i
  %.0278.i.i = phi i64 [ 0, %tg3json_object_at.exit209.lr.ph.i.i ], [ %i.bby, %tg3__json_number_to_int32.exit223.i.i ] ; 4 uses
  %i.azg = load i64, ptr %i.axq, align 8, !tbaa !34
  %.not9.i208.i.i = icmp ult i64 %.0278.i.i, %i.azg
  call void @llvm.assume(i1 %.not9.i208.i.i)
  %i.azh = load ptr, ptr %i.azf, align 8, !tbaa !34
  %i.azi = getelementptr inbounds nuw [24 x i8], ptr %i.azh, i64 %.0278.i.i ; 4 uses
  %i.azj = getelementptr inbounds nuw [24 x i8], ptr %i.aze, i64 %.0278.i.i ; 3 uses
  %i.azk = load ptr, ptr %0, align 8, !tbaa !138  ; 9 uses
  %i.azl = load ptr, ptr %i.azi, align 8, !tbaa !45 ; 2 uses
  %i.azm = getelementptr inbounds nuw i8, ptr %i.azi, i64 8
  %i.azn = load i64, ptr %i.azm, align 8, !tbaa !46 ; 3 uses
  %i.azo = trunc i64 %i.azn to i32                ; 2 uses
  %i.azp = and i64 %i.azn, 4294967295             ; 3 uses
  %.not.i.i210.i.i = icmp eq ptr %i.azl, null
  %i.azq = icmp eq ptr %i.azk, null
  %or.cond.i211.i.i = or i1 %i.azq, %.not.i.i210.i.i
  br i1 %or.cond.i211.i.i, label %tg3__arena_str.exit.i.i, label %bb.iy

bb.iy:                                            ; preds = %tg3json_object_at.exit209.i.i
  %i.azr = getelementptr inbounds nuw i8, ptr %i.azk, i64 32
  %i.azs = load i64, ptr %i.azr, align 8, !tbaa !130 ; 3 uses
  %.not.i.i.i212.i.i = icmp ne i64 %i.azs, 0
  %i.azt = add i64 %i.azs, -1
  %or.cond28.i.i.i.i.i = icmp ult i64 %i.azt, %i.azp
  br i1 %or.cond28.i.i.i.i.i, label %tg3__arena_str.exit.i.i, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.azu = and i64 %i.azn, 4294967288
  %i.azv = add nuw nsw i64 %i.azu, 8              ; 3 uses
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azk, i64 8 ; 3 uses
  %i.azx = load ptr, ptr %i.azw, align 8, !tbaa !148 ; 4 uses
  %.not26.i.i.i.i.i = icmp eq ptr %i.azx, null
  br i1 %.not26.i.i.i.i.i, label %bb.jb, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.azy = getelementptr inbounds nuw i8, ptr %i.azx, i64 16 ; 2 uses
  %i.azz = load i64, ptr %i.azy, align 8, !tbaa !150 ; 2 uses
  %i.baa = add i64 %i.azz, %i.azv                 ; 2 uses
  %i.bab = getelementptr inbounds nuw i8, ptr %i.azx, i64 24
  %i.bac = load i64, ptr %i.bab, align 8, !tbaa !151
  %i.bad = icmp ugt i64 %i.baa, %i.bac
  br i1 %i.bad, label %bb.jb, label %tg3__arena_alloc.exit.i.i.i.i

bb.jb:                                            ; preds = %bb.ja, %bb.iz
  %i.bae = getelementptr inbounds nuw i8, ptr %i.azk, i64 40
  %i.baf = load i64, ptr %i.bae, align 8, !tbaa !128
  %spec.select.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.baf, i64 range(i64 0, -7) %i.azv) ; 3 uses
end_hunk_1
