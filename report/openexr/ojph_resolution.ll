Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_resolution?download=true
inline.NumInlined: 197
inline.NumDeleted: 86
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4ojph5local10resolution9push_lineEv:bb.a
  %i.jx = load ptr, ptr %i.ho, align 8, !tbaa !79
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 360
  tail call void @_ZN4ojph5local7subband9push_lineEv(ptr noundef nonnull align 8 dereferenceable(120) %i.jy)
  %i.jz = load ptr, ptr %i.hk, align 8, !tbaa !94
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  store i8 0, ptr %i.ka, align 8, !tbaa !96
  %i.kb = load i32, ptr %i.hi, align 8, !tbaa !99
  %i.kc = add i32 %i.kb, -1
  store i32 %i.kc, ptr %i.hi, align 8, !tbaa !99
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge
  %i.kd = load ptr, ptr %i.hl, align 8, !tbaa !93 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load i8, ptr %i.ke, align 8, !tbaa !96, !range !84, !noundef !85
  %i.kg = trunc nuw i8 %i.kf to i1
  br i1 %i.kg, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.kh = load ptr, ptr %i.hn, align 8, !tbaa !76
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !113
  %i.kk = fdiv float 1.000000e+00, %i.kj
  %i.kl = load ptr, ptr @_ZN4ojph5local16irv_vert_times_KE, align 8, !tbaa !78
  %i.km = load ptr, ptr %i.kd, align 8, !tbaa !97
  tail call void %i.kl(float noundef %i.kk, ptr noundef %i.km, i32 noundef %i.l)
  %i.kn = load ptr, ptr @_ZN4ojph5local12irv_horz_anaE, align 8, !tbaa !78
  %i.ko = load ptr, ptr %i.hn, align 8, !tbaa !76
  %i.kp = load ptr, ptr %i.hq, align 8, !tbaa !83 ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 252
  %i.kr = load i8, ptr %i.kq, align 4, !tbaa !100, !range !84, !noundef !85
  %i.ks = trunc nuw i8 %i.kr to i1
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kp, i64 244 ; 2 uses
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !98
  %i.kv = add i32 %i.ku, 1
  store i32 %i.kv, ptr %i.kt, align 4, !tbaa !98
  %..i85 = select i1 %i.ks, i64 72, i64 64
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kp, i64 %..i85
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !102 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  store i8 1, ptr %i.ky, align 8, !tbaa !96
  %.0.i86 = load ptr, ptr %i.kx, align 8, !tbaa !97
  %i.kz = load ptr, ptr %i.ho, align 8, !tbaa !79
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 152
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !164
  %i.lc = load ptr, ptr %i.hl, align 8, !tbaa !93
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !97
  %i.le = load i8, ptr %i.hp, align 1, !tbaa !101, !range !84, !noundef !85
  %i.lf = trunc nuw i8 %i.le to i1
  tail call void %i.kn(ptr noundef %i.ko, ptr noundef %.0.i86, ptr noundef %i.lb, ptr noundef %i.ld, i32 noundef %i.l, i1 noundef zeroext %i.lf)
  %i.lg = load ptr, ptr %i.ho, align 8, !tbaa !79
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 120
  tail call void @_ZN4ojph5local7subband9push_lineEv(ptr noundef nonnull align 8 dereferenceable(120) %i.lh)
  %i.li = load ptr, ptr %i.hq, align 8, !tbaa !83
  tail call void @_ZN4ojph5local10resolution9push_lineEv(ptr noundef nonnull align 8 dereferenceable(264) %i.li)
  %i.lj = load ptr, ptr %i.hl, align 8, !tbaa !93
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  store i8 0, ptr %i.lk, align 8, !tbaa !96
  %i.ll = load i32, ptr %i.hi, align 8, !tbaa !99
  %i.lm = add i32 %i.ll, -1
  store i32 %i.lm, ptr %i.hi, align 8, !tbaa !99
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ln = load i8, ptr %i.hc, align 4, !tbaa !100, !range !84, !noundef !85
  %i.lo = xor i8 %i.ln, 1
  store i8 %i.lo, ptr %i.hc, align 4, !tbaa !100
  %i.lp = load i32, ptr %i.hf, align 4, !tbaa !98
  %i.lq = load i32, ptr %i.hb, align 8, !tbaa !104
  %.not65 = icmp ult i32 %i.lp, %i.lq
  br i1 %.not65, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.lr = load i32, ptr %i.hi, align 8, !tbaa !99
  %.not66 = icmp eq i32 %i.lr, 0
  br i1 %.not66, label %.critedge, label %bb.u, !llvm.loop !161

bb.ae:                                            ; preds = %bb.r
  %i.ls = getelementptr inbounds nuw i8, ptr %.tr116, i64 252
  %i.lt = load i8, ptr %i.ls, align 4, !tbaa !100, !range !84, !noundef !85
  %i.lu = trunc nuw i8 %i.lt to i1
  br i1 %i.lu, label %tailrecurse.backedge, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.lv = getelementptr inbounds nuw i8, ptr %.tr116, i64 64
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !94
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !97 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !62 ; 3 uses
  %i.ma = zext i32 %i.l to i64                    ; 2 uses
  %min.iters.check = icmp ult i32 %i.l, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.af
  %n.vec = and i64 %i.ma, 4294967288              ; 4 uses
  %i.mb = trunc nuw i64 %n.vec to i32
  %i.mc = sub i32 %i.l, %i.mb
  %i.md = shl nuw nsw i64 %n.vec, 2
  %i.me = getelementptr i8, ptr %i.lz, i64 %i.md
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.mf = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.lz, i64 %i.mf ; 3 uses
  %i.mg = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !114
  %wide.load242 = load <4 x float>, ptr %i.mg, align 4, !tbaa !114
  %i.mh = fmul <4 x float> %wide.load, splat (float 2.000000e+00)
  %i.mi = fmul <4 x float> %wide.load242, splat (float 2.000000e+00)
  store <4 x float> %i.mh, ptr %next.gep, align 4, !tbaa !114
  store <4 x float> %i.mi, ptr %i.mg, align 4, !tbaa !114
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.mj = icmp eq i64 %index.next, %n.vec
  br i1 %i.mj, label %middle.block, label %vector.body, !llvm.loop !162

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ma
  br i1 %cmp.n, label %.loopexit272, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.af, %middle.block
  %.0118.ph = phi i32 [ %i.l, %bb.af ], [ %i.mc, %middle.block ]
  %.055117.ph = phi ptr [ %i.lz, %bb.af ], [ %i.me, %middle.block ]
  br label %scalar.ph

.loopexit272:                                     ; preds = %scalar.ph, %middle.block
  %i.mk = load ptr, ptr @_ZN4ojph5local12irv_horz_anaE, align 8, !tbaa !78
  %i.ml = getelementptr inbounds nuw i8, ptr %.tr116, i64 232
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !76
  %i.mn = getelementptr inbounds nuw i8, ptr %.tr116, i64 80 ; 3 uses
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !79 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 272
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !164
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mo, i64 392
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !164
  %i.mt = getelementptr inbounds nuw i8, ptr %.tr116, i64 253
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !101, !range !84, !noundef !85
  %i.mv = trunc nuw i8 %i.mu to i1
  tail call void %i.mk(ptr noundef %i.mm, ptr noundef %i.mq, ptr noundef %i.ms, ptr noundef nonnull %i.lx, i32 noundef %i.l, i1 noundef zeroext %i.mv)
  %i.mw = load ptr, ptr %i.mn, align 8, !tbaa !79
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 240
  tail call void @_ZN4ojph5local7subband9push_lineEv(ptr noundef nonnull align 8 dereferenceable(120) %i.mx)
  %i.my = load ptr, ptr %i.mn, align 8, !tbaa !79
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 360
  tail call void @_ZN4ojph5local7subband9push_lineEv(ptr noundef nonnull align 8 dereferenceable(120) %i.mz)
  br label %.critedge

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0118 = phi i32 [ %i.nd, %scalar.ph ], [ %.0118.ph, %scalar.ph.preheader ]
  %.055117 = phi ptr [ %i.na, %scalar.ph ], [ %.055117.ph, %scalar.ph.preheader ] ; 3 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.055117, i64 4
  %i.nb = load float, ptr %.055117, align 4, !tbaa !114
  %i.nc = fmul float %i.nb, 2.000000e+00
  store float %i.nc, ptr %.055117, align 4, !tbaa !114
  %i.nd = add i32 %.0118, -1                      ; 2 uses
  %.not = icmp eq i32 %i.nd, 0
  br i1 %.not, label %.loopexit272, label %scalar.ph, !llvm.loop !163

