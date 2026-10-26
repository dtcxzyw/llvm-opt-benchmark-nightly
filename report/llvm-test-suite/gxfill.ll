Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/gxfill?download=true
inline.NumInlined: 10
begin_hunk_0_@add_y_list:bb.a
  br i1 %.not91.i139, label %.critedge92.i140, label %bb.ba

bb.ba:                                            ; preds = %.preheader94.i137
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !57
  %i.hx = icmp sgt i64 %.sink134.i131, %i.hw
  br i1 %i.hx, label %.preheader94.i137, label %bb.bb, !llvm.loop !0

bb.bb:                                            ; preds = %bb.ba
  %i.hy = getelementptr inbounds nuw i8, ptr %.0.i138, i64 80
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gs, i64 80
  store ptr %i.hu, ptr %i.hz, align 8, !tbaa !58
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gs, i64 72
  store ptr %.0.i138, ptr %i.ia, align 8, !tbaa !60
  store ptr %i.gs, ptr %i.hy, align 8, !tbaa !58
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hu, i64 72
  store ptr %i.gs, ptr %i.ib, align 8, !tbaa !60
  br label %add_y_line.exit144

.preheader.i141:                                  ; preds = %bb.az, %bb.bc
  %.1.i142 = phi ptr [ %i.id, %bb.bc ], [ %i.ho, %bb.az ] ; 5 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.1.i142, i64 72
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !60 ; 5 uses
  %.not90.i143 = icmp eq ptr %i.id, null
  br i1 %.not90.i143, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %.preheader.i141
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !57
  %i.ig = icmp slt i64 %.sink134.i131, %i.if
  br i1 %i.ig, label %.preheader.i141, label %bb.bd, !llvm.loop !1

bb.bd:                                            ; preds = %bb.bc
  %i.ih = getelementptr inbounds nuw i8, ptr %.1.i142, i64 72
  %i.ii = getelementptr inbounds nuw i8, ptr %i.gs, i64 72
  store ptr %i.id, ptr %i.ii, align 8, !tbaa !60
  %i.ij = getelementptr inbounds nuw i8, ptr %i.gs, i64 80
  store ptr %.1.i142, ptr %i.ij, align 8, !tbaa !58
  store ptr %i.gs, ptr %i.ih, align 8, !tbaa !60
  %i.ik = getelementptr inbounds nuw i8, ptr %i.id, i64 80
  store ptr %i.gs, ptr %i.ik, align 8, !tbaa !58
  br label %add_y_line.exit144

bb.be:                                            ; preds = %.preheader.i141
  %i.il = getelementptr inbounds nuw i8, ptr %.1.i142, i64 72
  %i.im = getelementptr inbounds nuw i8, ptr %i.gs, i64 72
  store ptr null, ptr %i.im, align 8, !tbaa !60
  %i.in = getelementptr inbounds nuw i8, ptr %i.gs, i64 80
  store ptr %.1.i142, ptr %i.in, align 8, !tbaa !58
  store ptr %i.gs, ptr %i.il, align 8, !tbaa !60
  store ptr %i.gs, ptr %i.l, align 8, !tbaa !56
  br label %add_y_line.exit144

.critedge92.i140:                                 ; preds = %.preheader94.i137
  %i.io = getelementptr inbounds nuw i8, ptr %.0.i138, i64 80
  %i.ip = getelementptr inbounds nuw i8, ptr %i.gs, i64 80
  store ptr null, ptr %i.ip, align 8, !tbaa !58
  %i.iq = getelementptr inbounds nuw i8, ptr %i.gs, i64 72
  store ptr %.0.i138, ptr %i.iq, align 8, !tbaa !60
  store ptr %i.gs, ptr %i.io, align 8, !tbaa !58
  br label %add_y_line.exit144

add_y_line.exit144:                               ; preds = %bb.ay, %bb.bb, %bb.bd, %bb.be, %.critedge92.i140
  store ptr %i.gs, ptr %i.k, align 8, !tbaa !55
  br label %bb.bo

bb.bf:                                            ; preds = %bb.ad
  %i.ir = icmp slt i32 %i.aj, 0
  br i1 %i.ir, label %bb.bg, label %bb.bo

bb.bg:                                            ; preds = %bb.bf
  %i.is = load ptr, ptr %i.j, align 8, !tbaa !39  ; 26 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 88
  store ptr %i.it, ptr %i.j, align 8, !tbaa !39
  %i.iu = load i64, ptr %i.q, align 8, !tbaa !48  ; 2 uses
  %i.iv = load i64, ptr %i.r, align 8, !tbaa !47  ; 5 uses
  %i.iw = load i16, ptr %i.i, align 4, !tbaa !44
  %i.ix = getelementptr inbounds nuw i8, ptr %i.is, i64 68
  store i16 %i.iw, ptr %i.ix, align 4, !tbaa !50
  %i.iy = getelementptr inbounds nuw i8, ptr %i.is, i64 64
  store i32 -1, ptr %i.iy, align 8, !tbaa !51
  %i.iz = getelementptr inbounds nuw i8, ptr %i.is, i64 32
  %i.ja = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.jc = load <2 x i64>, ptr %i.t, align 8, !tbaa !52
  %i.jd = load i64, ptr %i.t, align 8, !tbaa !48
  %i.je = sub nsw i64 %i.jd, %i.iu
  %i.jf = tail call i64 @llvm.abs.i64(i64 %i.je, i1 true)
  %i.jg = or i64 %i.jf, 1
  %i.jh = udiv i64 2147483647, %i.jg
  %i.ji = add nsw i64 %i.jh, %i.iv
  store i64 %i.ji, ptr %i.iz, align 8, !tbaa !53
  store i64 %i.iu, ptr %i.is, align 8, !tbaa !52
  store i64 %i.iv, ptr %i.ja, align 8, !tbaa !52
  store <2 x i64> %i.jc, ptr %i.jb, align 8, !tbaa !52
  %i.jj = getelementptr inbounds nuw i8, ptr %i.is, i64 56
  store ptr %.0225, ptr %i.jj, align 8, !tbaa !54
  %i.jk = load ptr, ptr %i.k, align 8, !tbaa !55  ; 4 uses
  %i.jl = icmp eq ptr %i.jk, null
  br i1 %i.jl, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.jm = getelementptr inbounds nuw i8, ptr %i.is, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jm, i8 0, i64 16, i1 false)
  store ptr %i.is, ptr %i.l, align 8, !tbaa !56
  br label %add_y_line.exit159

