Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/box?download=true
inline.NumInlined: 11465
inline.NumDeleted: 5743
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN8Box_iloc18derive_box_versionEv:bb.a
  %.not4649 = icmp eq ptr %i.g, %i.f
  store i32 0, ptr %i.m, align 1
  br i1 %.not4649, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  store i8 4, ptr %i.o, align 1, !tbaa !513
  store i8 4, ptr %i.m, align 1, !tbaa !514
  store i8 4, ptr %i.n, align 2, !tbaa !515
  br label %._crit_edge64

.lr.ph63.preheader:                               ; preds = %.lr.ph
  %i.p = add i64 %i.aa, -4026531840
  %i.q = icmp ult i64 %i.p, -4294967296
  %i.r = select i1 %i.q, i8 8, i8 4
  store i8 %i.r, ptr %i.o, align 1, !tbaa !513
  store i8 4, ptr %i.m, align 1, !tbaa !514
  store i8 4, ptr %i.n, align 2, !tbaa !515
  br label %.lr.ph63

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.01752 = phi i64 [ %i.aa, %.lr.ph ], [ 0, %bb.a ]
  %.151 = phi i32 [ %.3, %.lr.ph ], [ %.045, %bb.a ] ; 2 uses
  %.sroa.031.050 = phi ptr [ %i.ab, %.lr.ph ], [ %i.g, %bb.a ] ; 4 uses
  %i.s = load i32, ptr %.sroa.031.050, align 8, !tbaa !490
  %i.t = icmp ugt i32 %i.s, 65535
  %.sroa.speculated27 = tail call i32 @llvm.smax.i32(i32 %.151, i32 2)
  %.2 = select i1 %i.t, i32 %.sroa.speculated27, i32 %.151 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.031.050, i64 4
  %i.v = load i8, ptr %i.u, align 4, !tbaa !491
  %.not = icmp eq i8 %i.v, 0
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %.2, i32 1)
  %.3 = select i1 %.not, i32 %.2, i32 %.sroa.speculated ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.031.050, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !502
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !497
  %i.aa = add i64 %i.z, %.01752                   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.031.050, i64 40 ; 2 uses
  %.not46 = icmp eq ptr %i.ab, %i.f
  br i1 %.not46, label %.lr.ph63.preheader, label %.lr.ph

._crit_edge64:                                    ; preds = %._crit_edge59, %._crit_edge.thread
  %.1.lcssa73 = phi i32 [ %.045, %._crit_edge.thread ], [ %.3, %._crit_edge59 ]
  %i.ac = trunc nuw i32 %.1.lcssa73 to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 153
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !89
  ret void