.critedge:                                        ; preds = %.lr.ph, %bb.ac, %bb.ad, %bb.n, %bb.o, %bb.e, %bb.t, %.loopexit272, %.loopexit, %tailrecurse._crit_edge
  ret void
}

declare void @_ZN4ojph5local7subband12exchange_bufEPNS_8line_bufE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef) local_unnamed_addr #2

declare void @_ZN4ojph5local7subband9push_lineEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN4ojph5local10resolution9pull_lineEv(ptr nofree noundef nonnull align 8 dereferenceable(264) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.ojph::lifting_buf", align 8 ; 4 uses
  %2 = alloca %"struct.ojph::lifting_buf", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !74
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %tailrecurse._crit_edge, label %.lr.ph

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %i.k, %tailrecurse ]
  %i.d = getelementptr inbounds nuw i8, ptr %.tr.lcssa, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !79
  %i.f = tail call noundef ptr @_ZN4ojph5local7subband9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(120) %i.e)
  br label %bb.bs

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %.tr110 = phi ptr [ %i.k, %tailrecurse ], [ %0, %bb.a ] ; 74 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.tr110, i64 2
  %i.h = load i8, ptr %i.g, align 2, !tbaa !72, !range !84, !noundef !85
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %tailrecurse, label %bb.b

tailrecurse:                                      ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.tr110, i64 104
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !83   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !74
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %tailrecurse._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.tr110, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !103  ; 34 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.bs, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.tr110, i64 240 ; 3 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !77   ; 4 uses
  %i.t = and i32 %i.s, 2
  %.not = icmp eq i32 %i.t, 0
  %i.u = load i8, ptr %.tr110, align 8, !tbaa !90, !range !84, !noundef !85
  %i.v = trunc nuw i8 %i.u to i1                  ; 2 uses
  br i1 %.not, label %bb.bj, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.tr110, i64 40 ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !104  ; 3 uses
  %i.y = icmp ugt i32 %i.x, 1                     ; 2 uses
  br i1 %i.v, label %bb.e, label %bb.ah

bb.e:                                             ; preds = %bb.d
  br i1 %i.y, label %bb.f, label %bb.z

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.tr110, i64 72 ; 9 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !93  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !96, !range !84, !noundef !85
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %.tr110, i64 244 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.tr110, i64 252 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.tr110, i64 232 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.tr110, i64 80 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.tr110, i64 253 ; 2 uses
  %i.aj = zext i32 %i.p to i64                    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.tr110, i64 4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.tr110, i64 64 ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.tr110, i64 56 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.tr110, i64 104
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %i.ab, align 8, !tbaa !96
  %i.ao = load ptr, ptr %i.aa, align 8, !tbaa !97
  br label %bb.bs

bb.h:                                             ; preds = %.backedge, %.preheader
  %i.ap = phi i32 [ %.pre156, %.backedge ], [ %i.x, %.preheader ]
  %i.aq = load i32, ptr %i.ae, align 4, !tbaa !98
  %i.ar = icmp ult i32 %i.aq, %i.ap
  br i1 %i.ar, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.as = load i8, ptr %i.af, align 4, !tbaa !100, !range !84, !noundef !85
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = load i32, ptr %i.r, align 8, !tbaa !77
  %i.av = and i32 %i.au, 1
  %.not91 = icmp eq i32 %i.av, 0                  ; 2 uses
  br i1 %i.at, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !83 ; 2 uses
  br i1 %.not91, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = load ptr, ptr @_ZN4ojph5local12rev_horz_synE, align 8, !tbaa !78
  %i.ay = load ptr, ptr %i.ag, align 8, !tbaa !76
  %i.az = load ptr, ptr %i.al, align 8, !tbaa !94
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !97
  %i.bb = tail call noundef ptr @_ZN4ojph5local10resolution9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(264) %i.aw)
  %i.bc = load ptr, ptr %i.ah, align 8, !tbaa !79
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 120
  %i.be = tail call noundef ptr @_ZN4ojph5local7subband9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(120) %i.bd)
  %i.bf = load i8, ptr %i.ai, align 1, !tbaa !101, !range !84, !noundef !85
  %i.bg = trunc nuw i8 %i.bf to i1
  tail call void %i.ax(ptr noundef %i.ay, ptr noundef %i.ba, ptr noundef %i.bb, ptr noundef %i.be, i32 noundef %i.p, i1 noundef zeroext %i.bg)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bh = load ptr, ptr %i.al, align 8, !tbaa !94
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !97
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !62
  %i.bl = tail call noundef ptr @_ZN4ojph5local10resolution9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(264) %i.aw)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !62
  %i.bo = load ptr, ptr %i.al, align 8, !tbaa !94
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !97
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !110
  %i.bs = and i32 %i.br, 15
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = mul nuw nsw i64 %i.bt, %i.aj
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bk, ptr align 1 %i.bn, i64 %i.bu, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bv = load ptr, ptr %i.al, align 8, !tbaa !94
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i8 1, ptr %i.bw, align 8, !tbaa !96
  %i.bx = load i8, ptr %i.af, align 4, !tbaa !100, !range !84, !noundef !85
  %i.by = xor i8 %i.bx, 1
  store i8 %i.by, ptr %i.af, align 4, !tbaa !100
  %i.bz = load i32, ptr %i.ae, align 4, !tbaa !98
  %i.ca = add i32 %i.bz, 1
  store i32 %i.ca, ptr %i.ae, align 4, !tbaa !98
  br label %.backedge

.backedge:                                        ; preds = %bb.m, %bb.x
  %.pre156 = load i32, ptr %i.w, align 8, !tbaa !104
  br label %bb.h, !llvm.loop !165