bb.bi:                                            ; preds = %bb.bg
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !57
  %.not.i151 = icmp slt i64 %i.iv, %i.jo
  br i1 %.not.i151, label %.preheader.i156, label %.preheader94.i152

.preheader94.i152:                                ; preds = %bb.bi, %bb.bj
  %.0.i153 = phi ptr [ %i.jq, %bb.bj ], [ %i.jk, %bb.bi ] ; 5 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.0.i153, i64 80
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !58 ; 5 uses
  %.not91.i154 = icmp eq ptr %i.jq, null
  br i1 %.not91.i154, label %.critedge92.i155, label %bb.bj

bb.bj:                                            ; preds = %.preheader94.i152
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !57
  %i.jt = icmp sgt i64 %i.iv, %i.js
  br i1 %i.jt, label %.preheader94.i152, label %bb.bk, !llvm.loop !0

bb.bk:                                            ; preds = %bb.bj
  %i.ju = getelementptr inbounds nuw i8, ptr %.0.i153, i64 80
  %i.jv = getelementptr inbounds nuw i8, ptr %i.is, i64 80
  store ptr %i.jq, ptr %i.jv, align 8, !tbaa !58
  %i.jw = getelementptr inbounds nuw i8, ptr %i.is, i64 72
  store ptr %.0.i153, ptr %i.jw, align 8, !tbaa !60
  store ptr %i.is, ptr %i.ju, align 8, !tbaa !58
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jq, i64 72
  store ptr %i.is, ptr %i.jx, align 8, !tbaa !60
  br label %add_y_line.exit159

.preheader.i156:                                  ; preds = %bb.bi, %bb.bl
  %.1.i157 = phi ptr [ %i.jz, %bb.bl ], [ %i.jk, %bb.bi ] ; 5 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.1.i157, i64 72
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !60 ; 5 uses
  %.not90.i158 = icmp eq ptr %i.jz, null
  br i1 %.not90.i158, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %.preheader.i156
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !57
  %i.kc = icmp slt i64 %i.iv, %i.kb
  br i1 %i.kc, label %.preheader.i156, label %bb.bm, !llvm.loop !1

bb.bm:                                            ; preds = %bb.bl
  %i.kd = getelementptr inbounds nuw i8, ptr %.1.i157, i64 72
  %i.ke = getelementptr inbounds nuw i8, ptr %i.is, i64 72
  store ptr %i.jz, ptr %i.ke, align 8, !tbaa !60
  %i.kf = getelementptr inbounds nuw i8, ptr %i.is, i64 80
  store ptr %.1.i157, ptr %i.kf, align 8, !tbaa !58
  store ptr %i.is, ptr %i.kd, align 8, !tbaa !60
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jz, i64 80
  store ptr %i.is, ptr %i.kg, align 8, !tbaa !58
  br label %add_y_line.exit159

bb.bn:                                            ; preds = %.preheader.i156
  %i.kh = getelementptr inbounds nuw i8, ptr %.1.i157, i64 72
  %i.ki = getelementptr inbounds nuw i8, ptr %i.is, i64 72
  store ptr null, ptr %i.ki, align 8, !tbaa !60
  %i.kj = getelementptr inbounds nuw i8, ptr %i.is, i64 80
  store ptr %.1.i157, ptr %i.kj, align 8, !tbaa !58
  store ptr %i.is, ptr %i.kh, align 8, !tbaa !60
  store ptr %i.is, ptr %i.l, align 8, !tbaa !56
  br label %add_y_line.exit159

.critedge92.i155:                                 ; preds = %.preheader94.i152
  %i.kk = getelementptr inbounds nuw i8, ptr %.0.i153, i64 80
  %i.kl = getelementptr inbounds nuw i8, ptr %i.is, i64 80
  store ptr null, ptr %i.kl, align 8, !tbaa !58
  %i.km = getelementptr inbounds nuw i8, ptr %i.is, i64 72
  store ptr %.0.i153, ptr %i.km, align 8, !tbaa !60
  store ptr %i.is, ptr %i.kk, align 8, !tbaa !58
  br label %add_y_line.exit159

add_y_line.exit159:                               ; preds = %bb.bh, %bb.bk, %bb.bm, %bb.bn, %.critedge92.i155
  store ptr %i.is, ptr %i.k, align 8, !tbaa !55
  br label %bb.bo

bb.bo:                                            ; preds = %bb.ac, %bb.bf, %add_y_line.exit159, %bb.at, %add_y_line.exit144, %bb.c
  %.190 = phi ptr [ %.091221, %bb.c ], [ %.089222, %add_y_line.exit144 ], [ %.089222, %bb.at ], [ %.089222, %add_y_line.exit159 ], [ %.089222, %bb.bf ], [ %.089222, %bb.ac ]
  %.1 = phi ptr [ %i.p, %bb.c ], [ %.088223, %add_y_line.exit144 ], [ %.088223, %bb.at ], [ %.088223, %add_y_line.exit159 ], [ %.088223, %bb.bf ], [ %.088223, %bb.ac ]
  %.086 = phi i32 [ 0, %bb.c ], [ %i.aj, %add_y_line.exit144 ], [ %i.aj, %bb.at ], [ -1, %add_y_line.exit159 ], [ %i.aj, %bb.bf ], [ %i.aj, %bb.ac ]
  %i.kn = getelementptr inbounds nuw i8, ptr %.091221, i64 8
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !61 ; 2 uses
  %.not = icmp eq ptr %i.ko, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !83

