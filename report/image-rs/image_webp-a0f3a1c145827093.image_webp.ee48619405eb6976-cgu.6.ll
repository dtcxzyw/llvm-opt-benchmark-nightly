inline.NumInlined: 73
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree:bb.a
  %i.ev = shl i32 %i.er, %i.eu
  %i.ew = add i32 %i.ev, %i.ep                    ; 2 uses
  %i.ex = icmp eq i8 %6, 3
  br i1 %i.ex, label %._crit_edge179, label %.peel.next.2

.peel.next.2:                                     ; preds = %.peel.next.1
  %.sroa.0.0175.ptr.2 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ey = load i32, ptr %.sroa.0.0175.ptr.2, align 4, !noundef !12
  %i.ez = add i8 %6, 28
  %i.fa = and i8 %i.ez, 31
  %i.fb = zext nneg i8 %i.fa to i32
  %i.fc = shl i32 %i.ey, %i.fb
  %i.fd = add i32 %i.fc, %i.ew                    ; 2 uses
  %i.fe = icmp eq i8 %6, 4
  br i1 %i.fe, label %._crit_edge179, label %.peel.next.3

.peel.next.3:                                     ; preds = %.peel.next.2
  %.sroa.0.0175.ptr.3 = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.ff = load i32, ptr %.sroa.0.0175.ptr.3, align 4, !noundef !12
  %i.fg = add i8 %6, 27
  %i.fh = and i8 %i.fg, 31
  %i.fi = zext nneg i8 %i.fh to i32
  %i.fj = shl i32 %i.ff, %i.fi
  %i.fk = add i32 %i.fj, %i.fd                    ; 2 uses
  %i.fl = icmp eq i8 %6, 5
  br i1 %i.fl, label %._crit_edge179, label %.peel.next.4

.peel.next.4:                                     ; preds = %.peel.next.3
  %.sroa.0.0175.ptr.4 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.fm = load i32, ptr %.sroa.0.0175.ptr.4, align 4, !noundef !12
  %i.fn = add i8 %6, 26
  %i.fo = and i8 %i.fn, 31
  %i.fp = zext nneg i8 %i.fo to i32
  %i.fq = shl i32 %i.fm, %i.fp
  %i.fr = add i32 %i.fq, %i.fk                    ; 2 uses
  %i.fs = icmp eq i8 %6, 6
  br i1 %i.fs, label %._crit_edge179, label %.peel.next.5

.peel.next.5:                                     ; preds = %.peel.next.4
  %.sroa.0.0175.ptr.5 = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.ft = load i32, ptr %.sroa.0.0175.ptr.5, align 4, !noundef !12
  %i.fu = add i8 %6, 25
  %i.fv = and i8 %i.fu, 31
  %i.fw = zext nneg i8 %i.fv to i32
  %i.fx = shl i32 %i.ft, %i.fw
  %i.fy = add i32 %i.fx, %i.fr                    ; 2 uses
  %i.fz = icmp eq i8 %6, 7
  br i1 %i.fz, label %._crit_edge179, label %.peel.next.6

.peel.next.6:                                     ; preds = %.peel.next.5
  %.sroa.0.0175.ptr.6 = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ga = load i32, ptr %.sroa.0.0175.ptr.6, align 4, !noundef !12
  %i.gb = add i8 %6, 24
  %i.gc = and i8 %i.gb, 31
  %i.gd = zext nneg i8 %i.gc to i32
  %i.ge = shl i32 %i.ga, %i.gd
  %i.gf = add i32 %i.ge, %i.fy                    ; 2 uses
  %i.gg = icmp eq i8 %6, 8
  br i1 %i.gg, label %._crit_edge179, label %.peel.next.7