.lr.ph63:                                         ; preds = %.lr.ph63.preheader, %._crit_edge59
  %.sroa.022.061 = phi ptr [ %i.ai, %._crit_edge59 ], [ %i.g, %.lr.ph63.preheader ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.022.061, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !502 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.022.061, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !498 ; 2 uses
  %.not4854 = icmp eq ptr %i.af, %i.ah
  br i1 %.not4854, label %._crit_edge59, label %.lr.ph58

._crit_edge59:                                    ; preds = %bb.e, %.lr.ph63
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.022.061, i64 40 ; 2 uses
  %.not47 = icmp eq ptr %i.ai, %i.f
  br i1 %.not47, label %._crit_edge64, label %.lr.ph63

.lr.ph58:                                         ; preds = %.lr.ph63, %bb.e
  %.056 = phi i64 [ %i.an, %bb.e ], [ 0, %.lr.ph63 ] ; 2 uses
  %.sroa.018.055 = phi ptr [ %i.ao, %bb.e ], [ %i.af, %.lr.ph63 ] ; 2 uses
  %i.aj = icmp ugt i64 %.056, 4294967295
  br i1 %i.aj, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph58
  store i8 8, ptr %i.m, align 1, !tbaa !514
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph58
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.018.055, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !497 ; 2 uses
  %i.am = icmp ugt i64 %i.al, 4294967295
  br i1 %i.am, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 8, ptr %i.n, align 2, !tbaa !515
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.an = add i64 %i.al, %.056
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.018.055, i64 48 ; 2 uses
  %.not48 = icmp eq ptr %i.ao, %i.ah
  br i1 %.not48, label %._crit_edge59, label %.lr.ph58
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK8Box_iloc5writeER12StreamWriter(ptr dead_on_unwind noalias writable sret(%class.Error) align 8 %0, ptr noundef nonnull align 8 dereferenceable(232) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.Error, align 8               ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !508  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !500  ; 2 uses
  %.not6781 = icmp eq ptr %i.b, %i.d
  br i1 %.not6781, label %.loopexit76, label %.lr.ph84

._crit_edge:                                      ; preds = %.loopexit77
  %.not = icmp eq i64 %.241, 0
  br i1 %.not, label %.loopexit76, label %bb.c

.lr.ph84:                                         ; preds = %bb.a, %.loopexit77
  %.03983 = phi i64 [ %.241, %.loopexit77 ], [ 0, %bb.a ] ; 3 uses
  %.sroa.064.082 = phi ptr [ %i.u, %.loopexit77 ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.064.082, i64 4
  %i.f = load i8, ptr %i.e, align 4, !tbaa !491
  %i.g = icmp eq i8 %i.f, 1
  br i1 %i.g, label %bb.b, label %.loopexit77

bb.b:                                             ; preds = %.lr.ph84
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.064.082, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !502  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.064.082, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !498  ; 2 uses
  %.not7278 = icmp eq ptr %i.i, %i.k
  br i1 %.not7278, label %.loopexit77, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.14080 = phi i64 [ %i.s, %.lr.ph ], [ %.03983, %bb.b ]
  %.sroa.060.079 = phi ptr [ %i.t, %.lr.ph ], [ %i.i, %bb.b ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.060.079, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.060.079, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !38
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !37
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = add i64 %.14080, %i.p
  %i.s = sub i64 %i.r, %i.q                       ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.060.079, i64 48 ; 2 uses
  %.not72 = icmp eq ptr %i.t, %i.k
  br i1 %.not72, label %.loopexit77, label %.lr.ph

.loopexit77:                                      ; preds = %.lr.ph, %bb.b, %.lr.ph84
  %.241 = phi i64 [ %.03983, %.lr.ph84 ], [ %.03983, %bb.b ], [ %i.s, %.lr.ph ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.064.082, i64 40 ; 2 uses
  %.not67 = icmp eq ptr %i.u, %i.d
  br i1 %.not67, label %._crit_edge, label %.lr.ph84

bb.c:                                             ; preds = %._crit_edge
  %i.v = trunc i64 %.241 to i32
  %i.w = add i32 %i.v, 8
  tail call void @_ZN12StreamWriter7write32Ej(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.w)
  tail call void @_ZN12StreamWriter7write32Ej(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 1768186228)
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !508  ; 2 uses
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !500  ; 2 uses
  %.not6890 = icmp eq ptr %i.x, %i.y
  br i1 %.not6890, label %.loopexit76, label %.lr.ph93

.lr.ph93:                                         ; preds = %bb.c, %.loopexit
  %.sroa.056.091 = phi ptr [ %i.ai, %.loopexit ], [ %i.x, %bb.c ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.056.091, i64 4
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !491
  %i.ab = icmp eq i8 %i.aa, 1
  br i1 %i.ab, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %.lr.ph93
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.056.091, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !502 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.056.091, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !498 ; 2 uses
  %.not6986 = icmp eq ptr %i.ad, %i.af
  br i1 %.not6986, label %.loopexit, label %.lr.ph89

.lr.ph89:                                         ; preds = %bb.d, %.lr.ph89
  %.sroa.052.087 = phi ptr [ %i.ah, %.lr.ph89 ], [ %i.ad, %bb.d ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.052.087, i64 24
  tail call void @_ZN12StreamWriter5writeERKNSt3__16vectorIhNS0_9allocatorIhEEEE(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.ag)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.052.087, i64 48 ; 2 uses
  %.not69 = icmp eq ptr %i.ah, %i.af
  br i1 %.not69, label %.loopexit, label %.lr.ph89

.loopexit:                                        ; preds = %.lr.ph89, %bb.d, %.lr.ph93
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.056.091, i64 40 ; 2 uses
  %.not68 = icmp eq ptr %i.ai, %i.y
  br i1 %.not68, label %.loopexit76, label %.lr.ph93

.loopexit76:                                      ; preds = %.loopexit, %bb.a, %bb.c, %._crit_edge
  %i.aj = load ptr, ptr %1, align 8, !tbaa !27
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 104
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call noundef i64 %i.al(ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext false) ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !77
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 184
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !516
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 153
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !89
  %.fr = freeze i8 %i.ar                          ; 2 uses
  %i.as = icmp ult i8 %.fr, 2                     ; 2 uses
  %i.at = select i1 %i.as, i32 4, i32 6           ; 3 uses
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !508 ; 3 uses
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !500 ; 3 uses
  %.not70102 = icmp eq ptr %i.au, %i.av
  br i1 %.not70102, label %._crit_edge107, label %.lr.ph106

.lr.ph106:                                        ; preds = %.loopexit76
  %.not42 = icmp eq i8 %.fr, 0                    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 195
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !513
  %i.ay = zext i8 %i.ax to i32
  %i.az = select i1 %i.as, i32 8, i32 10
  %4 = select i1 %.not42, i32 6, i32 %i.az
  %invariant.op109 = add nuw nsw i32 %4, %i.ay    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 196
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 193 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 194 ; 2 uses
  br i1 %.not42, label %.lr.ph106.split.us, label %.lr.ph106.split

.lr.ph106.split.us:                               ; preds = %.lr.ph106, %._crit_edge99.split.us.us
  %.0104.us = phi i32 [ %.1.lcssa.us, %._crit_edge99.split.us.us ], [ %i.at, %.lr.ph106 ]
  %.sroa.048.0103.us = phi ptr [ %i.bv, %._crit_edge99.split.us.us ], [ %i.au, %.lr.ph106 ] ; 3 uses
  %.reass.us110 = add i32 %.0104.us, %invariant.op109 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.048.0103.us, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !502 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.048.0103.us, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !498 ; 2 uses
  %.not7194.us = icmp eq ptr %i.be, %i.bg
  br i1 %.not7194.us, label %._crit_edge99.split.us.us, label %.lr.ph98.us

.lr.ph98.us:                                      ; preds = %.lr.ph106.split.us
  %i.bh = ptrtoaddr ptr %i.bg to i64
  %i.bi = ptrtoaddr ptr %i.be to i64
  %i.bj = load i8, ptr %i.bb, align 1, !tbaa !514
  %i.bk = zext i8 %i.bj to i32                    ; 2 uses
  %i.bl = load i8, ptr %i.bc, align 2, !tbaa !515
  %i.bm = zext i8 %i.bl to i32                    ; 2 uses
  %invariant.op.us = add nuw nsw i32 %i.bk, %i.bm
  %i.bn = add i64 %i.bh, -48
  %i.bo = sub i64 %i.bn, %i.bi
  %i.bp = udiv i64 %i.bo, 48
  %i.bq = trunc i64 %i.bp to i32
  %i.br = mul i32 %invariant.op.us, %i.bq
  %i.bs = add i32 %.reass.us110, %i.br
  %i.bt = add i32 %i.bs, %i.bk
  %i.bu = add i32 %i.bt, %i.bm
  br label %._crit_edge99.split.us.us

._crit_edge99.split.us.us:                        ; preds = %.lr.ph98.us, %.lr.ph106.split.us
  %.1.lcssa.us = phi i32 [ %.reass.us110, %.lr.ph106.split.us ], [ %i.bu, %.lr.ph98.us ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.048.0103.us, i64 40 ; 2 uses
  %.not70.us = icmp eq ptr %i.bv, %i.av
  br i1 %.not70.us, label %._crit_edge107, label %.lr.ph106.split.us

._crit_edge107:                                   ; preds = %._crit_edge99.split, %._crit_edge99.split.us.us, %.loopexit76
  %.0.lcssa = phi i32 [ %i.at, %.loopexit76 ], [ %.1.lcssa.us, %._crit_edge99.split.us.us ], [ %.1.lcssa, %._crit_edge99.split ]
  tail call void @_ZN12StreamWriter4skipEi(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %.0.lcssa)
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !38, !noalias !1849
  %i.by = load ptr, ptr %2, align 8, !tbaa !37, !noalias !1849
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = add i64 %i.am, %i.ca
  %i.cc = sub i64 %i.bz, %i.cb
  store i64 %i.am, ptr %i.an, align 8, !tbaa !77, !noalias !1849
  %i.cd = load ptr, ptr %1, align 8, !tbaa !27, !noalias !1849
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 112
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !1849
  call void %i.cf(ptr dead_on_unwind nonnull writable sret(%class.Error) align 8 %3, ptr noundef nonnull align 8 dereferenceable(153) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.cc, i1 noundef zeroext false), !inline_history !465
  %i.cg = load ptr, ptr %i.bw, align 8, !tbaa !38, !noalias !1849
  %i.ch = load ptr, ptr %2, align 8, !tbaa !37, !noalias !1849
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  store i64 %i.ck, ptr %i.an, align 8, !tbaa !77, !noalias !1849
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 8
  %i.cn = trunc i8 %i.cm to i1
  br i1 %i.cn, label %bb.e, label %_ZN5ErrorD2Ev.exit

bb.e:                                             ; preds = %._crit_edge107
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !40
  %i.cq = load i64, ptr %i.cl, align 8
  %i.cr = and i64 %i.cq, -2
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cr) #40
  br label %_ZN5ErrorD2Ev.exit

_ZN5ErrorD2Ev.exit:                               ; preds = %._crit_edge107, %bb.e
  call void @_ZNK8Box_iloc17patch_iloc_headerER12StreamWriter(ptr noundef nonnull align 8 dereferenceable(232) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.cs = load i64, ptr @_ZN5Error2OkE, align 8
  store i64 %i.cs, ptr %0, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cu = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 8), align 8
  %i.cv = trunc i8 %i.cu to i1
  br i1 %i.cv, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN5ErrorD2Ev.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 8), i64 24, i1 false), !tbaa.struct !75
  br label %_ZN5ErrorC2ERKS_.exit

bb.g:                                             ; preds = %_ZN5ErrorD2Ev.exit
  %i.cw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 24), align 8, !tbaa !40
  %i.cx = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 16), align 8, !tbaa !40
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, ptr noundef %i.cw, i64 noundef %i.cx)
  br label %_ZN5ErrorC2ERKS_.exit

_ZN5ErrorC2ERKS_.exit:                            ; preds = %bb.f, %bb.g
  ret void

.lr.ph106.split:                                  ; preds = %.lr.ph106, %._crit_edge99.split
  %.0104 = phi i32 [ %.1.lcssa, %._crit_edge99.split ], [ %i.at, %.lr.ph106 ]
  %.sroa.048.0103 = phi ptr [ %i.dt, %._crit_edge99.split ], [ %i.au, %.lr.ph106 ] ; 3 uses
  %.reass = add i32 %.0104, %invariant.op109      ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.048.0103, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !502 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.048.0103, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !498 ; 2 uses
  %.not7194 = icmp eq ptr %i.cz, %i.db
  br i1 %.not7194, label %._crit_edge99.split, label %.lr.ph98

.lr.ph98:                                         ; preds = %.lr.ph106.split
  %i.dc = ptrtoaddr ptr %i.db to i64
  %i.dd = ptrtoaddr ptr %i.cz to i64
  %i.de = load i8, ptr %i.bb, align 1, !tbaa !514
  %i.df = zext i8 %i.de to i32                    ; 2 uses
  %i.dg = load i8, ptr %i.bc, align 2, !tbaa !515
  %i.dh = zext i8 %i.dg to i32                    ; 2 uses
  %invariant.op = add nuw nsw i32 %i.df, %i.dh
  %i.di = load i8, ptr %i.ba, align 4, !tbaa !517
  %i.dj = zext i8 %i.di to i32                    ; 2 uses
  %invariant.op101 = add nuw nsw i32 %invariant.op, %i.dj
  %i.dk = add i64 %i.dc, -48
  %i.dl = sub i64 %i.dk, %i.dd
  %i.dm = udiv i64 %i.dl, 48
  %i.dn = trunc i64 %i.dm to i32
  %i.do = mul i32 %invariant.op101, %i.dn
  %i.dp = add i32 %.reass, %i.do
  %i.dq = add i32 %i.dp, %i.df
  %i.dr = add i32 %i.dq, %i.dh
  %i.ds = add i32 %i.dr, %i.dj
  br label %._crit_edge99.split

._crit_edge99.split:                              ; preds = %.lr.ph98, %.lr.ph106.split
  %.1.lcssa = phi i32 [ %.reass, %.lr.ph106.split ], [ %i.ds, %.lr.ph98 ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.048.0103, i64 40 ; 2 uses
  %.not70 = icmp eq ptr %i.dt, %i.av
  br i1 %.not70, label %._crit_edge107, label %.lr.ph106.split
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK8Box_iloc17patch_iloc_headerER12StreamWriter(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !77
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = load i64, ptr %i.c, align 8, !tbaa !516
  store i64 %i.d, ptr %i.a, align 8, !tbaa !77
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 193 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !514
  %i.g = shl i8 %i.f, 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 194 ; 2 uses
  %i.i = load i8, ptr %i.h, align 2, !tbaa !515
  %i.j = or i8 %i.g, %i.i
  tail call void @_ZN12StreamWriter6write8Eh(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef zeroext %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 195 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !513
  %i.m = shl i8 %i.l, 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.o = load i8, ptr %i.n, align 4, !tbaa !517
  %i.p = or i8 %i.m, %i.o
  tail call void @_ZN12StreamWriter6write8Eh(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef zeroext %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 153 ; 4 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !89
  %i.s = icmp ult i8 %i.r, 2
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !500
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !508
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = sdiv exact i64 %i.z, 40                 ; 2 uses
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ab = trunc i64 %i.aa to i16
  tail call void @_ZN12StreamWriter7write16Et(ptr noundef nonnull align 8 dereferenceable(32) %1, i16 noundef zeroext %i.ab)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ac = trunc i64 %i.aa to i32
  tail call void @_ZN12StreamWriter7write32Ej(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.ac)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !508 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !500 ; 2 uses
  %.not4246 = icmp eq ptr %i.ae, %i.ag
  br i1 %.not4246, label %._crit_edge50, label %.lr.ph49

._crit_edge50:                                    ; preds = %._crit_edge, %bb.d
  store i64 %i.b, ptr %i.a, align 8, !tbaa !77
  ret void

.lr.ph49:                                         ; preds = %bb.d, %._crit_edge
  %.sroa.039.047 = phi ptr [ %i.bg, %._crit_edge ], [ %i.ae, %bb.d ] ; 7 uses
  %i.ah = load i8, ptr %i.q, align 1, !tbaa !89
  %i.ai = icmp ult i8 %i.ah, 2
  %i.aj = load i32, ptr %.sroa.039.047, align 8, !tbaa !490 ; 2 uses
  br i1 %i.ai, label %bb.e, label %bb.f

end_hunk_0