bb.n:                                             ; preds = %bb.i
  %i.cb = load ptr, ptr %i.ah, align 8, !tbaa !79
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 240 ; 2 uses
  br i1 %.not91, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cd = load ptr, ptr @_ZN4ojph5local12rev_horz_synE, align 8, !tbaa !78
  %i.ce = load ptr, ptr %i.ag, align 8, !tbaa !76
  %i.cf = load ptr, ptr %i.z, align 8, !tbaa !93
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !97
  %i.ch = tail call noundef ptr @_ZN4ojph5local7subband9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(120) %i.cc)
  %i.ci = load ptr, ptr %i.ah, align 8, !tbaa !79
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 360
  %i.ck = tail call noundef ptr @_ZN4ojph5local7subband9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(120) %i.cj)
  %i.cl = load i8, ptr %i.ai, align 1, !tbaa !101, !range !84, !noundef !85
  %i.cm = trunc nuw i8 %i.cl to i1
  tail call void %i.cd(ptr noundef %i.ce, ptr noundef %i.cg, ptr noundef %i.ch, ptr noundef %i.ck, i32 noundef %i.p, i1 noundef zeroext %i.cm)
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.cn = load ptr, ptr %i.z, align 8, !tbaa !93
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !97
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !62
  %i.cr = tail call noundef ptr @_ZN4ojph5local7subband9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(120) %i.cc)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !62
  %i.cu = load ptr, ptr %i.z, align 8, !tbaa !93
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !97
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 12
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !110
  %i.cy = and i32 %i.cx, 15
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = mul nuw nsw i64 %i.cz, %i.aj
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cq, ptr align 1 %i.ct, i64 %i.da, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.db = load ptr, ptr %i.z, align 8, !tbaa !93
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i8 1, ptr %i.dc, align 8, !tbaa !96
  %i.dd = load i8, ptr %i.af, align 4, !tbaa !100, !range !84, !noundef !85
  %i.de = xor i8 %i.dd, 1
  store i8 %i.de, ptr %i.af, align 4, !tbaa !100
  %i.df = load i32, ptr %i.ae, align 4, !tbaa !98
  %i.dg = add i32 %i.df, 1
  store i32 %i.dg, ptr %i.ae, align 4, !tbaa !98
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.h
  %i.dh = load i32, ptr %i.ak, align 4, !tbaa !91
  %.not136 = icmp eq i32 %i.dh, 0
  br i1 %.not136, label %._crit_edge132, label %.lr.ph131

._crit_edge132:                                   ; preds = %bb.v, %bb.r
  %i.di = load ptr, ptr %i.al, align 8, !tbaa !94 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load i8, ptr %i.dj, align 8, !tbaa !96, !range !84, !noundef !85
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %bb.w, label %bb.x

.lr.ph131:                                        ; preds = %bb.r, %bb.v
  %indvars.iv146 = phi i64 [ %indvars.iv.next147, %bb.v ], [ 0, %bb.r ] ; 7 uses
  %i.dm = load ptr, ptr %i.al, align 8, !tbaa !94 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load i8, ptr %i.dn, align 8, !tbaa !96, !range !84, !noundef !85
  %i.dp = trunc nuw i8 %i.do to i1
  %.pre163 = load ptr, ptr %i.am, align 8, !tbaa !92 ; 5 uses
  br i1 %i.dp, label %bb.s, label %bb.v

bb.s:                                             ; preds = %.lr.ph131
  %i.dq = load ptr, ptr %i.z, align 8, !tbaa !93  ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load i8, ptr %i.dr, align 8, !tbaa !96, !range !84, !noundef !85
  %i.dt = trunc nuw i8 %i.ds to i1
  %.phi.trans.insert158 = getelementptr inbounds nuw [16 x i8], ptr %.pre163, i64 %indvars.iv146 ; 2 uses
  %.phi.trans.insert159 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert158, i64 8
  %.pre160 = load i8, ptr %.phi.trans.insert159, align 8, !tbaa !96, !range !84
  %.pre160.fr = freeze i8 %.pre160
  %i.du = trunc i8 %.pre160.fr to i1              ; 2 uses
  br i1 %i.dt, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %i.du, label %.thread.thread, label %bb.v

.thread.thread:                                   ; preds = %bb.t
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %.pre163, i64 %indvars.iv146
  br label %bb.u

.thread:                                          ; preds = %bb.s
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %.pre163, i64 %indvars.iv146
  %spec.select = select i1 %i.du, ptr %i.dw, ptr %i.dq
  br label %bb.u

bb.u:                                             ; preds = %.thread, %.thread.thread
  %.in190 = phi ptr [ %i.dq, %.thread ], [ %.phi.trans.insert158, %.thread.thread ]
  %i.dx = phi ptr [ %spec.select, %.thread ], [ %i.dv, %.thread.thread ]
  %i.dy = load ptr, ptr %i.dm, align 8, !tbaa !97
  %i.dz = load ptr, ptr %.in190, align 8, !tbaa !97
  %i.ea = load ptr, ptr %i.dx, align 8, !tbaa !97
  %i.eb = load ptr, ptr %i.ag, align 8, !tbaa !76
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !105
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv146
  %i.ef = load ptr, ptr @_ZN4ojph5local13rev_vert_stepE, align 8, !tbaa !78
  tail call void %i.ef(ptr noundef %i.ee, ptr noundef %i.dz, ptr noundef %i.ea, ptr noundef %i.dy, i32 noundef %i.p, i1 noundef zeroext true)
  %.pre161 = load ptr, ptr %i.al, align 8, !tbaa !94
  %.pre162 = load ptr, ptr %i.am, align 8, !tbaa !92
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %.lr.ph131
  %i.eg = phi ptr [ %.pre162, %bb.u ], [ %.pre163, %bb.t ], [ %.pre163, %.lr.ph131 ]
  %i.eh = phi ptr [ %.pre161, %bb.u ], [ %i.dm, %bb.t ], [ %i.dm, %.lr.ph131 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.eh, i64 16, i1 false), !tbaa.struct !108
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.eg, i64 %indvars.iv146
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.eh, ptr noundef nonnull align 8 dereferenceable(9) %i.ei, i64 9, i1 false), !tbaa.struct !108
  %i.ej = load ptr, ptr %i.z, align 8, !tbaa !93
  %i.ek = load ptr, ptr %i.am, align 8, !tbaa !92
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %i.ek, i64 %indvars.iv146
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.el, ptr noundef nonnull align 8 dereferenceable(9) %i.ej, i64 9, i1 false), !tbaa.struct !108
  %i.em = load ptr, ptr %i.z, align 8, !tbaa !93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.em, ptr noundef nonnull align 8 dereferenceable(9) %1, i64 9, i1 false), !tbaa.struct !108
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %i.en = load i32, ptr %i.ak, align 4, !tbaa !91
  %i.eo = zext i32 %i.en to i64
  %i.ep = icmp samesign ult i64 %indvars.iv.next147, %i.eo
  br i1 %i.ep, label %.lr.ph131, label %._crit_edge132, !llvm.loop !166

bb.w:                                             ; preds = %._crit_edge132
  %i.eq = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i8 0, ptr %i.eq, align 8, !tbaa !96
  %i.er = load ptr, ptr %i.di, align 8, !tbaa !97
  br label %bb.bs

bb.x:                                             ; preds = %._crit_edge132
  %i.es = load ptr, ptr %i.z, align 8, !tbaa !93  ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load i8, ptr %i.et, align 8, !tbaa !96, !range !84, !noundef !85
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %bb.y, label %.backedge

bb.y:                                             ; preds = %bb.x
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store i8 0, ptr %i.ew, align 8, !tbaa !96
  %i.ex = load ptr, ptr %i.es, align 8, !tbaa !97
  br label %bb.bs

bb.z:                                             ; preds = %bb.e
  %i.ey = getelementptr inbounds nuw i8, ptr %.tr110, i64 252
  %i.ez = load i8, ptr %i.ey, align 4, !tbaa !100, !range !84, !noundef !85
  %i.fa = trunc nuw i8 %i.ez to i1
  %i.fb = and i32 %i.s, 1
  %.not87 = icmp eq i32 %i.fb, 0                  ; 2 uses
  br i1 %i.fa, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  br i1 %.not87, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fc = load ptr, ptr @_ZN4ojph5local12rev_horz_synE, align 8, !tbaa !78
  %i.fd = getelementptr inbounds nuw i8, ptr %.tr110, i64 232
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !76
  %i.ff = getelementptr inbounds nuw i8, ptr %.tr110, i64 64
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !94
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !97
  %i.fi = getelementptr inbounds nuw i8, ptr %.tr110, i64 104
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !83
  %i.fk = tail call noundef ptr @_ZN4ojph5local10resolution9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(264) %i.fj)
  %i.fl = getelementptr inbounds nuw i8, ptr %.tr110, i64 80
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !79
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 120
  %i.fo = tail call noundef ptr @_ZN4ojph5local7subband9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(120) %i.fn)
  %i.fp = getelementptr inbounds nuw i8, ptr %.tr110, i64 253
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !101, !range !84, !noundef !85
  %i.fr = trunc nuw i8 %i.fq to i1
  tail call void %i.fc(ptr noundef %i.fe, ptr noundef %i.fh, ptr noundef %i.fk, ptr noundef %i.fo, i32 noundef %i.p, i1 noundef zeroext %i.fr)
  br label %.loopexit