.peel.next.7:                                     ; preds = %.peel.next.6
  %.sroa.0.0175.ptr.7 = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.gh = load i32, ptr %.sroa.0.0175.ptr.7, align 4, !noundef !12
  %i.gi = add i8 %6, 23
  %i.gj = and i8 %i.gi, 31
  %i.gk = zext nneg i8 %i.gj to i32
  %i.gl = shl i32 %i.gh, %i.gk
  %i.gm = add i32 %i.gl, %i.gf                    ; 2 uses
  %i.gn = icmp eq i8 %6, 9
  br i1 %i.gn, label %._crit_edge179, label %.peel.next.8

.peel.next.8:                                     ; preds = %.peel.next.7
  %.sroa.0.0175.ptr.8 = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.go = load i32, ptr %.sroa.0.0175.ptr.8, align 4, !noundef !12
  %i.gp = add i8 %6, 22
  %i.gq = and i8 %i.gp, 31
  %i.gr = zext nneg i8 %i.gq to i32
  %i.gs = shl i32 %i.go, %i.gr
  %i.gt = add i32 %i.gs, %i.gm                    ; 2 uses
  %i.gu = icmp eq i8 %6, 10
  br i1 %i.gu, label %._crit_edge179, label %.peel.next.9

.peel.next.9:                                     ; preds = %.peel.next.8
  %.sroa.0.0175.ptr.9 = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.gv = load i32, ptr %.sroa.0.0175.ptr.9, align 4, !noundef !12
  %i.gw = add i8 %6, 21
  %i.gx = and i8 %i.gw, 31
  %i.gy = zext nneg i8 %i.gx to i32
  %i.gz = shl i32 %i.gv, %i.gy
  %i.ha = add i32 %i.gz, %i.gt                    ; 2 uses
  %i.hb = icmp eq i8 %6, 11
  br i1 %i.hb, label %._crit_edge179, label %.peel.next.10

.peel.next.10:                                    ; preds = %.peel.next.9
  %.sroa.0.0175.ptr.10 = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.hc = load i32, ptr %.sroa.0.0175.ptr.10, align 4, !noundef !12
  %i.hd = add i8 %6, 20
  %i.he = and i8 %i.hd, 31
  %i.hf = zext nneg i8 %i.he to i32
  %i.hg = shl i32 %i.hc, %i.hf
  %i.hh = add i32 %i.hg, %i.ha                    ; 2 uses
  %i.hi = icmp eq i8 %6, 12
  br i1 %i.hi, label %._crit_edge179, label %.peel.next.11

.peel.next.11:                                    ; preds = %.peel.next.10
  %.sroa.0.0175.ptr.11 = getelementptr inbounds nuw i8, ptr %i.g, i64 52
  %i.hj = load i32, ptr %.sroa.0.0175.ptr.11, align 4, !noundef !12
  %i.hk = add i8 %6, 19
  %i.hl = and i8 %i.hk, 31
  %i.hm = zext nneg i8 %i.hl to i32
  %i.hn = shl i32 %i.hj, %i.hm
  %i.ho = add i32 %i.hn, %i.hh                    ; 2 uses
  %i.hp = icmp eq i8 %6, 13
  br i1 %i.hp, label %._crit_edge179, label %.peel.next.12

.peel.next.12:                                    ; preds = %.peel.next.11
  %.sroa.0.0175.ptr.12 = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.hq = load i32, ptr %.sroa.0.0175.ptr.12, align 4, !noundef !12
  %i.hr = add i8 %6, 18
  %i.hs = and i8 %i.hr, 31
  %i.ht = zext nneg i8 %i.hs to i32
  %i.hu = shl i32 %i.hq, %i.ht
  %i.hv = add i32 %i.hu, %i.ho                    ; 2 uses
  %i.hw = icmp eq i8 %6, 14
  br i1 %i.hw, label %._crit_edge179, label %.peel.next.13