._crit_edge:                                      ; preds = %bb.bo, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @fill_loop(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca [2 x i32], align 4                  ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread231, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !52 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !57   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 5 uses
  store ptr null, ptr %i.f, align 8, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 110
  store i16 -4, ptr %i.g, align 2, !tbaa !95
  %.not270 = icmp slt i64 %i.e, %.sroa.3.0.copyload
  br i1 %.not270, label %.preheader238.lr.ph, label %.thread231

.preheader238.lr.ph:                              ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 128
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 272 ; 2 uses
  %.neg273 = mul i64 %5, -2                       ; 2 uses
  br label %.preheader238

.preheader238:                                    ; preds = %.preheader238.lr.ph, %bb.be
  %.0179272 = phi ptr [ %i.b, %.preheader238.lr.ph ], [ %.1180242, %bb.be ] ; 2 uses
  %.0194271 = phi i64 [ %i.e, %.preheader238.lr.ph ], [ %.1195, %bb.be ] ; 3 uses
  %.not206248 = icmp eq ptr %.0179272, null
  br i1 %.not206248, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader238, %insert_x_new.exit
  %.1180249 = phi ptr [ %i.o, %insert_x_new.exit ], [ %.0179272, %.preheader238 ] ; 12 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.1180249, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !57   ; 3 uses
  %i.m = icmp eq i64 %i.l, %.0194271
  br i1 %i.m, label %bb.c, label %.critedge.thread

bb.c:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %.1180249, i64 80 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !58   ; 2 uses
  %i.p = load i64, ptr %.1180249, align 8, !tbaa !62 ; 4 uses
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !58   ; 2 uses
  %.not34.i = icmp eq ptr %i.q, null
  br i1 %.not34.i, label %insert_x_new.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.1180249, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.critedge2.i, %.lr.ph.i
  %i.s = phi ptr [ %i.q, %.lr.ph.i ], [ %i.ae, %.critedge2.i ] ; 9 uses
  %.035.i = phi ptr [ %i.h, %.lr.ph.i ], [ %i.s, %.critedge2.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !63   ; 2 uses
  %i.v = icmp slt i64 %i.u, %i.p
  br i1 %i.v, label %.critedge2.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = icmp eq i64 %i.u, %i.p
  br i1 %i.w, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.x = load i64, ptr %i.s, align 8, !tbaa !62
  %i.y = icmp sgt i64 %i.x, %i.p
  br i1 %i.y, label %.critedge2.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !64
  %i.ab = load i64, ptr %i.r, align 8, !tbaa !64
  %i.ac = icmp slt i64 %i.aa, %i.ab
  br i1 %i.ac, label %.critedge2.i, label %bb.h

.critedge2.i:                                     ; preds = %bb.g, %bb.f, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !58 ; 2 uses
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %insert_x_new.exit, label %bb.d, !llvm.loop !2

bb.h:                                             ; preds = %bb.g, %bb.e
  store ptr %i.s, ptr %i.n, align 8, !tbaa !58
  br label %insert_x_new.exit

insert_x_new.exit:                                ; preds = %.critedge2.i, %bb.c, %bb.h
  %.sink49.i = phi i64 [ 72, %bb.h ], [ 80, %bb.c ], [ 80, %.critedge2.i ]
  %.sink.i = phi ptr [ %.035.i, %bb.h ], [ null, %bb.c ], [ null, %.critedge2.i ]
  %.sink47.i = phi ptr [ %i.s, %bb.h ], [ %.1180249, %bb.c ], [ %.1180249, %.critedge2.i ]
  %.0.lcssa33.sink.i = phi ptr [ %.1180249, %bb.h ], [ %i.h, %bb.c ], [ %i.s, %.critedge2.i ]
  %.0.lcssa33.pn.i = phi ptr [ %.035.i, %bb.h ], [ %i.h, %bb.c ], [ %i.s, %.critedge2.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.1180249, i64 %.sink49.i
  store ptr %.sink.i, ptr %i.af, align 8, !tbaa !65
  %i.ag = getelementptr inbounds nuw i8, ptr %.sink47.i, i64 72
  store ptr %.0.lcssa33.sink.i, ptr %i.ag, align 8, !tbaa !60
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.lcssa33.pn.i, i64 80
  store ptr %.1180249, ptr %i.ah, align 8, !tbaa !58
  %i.ai = getelementptr inbounds nuw i8, ptr %.1180249, i64 40
  store i64 %i.p, ptr %i.ai, align 8, !tbaa !63
  %.not206 = icmp eq ptr %i.o, null
  br i1 %.not206, label %.critedge, label %.lr.ph, !llvm.loop !89

.critedge:                                        ; preds = %insert_x_new.exit, %.preheader238
  %i.aj = load ptr, ptr %i.f, align 8, !tbaa !94  ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.thread231, label %.lr.ph254.preheader

.critedge.thread:                                 ; preds = %.lr.ph
  %i.al = load ptr, ptr %i.f, align 8, !tbaa !94  ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.be, label %.lr.ph254.preheader

.lr.ph254.preheader:                              ; preds = %.critedge, %.critedge.thread
  %.1180243 = phi ptr [ null, %.critedge ], [ %.1180249, %.critedge.thread ]
  %.0184250 = phi ptr [ %i.aj, %.critedge ], [ %i.al, %.critedge.thread ] ; 4 uses
  %i.an = phi i64 [ 2147483647, %.critedge ], [ %i.l, %.critedge.thread ]
  br label %.lr.ph254

.lr.ph254:                                        ; preds = %.lr.ph254.preheader, %.lr.ph254
  %.0184253 = phi ptr [ %.0184, %.lr.ph254 ], [ %.0184250, %.lr.ph254.preheader ] ; 2 uses
  %.0190252 = phi i64 [ %spec.select, %.lr.ph254 ], [ %i.an, %.lr.ph254.preheader ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0184253, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !66
  %spec.select = tail call i64 @llvm.smin.i64(i64 %i.ap, i64 %.0190252) ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0184253, i64 80
  %.0184 = load ptr, ptr %i.aq, align 8, !tbaa !58 ; 2 uses
  %.not207 = icmp eq ptr %.0184, null
  br i1 %.not207, label %.preheader237, label %.lr.ph254, !llvm.loop !90

.preheader:                                       ; preds = %.thread230
  %.2186262 = load ptr, ptr %i.f, align 8, !tbaa !58 ; 2 uses
  %.not209263 = icmp eq ptr %.2186262, %.1183
  br i1 %.not209263, label %._crit_edge, label %.lr.ph265

.preheader237:                                    ; preds = %.lr.ph254, %.thread230
  %.0181261 = phi i64 [ %.0178, %.thread230 ], [ -2147483648, %.lr.ph254 ] ; 2 uses
  %.0182260 = phi ptr [ %.1183, %.thread230 ], [ %.0184250, %.lr.ph254 ] ; 2 uses
  %.1185259 = phi ptr [ %i.fe, %.thread230 ], [ %.0184250, %.lr.ph254 ] ; 14 uses
  %.0187258 = phi ptr [ %.1185259, %.thread230 ], [ undef, %.lr.ph254 ] ; 8 uses
  %.0188257 = phi i32 [ %.1189, %.thread230 ], [ 0, %.lr.ph254 ] ; 5 uses
  %.2192256 = phi i64 [ %.4, %.thread230 ], [ %spec.select, %.lr.ph254 ] ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.1185259, i64 16 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.1185259, i64 24
  %i.at = load i64, ptr %i.as, align 8, !tbaa !66 ; 6 uses
  %i.au = icmp eq i64 %.2192256, %i.at
  br i1 %i.au, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.preheader237
  %i.av = getelementptr inbounds nuw i8, ptr %.1185259, i64 32
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !53
  %.not219 = icmp sgt i64 %.2192256, %i.aw
  %i.ax = getelementptr inbounds nuw i8, ptr %.1185259, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !57 ; 4 uses
  %i.az = sub nsw i64 %.2192256, %i.ay            ; 2 uses
  br i1 %.not219, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = load i64, ptr %i.ar, align 8, !tbaa !64 ; 2 uses
  %i.bb = load i64, ptr %.1185259, align 8, !tbaa !62 ; 2 uses
  %i.bc = sub nsw i64 %i.ba, %i.bb
  %i.bd = mul nsw i64 %i.bc, %i.az
  %i.be = sub nsw i64 %i.at, %i.ay
  %i.bf = sdiv i64 %i.bd, %i.be
  br label %.thread229

bb.k:                                             ; preds = %bb.i
  %i.bg = sitofp i64 %i.az to double
  %i.bh = load i64, ptr %i.ar, align 8, !tbaa !64 ; 2 uses
  %i.bi = load i64, ptr %.1185259, align 8, !tbaa !62 ; 2 uses
  %i.bj = sub nsw i64 %i.bh, %i.bi
  %i.bk = sitofp i64 %i.bj to double
  %i.bl = fmul nnan double %i.bg, %i.bk
  %i.bm = sub nsw i64 %i.at, %i.ay
  %i.bn = sitofp i64 %i.bm to double
  %i.bo = fdiv double %i.bl, %i.bn
  %i.bp = fptosi double %i.bo to i64
  br label %.thread229

bb.l:                                             ; preds = %.preheader237
  %i.bq = load i64, ptr %i.ar, align 8, !tbaa !64 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.1185259, i64 48 ; 2 uses
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !96
  %i.bs = icmp slt i64 %i.bq, %.0181261
  br i1 %i.bs, label %._crit_edge281, label %bb.z

._crit_edge281:                                   ; preds = %bb.l
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.1185259, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !57
  %.pre282 = load i64, ptr %.1185259, align 8, !tbaa !62
  br label %bb.m

.thread229:                                       ; preds = %bb.j, %bb.k
  %i.bt = phi i64 [ %i.ba, %bb.j ], [ %i.bh, %bb.k ]
  %i.bu = phi i64 [ %i.bb, %bb.j ], [ %i.bi, %bb.k ] ; 2 uses
  %i.bv = phi i64 [ %i.bf, %bb.j ], [ %i.bp, %bb.k ]
  %i.bw = add nsw i64 %i.bu, %i.bv                ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.1185259, i64 48 ; 2 uses
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !96
  %i.by = icmp slt i64 %i.bw, %.0181261
  br i1 %i.by, label %bb.m, label %.thread230

bb.m:                                             ; preds = %._crit_edge281, %.thread229
  %i.bz = phi i64 [ %i.bt, %.thread229 ], [ %i.bq, %._crit_edge281 ] ; 3 uses
  %i.ca = phi i64 [ %i.bu, %.thread229 ], [ %.pre282, %._crit_edge281 ] ; 3 uses
  %i.cb = phi i64 [ %i.ay, %.thread229 ], [ %.pre, %._crit_edge281 ] ; 3 uses
  %i.cc = phi ptr [ %i.bx, %.thread229 ], [ %i.br, %._crit_edge281 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.0187258, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %.0187258, i64 24
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !66 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0187258, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !57 ; 3 uses
  %i.ci = load i64, ptr %.0187258, align 8, !tbaa !62 ; 3 uses
  %i.cj = sitofp i64 %i.ci to double
  %i.ck = sitofp i64 %i.cf to double
  %i.cl = sitofp i64 %i.ch to double
  %i.cm = load i64, ptr %i.cd, align 8, !tbaa !64 ; 3 uses
  %i.cn = sitofp i64 %i.cm to double
  %i.co = fneg double %i.cn
  %i.cp = fmul nnan double %i.cl, %i.co
  %i.cq = sitofp i64 %i.ca to double
  %i.cr = sitofp i64 %i.at to double
  %i.cs = sitofp i64 %i.cb to double
  %i.ct = sitofp i64 %i.bz to double
  %i.cu = fneg double %i.ct
  %i.cv = fmul nnan double %i.cs, %i.cu
  %i.cw = sub nsw i64 %i.bz, %i.ca                ; 2 uses
  %i.cx = sub nsw i64 %i.cm, %i.ci                ; 2 uses
  %i.cy = sub nsw i64 %i.cf, %i.ch                ; 2 uses
  %i.cz = sitofp i64 %i.cy to double              ; 2 uses
  %i.da = sub nsw i64 %i.at, %i.cb                ; 2 uses
  %i.db = sitofp i64 %i.da to double              ; 2 uses
  %i.dc = tail call double @llvm.fmuladd.f64(double %i.cj, double %i.ck, double %i.cp)
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.cq, double %i.cr, double %i.cv)
  %i.de = sitofp i64 %i.cw to double              ; 2 uses
  %i.df = sitofp i64 %i.cx to double              ; 2 uses
  %i.dg = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.dh = insertelement <2 x double> %i.dg, double %i.db, i64 1 ; 2 uses
  %i.di = fneg <2 x double> %i.dh
  %i.dj = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.dk = insertelement <2 x double> poison, double %i.df, i64 0
  %i.dl = insertelement <2 x double> %i.dk, double %i.dd, i64 1
  %i.dm = fmul <2 x double> %i.dl, %i.dj
  %i.dn = insertelement <2 x double> poison, double %i.de, i64 0
  %i.do = insertelement <2 x double> %i.dn, double %i.dc, i64 1
  %i.dp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.do, <2 x double> %i.dh, <2 x double> %i.dm) ; 2 uses
  %i.dq = extractelement <2 x double> %i.dp, i64 0
  %i.dr = extractelement <2 x double> %i.dp, i64 1
  %i.ds = fdiv double %i.dr, %i.dq
  %i.dt = fptosi double %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %.0187258, i64 32
  %i.dv = getelementptr inbounds nuw i8, ptr %.1185259, i64 32
  br label %bb.n

bb.n:                                             ; preds = %bb.x, %bb.m
  %.3 = phi i64 [ %i.dt, %bb.m ], [ %i.eu, %bb.x ] ; 8 uses
  %i.dw = icmp eq i64 %.3, %i.cf
  br i1 %i.dw, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dx = load i64, ptr %i.du, align 8, !tbaa !53
  %.not220 = icmp sgt i64 %.3, %i.dx
  %i.dy = sub nsw i64 %.3, %i.ch                  ; 2 uses
  br i1 %.not220, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dz = mul nsw i64 %i.dy, %i.cx
  %i.ea = sdiv i64 %i.dz, %i.cy
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.eb = sitofp i64 %i.dy to double
  %i.ec = fmul nnan double %i.df, %i.eb
  %i.ed = fdiv double %i.ec, %i.cz
  %i.ee = fptosi double %i.ed to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ef = phi i64 [ %i.ea, %bb.p ], [ %i.ee, %bb.q ]
  %i.eg = add nsw i64 %i.ef, %i.ci
  br label %bb.s

bb.s:                                             ; preds = %bb.n, %bb.r
  %i.eh = phi i64 [ %i.eg, %bb.r ], [ %i.cm, %bb.n ] ; 2 uses
  %i.ei = icmp eq i64 %.3, %i.at
  br i1 %i.ei, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ej = load i64, ptr %i.dv, align 8, !tbaa !53
  %.not221 = icmp sgt i64 %.3, %i.ej
  %i.ek = sub nsw i64 %.3, %i.cb                  ; 2 uses
  br i1 %.not221, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.el = mul nsw i64 %i.ek, %i.cw
  %i.em = sdiv i64 %i.el, %i.da
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.en = sitofp i64 %i.ek to double
  %i.eo = fmul nnan double %i.de, %i.en
  %i.ep = fdiv double %i.eo, %i.db
  %i.eq = fptosi double %i.ep to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.er = phi i64 [ %i.em, %bb.u ], [ %i.eq, %bb.v ]
  %i.es = add nsw i64 %i.er, %i.ca
  br label %bb.x

bb.x:                                             ; preds = %bb.s, %bb.w
  %i.et = phi i64 [ %i.es, %bb.w ], [ %i.bz, %bb.s ] ; 3 uses
  %.not222 = icmp sgt i64 %i.et, %i.eh
  %i.eu = add nsw i64 %.3, 1
  br i1 %.not222, label %bb.n, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ev = getelementptr inbounds nuw i8, ptr %.0187258, i64 48
  store i64 %i.eh, ptr %i.ev, align 8, !tbaa !96
  store i64 %i.et, ptr %i.cc, align 8, !tbaa !96
  %i.ew = add nsw i32 %.0188257, 4
  %i.ex = trunc i32 %.0188257 to i16              ; 2 uses
  %i.ey = add i16 %i.ex, 7
  %i.ez = getelementptr inbounds nuw i8, ptr %.0187258, i64 70
  store i16 %i.ey, ptr %i.ez, align 2, !tbaa !67
  %i.fa = add i16 %i.ex, 5
  br label %.thread230

bb.z:                                             ; preds = %bb.l
  %i.fb = trunc i32 %.0188257 to i16
  br label %.thread230

.thread230:                                       ; preds = %.thread229, %bb.z, %bb.y
  %.sink = phi i16 [ %i.fb, %bb.z ], [ %i.fa, %bb.y ], [ -2, %.thread229 ]
  %.4 = phi i64 [ %.2192256, %bb.z ], [ %.3, %bb.y ], [ %.2192256, %.thread229 ] ; 6 uses
  %.1189 = phi i32 [ %.0188257, %bb.z ], [ %i.ew, %bb.y ], [ %.0188257, %.thread229 ] ; 2 uses
  %.1183 = phi ptr [ %.0182260, %bb.z ], [ %.0187258, %bb.y ], [ %.0182260, %.thread229 ] ; 3 uses
  %.0178 = phi i64 [ %i.bq, %bb.z ], [ %i.et, %bb.y ], [ %i.bw, %.thread229 ]
  %i.fc = getelementptr inbounds nuw i8, ptr %.1185259, i64 70
  store i16 %.sink, ptr %i.fc, align 2, !tbaa !67
  %i.fd = getelementptr inbounds nuw i8, ptr %.1185259, i64 80
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !58 ; 2 uses
  %.not208 = icmp eq ptr %i.fe, null
  br i1 %.not208, label %.preheader, label %.preheader237, !llvm.loop !91

.lr.ph265:                                        ; preds = %.preheader, %bb.af
  %.2186264 = phi ptr [ %.2186, %bb.af ], [ %.2186262, %.preheader ] ; 8 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.2186264, i64 16 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.2186264, i64 24
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !66 ; 3 uses
  %i.fi = icmp eq i64 %.4, %i.fh
  br i1 %i.fi, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph265
  %i.fj = load i64, ptr %i.ff, align 8, !tbaa !64
  br label %bb.af

bb.ab:                                            ; preds = %.lr.ph265
  %i.fk = getelementptr inbounds nuw i8, ptr %.2186264, i64 32
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !53
  %.not218 = icmp sgt i64 %.4, %i.fl
  %i.fm = getelementptr inbounds nuw i8, ptr %.2186264, i64 8
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !57 ; 3 uses
  %i.fo = sub nsw i64 %.4, %i.fn                  ; 2 uses
  br i1 %.not218, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fp = load i64, ptr %i.ff, align 8, !tbaa !64
  %i.fq = load i64, ptr %.2186264, align 8, !tbaa !62 ; 2 uses
  %i.fr = sub nsw i64 %i.fp, %i.fq
  %i.fs = mul nsw i64 %i.fr, %i.fo
  %i.ft = sub nsw i64 %i.fh, %i.fn
  %i.fu = sdiv i64 %i.fs, %i.ft
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.fv = sitofp i64 %i.fo to double
  %i.fw = load i64, ptr %i.ff, align 8, !tbaa !64
  %i.fx = load i64, ptr %.2186264, align 8, !tbaa !62 ; 2 uses
  %i.fy = sub nsw i64 %i.fw, %i.fx
  %i.fz = sitofp i64 %i.fy to double
  %i.ga = fmul nnan double %i.fv, %i.fz
  %i.gb = sub nsw i64 %i.fh, %i.fn
  %i.gc = sitofp i64 %i.gb to double
  %i.gd = fdiv double %i.ga, %i.gc
  %i.ge = fptosi double %i.gd to i64
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.gf = phi i64 [ %i.fq, %bb.ac ], [ %i.fx, %bb.ad ]
  %i.gg = phi i64 [ %i.fu, %bb.ac ], [ %i.ge, %bb.ad ]
  %i.gh = add nsw i64 %i.gf, %i.gg
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.aa
  %i.gi = phi i64 [ %i.fj, %bb.aa ], [ %i.gh, %bb.ae ]
  %i.gj = getelementptr inbounds nuw i8, ptr %.2186264, i64 48
  store i64 %i.gi, ptr %i.gj, align 8, !tbaa !96
  %i.gk = getelementptr inbounds nuw i8, ptr %.2186264, i64 80
  %.2186 = load ptr, ptr %i.gk, align 8, !tbaa !58 ; 2 uses
  %.not209 = icmp eq ptr %.2186, %.1183
  br i1 %.not209, label %._crit_edge, label %.lr.ph265, !llvm.loop !92

._crit_edge:                                      ; preds = %bb.af, %.preheader
  %i.gl = sub nsw i64 %.4, %.0194271
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !tbaa !12
  %i.gm = load i32, ptr %i.i, align 8, !tbaa !43
  store i32 %i.gm, ptr %7, align 4, !tbaa !12
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge, %swap_group.exit
  %i.gn = phi i32 [ 0, %._crit_edge ], [ %22, %swap_group.exit ]
  %.0269 = phi i64 [ undef, %._crit_edge ], [ %.1, %swap_group.exit ] ; 6 uses
  %.0175268 = phi i64 [ undef, %._crit_edge ], [ %.1176, %swap_group.exit ] ; 6 uses
  %.0177267 = phi ptr [ %.0184250, %._crit_edge ], [ %i.gt, %swap_group.exit ] ; 17 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.0177267, i64 40 ; 2 uses
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !63 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.0177267, i64 48
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !96 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.0177267, i64 80 ; 4 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !58 ; 2 uses
  %i.gu = and i32 %i.gn, %1
  %.not211 = icmp eq i32 %i.gu, 0
  br i1 %.not211, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %8 = load i32, ptr %7, align 4, !tbaa !12
  %i.gv = load i32, ptr %i.j, align 8, !tbaa !97  ; 2 uses
  %i.gw = and i32 %i.gv, %8
  %.not212 = icmp eq i32 %i.gw, 0
  br i1 %.not212, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gx = getelementptr inbounds nuw i8, ptr %.0177267, i64 64
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !51
  %i.gz = getelementptr inbounds nuw i8, ptr %.0177267, i64 68
  %i.ha = load i16, ptr %i.gz, align 4, !tbaa !50
  %9 = sext i16 %i.ha to i64
  %10 = getelementptr inbounds [4 x i8], ptr %6, i64 %9 ; 2 uses
  %11 = load i32, ptr %10, align 4, !tbaa !12
  %12 = add nsw i32 %11, %i.gy
  store i32 %12, ptr %10, align 4, !tbaa !12
  %13 = load i32, ptr %6, align 4, !tbaa !12      ; 3 uses
  %i.hb = and i32 %13, %1
  %.not215 = icmp eq i32 %i.hb, 0
  br i1 %.not215, label %bb.aj, label %14

14:                                               ; preds = %bb.ai
  %15 = load i32, ptr %7, align 4, !tbaa !12
  %16 = and i32 %15, %i.gv
  %.not216 = icmp eq i32 %16, 0
  br i1 %.not216, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %14, %bb.ai
  %i.hc = add nsw i64 %.0175268, %5
  %.neg235 = sub i64 %.neg273, %.0175268
  %i.hd = add i64 %.neg235, %i.gp
  %i.he = add nsw i64 %.0269, %5
  %.neg236 = sub i64 %.neg273, %.0269
  %i.hf = add i64 %.neg236, %i.gr
  %i.hg = tail call i32 (i64, i64, i64, i64, i64, i64, i32, ptr, ptr, ...) @gz_fill_trapezoid_fixed(i64 noundef %i.hc, i64 noundef %i.hd, i64 noundef %.0194271, i64 noundef %i.he, i64 noundef %i.hf, i64 noundef %i.gl, i32 noundef 0, ptr noundef %0, ptr noundef nonnull %4) #9 ; 0 uses
  br label %bb.am

bb.ak:                                            ; preds = %bb.ah, %bb.ag
  %i.hh = getelementptr inbounds nuw i8, ptr %.0177267, i64 64
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !51
  %i.hj = getelementptr inbounds nuw i8, ptr %.0177267, i64 68
  %i.hk = load i16, ptr %i.hj, align 4, !tbaa !50
  %17 = sext i16 %i.hk to i64
  %18 = getelementptr inbounds [4 x i8], ptr %6, i64 %17 ; 2 uses
  %19 = load i32, ptr %18, align 4, !tbaa !12
  %i.hl = add nsw i32 %19, %i.hi
  store i32 %i.hl, ptr %18, align 4, !tbaa !12
  %20 = load i32, ptr %6, align 4, !tbaa !12      ; 3 uses
  %i.hm = and i32 %20, %1
  %.not213 = icmp eq i32 %i.hm, 0
  br i1 %.not213, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %21 = load i32, ptr %7, align 4, !tbaa !12
  %i.hn = load i32, ptr %i.j, align 8, !tbaa !97
  %i.ho = and i32 %i.hn, %21
  %.not214 = icmp eq i32 %i.ho, 0                 ; 2 uses
  %spec.select223 = select i1 %.not214, i64 %.0175268, i64 %i.gp
  %spec.select224 = select i1 %.not214, i64 %.0269, i64 %i.gr
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %14, %bb.aj
  %22 = phi i32 [ %13, %14 ], [ %13, %bb.aj ], [ %20, %bb.ak ], [ %20, %bb.al ]
  %.1176 = phi i64 [ %.0175268, %14 ], [ %.0175268, %bb.aj ], [ %.0175268, %bb.ak ], [ %spec.select223, %bb.al ]
  %.1 = phi i64 [ %.0269, %14 ], [ %.0269, %bb.aj ], [ %.0269, %bb.ak ], [ %spec.select224, %bb.al ]
  store i64 %i.gr, ptr %i.go, align 8, !tbaa !63
  %i.hp = getelementptr inbounds nuw i8, ptr %.0177267, i64 70
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !67
  %i.hr = sext i16 %i.hq to i32                   ; 2 uses
  %.not217 = icmp sgt i32 %.1189, %i.hr
  br i1 %.not217, label %swap_group.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hs = and i32 %i.hr, 3
  switch i32 %i.hs, label %swap_group.exit [
    i32 1, label %bb.ao
    i32 0, label %bb.au
  ]

bb.ao:                                            ; preds = %bb.an
  %i.ht = load ptr, ptr %i.gs, align 8, !tbaa !58 ; 3 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %bb.ao
  %.0.i = phi ptr [ %.0177267, %bb.ao ], [ %i.hv, %bb.ap ] ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.0.i, i64 72
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !60 ; 5 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 70
  %i.hx = load i16, ptr %i.hw, align 2, !tbaa !67
  %i.hy = and i16 %i.hx, 3
  %i.hz = icmp eq i16 %i.hy, 3
  br i1 %i.hz, label %bb.ap, label %bb.aq, !llvm.loop !3

bb.aq:                                            ; preds = %bb.ap
  %i.ia = getelementptr inbounds nuw i8, ptr %.0.i, i64 72
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hv, i64 80
  store ptr %.0177267, ptr %i.ib, align 8, !tbaa !58
  %.not.i225 = icmp eq ptr %i.ht, null
  br i1 %.not.i225, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ht, i64 72
  store ptr %.0.i, ptr %i.ic, align 8, !tbaa !60
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  store ptr %i.ht, ptr %i.ia, align 8, !tbaa !60
  store ptr %i.hv, ptr %i.gs, align 8, !tbaa !58
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %bb.as
  %.1.i = phi ptr [ %.0.i, %bb.as ], [ %i.ie, %bb.at ] ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.1.i, i64 80 ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !58 ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.1.i, i64 72 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !60
  store ptr %i.ig, ptr %i.id, align 8, !tbaa !58
  store ptr %i.ie, ptr %i.if, align 8, !tbaa !60
  %.not23.i = icmp eq ptr %i.ie, %i.hv
  br i1 %.not23.i, label %swap_group.exit, label %bb.at, !llvm.loop !4

bb.au:                                            ; preds = %bb.an
  %i.ih = getelementptr inbounds nuw i8, ptr %.0177267, i64 56 ; 2 uses
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !54 ; 6 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 32
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !47
  %i.il = getelementptr inbounds nuw i8, ptr %.0177267, i64 64
  %i.im = load i32, ptr %i.il, align 8, !tbaa !51
  %i.in = icmp eq i32 %i.im, 1
  br i1 %i.in, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  %i.io = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !61 ; 3 uses
  %i.iq = icmp eq ptr %i.ip, null
  br i1 %i.iq, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %i.is = load i32, ptr %i.ir, align 8, !tbaa !46
  %i.it = icmp eq i32 %i.is, 0
  br i1 %i.it, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw, %bb.av
  br label %bb.ba

bb.ay:                                            ; preds = %bb.au
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !46
  %i.iw = icmp eq i32 %i.iv, 0
  br i1 %i.iw, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ix = load ptr, ptr %i.ii, align 8, !tbaa !49
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax, %bb.aw
  %.0.i226 = phi ptr [ %i.ii, %bb.ax ], [ %i.ip, %bb.aw ], [ %i.ix, %bb.az ], [ %i.ii, %bb.ay ] ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.0.i226, i64 32
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !47 ; 2 uses
  %.not.i227 = icmp sgt i64 %i.iz, %i.ik
  br i1 %.not.i227, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ja = load ptr, ptr %i.gs, align 8, !tbaa !58 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.0177267, i64 72
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !60 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 80
  store ptr %i.ja, ptr %i.jd, align 8, !tbaa !58
  %.not36.i = icmp eq ptr %i.ja, null
  br i1 %.not36.i, label %swap_group.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.je = getelementptr inbounds nuw i8, ptr %i.ja, i64 72
  store ptr %i.jc, ptr %i.je, align 8, !tbaa !60
  br label %swap_group.exit

bb.bd:                                            ; preds = %bb.ba
  %i.jf = getelementptr inbounds nuw i8, ptr %.0.i226, i64 24
  store ptr %.0.i226, ptr %i.ih, align 8, !tbaa !54
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !48 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.0177267, i64 16 ; 3 uses
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !64
  %i.jj = sub nsw i64 %i.jg, %i.ji
  %i.jk = tail call i64 @llvm.abs.i64(i64 %i.jj, i1 true)
  %i.jl = or i64 %i.jk, 1
  %i.jm = udiv i64 2147483647, %i.jl
  %i.jn = getelementptr inbounds nuw i8, ptr %.0177267, i64 24 ; 2 uses
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !66
  %i.jp = add nsw i64 %i.jo, %i.jm
  %i.jq = getelementptr inbounds nuw i8, ptr %.0177267, i64 32
  store i64 %i.jp, ptr %i.jq, align 8, !tbaa !53
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0177267, ptr noundef nonnull align 8 dereferenceable(16) %i.jh, i64 16, i1 false), !tbaa.struct !68
  store i64 %i.jg, ptr %i.jh, align 8, !tbaa !52
  store i64 %i.iz, ptr %i.jn, align 8, !tbaa !52
  br label %swap_group.exit

swap_group.exit:                                  ; preds = %bb.at, %bb.bd, %bb.bc, %bb.bb, %bb.an, %bb.am
  %.not210 = icmp eq ptr %i.gt, null
  br i1 %.not210, label %23, label %bb.ag, !llvm.loop !93

23:                                               ; preds = %swap_group.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.be

bb.be:                                            ; preds = %.critedge.thread, %23
  %.1180242 = phi ptr [ %.1180243, %23 ], [ %.1180249, %.critedge.thread ]
  %.1195 = phi i64 [ %.4, %23 ], [ %i.l, %.critedge.thread ] ; 2 uses
  %.not = icmp slt i64 %.1195, %.sroa.3.0.copyload
  br i1 %.not, label %.preheader238, label %.thread231

.thread231:                                       ; preds = %bb.be, %.critedge, %bb.b, %bb.a
  ret void
}

declare void @gs_free(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @gx_path_release(ptr noundef) local_unnamed_addr #2

declare ptr @gs_malloc(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @add_y_line(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 27 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %i.c, ptr %i.a, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !48   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !47   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !48   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !47   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.m = load i16, ptr %i.l, align 4, !tbaa !44
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  store i16 %i.m, ptr %i.n, align 4, !tbaa !50
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i32 %2, ptr %i.o, align 8, !tbaa !51
  %i.p = icmp sgt i32 %2, 0
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = sub nsw i64 %i.e, %i.i
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.r = sub nsw i64 %i.i, %i.e
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink137 = phi i64 [ %i.r, %bb.c ], [ %i.q, %bb.b ]
  %.sink134 = phi i64 [ %i.g, %bb.c ], [ %i.k, %bb.b ] ; 5 uses
  %.sink116 = phi i64 [ %i.e, %bb.c ], [ %i.i, %bb.b ]
  %.sink114 = phi i64 [ %i.i, %bb.c ], [ %i.e, %bb.b ]
  %.sink113 = phi i64 [ %i.k, %bb.c ], [ %i.g, %bb.b ]
  %.sink = phi ptr [ %0, %bb.c ], [ %1, %bb.b ]
  %i.s = tail call i64 @llvm.abs.i64(i64 %.sink137, i1 true)
  %i.t = or i64 %i.s, 1
  %i.u = udiv i64 2147483647, %i.t
  %i.v = add nsw i64 %i.u, %.sink134
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.v, ptr %i.w, align 8, !tbaa !53
  store i64 %.sink116, ptr %i.b, align 8, !tbaa !52
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sink134, ptr %i.x, align 8, !tbaa !52
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sink114, ptr %i.y, align 8, !tbaa !52
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sink113, ptr %i.z, align 8, !tbaa !52
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %.sink, ptr %i.aa, align 8, !tbaa !54
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !55 ; 4 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  store ptr %i.b, ptr %i.af, align 8, !tbaa !56
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !57
  %.not = icmp slt i64 %.sink134, %i.ah
  br i1 %.not, label %.preheader, label %.preheader94

.preheader94:                                     ; preds = %bb.f, %bb.g
  %.0 = phi ptr [ %i.aj, %bb.g ], [ %i.ac, %bb.f ] ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !58 ; 5 uses
  %.not91 = icmp eq ptr %i.aj, null
  br i1 %.not91, label %.critedge92, label %bb.g

bb.g:                                             ; preds = %.preheader94
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !57
  %i.am = icmp sgt i64 %.sink134, %i.al
  br i1 %i.am, label %.preheader94, label %bb.h, !llvm.loop !0

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %.0, i64 80
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.aj, ptr %i.ao, align 8, !tbaa !58
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr %.0, ptr %i.ap, align 8, !tbaa !60
  store ptr %i.b, ptr %i.an, align 8, !tbaa !58
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  store ptr %i.b, ptr %i.aq, align 8, !tbaa !60
  br label %bb.l

.preheader:                                       ; preds = %bb.f, %bb.i
  %.1 = phi ptr [ %i.as, %bb.i ], [ %i.ac, %bb.f ] ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.1, i64 72
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !60 ; 5 uses
  %.not90 = icmp eq ptr %i.as, null
  br i1 %.not90, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.preheader
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !57
  %i.av = icmp slt i64 %.sink134, %i.au
  br i1 %i.av, label %.preheader, label %bb.j, !llvm.loop !1

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.1, i64 72
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr %i.as, ptr %i.ax, align 8, !tbaa !60
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %.1, ptr %i.ay, align 8, !tbaa !58
  store ptr %i.b, ptr %i.aw, align 8, !tbaa !60
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 80
  store ptr %i.b, ptr %i.az, align 8, !tbaa !58
  br label %bb.l

bb.k:                                             ; preds = %.preheader
  %i.ba = getelementptr inbounds nuw i8, ptr %.1, i64 72
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr null, ptr %i.bb, align 8, !tbaa !60
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %.1, ptr %i.bc, align 8, !tbaa !58
  store ptr %i.b, ptr %i.ba, align 8, !tbaa !60
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.b, ptr %i.bd, align 8, !tbaa !56
  br label %bb.l

.critedge92:                                      ; preds = %.preheader94
  %i.be = getelementptr inbounds nuw i8, ptr %.0, i64 80
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr null, ptr %i.bf, align 8, !tbaa !58
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr %.0, ptr %i.bg, align 8, !tbaa !60
  store ptr %i.b, ptr %i.be, align 8, !tbaa !58
  br label %bb.l

bb.l:                                             ; preds = %.critedge92, %bb.h, %bb.k, %bb.j, %bb.e
  store ptr %i.b, ptr %i.ab, align 8, !tbaa !55
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @find_cross_y(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !66   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !57   ; 2 uses
  %i.f = sub nsw i64 %i.c, %i.e
  %i.g = sitofp i64 %i.f to double                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !66   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !57   ; 2 uses
  %i.m = sub nsw i64 %i.j, %i.l
  %i.n = sitofp i64 %i.m to double                ; 2 uses
  %i.o = load i64, ptr %0, align 8, !tbaa !62     ; 2 uses
  %i.p = sitofp i64 %i.o to double
  %i.q = sitofp i64 %i.c to double
  %i.r = sitofp i64 %i.e to double
  %i.s = load i64, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %i.t = sitofp i64 %i.s to double
  %i.u = fneg double %i.t
  %i.v = fmul nnan double %i.r, %i.u
  %i.w = tail call double @llvm.fmuladd.f64(double %i.p, double %i.q, double %i.v)
  %i.x = load i64, ptr %1, align 8, !tbaa !62     ; 2 uses
  %i.y = sitofp i64 %i.x to double
  %i.z = sitofp i64 %i.j to double
  %i.aa = sitofp i64 %i.l to double
  %i.ab = load i64, ptr %i.h, align 8, !tbaa !64  ; 2 uses
  %i.ac = sitofp i64 %i.ab to double
  %i.ad = fneg double %i.ac
  %i.ae = fmul nnan double %i.aa, %i.ad
  %i.af = tail call double @llvm.fmuladd.f64(double %i.y, double %i.z, double %i.ae)
  %i.ag = fneg double %i.g
end_hunk_0