bb.ac:                                            ; preds = %bb.aa
  %i.fs = getelementptr inbounds nuw i8, ptr %.tr110, i64 64 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !94
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !97
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !62
  %i.fx = getelementptr inbounds nuw i8, ptr %.tr110, i64 104
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !83
  %i.fz = tail call noundef ptr @_ZN4ojph5local10resolution9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(264) %i.fy)
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !62
  %i.gc = zext i32 %i.p to i64
  %i.gd = load ptr, ptr %i.fs, align 8, !tbaa !94
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !97
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !110
  %i.gh = and i32 %i.gg, 15
  %i.gi = zext nneg i32 %i.gh to i64
  %i.gj = mul nuw nsw i64 %i.gi, %i.gc
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fw, ptr align 1 %i.gb, i64 %i.gj, i1 false)
  br label %.loopexit

bb.ad:                                            ; preds = %bb.z
  br i1 %.not87, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gk = load ptr, ptr @_ZN4ojph5local12rev_horz_synE, align 8, !tbaa !78
  %i.gl = getelementptr inbounds nuw i8, ptr %.tr110, i64 232
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !76
  %i.gn = getelementptr inbounds nuw i8, ptr %.tr110, i64 64
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !94
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !97
  %i.gq = getelementptr inbounds nuw i8, ptr %.tr110, i64 80 ; 2 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !79
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 240
  %i.gt = tail call noundef ptr @_ZN4ojph5local7subband9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(120) %i.gs)
  %i.gu = load ptr, ptr %i.gq, align 8, !tbaa !79
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 360
  %i.gw = tail call noundef ptr @_ZN4ojph5local7subband9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(120) %i.gv)
  %i.gx = getelementptr inbounds nuw i8, ptr %.tr110, i64 253
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !101, !range !84, !noundef !85
  %i.gz = trunc nuw i8 %i.gy to i1
  tail call void %i.gk(ptr noundef %i.gm, ptr noundef %i.gp, ptr noundef %i.gt, ptr noundef %i.gw, i32 noundef %i.p, i1 noundef zeroext %i.gz)
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.ha = getelementptr inbounds nuw i8, ptr %.tr110, i64 64 ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !94
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !97
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !62
  %i.hf = getelementptr inbounds nuw i8, ptr %.tr110, i64 80
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !79
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 240
  %i.hi = tail call noundef ptr @_ZN4ojph5local7subband9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(120) %i.hh)
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !62
  %i.hl = zext i32 %i.p to i64
  %i.hm = load ptr, ptr %i.ha, align 8, !tbaa !94
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !97
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 12
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !110
  %i.hq = and i32 %i.hp, 15
  %i.hr = zext nneg i32 %i.hq to i64
  %i.hs = mul nuw nsw i64 %i.hr, %i.hl
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.he, ptr align 1 %i.hk, i64 %i.hs, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ht = getelementptr inbounds nuw i8, ptr %.tr110, i64 64
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !94
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !97 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 12
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !110
  %i.hy = and i32 %i.hx, 4
  %.not84 = icmp eq i32 %i.hy, 0
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !62 ; 6 uses
  %i.ib = zext i32 %i.p to i64                    ; 4 uses
  br i1 %.not84, label %.lr.ph128.preheader, label %.lr.ph123.preheader

.lr.ph123.preheader:                              ; preds = %bb.ag
  %min.iters.check202 = icmp ult i32 %i.p, 8
  br i1 %min.iters.check202, label %.lr.ph123.preheader232, label %vector.ph203

vector.ph203:                                     ; preds = %.lr.ph123.preheader
  %n.vec204 = and i64 %i.ib, 4294967288           ; 4 uses
  %i.ic = trunc nuw i64 %n.vec204 to i32
  %i.id = sub i32 %i.p, %i.ic
  %i.ie = shl nuw nsw i64 %n.vec204, 2
  %i.if = getelementptr i8, ptr %i.ia, i64 %i.ie
  br label %vector.body205

vector.body205:                                   ; preds = %vector.body205, %vector.ph203
  %index206 = phi i64 [ 0, %vector.ph203 ], [ %index.next210, %vector.body205 ] ; 2 uses
  %i.ig = shl i64 %index206, 2
  %next.gep207 = getelementptr i8, ptr %i.ia, i64 %i.ig ; 3 uses
  %i.ih = getelementptr i8, ptr %next.gep207, i64 16 ; 2 uses
  %wide.load208 = load <4 x i32>, ptr %next.gep207, align 4, !tbaa !59
  %wide.load209 = load <4 x i32>, ptr %i.ih, align 4, !tbaa !59
  %i.ii = ashr <4 x i32> %wide.load208, splat (i32 1)
  %i.ij = ashr <4 x i32> %wide.load209, splat (i32 1)
  store <4 x i32> %i.ii, ptr %next.gep207, align 4, !tbaa !59
  store <4 x i32> %i.ij, ptr %i.ih, align 4, !tbaa !59
  %index.next210 = add nuw i64 %index206, 8       ; 2 uses
  %i.ik = icmp eq i64 %index.next210, %n.vec204
  br i1 %i.ik, label %middle.block211, label %vector.body205, !llvm.loop !167

middle.block211:                                  ; preds = %vector.body205
  %cmp.n212 = icmp eq i64 %n.vec204, %i.ib
  br i1 %cmp.n212, label %.loopexit, label %.lr.ph123.preheader232

.lr.ph123.preheader232:                           ; preds = %.lr.ph123.preheader, %middle.block211
  %.071121.ph = phi i32 [ %i.p, %.lr.ph123.preheader ], [ %i.id, %middle.block211 ]
  %.072120.ph = phi ptr [ %i.ia, %.lr.ph123.preheader ], [ %i.if, %middle.block211 ]
  br label %.lr.ph123

.lr.ph128.preheader:                              ; preds = %bb.ag
  %min.iters.check216 = icmp ult i32 %i.p, 4
  br i1 %min.iters.check216, label %.lr.ph128.preheader231, label %vector.ph217

vector.ph217:                                     ; preds = %.lr.ph128.preheader
  %n.vec218 = and i64 %i.ib, 4294967292           ; 4 uses
  %i.il = trunc nuw i64 %n.vec218 to i32
  %i.im = sub i32 %i.p, %i.il
  %i.in = shl nuw nsw i64 %n.vec218, 3
  %i.io = getelementptr i8, ptr %i.ia, i64 %i.in
  br label %vector.body219

vector.body219:                                   ; preds = %vector.body219, %vector.ph217
  %index220 = phi i64 [ 0, %vector.ph217 ], [ %index.next224, %vector.body219 ] ; 2 uses
  %i.ip = shl i64 %index220, 3
  %next.gep221 = getelementptr i8, ptr %i.ia, i64 %i.ip ; 3 uses
  %i.iq = getelementptr i8, ptr %next.gep221, i64 16 ; 2 uses
  %wide.load222 = load <2 x i64>, ptr %next.gep221, align 8, !tbaa !58
  %wide.load223 = load <2 x i64>, ptr %i.iq, align 8, !tbaa !58
  %i.ir = ashr <2 x i64> %wide.load222, splat (i64 1)
  %i.is = ashr <2 x i64> %wide.load223, splat (i64 1)
  store <2 x i64> %i.ir, ptr %next.gep221, align 8, !tbaa !58
  store <2 x i64> %i.is, ptr %i.iq, align 8, !tbaa !58
  %index.next224 = add nuw i64 %index220, 4       ; 2 uses
  %i.it = icmp eq i64 %index.next224, %n.vec218
  br i1 %i.it, label %middle.block225, label %vector.body219, !llvm.loop !168