.peel.next.13:                                    ; preds = %.peel.next.12
  %.sroa.0.0175.ptr.13 = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  %i.hx = load i32, ptr %.sroa.0.0175.ptr.13, align 4, !noundef !12
  %i.hy = add i8 %6, 17
  %i.hz = and i8 %i.hy, 31
  %i.ia = zext nneg i8 %i.hz to i32
  %i.ib = shl i32 %i.hx, %i.ia
  %i.ic = add i32 %i.ib, %i.hv
  br label %._crit_edge179

._crit_edge184:                                   ; preds = %bb.s, %._crit_edge170, %._crit_edge179
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %0, ptr %i.e, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.u, ptr %i.id, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %i.ie, align 8
  invoke void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecTjmEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerate9EnumerateINtNtB1H_6copied6CopiedINtNtNtB1L_5slice4iter4ItermEEEE9from_iterCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.t unwind label %.loopexit.split-lp

bb.t:                                             ; preds = %._crit_edge184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.if = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.ii = load i64, ptr %i.ih, align 8, !noundef !12 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26
  store ptr %i.a, ptr %i.b, align 8, !noalias !26
  %i.ij = icmp samesign ult i64 %i.ii, 2
  br i1 %i.ij, label %bb.y, label %bb.u, !prof !5

bb.u:                                             ; preds = %bb.t
  %i.ik = icmp samesign ult i64 %i.ii, 21
  br i1 %i.ik, label %bb.w, label %bb.v, !prof !5