middle.block225:                                  ; preds = %vector.body219
  %cmp.n226 = icmp eq i64 %n.vec218, %i.ib
  br i1 %cmp.n226, label %.loopexit, label %.lr.ph128.preheader231

.lr.ph128.preheader231:                           ; preds = %.lr.ph128.preheader, %middle.block225
  %.069126.ph = phi i32 [ %i.p, %.lr.ph128.preheader ], [ %i.im, %middle.block225 ]
  %.070125.ph = phi ptr [ %i.ia, %.lr.ph128.preheader ], [ %i.io, %middle.block225 ]
  br label %.lr.ph128

.lr.ph123:                                        ; preds = %.lr.ph123.preheader232, %.lr.ph123
  %.071121 = phi i32 [ %i.ix, %.lr.ph123 ], [ %.071121.ph, %.lr.ph123.preheader232 ]
  %.072120 = phi ptr [ %i.iu, %.lr.ph123 ], [ %.072120.ph, %.lr.ph123.preheader232 ] ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.072120, i64 4
  %i.iv = load i32, ptr %.072120, align 4, !tbaa !59
  %i.iw = ashr i32 %i.iv, 1
  store i32 %i.iw, ptr %.072120, align 4, !tbaa !59
  %i.ix = add i32 %.071121, -1                    ; 2 uses
  %.not86 = icmp eq i32 %i.ix, 0
  br i1 %.not86, label %.loopexit, label %.lr.ph123, !llvm.loop !169

.lr.ph128:                                        ; preds = %.lr.ph128.preheader231, %.lr.ph128
  %.069126 = phi i32 [ %i.jb, %.lr.ph128 ], [ %.069126.ph, %.lr.ph128.preheader231 ]
  %.070125 = phi ptr [ %i.iy, %.lr.ph128 ], [ %.070125.ph, %.lr.ph128.preheader231 ] ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.070125, i64 8
  %i.iz = load i64, ptr %.070125, align 8, !tbaa !58
  %i.ja = ashr i64 %i.iz, 1
  store i64 %i.ja, ptr %.070125, align 8, !tbaa !58
  %i.jb = add i32 %.069126, -1                    ; 2 uses
  %.not85 = icmp eq i32 %i.jb, 0
  br i1 %.not85, label %.loopexit, label %.lr.ph128, !llvm.loop !170

.loopexit:                                        ; preds = %.lr.ph123, %.lr.ph128, %middle.block211, %middle.block225, %bb.ab, %bb.ac
  %i.jc = getelementptr inbounds nuw i8, ptr %.tr110, i64 64
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !94
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !97
  br label %bb.bs

bb.ah:                                            ; preds = %bb.d
  br i1 %i.y, label %bb.ai, label %bb.bc

bb.ai:                                            ; preds = %bb.ah
  %i.jf = getelementptr inbounds nuw i8, ptr %.tr110, i64 72 ; 8 uses
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !93 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8 ; 2 uses
  %i.ji = load i8, ptr %i.jh, align 8, !tbaa !96, !range !84, !noundef !85
  %i.jj = trunc nuw i8 %i.ji to i1
  br i1 %i.jj, label %bb.aj, label %.preheader95

.preheader95:                                     ; preds = %bb.ai
  %i.jk = getelementptr inbounds nuw i8, ptr %.tr110, i64 244 ; 5 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.tr110, i64 252 ; 5 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.tr110, i64 232 ; 5 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.tr110, i64 80 ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.tr110, i64 253 ; 2 uses
  %i.jp = zext i32 %i.p to i64
  %i.jq = shl nuw nsw i64 %i.jp, 2                ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.tr110, i64 4 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.tr110, i64 64 ; 6 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.tr110, i64 56 ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.tr110, i64 104
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i8 0, ptr %i.jh, align 8, !tbaa !96
  %i.jv = load ptr, ptr %i.jg, align 8, !tbaa !97
  br label %bb.bs

bb.ak:                                            ; preds = %.backedge96, %.preheader95
  %i.jw = phi i32 [ %.pre, %.backedge96 ], [ %i.x, %.preheader95 ]
  %i.jx = load i32, ptr %i.jk, align 4, !tbaa !98
  %i.jy = icmp ult i32 %i.jx, %i.jw
  br i1 %i.jy, label %bb.al, label %bb.au

bb.al:                                            ; preds = %bb.ak
  %i.jz = load i8, ptr %i.jl, align 4, !tbaa !100, !range !84, !noundef !85
  %i.ka = trunc nuw i8 %i.jz to i1
  %i.kb = load i32, ptr %i.r, align 8, !tbaa !77
  %i.kc = and i32 %i.kb, 1
  %.not82 = icmp eq i32 %i.kc, 0                  ; 2 uses
  br i1 %i.ka, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %bb.al
  %i.kd = load ptr, ptr %i.ju, align 8, !tbaa !83 ; 2 uses
  br i1 %.not82, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ke = load ptr, ptr @_ZN4ojph5local12irv_horz_synE, align 8, !tbaa !78
  %i.kf = load ptr, ptr %i.jm, align 8, !tbaa !76
  %i.kg = load ptr, ptr %i.js, align 8, !tbaa !94
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !97
  %i.ki = tail call noundef ptr @_ZN4ojph5local10resolution9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(264) %i.kd)
  %i.kj = load ptr, ptr %i.jn, align 8, !tbaa !79
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 120
  %i.kl = tail call noundef ptr @_ZN4ojph5local7subband9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(120) %i.kk)
  %i.km = load i8, ptr %i.jo, align 1, !tbaa !101, !range !84, !noundef !85
  %i.kn = trunc nuw i8 %i.km to i1
  tail call void %i.ke(ptr noundef %i.kf, ptr noundef %i.kh, ptr noundef %i.ki, ptr noundef %i.kl, i32 noundef %i.p, i1 noundef zeroext %i.kn)
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.ko = load ptr, ptr %i.js, align 8, !tbaa !94
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !97
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !62
  %i.ks = tail call noundef ptr @_ZN4ojph5local10resolution9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(264) %i.kd)
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !62
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.kr, ptr align 4 %i.ku, i64 %i.jq, i1 false)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.kv = load ptr, ptr %i.js, align 8, !tbaa !94 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  store i8 1, ptr %i.kw, align 8, !tbaa !96
  %i.kx = load i8, ptr %i.jl, align 4, !tbaa !100, !range !84, !noundef !85
  %i.ky = xor i8 %i.kx, 1
  store i8 %i.ky, ptr %i.jl, align 4, !tbaa !100
  %i.kz = load i32, ptr %i.jk, align 4, !tbaa !98
  %i.la = add i32 %i.kz, 1
  store i32 %i.la, ptr %i.jk, align 4, !tbaa !98
  %i.lb = load ptr, ptr %i.jm, align 8, !tbaa !76
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 4
  %i.ld = load float, ptr %i.lc, align 4, !tbaa !113
  %i.le = load ptr, ptr @_ZN4ojph5local16irv_vert_times_KE, align 8, !tbaa !78
  %i.lf = load ptr, ptr %i.kv, align 8, !tbaa !97
  tail call void %i.le(float noundef %i.ld, ptr noundef %i.lf, i32 noundef %i.p)
  br label %.backedge96

.backedge96:                                      ; preds = %bb.ap, %bb.ba
  %.pre = load i32, ptr %i.w, align 8, !tbaa !104
  br label %bb.ak, !llvm.loop !171