bb.v:                                             ; preds = %bb.u
  invoke void @_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable7ipnsortTjmENCINvMB6_SBT_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB1D_(ptr noalias nofree noundef nonnull align 8 %i.ig, i64 noundef range(i64 0, 576460752303423488) %i.ii, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #17
          to label %thread-pre-split unwind label %bb.x

bb.w:                                             ; preds = %bb.u
  invoke void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTjmENCINvMB8_SB1m_20sort_unstable_by_keymNCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_trees1_0E0EB27_(ptr noalias nofree noundef nonnull align 8 %i.ig, i64 noundef range(i64 0, 576460752303423488) %i.ii, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %thread-pre-split unwind label %bb.x

bb.x:                                             ; preds = %.invoke320, %bb.w, %bb.v
  %i.il = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjmEEECsksn9slvsHfS_10image_webp(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #16
          to label %.body unwind label %bb.aw

thread-pre-split:                                 ; preds = %bb.w, %bb.v
  %.pr285 = load i64, ptr %i.ih, align 8
  br label %bb.y

bb.y:                                             ; preds = %thread-pre-split, %bb.t
  %i.im = phi i64 [ %.pr285, %thread-pre-split ], [ %i.ii, %bb.t ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26
  %i.in = load ptr, ptr %i.if, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %.idx220 = shl nuw nsw i64 %i.im, 4
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 %.idx220
  %i.ip = icmp eq i64 %i.im, 0
  br i1 %i.ip, label %._crit_edge197, label %.lr.ph196

.lr.ph196:                                        ; preds = %bb.y, %bb.ac
  %.sroa.037.0194 = phi ptr [ %i.iq, %bb.ac ], [ %i.in, %bb.y ] ; 3 uses
  %.sroa.033.0193 = phi i8 [ %.sroa.033.1, %bb.ac ], [ %6, %bb.y ] ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.037.0194, i64 16 ; 2 uses
  %i.ir = load i64, ptr %.sroa.037.0194, align 8, !noundef !12 ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.037.0194, i64 8
  %i.it = load i32, ptr %i.is, align 8, !noundef !12
  %.not81 = icmp eq i32 %i.it, 0
  br i1 %.not81, label %bb.ac, label %.preheader

.preheader:                                       ; preds = %.lr.ph196
  %i.iu = zext i8 %.sroa.033.0193 to i64          ; 3 uses
  %i.iv = icmp ult i8 %.sroa.033.0193, 16
  br i1 %i.iv, label %.lr.ph189, label %.invoke320

._crit_edge197:                                   ; preds = %bb.ac, %bb.y
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTjmEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.aa unwind label %bb.z

bb.z:                                             ; preds = %._crit_edge197
  %i.iw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTjmEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body unwind label %bb.ab

bb.aa:                                            ; preds = %._crit_edge197
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTjmEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjmEEECsksn9slvsHfS_10image_webp.exit unwind label %.loopexit.split-lp

bb.ab:                                            ; preds = %bb.z
  %i.ix = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.ac:                                            ; preds = %bb.af, %.lr.ph196
  %.sroa.033.1 = phi i8 [ %i.jf, %bb.af ], [ %.sroa.033.0193, %.lr.ph196 ]
  %i.iy = icmp eq ptr %i.iq, %i.io
  br i1 %i.iy, label %._crit_edge197, label %.lr.ph196

.lr.ph189:                                        ; preds = %.preheader, %bb.ad
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ad ], [ %i.iu, %.preheader ] ; 2 uses
  %indvars.iv.a = phi i64 [ %7, %bb.ad ], [ %i.iu, %.preheader ] ; 2 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.a
  %i.ja = load i32, ptr %i.iz, align 4, !noundef !12 ; 2 uses
  %i.jb = icmp eq i32 %i.ja, 0
  br i1 %i.jb, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph189
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %7 = and i64 %indvars.iv.next, 255              ; 2 uses
  %i.jc = icmp ult i64 %indvars.iv.next, 16
  br i1 %i.jc, label %.lr.ph189, label %.invoke320

bb.ae:                                            ; preds = %.lr.ph189
  %i.jd = icmp ult i64 %i.ir, %1
  br i1 %i.jd, label %bb.af, label %.invoke320

bb.af:                                            ; preds = %bb.ae
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.a
  %i.jf = trunc nuw nsw i64 %indvars.iv to i8     ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %2, i64 %i.ir
  store i8 %i.jf, ptr %i.jg, align 1
  %i.jh = add i32 %i.ja, -1
  store i32 %i.jh, ptr %i.je, align 4
  br label %bb.ac

.invoke320:                                       ; preds = %bb.ae, %.preheader, %bb.ad
  %i.ji = phi i64 [ %7, %bb.ad ], [ %i.ir, %bb.ae ], [ %i.iu, %.preheader ]
  %i.jj = phi i64 [ 16, %bb.ad ], [ %1, %bb.ae ], [ 16, %.preheader ]
  %i.jk = phi ptr [ @37, %bb.ad ], [ @38, %bb.ae ], [ @37, %.preheader ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ji, i64 noundef %i.jj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jk) #14
          to label %.cont321 unwind label %bb.x

.cont321:                                         ; preds = %.invoke320
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjmEEECsksn9slvsHfS_10image_webp.exit: ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjmEEECsksn9slvsHfS_10image_webp.exit, %._crit_edge166
  %i.jl = shl nuw nsw i64 %1, 1
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %4, i8 0, i64 %i.jl, i1 false), !alias.scope !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.not.i210 = icmp eq i8 %6, 0
  br i1 %.not.i210, label %._crit_edge215, label %.lr.ph203

.lr.ph203:                                        ; preds = %bb.ag, %._crit_edge204
  %.sroa.5.0212 = phi i8 [ %i.jm, %._crit_edge204 ], [ 1, %bb.ag ] ; 4 uses
  %storemerge211 = phi i32 [ %i.kh, %._crit_edge204 ], [ 0, %bb.ag ] ; 2 uses
  %i.jm = add i8 %.sroa.5.0212, 1
  %i.jn = sub i8 0, %.sroa.5.0212
  %i.jo = and i8 %i.jn, 15
  %i.jp = zext nneg i8 %i.jo to i16
  br label %bb.ar

._crit_edge215:                                   ; preds = %._crit_edge204, %bb.ag
  %storemerge.lcssa208 = phi i32 [ 0, %bb.ag ], [ %i.kh, %._crit_edge204 ] ; 2 uses
  store i32 %storemerge.lcssa208, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.jq = and i8 %6, 31
  %i.jr = zext nneg i8 %i.jq to i32
  %i.js = shl i32 2, %i.jr                        ; 2 uses
  store i32 %i.js, ptr %i.c, align 4
  %i.jt = icmp eq i32 %storemerge.lcssa208, %i.js
  br i1 %i.jt, label %bb.ai, label %bb.ah, !prof !5

bb.ah:                                            ; preds = %._crit_edge215
  invoke void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedmmECsaKJjC64KgbL_3std(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.c, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #14
          to label %bb.n unwind label %.loopexit.split-lp

bb.ai:                                            ; preds = %._crit_edge215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTtlEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.ak unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ju = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTtlEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body97 unwind label %bb.al

bb.ak:                                            ; preds = %bb.ai
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTtlEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTtlEEECsksn9slvsHfS_10image_webp.exit unwind label %.loopexit.split-lp134

bb.al:                                            ; preds = %bb.aj
  %i.jv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #13
  unreachable

.body97:                                          ; preds = %.loopexit133, %.loopexit.split-lp134, %bb.bi, %bb.aj, %.body
  %.pn86 = phi { ptr, i32 } [ %.pn84, %.body ], [ %i.ju, %bb.aj ], [ %i.mf, %bb.bi ], [ %lpad.loopexit135, %.loopexit133 ], [ %lpad.loopexit.split-lp136, %.loopexit.split-lp134 ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc11collections11binary_heap10BinaryHeapNtNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree4ItemEEB1K_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #16
          to label %.body99 unwind label %bb.aw

.loopexit133:                                     ; preds = %bb.i, %bb.bk
  %lpad.loopexit135 = landingpad { ptr, i32 }
          cleanup
  br label %.body97

.loopexit.split-lp134:                            ; preds = %.invoke322, %bb.ak
  %lpad.loopexit.split-lp136 = landingpad { ptr, i32 }
          cleanup
  br label %.body97

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTtlEEECsksn9slvsHfS_10image_webp.exit: ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree4ItemENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree4ItemEEB1e_.exit.i unwind label %bb.am

bb.am:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTtlEEECsksn9slvsHfS_10image_webp.exit
  %i.jw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree4ItemENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body99 unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree4ItemEEB1e_.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTtlEEECsksn9slvsHfS_10image_webp.exit
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree4ItemENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc11collections11binary_heap10BinaryHeapNtNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree4ItemEEB1K_.exit unwind label %bb.g

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc11collections11binary_heap10BinaryHeapNtNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree4ItemEEB1K_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree4ItemEEB1e_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTttEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTttEEECsksn9slvsHfS_10image_webp.exit unwind label %bb.ao

bb.ao:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc11collections11binary_heap10BinaryHeapNtNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree4ItemEEB1K_.exit
  %i.jy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTttEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %common.resume unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #13
  unreachable

common.resume:                                    ; preds = %.body99, %bb.ao
  %common.resume.op = phi { ptr, i32 } [ %i.jy, %bb.ao ], [ %.pn86.pn, %.body99 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTttEEECsksn9slvsHfS_10image_webp.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc11collections11binary_heap10BinaryHeapNtNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree4ItemEEB1K_.exit
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTttEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.aq

bb.aq:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTttEEECsksn9slvsHfS_10image_webp.exit, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4ItermENCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree0ENtNtNtB9_6traits8iterator8Iterator5countB1A_.exit.thread
  %i.ka = phi i1 [ true, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTttEEECsksn9slvsHfS_10image_webp.exit ], [ false, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4ItermENCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree0ENtNtNtB9_6traits8iterator8Iterator5countB1A_.exit.thread ]
  ret i1 %i.ka

bb.ar:                                            ; preds = %.lr.ph203, %bb.as
  %i.kb = phi i32 [ %storemerge211, %.lr.ph203 ], [ %i.kj, %bb.as ] ; 3 uses
  %.sroa.0116.0201 = phi ptr [ %2, %.lr.ph203 ], [ %i.kd, %bb.as ] ; 2 uses
  %.sroa.7118.0200 = phi i64 [ 0, %.lr.ph203 ], [ %i.ke, %bb.as ] ; 4 uses
  %i.kc = phi i32 [ %storemerge211, %.lr.ph203 ], [ %i.ki, %bb.as ] ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.0116.0201, i64 1 ; 2 uses
  %i.ke = add nuw nsw i64 %.sroa.7118.0200, 1
  %i.kf = load i8, ptr %.sroa.0116.0201, align 1, !noundef !12
  %i.kg = icmp eq i8 %i.kf, %.sroa.5.0212
  br i1 %i.kg, label %bb.at, label %bb.as

._crit_edge204:                                   ; preds = %bb.as
  %i.kh = shl i32 %i.kj, 1                        ; 2 uses
  %exitcond.not = icmp eq i8 %.sroa.5.0212, %6
  br i1 %exitcond.not, label %._crit_edge215, label %.lr.ph203

bb.as:                                            ; preds = %bb.au, %bb.ar
  %i.ki = phi i32 [ %i.kq, %bb.au ], [ %i.kc, %bb.ar ]
  %i.kj = phi i32 [ %i.kq, %bb.au ], [ %i.kb, %bb.ar ] ; 2 uses
  %i.kk = icmp eq ptr %i.kd, %i.bv
  br i1 %i.kk, label %._crit_edge204, label %bb.ar

bb.at:                                            ; preds = %bb.ar
  %i.kl = icmp samesign ult i64 %.sroa.7118.0200, %1
  br i1 %i.kl, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.km = trunc i32 %i.kb to i16
  %i.kn = call i16 @llvm.bitreverse.i16(i16 %i.km)
  %i.ko = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %.sroa.7118.0200
  %i.kp = lshr i16 %i.kn, %i.jp
  store i16 %i.kp, ptr %i.ko, align 2
  %i.kq = add i32 %i.kb, 1                        ; 2 uses
  br label %bb.as

bb.av:                                            ; preds = %bb.at
  store i32 %i.kc, ptr %i.d, align 4
  br label %.invoke

bb.aw:                                            ; preds = %bb.bi, %.body97, %bb.x, %.body, %.body99
  %i.kr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #13
  unreachable

.preheader132:                                    ; preds = %.preheader132.lr.ph, %bb.ax
  %.sroa.029.0.in = phi i64 [ %.sroa.029.0, %bb.ax ], [ %i.cx, %.preheader132.lr.ph ]
  %.sroa.029.0 = add nsw i64 %.sroa.029.0.in, -1  ; 5 uses
  %i.ks = icmp ult i64 %.sroa.029.0, 16
  br i1 %i.ks, label %bb.ax, label %.invoke

bb.ax:                                            ; preds = %.preheader132
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.sroa.029.0
  %i.ku = load i32, ptr %i.kt, align 4, !noundef !12 ; 2 uses
  %i.kv = icmp eq i32 %i.ku, 0
  br i1 %i.kv, label %.preheader132, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.sroa.029.0
  %i.kx = add i32 %i.ku, -1
  store i32 %i.kx, ptr %i.kw, align 4
  br label %.invoke

bb.az:                                            ; preds = %.lr.ph160
  %i.ky = sub nuw nsw i64 %i.cr, %1               ; 3 uses
  %i.kz = load i64, ptr %i.ap, align 8, !noundef !12 ; 2 uses
  %i.la = icmp ult i64 %i.ky, %i.kz
  br i1 %i.la, label %bb.bb, label %.invoke

bb.ba:                                            ; preds = %.lr.ph160
end_hunk_0