bb.aq:                                            ; preds = %bb.al
  %i.lg = load ptr, ptr %i.jn, align 8, !tbaa !79
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 240 ; 2 uses
  br i1 %.not82, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.li = load ptr, ptr @_ZN4ojph5local12irv_horz_synE, align 8, !tbaa !78
  %i.lj = load ptr, ptr %i.jm, align 8, !tbaa !76
  %i.lk = load ptr, ptr %i.jf, align 8, !tbaa !93
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !97
  %i.lm = tail call noundef ptr @_ZN4ojph5local7subband9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(120) %i.lh)
  %i.ln = load ptr, ptr %i.jn, align 8, !tbaa !79
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 360
  %i.lp = tail call noundef ptr @_ZN4ojph5local7subband9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(120) %i.lo)
  %i.lq = load i8, ptr %i.jo, align 1, !tbaa !101, !range !84, !noundef !85
  %i.lr = trunc nuw i8 %i.lq to i1
  tail call void %i.li(ptr noundef %i.lj, ptr noundef %i.ll, ptr noundef %i.lm, ptr noundef %i.lp, i32 noundef %i.p, i1 noundef zeroext %i.lr)
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.ls = load ptr, ptr %i.jf, align 8, !tbaa !93
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !97
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !62
  %i.lw = tail call noundef ptr @_ZN4ojph5local7subband9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(120) %i.lh)
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !62
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.lv, ptr align 4 %i.ly, i64 %i.jq, i1 false)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.lz = load ptr, ptr %i.jf, align 8, !tbaa !93 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  store i8 1, ptr %i.ma, align 8, !tbaa !96
  %i.mb = load i8, ptr %i.jl, align 4, !tbaa !100, !range !84, !noundef !85
  %i.mc = xor i8 %i.mb, 1
  store i8 %i.mc, ptr %i.jl, align 4, !tbaa !100
  %i.md = load i32, ptr %i.jk, align 4, !tbaa !98
  %i.me = add i32 %i.md, 1
  store i32 %i.me, ptr %i.jk, align 4, !tbaa !98
  %i.mf = load ptr, ptr %i.jm, align 8, !tbaa !76
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 4
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !113
  %i.mi = fdiv float 1.000000e+00, %i.mh
  %i.mj = load ptr, ptr @_ZN4ojph5local16irv_vert_times_KE, align 8, !tbaa !78
  %i.mk = load ptr, ptr %i.lz, align 8, !tbaa !97
  tail call void %i.mj(float noundef %i.mi, ptr noundef %i.mk, i32 noundef %i.p)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.ak
  %i.ml = load i32, ptr %i.jr, align 4, !tbaa !91
  %.not135 = icmp eq i32 %i.ml, 0
  br i1 %.not135, label %._crit_edge, label %.lr.ph116

._crit_edge:                                      ; preds = %bb.ay, %bb.au
  %i.mm = load ptr, ptr %i.js, align 8, !tbaa !94 ; 3 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %i.mo = load i8, ptr %i.mn, align 8, !tbaa !96, !range !84, !noundef !85
  %i.mp = trunc nuw i8 %i.mo to i1
  br i1 %i.mp, label %bb.az, label %bb.ba

.lr.ph116:                                        ; preds = %bb.au, %bb.ay
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ay ], [ 0, %bb.au ] ; 7 uses
  %i.mq = load ptr, ptr %i.js, align 8, !tbaa !94 ; 4 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  %i.ms = load i8, ptr %i.mr, align 8, !tbaa !96, !range !84, !noundef !85
  %i.mt = trunc nuw i8 %i.ms to i1
  %.pre154 = load ptr, ptr %i.jt, align 8, !tbaa !92 ; 5 uses
  br i1 %i.mt, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %.lr.ph116
  %i.mu = load ptr, ptr %i.jf, align 8, !tbaa !93 ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  %i.mw = load i8, ptr %i.mv, align 8, !tbaa !96, !range !84, !noundef !85
  %i.mx = trunc nuw i8 %i.mw to i1
  %.phi.trans.insert = getelementptr inbounds nuw [16 x i8], ptr %.pre154, i64 %indvars.iv ; 2 uses
  %.phi.trans.insert150 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 8
  %.pre151 = load i8, ptr %.phi.trans.insert150, align 8, !tbaa !96, !range !84
  %.pre151.fr = freeze i8 %.pre151
  %i.my = trunc i8 %.pre151.fr to i1              ; 2 uses
  br i1 %i.mx, label %.thread92, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  br i1 %i.my, label %.thread92.thread, label %bb.ay

.thread92.thread:                                 ; preds = %bb.aw
  %i.mz = getelementptr inbounds nuw [16 x i8], ptr %.pre154, i64 %indvars.iv
  br label %bb.ax

.thread92:                                        ; preds = %bb.av
  %i.na = getelementptr inbounds nuw [16 x i8], ptr %.pre154, i64 %indvars.iv
  %spec.select189 = select i1 %i.my, ptr %i.na, ptr %i.mu
  br label %bb.ax

bb.ax:                                            ; preds = %.thread92, %.thread92.thread
  %.in = phi ptr [ %i.mu, %.thread92 ], [ %.phi.trans.insert, %.thread92.thread ]
  %i.nb = phi ptr [ %spec.select189, %.thread92 ], [ %i.mz, %.thread92.thread ]
  %i.nc = load ptr, ptr %i.mq, align 8, !tbaa !97
  %i.nd = load ptr, ptr %.in, align 8, !tbaa !97
  %i.ne = load ptr, ptr %i.nb, align 8, !tbaa !97
  %i.nf = load ptr, ptr %i.jm, align 8, !tbaa !76
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !105
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.nh, i64 %indvars.iv
  %i.nj = load ptr, ptr @_ZN4ojph5local13irv_vert_stepE, align 8, !tbaa !78
  tail call void %i.nj(ptr noundef %i.ni, ptr noundef %i.nd, ptr noundef %i.ne, ptr noundef %i.nc, i32 noundef %i.p, i1 noundef zeroext true)
  %.pre152 = load ptr, ptr %i.js, align 8, !tbaa !94
  %.pre153 = load ptr, ptr %i.jt, align 8, !tbaa !92
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %.lr.ph116
  %i.nk = phi ptr [ %.pre153, %bb.ax ], [ %.pre154, %bb.aw ], [ %.pre154, %.lr.ph116 ]
  %i.nl = phi ptr [ %.pre152, %bb.ax ], [ %i.mq, %bb.aw ], [ %i.mq, %.lr.ph116 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.nl, i64 16, i1 false), !tbaa.struct !108
  %i.nm = getelementptr inbounds nuw [16 x i8], ptr %i.nk, i64 %indvars.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.nl, ptr noundef nonnull align 8 dereferenceable(9) %i.nm, i64 9, i1 false), !tbaa.struct !108
  %i.nn = load ptr, ptr %i.jf, align 8, !tbaa !93
  %i.no = load ptr, ptr %i.jt, align 8, !tbaa !92
  %i.np = getelementptr inbounds nuw [16 x i8], ptr %i.no, i64 %indvars.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.np, ptr noundef nonnull align 8 dereferenceable(9) %i.nn, i64 9, i1 false), !tbaa.struct !108
  %i.nq = load ptr, ptr %i.jf, align 8, !tbaa !93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.nq, ptr noundef nonnull align 8 dereferenceable(9) %2, i64 9, i1 false), !tbaa.struct !108
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.nr = load i32, ptr %i.jr, align 4, !tbaa !91
  %i.ns = zext i32 %i.nr to i64
  %i.nt = icmp samesign ult i64 %indvars.iv.next, %i.ns
  br i1 %i.nt, label %.lr.ph116, label %._crit_edge, !llvm.loop !172

bb.az:                                            ; preds = %._crit_edge
  %i.nu = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  store i8 0, ptr %i.nu, align 8, !tbaa !96
  %i.nv = load ptr, ptr %i.mm, align 8, !tbaa !97
  br label %bb.bs

bb.ba:                                            ; preds = %._crit_edge
  %i.nw = load ptr, ptr %i.jf, align 8, !tbaa !93 ; 3 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  %i.ny = load i8, ptr %i.nx, align 8, !tbaa !96, !range !84, !noundef !85
  %i.nz = trunc nuw i8 %i.ny to i1
  br i1 %i.nz, label %bb.bb, label %.backedge96

bb.bb:                                            ; preds = %bb.ba
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  store i8 0, ptr %i.oa, align 8, !tbaa !96
  %i.ob = load ptr, ptr %i.nw, align 8, !tbaa !97
  br label %bb.bs

bb.bc:                                            ; preds = %bb.ah
  %i.oc = getelementptr inbounds nuw i8, ptr %.tr110, i64 252
  %i.od = load i8, ptr %i.oc, align 4, !tbaa !100, !range !84, !noundef !85
  %i.oe = trunc nuw i8 %i.od to i1
  %i.of = and i32 %i.s, 1
  %.not79 = icmp eq i32 %i.of, 0                  ; 2 uses
  br i1 %i.oe, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  br i1 %.not79, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.og = load ptr, ptr @_ZN4ojph5local12irv_horz_synE, align 8, !tbaa !78
  %i.oh = getelementptr inbounds nuw i8, ptr %.tr110, i64 232
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !76
  %i.oj = getelementptr inbounds nuw i8, ptr %.tr110, i64 64
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !94
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !97
  %i.om = getelementptr inbounds nuw i8, ptr %.tr110, i64 104
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !83
  %i.oo = tail call noundef ptr @_ZN4ojph5local10resolution9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(264) %i.on)
  %i.op = getelementptr inbounds nuw i8, ptr %.tr110, i64 80
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !79
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 120
  %i.os = tail call noundef ptr @_ZN4ojph5local7subband9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(120) %i.or)
  %i.ot = getelementptr inbounds nuw i8, ptr %.tr110, i64 253
  %i.ou = load i8, ptr %i.ot, align 1, !tbaa !101, !range !84, !noundef !85
  %i.ov = trunc nuw i8 %i.ou to i1
  tail call void %i.og(ptr noundef %i.oi, ptr noundef %i.ol, ptr noundef %i.oo, ptr noundef %i.os, i32 noundef %i.p, i1 noundef zeroext %i.ov)
  br label %.loopexit97

bb.bf:                                            ; preds = %bb.bd
  %i.ow = getelementptr inbounds nuw i8, ptr %.tr110, i64 64
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !94
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !97
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 16
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !62
  %i.pb = getelementptr inbounds nuw i8, ptr %.tr110, i64 104
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !83
  %i.pd = tail call noundef ptr @_ZN4ojph5local10resolution9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(264) %i.pc)
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 16
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !62
  %i.pg = zext i32 %i.p to i64
  %i.ph = shl nuw nsw i64 %i.pg, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.pa, ptr align 4 %i.pf, i64 %i.ph, i1 false)
  br label %.loopexit97

bb.bg:                                            ; preds = %bb.bc
  br i1 %.not79, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.pi = load ptr, ptr @_ZN4ojph5local12irv_horz_synE, align 8, !tbaa !78
  %i.pj = getelementptr inbounds nuw i8, ptr %.tr110, i64 232
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !76
  %i.pl = getelementptr inbounds nuw i8, ptr %.tr110, i64 64
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !94
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !97
  %i.po = getelementptr inbounds nuw i8, ptr %.tr110, i64 80 ; 2 uses
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !79
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 240
  %i.pr = tail call noundef ptr @_ZN4ojph5local7subband9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(120) %i.pq)
  %i.ps = load ptr, ptr %i.po, align 8, !tbaa !79
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 360
  %i.pu = tail call noundef ptr @_ZN4ojph5local7subband9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(120) %i.pt)
  %i.pv = getelementptr inbounds nuw i8, ptr %.tr110, i64 253
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !101, !range !84, !noundef !85
  %i.px = trunc nuw i8 %i.pw to i1
  tail call void %i.pi(ptr noundef %i.pk, ptr noundef %i.pn, ptr noundef %i.pr, ptr noundef %i.pu, i32 noundef %i.p, i1 noundef zeroext %i.px)
  br label %.lr.ph114.preheader

bb.bi:                                            ; preds = %bb.bg
  %i.py = getelementptr inbounds nuw i8, ptr %.tr110, i64 64
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !94
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !97
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 16
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !62
  %i.qd = getelementptr inbounds nuw i8, ptr %.tr110, i64 80
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !79
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 240
  %i.qg = tail call noundef ptr @_ZN4ojph5local7subband9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(120) %i.qf)
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 16
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !62
  %i.qj = zext i32 %i.p to i64
  %i.qk = shl nuw nsw i64 %i.qj, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.qc, ptr align 4 %i.qi, i64 %i.qk, i1 false)
  br label %.lr.ph114.preheader

.lr.ph114.preheader:                              ; preds = %bb.bh, %bb.bi
  %i.ql = getelementptr inbounds nuw i8, ptr %.tr110, i64 64
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !94
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !97
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 16
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !62 ; 3 uses
  %i.qq = zext i32 %i.p to i64                    ; 2 uses
  %min.iters.check = icmp ult i32 %i.p, 8
  br i1 %min.iters.check, label %.lr.ph114.preheader237, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph114.preheader
  %n.vec = and i64 %i.qq, 4294967288              ; 4 uses
  %i.qr = trunc nuw i64 %n.vec to i32
  %i.qs = sub i32 %i.p, %i.qr
  %i.qt = shl nuw nsw i64 %n.vec, 2
  %i.qu = getelementptr i8, ptr %i.qp, i64 %i.qt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.qv = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.qp, i64 %i.qv ; 3 uses
  %i.qw = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !114
  %wide.load199 = load <4 x float>, ptr %i.qw, align 4, !tbaa !114
  %i.qx = fmul <4 x float> %wide.load, splat (float 5.000000e-01)
  %i.qy = fmul <4 x float> %wide.load199, splat (float 5.000000e-01)
  store <4 x float> %i.qx, ptr %next.gep, align 4, !tbaa !114
  store <4 x float> %i.qy, ptr %i.qw, align 4, !tbaa !114
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.qz = icmp eq i64 %index.next, %n.vec
  br i1 %i.qz, label %middle.block, label %vector.body, !llvm.loop !173

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.qq
  br i1 %cmp.n, label %.loopexit97, label %.lr.ph114.preheader237

.lr.ph114.preheader237:                           ; preds = %.lr.ph114.preheader, %middle.block
  %.0113.ph = phi i32 [ %i.p, %.lr.ph114.preheader ], [ %i.qs, %middle.block ]
  %.066112.ph = phi ptr [ %i.qp, %.lr.ph114.preheader ], [ %i.qu, %middle.block ]
  br label %.lr.ph114

.lr.ph114:                                        ; preds = %.lr.ph114.preheader237, %.lr.ph114
  %.0113 = phi i32 [ %i.rd, %.lr.ph114 ], [ %.0113.ph, %.lr.ph114.preheader237 ]
  %.066112 = phi ptr [ %i.ra, %.lr.ph114 ], [ %.066112.ph, %.lr.ph114.preheader237 ] ; 3 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %.066112, i64 4
  %i.rb = load float, ptr %.066112, align 4, !tbaa !114
  %i.rc = fmul float %i.rb, 5.000000e-01
  store float %i.rc, ptr %.066112, align 4, !tbaa !114
  %i.rd = add i32 %.0113, -1                      ; 2 uses
  %.not78 = icmp eq i32 %i.rd, 0
  br i1 %.not78, label %.loopexit97, label %.lr.ph114, !llvm.loop !174

.loopexit97:                                      ; preds = %.lr.ph114, %middle.block, %bb.be, %bb.bf
  %i.re = getelementptr inbounds nuw i8, ptr %.tr110, i64 64
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !94
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !97
  br label %bb.bs

bb.bj:                                            ; preds = %bb.c
  %i.rh = and i32 %i.s, 1
  %.not76 = icmp eq i32 %i.rh, 0                  ; 2 uses
  br i1 %i.v, label %bb.bk, label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  br i1 %.not76, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ri = load ptr, ptr @_ZN4ojph5local12rev_horz_synE, align 8, !tbaa !78
  %i.rj = getelementptr inbounds nuw i8, ptr %.tr110, i64 232
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !76
  %i.rl = getelementptr inbounds nuw i8, ptr %.tr110, i64 64
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !94
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !97
  %i.ro = getelementptr inbounds nuw i8, ptr %.tr110, i64 104
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !83
  %i.rq = tail call noundef ptr @_ZN4ojph5local10resolution9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(264) %i.rp)
  %i.rr = getelementptr inbounds nuw i8, ptr %.tr110, i64 80
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !79
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 120
  %i.ru = tail call noundef ptr @_ZN4ojph5local7subband9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(120) %i.rt)
  %i.rv = getelementptr inbounds nuw i8, ptr %.tr110, i64 253
  %i.rw = load i8, ptr %i.rv, align 1, !tbaa !101, !range !84, !noundef !85
  %i.rx = trunc nuw i8 %i.rw to i1
  tail call void %i.ri(ptr noundef %i.rk, ptr noundef %i.rn, ptr noundef %i.rq, ptr noundef %i.ru, i32 noundef %i.p, i1 noundef zeroext %i.rx)
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %i.ry = getelementptr inbounds nuw i8, ptr %.tr110, i64 64 ; 2 uses
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !94
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !97
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 16
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !62
  %i.sd = getelementptr inbounds nuw i8, ptr %.tr110, i64 104
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !83
  %i.sf = tail call noundef ptr @_ZN4ojph5local10resolution9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(264) %i.se)
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 16
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !62
  %i.si = zext i32 %i.p to i64
  %i.sj = load ptr, ptr %i.ry, align 8, !tbaa !94
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !97
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 12
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !110
  %i.sn = and i32 %i.sm, 15
  %i.so = zext nneg i32 %i.sn to i64
  %i.sp = mul nuw nsw i64 %i.so, %i.si
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sc, ptr align 1 %i.sh, i64 %i.sp, i1 false)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.sq = getelementptr inbounds nuw i8, ptr %.tr110, i64 64
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !94
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !97
  br label %bb.bs

bb.bo:                                            ; preds = %bb.bj
  br i1 %.not76, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.st = load ptr, ptr @_ZN4ojph5local12irv_horz_synE, align 8, !tbaa !78
  %i.su = getelementptr inbounds nuw i8, ptr %.tr110, i64 232
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !76
  %i.sw = getelementptr inbounds nuw i8, ptr %.tr110, i64 64
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !94
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !97
  %i.sz = getelementptr inbounds nuw i8, ptr %.tr110, i64 104
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !83
  %i.tb = tail call noundef ptr @_ZN4ojph5local10resolution9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(264) %i.ta)
  %i.tc = getelementptr inbounds nuw i8, ptr %.tr110, i64 80
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !79
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 120
  %i.tf = tail call noundef ptr @_ZN4ojph5local7subband9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(120) %i.te)
  %i.tg = getelementptr inbounds nuw i8, ptr %.tr110, i64 253
  %i.th = load i8, ptr %i.tg, align 1, !tbaa !101, !range !84, !noundef !85
  %i.ti = trunc nuw i8 %i.th to i1
  tail call void %i.st(ptr noundef %i.sv, ptr noundef %i.sy, ptr noundef %i.tb, ptr noundef %i.tf, i32 noundef %i.p, i1 noundef zeroext %i.ti)
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %i.tj = getelementptr inbounds nuw i8, ptr %.tr110, i64 64
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !94
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !97
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 16
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !62
  %i.to = getelementptr inbounds nuw i8, ptr %.tr110, i64 104
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !83
  %i.tq = tail call noundef ptr @_ZN4ojph5local10resolution9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(264) %i.tp)
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 16
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !62
  %i.tt = zext i32 %i.p to i64
  %i.tu = shl nuw nsw i64 %i.tt, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.tn, ptr align 4 %i.ts, i64 %i.tu, i1 false)
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.tv = getelementptr inbounds nuw i8, ptr %.tr110, i64 64
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !94
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !97
  br label %bb.bs

bb.bs:                                            ; preds = %bb.g, %bb.w, %bb.y, %.loopexit, %bb.aj, %bb.az, %bb.bb, %.loopexit97, %bb.bn, %bb.br, %bb.b, %tailrecurse._crit_edge
  %.1 = phi ptr [ %i.f, %tailrecurse._crit_edge ], [ null, %bb.b ], [ %i.tx, %bb.br ], [ %i.ao, %bb.g ], [ %i.er, %bb.w ], [ %i.ex, %bb.y ], [ %i.je, %.loopexit ], [ %i.jv, %bb.aj ], [ %i.nv, %bb.az ], [ %i.ob, %bb.bb ], [ %i.rg, %.loopexit97 ], [ %i.ss, %bb.bn ]
  ret ptr %.1
}

declare noundef ptr @_ZN4ojph5local7subband9pull_lineEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ojph5local10resolution16prepare_precinctEv(ptr noundef nonnull align 8 dereferenceable(264) initializes((16, 20)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !74
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.e = tail call noundef i32 @_ZN4ojph5local10resolution16prepare_precinctEv(ptr noundef nonnull align 8 dereferenceable(264) %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.05 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i32 0, ptr %i.f, align 8, !tbaa !75
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load i32, ptr %i.g, align 8, !tbaa !115
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.j = load i32, ptr %i.i, align 4, !tbaa !116
  %i.k = mul i32 %i.j, %i.h                       ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 256
  %wide.trip.count = zext nneg i32 %i.k to i64
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %i.q = phi i32 [ 0, %bb.c ], [ %i.y, %bb.d ]
  %i.r = add i32 %i.q, %.05
  ret i32 %i.r

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !87
  %i.t = getelementptr inbounds nuw [104 x i8], ptr %i.s, i64 %indvars.iv
  %i.u = load i32, ptr %i.n, align 4, !tbaa !89
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !71
  %i.w = tail call noundef i32 @_ZN4ojph5local8precinct16prepare_precinctEiPjPNS_21mem_elastic_allocatorE(ptr noundef nonnull align 8 dereferenceable(98) %i.t, i32 noundef %i.u, ptr noundef nonnull %i.o, ptr noundef %i.v)
  %i.x = load i32, ptr %i.f, align 8, !tbaa !75
  %i.y = add i32 %i.x, %i.w                       ; 2 uses
  store i32 %i.y, ptr %i.f, align 8, !tbaa !75
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !175
}

declare noundef i32 @_ZN4ojph5local8precinct16prepare_precinctEiPjPNS_21mem_elastic_allocatorE(ptr noundef nonnull align 8 dereferenceable(98), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ojph5local10resolution15write_precinctsEPNS_12outfile_baseE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.e = load i32, ptr %i.c, align 8, !tbaa !115
  %i.f = load i32, ptr %i.d, align 4, !tbaa !116
  %i.g = mul i32 %i.f, %i.e
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge
end_hunk_0
