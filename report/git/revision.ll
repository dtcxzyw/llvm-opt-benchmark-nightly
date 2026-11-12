Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/revision?download=true
inline.NumInlined: 268
inline.NumDeleted: 111
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@setup_revisions:bb.a
  %i.kc = and i64 %i.kb, 8796093022208
  %.not20.i = icmp eq i64 %i.kc, 0
  br i1 %.not20.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.kd = getelementptr inbounds nuw i8, ptr %2, i64 3072
  %i.ke = call i32 @oidset_insert(ptr noundef nonnull %i.kd, ptr noundef nonnull %7) #24 ; 0 uses
  br label %get_reference.exit

bb.cf:                                            ; preds = %bb.cd
  call void (ptr, ...) @die(ptr noundef nonnull @.str.40, ptr noundef %i.jp) #26
  unreachable

get_reference.exit:                               ; preds = %bb.bz, %bb.ca, %bb.cc, %bb.ce
  %i.kf = load ptr, ptr %i.ej, align 8, !tbaa !182
  %i.kg = load i16, ptr %8, align 8, !tbaa !174
  %i.kh = zext i16 %i.kg to i32
  call fastcc void @add_pending_object_with_path(ptr noundef nonnull %2, ptr noundef %i.jv, ptr noundef %i.kf, i32 noundef range(i32 0, 65536) %i.kh, ptr noundef null)
  call void @object_context_release(ptr noundef nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.cg

bb.cg:                                            ; preds = %get_reference.exit, %bb.bw, %bb.bv, %bb.bu
  %i.ki = getelementptr inbounds nuw i8, ptr %2, i64 332 ; 12 uses
  %i.kj = load i64, ptr %i.ki, align 4            ; 5 uses
  %i.kk = and i64 %i.kj, 2199023255552
  %.not203 = icmp eq i64 %i.kk, 0
  br i1 %.not203, label %._crit_edge363, label %bb.ch

._crit_edge363:                                   ; preds = %bb.cg
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 1800
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !323
  br label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  %i.kl = and i64 %i.kj, 536870912
  %.not.i245 = icmp eq i64 %i.kl, 0
  br i1 %.not.i245, label %want_ancestry.exit, label %want_ancestry.exit.thread

want_ancestry.exit:                               ; preds = %bb.ch
  %i.km = getelementptr inbounds nuw i8, ptr %2, i64 2744
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !192
  %.not265 = icmp eq ptr %i.kn, null
  br i1 %.not265, label %bb.ci, label %want_ancestry.exit.thread

want_ancestry.exit.thread:                        ; preds = %bb.ch, %want_ancestry.exit
  %i.ko = or i64 %i.kj, 524288
  br label %bb.ci

bb.ci:                                            ; preds = %want_ancestry.exit.thread, %want_ancestry.exit
  %i.kp = phi i64 [ %i.ko, %want_ancestry.exit.thread ], [ %i.kj, %want_ancestry.exit ]
  %i.kq = or i64 %i.kp, 512                       ; 3 uses
  store i64 %i.kq, ptr %i.ki, align 4
  %i.kr = getelementptr inbounds nuw i8, ptr %2, i64 1800 ; 2 uses
  %i.ks = load i32, ptr %i.kr, align 8, !tbaa !323 ; 2 uses
  %.not205 = icmp eq i32 %i.ks, 0
  br i1 %.not205, label %.thread392, label %bb.cj

.thread392:                                       ; preds = %bb.ci
  store i32 16, ptr %i.kr, align 8, !tbaa !323
  %i.kt = getelementptr inbounds nuw i8, ptr %2, i64 1520
  %i.ku = getelementptr inbounds nuw i8, ptr %2, i64 1800
  br label %bb.ck

bb.cj:                                            ; preds = %._crit_edge363, %bb.ci
  %i.kv = phi i64 [ %i.kj, %._crit_edge363 ], [ %i.kq, %bb.ci ] ; 2 uses
  %i.kw = phi i32 [ %.pre, %._crit_edge363 ], [ %i.ks, %bb.ci ]
  %i.kx = getelementptr inbounds nuw i8, ptr %2, i64 1520 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %2, i64 1800 ; 2 uses
  %i.kz = and i32 %i.kw, -2049
  %.not206 = icmp eq i32 %i.kz, 0
  br i1 %.not206, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %.thread392, %bb.cj
  %i.la = phi ptr [ %i.ku, %.thread392 ], [ %i.ky, %bb.cj ]
  %i.lb = phi ptr [ %i.kt, %.thread392 ], [ %i.kx, %bb.cj ]
  %i.lc = phi i64 [ %i.kq, %.thread392 ], [ %i.kv, %bb.cj ]
  %i.ld = or i64 %i.lc, 35184372088832            ; 2 uses
  store i64 %i.ld, ptr %i.ki, align 4
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.le = phi ptr [ %i.la, %bb.ck ], [ %i.ky, %bb.cj ]
  %i.lf = phi ptr [ %i.lb, %bb.ck ], [ %i.kx, %bb.cj ]
  %i.lg = phi i64 [ %i.ld, %bb.ck ], [ %i.kv, %bb.cj ] ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %2, i64 1552
  %i.li = load i32, ptr %i.lh, align 8, !tbaa !191
  %i.lj = and i32 %i.li, 28
  %.not207 = icmp eq i32 %i.lj, 0
  br i1 %.not207, label %bb.cm, label %bb.cp

bb.cm:                                            ; preds = %bb.cl
  %i.lk = getelementptr inbounds nuw i8, ptr %2, i64 1760
  %i.ll = load i32, ptr %i.lk, align 8, !tbaa !324
  %.not208 = icmp eq i32 %i.ll, 0
  br i1 %.not208, label %bb.cn, label %bb.cp

bb.cn:                                            ; preds = %bb.cm
  %i.lm = getelementptr inbounds nuw i8, ptr %2, i64 1764
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !325
  %.not209 = icmp eq i32 %i.ln, 0
  br i1 %.not209, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.lo = getelementptr inbounds nuw i8, ptr %2, i64 1648
  %i.lp = load i32, ptr %i.lo, align 8, !tbaa !326
  %.not210 = icmp eq i32 %i.lp, 0
  br i1 %.not210, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn, %bb.cm, %bb.cl
  %i.lq = or i64 %i.lg, 35184372088832            ; 2 uses
  store i64 %i.lq, ptr %i.ki, align 4
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.lr = phi i64 [ %i.lq, %bb.cp ], [ %i.lg, %bb.co ] ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %2, i64 1936
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !327
  %.not211 = icmp eq ptr %i.lt, null
  br i1 %.not211, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.lu = and i64 %i.lr, -129                     ; 2 uses
  store i64 %i.lu, ptr %i.ki, align 4
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.lv = phi i64 [ %i.lu, %bb.cr ], [ %i.lr, %bb.cq ]
  %i.lw = and i64 %i.lv, 512
  %.not212 = icmp eq i64 %i.lw, 0
  br i1 %.not212, label %bb.cv, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.lx = load ptr, ptr @the_repository, align 8, !tbaa !42
  %i.ly = call i32 @generation_numbers_enabled(ptr noundef %i.lx) #24
  %.not213 = icmp eq i32 %i.ly, 0
  br i1 %.not213, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.lz = load i64, ptr %i.ki, align 4
  %i.ma = or i64 %i.lz, 524288
  store i64 %i.ma, ptr %i.ki, align 4
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct, %bb.cs
  %i.mb = getelementptr inbounds nuw i8, ptr %2, i64 296 ; 3 uses
  %i.mc = load i32, ptr %i.mb, align 8, !tbaa !197
  %.not214 = icmp eq i32 %i.mc, 0
  br i1 %.not214, label %bb.da, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.md = getelementptr inbounds nuw i8, ptr %2, i64 2592
  call void @copy_pathspec(ptr noundef nonnull %i.md, ptr noundef nonnull %i.mb) #24
  %i.me = getelementptr inbounds nuw i8, ptr %2, i64 1648
  %i.mf = load i32, ptr %i.me, align 8, !tbaa !326
  %.not215 = icmp eq i32 %i.mf, 0
  %.pre364 = load i64, ptr %i.ki, align 4         ; 2 uses
  br i1 %.not215, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.mg = or i64 %.pre364, 8                      ; 2 uses
  store i64 %i.mg, ptr %i.ki, align 4
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.mh = phi i64 [ %i.mg, %bb.cx ], [ %.pre364, %bb.cw ]
  %i.mi = and i64 %i.mh, 70368744177664
  %.not216 = icmp eq i64 %i.mi, 0
  br i1 %.not216, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.mj = getelementptr inbounds nuw i8, ptr %2, i64 1984
  call void @copy_pathspec(ptr noundef nonnull %i.mj, ptr noundef nonnull %i.mb) #24
  br label %bb.da

bb.da:                                            ; preds = %bb.cy, %bb.cz, %bb.cv
  call void @diff_merges_setup_revs(ptr noundef nonnull %2) #24
  %i.mk = getelementptr inbounds nuw i8, ptr %2, i64 376
  %i.ml = load i32, ptr %i.mk, align 8, !tbaa !190
  %i.mm = getelementptr inbounds nuw i8, ptr %2, i64 1832
  store i32 %i.ml, ptr %i.mm, align 8, !tbaa !328
  call void @diff_setup_done(ptr noundef nonnull %i.lf) #24
  %i.mn = call ptr @get_log_output_encoding() #24
  %i.mo = call i32 @is_encoding_utf8(ptr noundef %i.mn) #24
  %.not217 = icmp eq i32 %i.mo, 0
  br i1 %.not217, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.mp = getelementptr inbounds nuw i8, ptr %2, i64 708
  store i32 1, ptr %i.mp, align 4, !tbaa !329
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.mq = getelementptr inbounds nuw i8, ptr %2, i64 560
  call void @compile_grep_patterns(ptr noundef nonnull %i.mq) #24
  %i.mr = getelementptr inbounds nuw i8, ptr %2, i64 2736 ; 2 uses
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !198
  %.not218 = icmp ne ptr %i.ms, null              ; 2 uses
  %.pre365 = load i64, ptr %i.ki, align 4         ; 4 uses
  %9 = lshr i64 %.pre365, 32
  %10 = trunc nuw i64 %9 to i32
  %i.mt = and i64 %.pre365, 524288
  %.not219 = icmp ne i64 %i.mt, 0
  %or.cond.not434 = select i1 %.not218, i1 %.not219, i1 false
  br i1 %or.cond.not434, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  call void (ptr, ...) @die(ptr noundef nonnull @.str.17) #26
  unreachable

bb.de:                                            ; preds = %bb.dc
  %i.mu = and i64 %.pre365, 536870912
  %.not220 = icmp eq i64 %i.mu, 0
  br i1 %.not220, label %bb.dh, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.mv = getelementptr inbounds nuw i8, ptr %2, i64 2744
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !192
  %.not221 = icmp eq ptr %i.mw, null
  br i1 %.not221, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.mx = call fastcc ptr @_(ptr noundef nonnull @.str.8)
  call void (ptr, ...) @die(ptr noundef %i.mx, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #26
  unreachable

bb.dh:                                            ; preds = %bb.df, %bb.de
  %i.my = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.mz = load i32, ptr %i.my, align 8, !tbaa !330
  %.not222 = icmp ne i32 %i.mz, 0
  %i.na = and i64 %.pre365, 32768
  %.not223 = icmp eq i64 %i.na, 0
  %or.cond264 = and i1 %.not223, %.not222
  br i1 %or.cond264, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.nb = call fastcc ptr @_(ptr noundef nonnull @.str.20)
  call void (ptr, ...) @die(ptr noundef %i.nb) #26
  unreachable

bb.dj:                                            ; preds = %bb.dh
  %i.nc = load ptr, ptr %i.du, align 8, !tbaa !188
  %i.nd = icmp ne ptr %i.nc, null
  %i.ne = zext i1 %i.nd to i32
  %i.nf = and i32 %10, 1
  %i.ng = zext i1 %.not218 to i32
  call void @die_for_incompatible_opt4(i32 noundef range(i32 0, 2) %i.ne, ptr noundef nonnull @.str.10, i32 noundef range(i32 0, 2) %i.nf, ptr noundef nonnull @.str.21, i32 noundef range(i32 0, 2) %i.ng, ptr noundef nonnull @.str.22, i32 noundef 0, ptr noundef nonnull @.str.38) #24
  %i.nh = load i64, ptr %i.ki, align 4            ; 2 uses
  %i.ni = and i64 %i.nh, 12582912
  %i.nj = icmp ne i64 %i.ni, 0
  %i.nk = zext i1 %i.nj to i32
  %i.nl = trunc i64 %i.nh to i32
  %i.nm = lshr i32 %i.nl, 28
  %i.nn = and i32 %i.nm, 1
  call void @die_for_incompatible_opt4(i32 noundef range(i32 0, 2) %i.nk, ptr noundef nonnull @.str.23, i32 noundef range(i32 0, 2) %i.nn, ptr noundef nonnull @.str.24, i32 noundef 0, ptr noundef nonnull @.str.38, i32 noundef 0, ptr noundef nonnull @.str.38) #24
  %i.no = load i64, ptr %i.ki, align 4            ; 3 uses
  %i.np = and i64 %i.no, 16
  %.not224 = icmp eq i64 %i.np, 0
  br i1 %.not224, label %bb.dm, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.nq = load ptr, ptr %i.du, align 8, !tbaa !188
  %.not225 = icmp eq ptr %i.nq, null
  br i1 %.not225, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.nr = call fastcc ptr @_(ptr noundef nonnull @.str.8)
  call void (ptr, ...) @die(ptr noundef %i.nr, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.10) #26
  unreachable

bb.dm:                                            ; preds = %bb.dk, %bb.dj
  %i.ns = getelementptr inbounds nuw i8, ptr %2, i64 1448
  %i.nt = load i32, ptr %i.ns, align 8, !tbaa !189
  %i.nu = icmp sgt i32 %i.nt, 0
  br i1 %i.nu, label %bb.dn, label %bb.dp

bb.dn:                                            ; preds = %bb.dm
  %i.nv = load ptr, ptr %i.du, align 8, !tbaa !188
  %.not226 = icmp eq ptr %i.nv, null
  br i1 %.not226, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.nw = call fastcc ptr @_(ptr noundef nonnull @.str.26)
  call void (ptr, ...) @die(ptr noundef %i.nw, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.10) #26
  unreachable

bb.dp:                                            ; preds = %bb.dn, %bb.dm
  %i.nx = load ptr, ptr %i.mr, align 8, !tbaa !198
  %.not227 = icmp eq ptr %i.nx, null
  br i1 %.not227, label %bb.dq, label %bb.ds

bb.dq:                                            ; preds = %bb.dp
  %i.ny = getelementptr inbounds nuw i8, ptr %2, i64 664
  %i.nz = load i32, ptr %i.ny, align 8, !tbaa !199
  %.not228 = icmp eq i32 %i.nz, 0
  br i1 %.not228, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.oa = call fastcc ptr @_(ptr noundef nonnull @.str.26)
  call void (ptr, ...) @die(ptr noundef %i.oa, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.22) #26
  unreachable

bb.ds:                                            ; preds = %bb.dq, %bb.dp
  %i.ob = and i64 %i.no, 2199023255552
  %.not229 = icmp eq i64 %i.ob, 0
  br i1 %.not229, label %bb.dw, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.oc = and i64 %i.no, 70368744177664
  %.not230 = icmp eq i64 %i.oc, 0
  br i1 %.not230, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.od = load i32, ptr %i.le, align 8, !tbaa !323
  %i.oe = and i32 %i.od, -2842
  %.not231 = icmp eq i32 %i.oe, 0
  br i1 %.not231, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.of = call fastcc ptr @_(ptr noundef nonnull @.str.29)
  call void (ptr, ...) @die(ptr noundef %i.of) #26
  unreachable

bb.dw:                                            ; preds = %bb.du, %bb.ds
  %i.og = getelementptr inbounds nuw i8, ptr %2, i64 368 ; 2 uses
  %i.oh = load i32, ptr %i.og, align 8, !tbaa !187
  %i.oi = icmp slt i32 %i.oh, 0
  br i1 %i.oi, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.oj = getelementptr inbounds nuw i8, ptr %2, i64 372
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !331
  store i32 %i.ok, ptr %i.og, align 8, !tbaa !187
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %i.ol = load i32, ptr %i.ep, align 8
  %i.om = and i32 %i.ol, 24
  %or.cond.not = icmp eq i32 %i.om, 16
  br i1 %or.cond.not, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.on = getelementptr inbounds nuw i8, ptr %2, i64 2816
  %i.oo = getelementptr inbounds nuw i8, ptr %2, i64 340
  call void @enable_default_display_notes(ptr noundef nonnull %i.on, ptr noundef nonnull %i.oo) #24
  %i.op = load i32, ptr %i.ep, align 8
  %i.oq = or i32 %i.op, 8
  store i32 %i.oq, ptr %i.ep, align 8
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %.not234 = icmp eq ptr %1, null
  br i1 %.not234, label %._crit_edge369, label %bb.eb

._crit_edge369:                                   ; preds = %bb.ea
  %.pre370 = load i32, ptr %i.e, align 4, !tbaa !52
  br label %bb.ef

bb.eb:                                            ; preds = %bb.ea
  br i1 %.not, label %._crit_edge366, label %bb.ec

._crit_edge366:                                   ; preds = %bb.eb
  %.pre367 = load i32, ptr %i.e, align 4, !tbaa !52
  br label %bb.ee

bb.ec:                                            ; preds = %bb.eb
  %i.or = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.os = load i8, ptr %i.or, align 8
  %i.ot = and i8 %i.os, 4
  %.not235 = icmp eq i8 %i.ot, 0
  %.pre368 = load i32, ptr %i.e, align 4, !tbaa !52 ; 3 uses
  br i1 %.not235, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.ou = sext i32 %.pre368 to i64
  %i.ov = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ou
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !162
  call void @free(ptr noundef %i.ow) #24
  br label %bb.ee

bb.ee:                                            ; preds = %._crit_edge366, %bb.ed, %bb.ec
  %i.ox = phi i32 [ %.pre367, %._crit_edge366 ], [ %.pre368, %bb.ed ], [ %.pre368, %bb.ec ] ; 2 uses
  %i.oy = sext i32 %i.ox to i64
  %i.oz = getelementptr inbounds [8 x i8], ptr %1, i64 %i.oy
  store ptr null, ptr %i.oz, align 8, !tbaa !162
  br label %bb.ef

bb.ef:                                            ; preds = %._crit_edge369, %bb.ee
  %i.pa = phi i32 [ %.pre370, %._crit_edge369 ], [ %i.ox, %bb.ee ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  ret i32 %i.pa
}

declare void @strvec_pushv(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc i32 @handle_revision_pseudo_opt(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #4 {
bb.a:
  %3 = alloca %struct.refs_for_each_ref_options, align 8 ; 5 uses
  %4 = alloca %struct.strbuf, align 8             ; 6 uses
  %5 = alloca %struct.refs_for_each_ref_options, align 8 ; 5 uses
  %6 = alloca %struct.strbuf, align 8             ; 6 uses
  %7 = alloca %struct.add_alternate_refs_data, align 8 ; 5 uses
  %8 = alloca %struct.all_refs_cb, align 8        ; 6 uses
  %9 = alloca %struct.all_refs_cb, align 8        ; 6 uses
  %10 = alloca %struct.all_refs_cb, align 8       ; 7 uses
  %11 = alloca %struct.all_refs_cb, align 8       ; 7 uses
  %12 = alloca %struct.all_refs_cb, align 8       ; 6 uses
  %13 = alloca %struct.all_refs_cb, align 8       ; 7 uses
  %14 = alloca %struct.all_refs_cb, align 8       ; 7 uses
  %i.a = alloca ptr, align 8                      ; 12 uses
  %15 = alloca %struct.all_refs_cb, align 8       ; 6 uses
  %16 = alloca %struct.refs_for_each_ref_options, align 8 ; 5 uses
  %17 = alloca %struct.all_refs_cb, align 8       ; 6 uses
  %18 = alloca %struct.refs_for_each_ref_options, align 8 ; 10 uses
  %19 = alloca %struct.all_refs_cb, align 8       ; 7 uses
  %20 = alloca %struct.refs_for_each_ref_options, align 8 ; 10 uses
  %21 = alloca %struct.all_refs_cb, align 8       ; 7 uses
  %22 = alloca %struct.refs_for_each_ref_options, align 8 ; 10 uses
  %23 = alloca %struct.all_refs_cb, align 8       ; 7 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !162    ; 58 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !104  ; 2 uses
  %i.e = load ptr, ptr @the_repository, align 8, !tbaa !42
  %.not = icmp eq ptr %i.d, %i.e
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.g = load i64, ptr %i.f, align 4
  %i.h = and i64 %i.g, 4096
  %.not85 = icmp eq i64 %i.h, 0
  br i1 %.not85, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.15, i32 noundef 2794, ptr noundef nonnull @.str.196) #26
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.i = tail call ptr @get_main_ref_store(ptr noundef %i.d) #24 ; 12 uses
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(6) @.str.55) #25
end_hunk_0
begin_hunk_1_@simplify_commit:bb.a
  call void @clear_prio_queue(ptr noundef nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.t

rewrite_one.exit.jt0:                             ; preds = %rewrite_one_1.exit.i.jt0
  call void @clear_prio_queue(ptr noundef nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.u

bb.t:                                             ; preds = %rewrite_one.exit.jt1, %rewrite_one.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !196
  store ptr %i.cz, ptr %.01320.i, align 8, !tbaa !58
  call void @free(ptr noundef nonnull %i.ca) #24
  br label %bb.v, !llvm.loop !6

bb.u:                                             ; preds = %rewrite_one.exit.jt0, %rewrite_one.exit
  %i.da = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1.i = phi ptr [ %i.da, %bb.u ], [ %.01320.i, %bb.t ] ; 2 uses
  %i.db = load ptr, ptr %.1.i, align 8, !tbaa !58 ; 2 uses
  %.not.i17 = icmp eq ptr %i.db, null
  br i1 %.not.i17, label %rewrite_parents.exit, label %.lr.ph.i

rewrite_parents.exit:                             ; preds = %bb.v, %save_parents.exit
  %i.dc = call fastcc i32 @remove_duplicate_parents(ptr noundef %0, ptr noundef %1) ; 0 uses
  br label %rewrite_parents.exit.thread

rewrite_parents.exit.thread:                      ; preds = %rewrite_one.exit, %rewrite_one.exit.jt2, %bb.a, %bb.b, %want_ancestry.exit, %rewrite_parents.exit
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %rewrite_parents.exit ], [ 1, %want_ancestry.exit ], [ 1, %bb.b ], [ 2, %rewrite_one.exit.jt2 ], [ %.1.ph.i.i35, %rewrite_one.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @get_revision(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  store ptr null, ptr %i.e, align 8, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1460 ; 4 uses
  %i.g = load i8, ptr %i.f, align 4               ; 2 uses
  %i.h = and i8 %i.g, 3
  %or.cond = icmp eq i8 %i.h, 1
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !177  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr null, ptr %i.a, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store ptr null, ptr %i.b, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store ptr null, ptr %i.c, align 8, !tbaa !58
  store i32 -1, ptr %i.i, align 8, !tbaa !177
  %i.k = tail call fastcc ptr @get_revision_internal(ptr noundef nonnull %0) ; 2 uses
  %.not58.i = icmp eq ptr %i.k, null
  br i1 %.not58.i, label %.preheader43.i, label %.lr.ph61.i

.loopexit46.i:                                    ; preds = %.loopexit.i, %.lr.ph61.i
  %.225.lcssa.i = phi i32 [ %spec.select.i, %.lr.ph61.i ], [ %.326.i, %.loopexit.i ]
  %.1.lcssa.i = phi i32 [ %.02260.i, %.lr.ph61.i ], [ %i.ae, %.loopexit.i ]
  %i.l = call fastcc ptr @get_revision_internal(ptr noundef nonnull %0) ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %.preheader43.i, label %.lr.ph61.i, !llvm.loop !435

.preheader43.i:                                   ; preds = %.loopexit46.i, %bb.b
  %i.m = call ptr @pop_commit(ptr noundef nonnull %i.a) #24 ; 2 uses
  %.not3362.i = icmp eq ptr %i.m, null
  br i1 %.not3362.i, label %.preheader42.i, label %.lr.ph63.i

.lr.ph61.i:                                       ; preds = %bb.b, %.loopexit46.i
  %i.n = phi ptr [ %i.l, %.loopexit46.i ], [ %i.k, %bb.b ] ; 4 uses
  %.02260.i = phi i32 [ %.1.lcssa.i, %.loopexit46.i ], [ 0, %bb.b ] ; 3 uses
  %.02359.i = phi i32 [ %.225.lcssa.i, %.loopexit46.i ], [ 0, %bb.b ]
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, -309237645313
  store i64 %i.p, ptr %i.n, align 8
  %i.q = call ptr @commit_list_insert(ptr noundef nonnull %i.n, ptr noundef nonnull %i.b) #24 ; 0 uses
  %i.r = load i64, ptr %i.n, align 8
  %i.s = and i64 %i.r, 137438953472
  %.not37.i = icmp eq i64 %i.s, 0
  %i.t = zext i1 %.not37.i to i32
  %spec.select.i = add nsw i32 %.02359.i, %i.t    ; 3 uses
  %i.u = add nsw i32 %spec.select.i, %.02260.i
  %i.v = icmp sgt i32 %i.u, %i.j
  br i1 %i.v, label %.lr.ph55.i, label %.loopexit46.i

.loopexit.i:                                      ; preds = %.lr.ph52.i, %.loopexit45.i
  %i.w = add nsw i32 %i.ae, %.326.i
  %i.x = icmp sgt i32 %i.w, %i.j
  br i1 %i.x, label %.lr.ph55.i, label %.loopexit46.i, !llvm.loop !436

.lr.ph55.i:                                       ; preds = %.lr.ph61.i, %.loopexit.i
  %.154.i = phi i32 [ %i.ae, %.loopexit.i ], [ %.02260.i, %.lr.ph61.i ] ; 2 uses
  %.22553.i = phi i32 [ %.326.i, %.loopexit.i ], [ %spec.select.i, %.lr.ph61.i ]
  %.not38.i = icmp eq i32 %.154.i, 0
  br i1 %.not38.i, label %.preheader44.i, label %.loopexit45.i

.preheader44.i:                                   ; preds = %.lr.ph55.i
  %i.y = call ptr @pop_commit(ptr noundef nonnull %i.b) #24 ; 2 uses
  %.not3947.i = icmp eq ptr %i.y, null
  br i1 %.not3947.i, label %.loopexit45.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader44.i, %.lr.ph.i
  %i.z = phi ptr [ %i.ac, %.lr.ph.i ], [ %i.y, %.preheader44.i ]
  %.248.i = phi i32 [ %i.ab, %.lr.ph.i ], [ 0, %.preheader44.i ]
  %i.aa = call ptr @commit_list_insert(ptr noundef nonnull %i.z, ptr noundef nonnull %i.a) #24 ; 0 uses
  %i.ab = add nuw nsw i32 %.248.i, 1              ; 2 uses
  %i.ac = call ptr @pop_commit(ptr noundef nonnull %i.b) #24 ; 2 uses
  %.not39.i = icmp eq ptr %i.ac, null
  br i1 %.not39.i, label %.loopexit45.i, label %.lr.ph.i, !llvm.loop !437

.loopexit45.i:                                    ; preds = %.lr.ph.i, %.preheader44.i, %.lr.ph55.i
  %.326.i = phi i32 [ %.22553.i, %.lr.ph55.i ], [ 0, %.preheader44.i ], [ 0, %.lr.ph.i ] ; 3 uses
  %.3.i = phi i32 [ %.154.i, %.lr.ph55.i ], [ 0, %.preheader44.i ], [ %i.ab, %.lr.ph.i ]
  %i.ad = call ptr @pop_commit(ptr noundef nonnull %i.a) #24
  %i.ae = add nsw i32 %.3.i, -1                   ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %.049.i = load ptr, ptr %i.af, align 8, !tbaa !58 ; 2 uses
  %.not4050.i = icmp eq ptr %.049.i, null
  br i1 %.not4050.i, label %.loopexit.i, label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %.loopexit45.i, %.lr.ph52.i
  %.051.i = phi ptr [ %.0.i, %.lr.ph52.i ], [ %.049.i, %.loopexit45.i ] ; 2 uses
  %i.ag = load ptr, ptr %.051.i, align 8, !tbaa !61 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = and i64 %i.ah, -274877906945
  store i64 %i.ai, ptr %i.ag, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.051.i, i64 8
  %.0.i = load ptr, ptr %i.aj, align 8, !tbaa !58 ; 2 uses
  %.not40.i = icmp eq ptr %.0.i, null
  br i1 %.not40.i, label %.loopexit.i, label %.lr.ph52.i, !llvm.loop !438

.preheader42.i:                                   ; preds = %.lr.ph63.i, %.preheader43.i
  %i.ak = call ptr @pop_commit(ptr noundef nonnull %i.b) #24 ; 2 uses
  %.not3464.i = icmp eq ptr %i.ak, null
  br i1 %.not3464.i, label %.preheader41.i, label %.lr.ph65.i

.lr.ph63.i:                                       ; preds = %.preheader43.i, %.lr.ph63.i
  %i.al = phi ptr [ %i.an, %.lr.ph63.i ], [ %i.m, %.preheader43.i ]
  %i.am = call ptr @commit_list_insert(ptr noundef nonnull %i.al, ptr noundef nonnull %i.c) #24 ; 0 uses
  %i.an = call ptr @pop_commit(ptr noundef nonnull %i.a) #24 ; 2 uses
  %.not33.i = icmp eq ptr %i.an, null
  br i1 %.not33.i, label %.preheader42.i, label %.lr.ph63.i, !llvm.loop !439

.preheader41.i:                                   ; preds = %.lr.ph65.i, %.preheader42.i
  %i.ao = call ptr @pop_commit(ptr noundef nonnull %i.a) #24 ; 2 uses
  %.not3566.i = icmp eq ptr %i.ao, null
  br i1 %.not3566.i, label %.preheader.i, label %.lr.ph67.i

.lr.ph65.i:                                       ; preds = %.preheader42.i, %.lr.ph65.i
  %i.ap = phi ptr [ %i.ar, %.lr.ph65.i ], [ %i.ak, %.preheader42.i ]
  %i.aq = call ptr @commit_list_insert(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.a) #24 ; 0 uses
  %i.ar = call ptr @pop_commit(ptr noundef nonnull %i.b) #24 ; 2 uses
  %.not34.i = icmp eq ptr %i.ar, null
  br i1 %.not34.i, label %.preheader41.i, label %.lr.ph65.i, !llvm.loop !440

.preheader.i:                                     ; preds = %.lr.ph67.i, %.preheader41.i
  %i.as = call ptr @pop_commit(ptr noundef nonnull %i.c) #24 ; 2 uses
  %.not3668.i = icmp eq ptr %i.as, null
  br i1 %.not3668.i, label %retrieve_oldest_commits.exit, label %.lr.ph69.i

.lr.ph67.i:                                       ; preds = %.preheader41.i, %.lr.ph67.i
  %i.at = phi ptr [ %i.av, %.lr.ph67.i ], [ %i.ao, %.preheader41.i ]
  %i.au = call ptr @commit_list_insert(ptr noundef nonnull %i.at, ptr noundef nonnull %i.c) #24 ; 0 uses
  %i.av = call ptr @pop_commit(ptr noundef nonnull %i.a) #24 ; 2 uses
  %.not35.i = icmp eq ptr %i.av, null
  br i1 %.not35.i, label %.preheader.i, label %.lr.ph67.i, !llvm.loop !441

.lr.ph69.i:                                       ; preds = %.preheader.i, %.lr.ph69.i
  %i.aw = phi ptr [ %i.ay, %.lr.ph69.i ], [ %i.as, %.preheader.i ]
  %i.ax = call ptr @commit_list_insert(ptr noundef nonnull %i.aw, ptr noundef nonnull %i.e) #24 ; 0 uses
  %i.ay = call ptr @pop_commit(ptr noundef nonnull %i.c) #24 ; 2 uses
  %.not36.i = icmp eq ptr %i.ay, null
  br i1 %.not36.i, label %retrieve_oldest_commits.exit, label %.lr.ph69.i, !llvm.loop !442

retrieve_oldest_commits.exit:                     ; preds = %.lr.ph69.i, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.az = load ptr, ptr %0, align 8, !tbaa !204
  call void @commit_list_free(ptr noundef %i.az) #24
  %i.ba = load ptr, ptr %i.e, align 8, !tbaa !58
  store ptr %i.ba, ptr %0, align 8, !tbaa !204
  %i.bb = load i8, ptr %i.f, align 4
  %i.bc = or i8 %i.bb, 2                          ; 2 uses
  store i8 %i.bc, ptr %i.f, align 4
  br label %bb.c

bb.c:                                             ; preds = %retrieve_oldest_commits.exit, %bb.a
  %i.bd = phi i8 [ %i.bc, %retrieve_oldest_commits.exit ], [ %i.g, %bb.a ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 332 ; 3 uses
  %1 = getelementptr i8, ptr %0, i64 336
  %2 = load i32, ptr %1, align 4
  %3 = and i32 %2, 1
  %.not51 = icmp eq i32 %3, 0
  br i1 %.not51, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.d, align 8, !tbaa !58
  %i.bf = and i8 %i.bd, 1
  %.not52 = icmp eq i8 %i.bf, 0
  br i1 %.not52, label %.preheader, label %.preheader73

.preheader73:                                     ; preds = %bb.d
  %i.bg = call ptr @pop_commit(ptr noundef nonnull %0) #24 ; 2 uses
  %.not5477 = icmp eq ptr %i.bg, null
  br i1 %.not5477, label %.loopexit72, label %.lr.ph

.preheader:                                       ; preds = %bb.d
  %i.bh = call fastcc ptr @get_revision_internal(ptr noundef nonnull %0) ; 2 uses
  %.not5378 = icmp eq ptr %i.bh, null
  br i1 %.not5378, label %.loopexit72, label %.lr.ph79

.lr.ph:                                           ; preds = %.preheader73, %.lr.ph
  %i.bi = phi ptr [ %i.bk, %.lr.ph ], [ %i.bg, %.preheader73 ]
  %i.bj = call ptr @commit_list_insert(ptr noundef nonnull %i.bi, ptr noundef nonnull %i.d) #24 ; 0 uses
  %i.bk = call ptr @pop_commit(ptr noundef nonnull %0) #24 ; 2 uses
  %.not54 = icmp eq ptr %i.bk, null
  br i1 %.not54, label %.loopexit72, label %.lr.ph, !llvm.loop !443

.lr.ph79:                                         ; preds = %.preheader, %.lr.ph79
  %i.bl = phi ptr [ %i.bn, %.lr.ph79 ], [ %i.bh, %.preheader ]
  %i.bm = call ptr @commit_list_insert(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.d) #24 ; 0 uses
  %i.bn = call fastcc ptr @get_revision_internal(ptr noundef nonnull %0) ; 2 uses
  %.not53 = icmp eq ptr %i.bn, null
  br i1 %.not53, label %.loopexit72, label %.lr.ph79, !llvm.loop !444

.loopexit72:                                      ; preds = %.lr.ph, %.lr.ph79, %.preheader, %.preheader73
  %i.bo = load ptr, ptr %0, align 8, !tbaa !204
  call void @commit_list_free(ptr noundef %i.bo) #24
  %i.bp = load ptr, ptr %i.d, align 8, !tbaa !58
  store ptr %i.bp, ptr %0, align 8, !tbaa !204
  %i.bq = load i64, ptr %i.be, align 4
  %i.br = and i64 %i.bq, -12884901889
  %i.bs = or disjoint i64 %i.br, 8589934592
  store i64 %i.bs, ptr %i.be, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.pre = load i64, ptr %i.be, align 4
  %i.bt = and i64 %.pre, 8589934592
  %.not55 = icmp eq i64 %i.bt, 0
  br i1 %.not55, label %bb.j, label %bb.f

bb.f:                                             ; preds = %.loopexit72, %bb.e
  %i.bu = call ptr @pop_commit(ptr noundef nonnull %0) #24 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 8            ; 2 uses
  %i.bx = and i32 %i.bw, 262144
  %.not62 = icmp eq i32 %i.bx, 0
  br i1 %.not62, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not63 = icmp eq ptr %i.bu, null
  br i1 %.not63, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.by = load i64, ptr %i.bu, align 8
  %sh.diff = lshr i64 %i.by, 38
  %tr.sh.diff = trunc nuw nsw i64 %sh.diff to i32
  %i.bz = and i32 %tr.sh.diff, 1048576
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ca = phi i32 [ 0, %bb.g ], [ %i.bz, %bb.h ]
  %i.cb = and i32 %i.bw, -1048577
  %i.cc = or disjoint i32 %i.ca, %i.cb
  store i32 %i.cc, ptr %i.bv, align 8
  br label %bb.r

bb.j:                                             ; preds = %bb.e
  %i.cd = load i8, ptr %i.f, align 4
  %i.ce = and i8 %i.cd, 2
  %.not56 = icmp eq i8 %i.ce, 0
  br i1 %.not56, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cf = call ptr @pop_commit(ptr noundef nonnull %0) #24 ; 7 uses
  %.not57 = icmp eq ptr %i.cf, null
  br i1 %.not57, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = load i64, ptr %i.cf, align 8            ; 2 uses
  %i.ch = or i64 %i.cg, 34359738368
  store i64 %i.ch, ptr %i.cf, align 8
  %i.ci = and i64 %i.cg, 137438953472
  %.not58 = icmp eq i64 %i.ci, 0
  br i1 %.not58, label %bb.m, label %.thread68

bb.m:                                             ; preds = %bb.l
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  %.080 = load ptr, ptr %i.cj, align 8, !tbaa !58 ; 2 uses
  %.not5981 = icmp eq ptr %.080, null
  br i1 %.not5981, label %.thread68, label %.lr.ph83

.lr.ph83:                                         ; preds = %bb.m, %.lr.ph83
  %.082 = phi ptr [ %.0, %.lr.ph83 ], [ %.080, %bb.m ] ; 2 uses
  %i.ck = load ptr, ptr %.082, align 8, !tbaa !61 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = or i64 %i.cl, 274877906944
  store i64 %i.cm, ptr %i.ck, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %.082, i64 8
  %.0 = load ptr, ptr %i.cn, align 8, !tbaa !58   ; 2 uses
  %.not59 = icmp eq ptr %.0, null
  br i1 %.not59, label %.thread68, label %.lr.ph83, !llvm.loop !445

.loopexit:                                        ; preds = %bb.j
  %i.co = call fastcc ptr @get_revision_internal(ptr noundef nonnull %0) ; 2 uses
  %.not60 = icmp eq ptr %i.co, null
  br i1 %.not60, label %.critedge, label %.thread68

.thread68:                                        ; preds = %.lr.ph83, %bb.m, %bb.l, %.loopexit
  %.04371 = phi ptr [ %i.co, %.loopexit ], [ %i.cf, %bb.l ], [ %i.cf, %bb.m ], [ %i.cf, %.lr.ph83 ] ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1440
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !188 ; 2 uses
  %.not61 = icmp eq ptr %i.cq, null
  br i1 %.not61, label %bb.r, label %bb.n

bb.n:                                             ; preds = %.thread68
  call void @graph_update(ptr noundef nonnull %i.cq, ptr noundef nonnull %.04371) #24
  br label %bb.r

.critedge:                                        ; preds = %bb.k, %.loopexit
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 2984 ; 3 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !237 ; 7 uses
  %.not.i64 = icmp eq ptr %i.cs, null
  br i1 %.not.i64, label %free_saved_parents.exit, label %bb.o

bb.o:                                             ; preds = %.critedge
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 4 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !241 ; 2 uses
  %.not5.i.i = icmp eq i32 %i.cu, 0
  br i1 %.not5.i.i, label %deep_clear_saved_parents.exit.i, label %.lr.ph4.i.i

.lr.ph4.i.i:                                      ; preds = %bb.o
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.i.i, %.lr.ph4.i.i
  %i.cx = phi i32 [ %i.cu, %.lr.ph4.i.i ], [ %i.do, %.loopexit.i.i ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph4.i.i ], [ %indvars.iv.next.i.i, %.loopexit.i.i ] ; 3 uses
  %i.cy = load ptr, ptr %i.cv, align 8, !tbaa !242
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv.i.i
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !244
  %.not.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i, label %.loopexit.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.p
  %i.db = load i32, ptr %i.cs, align 8, !tbaa !240 ; 2 uses
  %.not6.i.i = icmp eq i32 %i.db, 0
  br i1 %.not6.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %free_saved_parent.exit.i.i
  %i.dc = phi i32 [ %i.dl, %free_saved_parent.exit.i.i ], [ %i.db, %.preheader.i.i ]
  %.02.i.i = phi i32 [ %i.dm, %free_saved_parent.exit.i.i ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.dd = load ptr, ptr %i.cv, align 8, !tbaa !242
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv.i.i
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !244
  %i.dg = load i32, ptr %i.cw, align 4, !tbaa !245
  %i.dh = mul i32 %i.dg, %.02.i.i
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.di
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !58 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dk, inttoptr (i64 -1 to ptr)
  br i1 %.not.i.i.i, label %free_saved_parent.exit.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i
  call void @commit_list_free(ptr noundef %i.dk) #24
  %.pre.i.i = load i32, ptr %i.cs, align 8, !tbaa !240
  br label %free_saved_parent.exit.i.i

free_saved_parent.exit.i.i:                       ; preds = %bb.q, %.lr.ph.i.i
  %i.dl = phi i32 [ %i.dc, %.lr.ph.i.i ], [ %.pre.i.i, %bb.q ] ; 2 uses
  %i.dm = add nuw i32 %.02.i.i, 1                 ; 2 uses
  %i.dn = icmp ult i32 %i.dm, %i.dl
  br i1 %i.dn, label %.lr.ph.i.i, label %.loopexit.loopexit.i.i, !llvm.loop !446

.loopexit.loopexit.i.i:                           ; preds = %free_saved_parent.exit.i.i
  %.pre9.i.i = load i32, ptr %i.ct, align 8, !tbaa !241
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.loopexit.i.i, %.preheader.i.i, %bb.p
  %i.do = phi i32 [ %.pre9.i.i, %.loopexit.loopexit.i.i ], [ %i.cx, %.preheader.i.i ], [ %i.cx, %bb.p ] ; 3 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.dp = zext i32 %i.do to i64
  %i.dq = icmp samesign ult i64 %indvars.iv.next.i.i, %i.dp
  br i1 %i.dq, label %bb.p, label %._crit_edge.i.i, !llvm.loop !447

._crit_edge.i.i:                                  ; preds = %.loopexit.i.i
  %i.dr = icmp eq i32 %i.do, 0
  br i1 %i.dr, label %deep_clear_saved_parents.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge.i.i, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ], [ 0, %._crit_edge.i.i ] ; 2 uses
  %i.ds = load ptr, ptr %i.cv, align 8, !tbaa !242
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv.i.i.i
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !244
  call void @free(ptr noundef %i.du) #24
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.dv = load i32, ptr %i.ct, align 8, !tbaa !241
  %i.dw = zext i32 %i.dv to i64
  %i.dx = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.dw
  br i1 %i.dx, label %.lr.ph.i.i.i, label %deep_clear_saved_parents.exit.i, !llvm.loop !448

deep_clear_saved_parents.exit.i:                  ; preds = %.lr.ph.i.i.i, %._crit_edge.i.i, %bb.o
  store i32 0, ptr %i.ct, align 8, !tbaa !241
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !242
  call void @free(ptr noundef %i.dz) #24
  store ptr null, ptr %i.dy, align 8, !tbaa !242
  %i.ea = load ptr, ptr %i.cr, align 8, !tbaa !237
  call void @free(ptr noundef %i.ea) #24
  store ptr null, ptr %i.cr, align 8, !tbaa !237
  br label %free_saved_parents.exit

free_saved_parents.exit:                          ; preds = %.critedge, %deep_clear_saved_parents.exit.i
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 2992 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !246
  call void @commit_list_free(ptr noundef %i.ec) #24
  store ptr null, ptr %i.eb, align 8, !tbaa !246
  br label %bb.r

bb.r:                                             ; preds = %.thread68, %bb.n, %free_saved_parents.exit, %bb.f, %bb.i
  %.044 = phi ptr [ %i.bu, %bb.f ], [ %i.bu, %bb.i ], [ null, %free_saved_parents.exit ], [ %.04371, %bb.n ], [ %.04371, %.thread68 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  ret ptr %.044
}

declare ptr @commit_list_insert(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc ptr @get_revision_internal(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 332 ; 5 uses
  %i.b = load i64, ptr %i.a, align 4              ; 2 uses
  %i.c = and i64 %i.b, 12582912
  %i.d = icmp eq i64 %i.c, 8388608
  br i1 %i.d, label %tailrecurse._crit_edge, label %.lr.ph68

.lr.ph68:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1452 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
end_hunk_1
begin_hunk_2_@compute_indegrees_to_depth:bb.a

.critedge:                                        ; preds = %bb.b, %indegree_walk_step.exit, %bb.a
  ret void
}

declare void @prio_queue_reverse(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @trace2_topo_walk_statistics_atexit() #4 {
bb.a:
  %0 = alloca %struct.json_writer, align 8        ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) @__const.trace2_topo_walk_statistics_atexit.jw, i64 56, i1 false)
  call void @jw_object_begin(ptr noundef nonnull %0, i32 noundef 0) #24
  %i.a = load i32, ptr @count_explore_walked, align 4, !tbaa !52
  %i.b = zext i32 %i.a to i64
  call void @jw_object_intmax(ptr noundef nonnull %0, ptr noundef nonnull @.str.236, i64 noundef %i.b) #24
  %i.c = load i32, ptr @count_indegree_walked, align 4, !tbaa !52
  %i.d = zext i32 %i.c to i64
  call void @jw_object_intmax(ptr noundef nonnull %0, ptr noundef nonnull @.str.237, i64 noundef %i.d) #24
  %i.e = load i32, ptr @count_topo_walked, align 4, !tbaa !52
  %i.f = zext i32 %i.e to i64
  call void @jw_object_intmax(ptr noundef nonnull %0, ptr noundef nonnull @.str.238, i64 noundef %i.f) #24
  call void @jw_end(ptr noundef nonnull %0) #24
  %i.g = load ptr, ptr @the_repository, align 8, !tbaa !42
  call void @trace2_data_json_fl(ptr noundef nonnull @.str.15, i32 noundef 3721, ptr noundef nonnull @.str.239, ptr noundef %i.g, ptr noundef nonnull @.str.229, ptr noundef nonnull %0) #24
  call void @jw_release(ptr noundef nonnull %0) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #24
  ret void
}

declare ptr @reduce_heads(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @compact_treesame(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !234
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not36 = icmp eq i32 %2, 0
  br i1 %.not36, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.241, i32 noundef %2) #26
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = tail call fastcc i32 @rev_same_tree_as_empty(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0)
  %.not37 = icmp eq i32 %i.c, 0
  %i.d = load i64, ptr %1, align 8
  %i.e = and i64 %i.d, -17179869185
  %masksel = select i1 %.not37, i64 0, i64 17179869184
  %storemerge = or disjoint i64 %i.e, %masksel
  store i64 %storemerge, ptr %1, align 8
  br label %bb.p

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2792 ; 2 uses
  %i.g = tail call ptr @lookup_decoration(ptr noundef nonnull %i.f, ptr noundef nonnull %1) #24 ; 4 uses
  %.not38 = icmp eq ptr %i.g, null
  br i1 %.not38, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = load i32, ptr %i.g, align 4, !tbaa !52   ; 3 uses
  %.not39 = icmp ult i32 %2, %i.h
  br i1 %.not39, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.241, i32 noundef %2) #26
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.j = zext i32 %2 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.m = xor i32 %2, -1
  %i.n = add i32 %i.h, %i.m
  %i.o = zext i32 %i.n to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull align 1 %i.l, i64 %i.o, i1 false)
  %i.p = add i32 %i.h, -1                         ; 2 uses
  store i32 %i.p, ptr %i.g, align 4, !tbaa !52
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !234
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !196
  %.not40 = icmp eq ptr %i.t, null
  br i1 %.not40, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.242) #26
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.u = load i8, ptr %i.i, align 4, !tbaa !114
  %.not41 = icmp eq i8 %i.u, 0
  br i1 %.not41, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.w = load i64, ptr %i.v, align 4
  %i.x = and i64 %i.w, 4
  %.not42 = icmp eq i64 %i.x, 0
  br i1 %.not42, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = load i64, ptr %1, align 8
  %i.z = or i64 %i.y, 17179869184
  br label %bb.o

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.aa = load i64, ptr %1, align 8
  %i.ab = and i64 %i.aa, -17179869185
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %storemerge43 = phi i64 [ %i.ab, %bb.n ], [ %i.z, %bb.m ]
  store i64 %storemerge43, ptr %1, align 8
  %i.ac = tail call ptr @add_decoration(ptr noundef nonnull %i.f, ptr noundef nonnull %1, ptr noundef null) #24
  tail call void @free(ptr noundef %i.ac) #24
  br label %bb.p

bb.p:                                             ; preds = %bb.h, %bb.o, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare i64 @get_reflog_timestamp(ptr noundef) local_unnamed_addr #5

declare void @get_reflog_message(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @repo_logmsg_reencode(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @apply_mailmap_to_header(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @format_display_notes(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @grep_buffer(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @repo_unuse_commit_buffer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @strbuf_grow(ptr noundef, i64 noundef) local_unnamed_addr #5

declare ptr @commit_list_copy(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @get_revision_1(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2736 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !198
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %rev_info_commit_list_to_queue.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3024
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !207
  %.not4.i = icmp eq ptr %i.d, null
  br i1 %.not4.i, label %bb.c, label %rev_info_commit_list_to_queue.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.f = load i64, ptr %i.e, align 4              ; 2 uses
  %i.g = and i64 %i.f, 524288
  %.not5.i = icmp eq i64 %i.g, 0
  br i1 %.not5.i, label %bb.d, label %rev_info_commit_list_to_queue.exit

bb.d:                                             ; preds = %bb.c
  %i.h = and i64 %i.f, 16
  %.not6.i = icmp eq i64 %i.h, 0
  br i1 %.not6.i, label %get_walk_mode.exit, label %rev_info_commit_list_to_queue.exit

get_walk_mode.exit:                               ; preds = %bb.d
  %i.i = load ptr, ptr %0, align 8, !tbaa !204
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %rev_info_commit_list_to_queue.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %get_walk_mode.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %i.k = tail call ptr @pop_commit(ptr noundef nonnull %0) #24
  tail call void @prio_queue_put(ptr noundef nonnull %i.j, ptr noundef %i.k) #24
  %i.l = load ptr, ptr %0, align 8, !tbaa !204
  %.not.i44 = icmp eq ptr %i.l, null
  br i1 %.not.i44, label %rev_info_commit_list_to_queue.exit, label %bb.e, !llvm.loop !4

rev_info_commit_list_to_queue.exit:               ; preds = %bb.e, %bb.d, %bb.b, %bb.a, %bb.c, %get_walk_mode.exit
  %.0.i65 = phi i32 [ 2, %bb.c ], [ 4, %get_walk_mode.exit ], [ 3, %bb.d ], [ 1, %bb.b ], [ 0, %bb.a ], [ 4, %bb.e ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 3024       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1464 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 332 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.f

bb.f:                                             ; preds = %.backedge, %rev_info_commit_list_to_queue.exit
  switch i32 %.0.i65, label %default.unreachable92 [
    i32 0, label %bb.g
    i32 1, label %bb.h
    i32 2, label %bb.l
    i32 3, label %bb.l
    i32 4, label %bb.m
  ]

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !198
  %i.s = tail call ptr @next_reflog_entry(ptr noundef %i.r) #24
  br label %next_topo_commit.exit

bb.h:                                             ; preds = %bb.f
  %.val43 = load ptr, ptr %i.n, align 8, !tbaa !207 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val43, i64 104
  %i.u = tail call ptr @prio_queue_get(ptr noundef nonnull %i.t) #24 ; 3 uses
  %.not.i45 = icmp eq ptr %i.u, null
  br i1 %.not.i45, label %next_topo_commit.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %.val43, i64 152 ; 2 uses
  %i.w = getelementptr i8, ptr %i.u, i64 72
  %.val.i = load i32, ptr %i.w, align 8, !tbaa !38 ; 2 uses
  %i.x = load i32, ptr %i.v, align 8, !tbaa !231  ; 2 uses
  %i.y = udiv i32 %.val.i, %i.x                   ; 7 uses
  %i.z = urem i32 %.val.i, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %.val43, i64 160 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !214
  %.not.i.i.i = icmp ugt i32 %i.ab, %i.y
  br i1 %.not.i.i.i, label %._crit_edge4.i.i.i, label %st_mult.exit.i.i.i

._crit_edge4.i.i.i:                               ; preds = %bb.i
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.val43, i64 168
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !215
  br label %bb.j

st_mult.exit.i.i.i:                               ; preds = %bb.i
  %i.ac = add i32 %i.y, 1                         ; 2 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %.val43, i64 168 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !215
  %i.ag = shl nuw nsw i64 %i.ad, 3
  %i.ah = tail call ptr @xrealloc(ptr noundef %i.af, i64 noundef %i.ag) #24 ; 4 uses
  store ptr %i.ah, ptr %i.ae, align 8, !tbaa !215
  %i.ai = load i32, ptr %i.aa, align 8, !tbaa !214 ; 9 uses
  %.not332.i.i.i = icmp ugt i32 %i.ai, %i.y
  br i1 %.not332.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %st_mult.exit.i.i.i
  %i.aj = add i32 %i.ai, 1
  %i.ak = add i32 %i.y, 1
  %i.al = tail call i32 @llvm.umax.i32(i32 %i.aj, i32 %i.ak)
  %i.am = sub i32 %i.al, %i.ai                    ; 3 uses
  %min.iters.check100 = icmp ult i32 %i.am, 18
  br i1 %min.iters.check100, label %.lr.ph.i.i.i.preheader110, label %vector.scevcheck97

vector.scevcheck97:                               ; preds = %.lr.ph.i.i.i.preheader
  %i.an = add i32 %i.ai, 1
  %i.ao = add i32 %i.y, 1
  %umax98 = tail call i32 @llvm.umax.i32(i32 %i.an, i32 %i.ao)
  %i.ap = add i32 %umax98, -1
  %i.aq = icmp ult i32 %i.ap, %i.ai
  br i1 %i.aq, label %.lr.ph.i.i.i.preheader110, label %vector.ph101

vector.ph101:                                     ; preds = %vector.scevcheck97
  %n.vec102 = and i32 %i.am, -4                   ; 3 uses
  %i.ar = add i32 %i.ai, %n.vec102
  br label %vector.body103

vector.body103:                                   ; preds = %vector.body103, %vector.ph101
  %index104 = phi i32 [ 0, %vector.ph101 ], [ %index.next105, %vector.body103 ] ; 2 uses
  %i.as = add i32 %i.ai, %index104
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.au, align 8, !tbaa !216
  store <2 x ptr> splat (ptr null), ptr %i.av, align 8, !tbaa !216
  %index.next105 = add nuw i32 %index104, 4       ; 2 uses
  %i.aw = icmp eq i32 %index.next105, %n.vec102
  br i1 %i.aw, label %middle.block106, label %vector.body103, !llvm.loop !486

middle.block106:                                  ; preds = %vector.body103
  %cmp.n107 = icmp eq i32 %i.am, %n.vec102
  br i1 %cmp.n107, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader110

.lr.ph.i.i.i.preheader110:                        ; preds = %vector.scevcheck97, %.lr.ph.i.i.i.preheader, %middle.block106
  %.0303.i.i.i.ph = phi i32 [ %i.ai, %vector.scevcheck97 ], [ %i.ai, %.lr.ph.i.i.i.preheader ], [ %i.ar, %middle.block106 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader110, %.lr.ph.i.i.i
  %.0303.i.i.i = phi i32 [ %i.az, %.lr.ph.i.i.i ], [ %.0303.i.i.i.ph, %.lr.ph.i.i.i.preheader110 ] ; 2 uses
  %i.ax = zext i32 %.0303.i.i.i to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ax
  store ptr null, ptr %i.ay, align 8, !tbaa !216
  %i.az = add i32 %.0303.i.i.i, 1                 ; 2 uses
  %.not33.i.i.i = icmp ugt i32 %i.az, %i.y
  br i1 %.not33.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !487

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %middle.block106, %st_mult.exit.i.i.i
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !214
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.i.i.i, %._crit_edge4.i.i.i
  %i.ba = phi ptr [ %.pre.i.i.i, %._crit_edge4.i.i.i ], [ %i.ah, %._crit_edge.i.i.i ]
  %i.bb = zext i32 %i.y to i64                    ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !216 ; 2 uses
  %.not34.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not34.i.i.i, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %.val43, i64 168
  %i.bf = load i32, ptr %i.v, align 8, !tbaa !231
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %.val43, i64 156
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !230
  %i.bj = zext i32 %i.bi to i64
  %i.bk = shl nuw nsw i64 %i.bj, 2
  %i.bl = tail call ptr @xcalloc(i64 noundef %i.bg, i64 noundef %i.bk) #24 ; 2 uses
  %i.bm = load ptr, ptr %i.be, align 8, !tbaa !215
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bb
  store ptr %i.bl, ptr %i.bn, align 8, !tbaa !216
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.j
  %i.bo = phi ptr [ %i.bd, %bb.j ], [ %i.bl, %bb.k ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.val43, i64 156
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !230
  %i.br = mul i32 %i.bq, %i.z
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bs
  store i32 0, ptr %i.bt, align 4, !tbaa !52
  br label %bb.p

bb.l:                                             ; preds = %bb.f, %bb.f
  %i.bu = tail call ptr @pop_commit(ptr noundef %0) #24
  br label %next_topo_commit.exit

bb.m:                                             ; preds = %bb.f
  %i.bv = tail call ptr @prio_queue_get(ptr noundef nonnull %i.m) #24
  br label %next_topo_commit.exit

default.unreachable92:                            ; preds = %bb.f
  unreachable

next_topo_commit.exit:                            ; preds = %bb.m, %bb.l, %bb.g
  %.035 = phi ptr [ %i.bv, %bb.m ], [ %i.s, %bb.g ], [ %i.bu, %bb.l ] ; 6 uses
  %.not37 = icmp eq ptr %.035, null
  br i1 %.not37, label %next_topo_commit.exit.thread, label %bb.n

bb.n:                                             ; preds = %next_topo_commit.exit
  switch i32 %.0.i65, label %bb.p [
    i32 0, label %bb.o
    i32 2, label %expand_topo_walk.exit
  ]

bb.o:                                             ; preds = %bb.n
  %i.bw = load i64, ptr %.035, align 8
  %i.bx = and i64 %i.bw, -588410519553
  store i64 %i.bx, ptr %.035, align 8
  br label %bb.p

bb.p:                                             ; preds = %.thread, %bb.o, %bb.n
  %.0357173 = phi ptr [ %i.u, %.thread ], [ %.035, %bb.o ], [ %.035, %bb.n ] ; 14 uses
  %i.by = load i64, ptr %i.o, align 8, !tbaa !179 ; 2 uses
  %.not39 = icmp eq i64 %i.by, -1
  br i1 %.not39, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val = load ptr, ptr %i.a, align 8, !tbaa !198 ; 2 uses
  %.not.i46 = icmp eq ptr %.val, null
  br i1 %.not.i46, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = tail call i64 @get_reflog_timestamp(ptr noundef nonnull %.val) #24
  %.pre = load i64, ptr %i.o, align 8, !tbaa !179
  br label %comparison_date.exit

bb.s:                                             ; preds = %bb.q
  %i.ca = getelementptr inbounds nuw i8, ptr %.0357173, i64 48
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !229
  br label %comparison_date.exit

comparison_date.exit:                             ; preds = %bb.r, %bb.s
  %i.cc = phi i64 [ %.pre, %bb.r ], [ %i.by, %bb.s ]
  %i.cd = phi i64 [ %i.bz, %bb.r ], [ %i.cb, %bb.s ]
  %i.ce = icmp ult i64 %i.cd, %i.cc
  br i1 %i.ce, label %.backedge, label %bb.t

bb.t:                                             ; preds = %comparison_date.exit, %bb.p
  switch i32 %.0.i65, label %expand_topo_walk.exit [
    i32 0, label %bb.u
    i32 1, label %bb.v
    i32 4, label %bb.ai
  ]
end_hunk_2
begin_hunk_3_@get_revision_1:bb.a
.lr.ph.i.i.i52.preheader:                         ; preds = %st_mult.exit.i.i.i50
  %i.do = add i32 %i.dn, 1
  %i.dp = add i32 %i.df, 1
  %i.dq = tail call i32 @llvm.umax.i32(i32 %i.do, i32 %i.dp)
  %i.dr = sub i32 %i.dq, %i.dn                    ; 3 uses
  %min.iters.check = icmp ult i32 %i.dr, 18
  br i1 %min.iters.check, label %.lr.ph.i.i.i52.preheader109, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i.i52.preheader
  %i.ds = add i32 %i.dn, 1
  %i.dt = add i32 %i.df, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %i.ds, i32 %i.dt)
  %i.du = add i32 %umax, -1
  %i.dv = icmp ult i32 %i.du, %i.dn
  br i1 %i.dv, label %.lr.ph.i.i.i52.preheader109, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i32 %i.dr, -4                      ; 3 uses
  %i.dw = add i32 %i.dn, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dx = add i32 %i.dn, %index
  %i.dy = zext i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dy ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.dz, align 8, !tbaa !216
  store <2 x ptr> splat (ptr null), ptr %i.ea, align 8, !tbaa !216
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.eb = icmp eq i32 %index.next, %n.vec
  br i1 %i.eb, label %middle.block, label %vector.body, !llvm.loop !488

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.dr, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i55, label %.lr.ph.i.i.i52.preheader109

.lr.ph.i.i.i52.preheader109:                      ; preds = %vector.scevcheck, %.lr.ph.i.i.i52.preheader, %middle.block
  %.0303.i.i.i53.ph = phi i32 [ %i.dn, %vector.scevcheck ], [ %i.dn, %.lr.ph.i.i.i52.preheader ], [ %i.dw, %middle.block ]
  br label %.lr.ph.i.i.i52

.lr.ph.i.i.i52:                                   ; preds = %.lr.ph.i.i.i52.preheader109, %.lr.ph.i.i.i52
  %.0303.i.i.i53 = phi i32 [ %i.ee, %.lr.ph.i.i.i52 ], [ %.0303.i.i.i53.ph, %.lr.ph.i.i.i52.preheader109 ] ; 2 uses
  %i.ec = zext i32 %.0303.i.i.i53 to i64
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.ec
  store ptr null, ptr %i.ed, align 8, !tbaa !216
  %i.ee = add i32 %.0303.i.i.i53, 1               ; 2 uses
  %.not33.i.i.i54 = icmp ugt i32 %i.ee, %i.df
  br i1 %.not33.i.i.i54, label %._crit_edge.i.i.i55, label %.lr.ph.i.i.i52, !llvm.loop !489

._crit_edge.i.i.i55:                              ; preds = %.lr.ph.i.i.i52, %middle.block, %st_mult.exit.i.i.i50
  store i32 %i.di, ptr %i.cq, align 8, !tbaa !214
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge.i.i.i55, %._crit_edge4.i.i.i58
  %i.ef = phi ptr [ %.pre.i.i.i59, %._crit_edge4.i.i.i58 ], [ %i.dm, %._crit_edge.i.i.i55 ]
  %i.eg = zext i32 %i.df to i64                   ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.eg
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !216 ; 2 uses
  %.not34.i.i.i56 = icmp eq ptr %i.ei, null
  br i1 %.not34.i.i.i56, label %bb.af, label %indegree_slab_at.exit.i57

bb.af:                                            ; preds = %bb.ae
  %i.ej = load i32, ptr %i.cp, align 8, !tbaa !231
  %i.ek = zext i32 %i.ej to i64
  %i.el = load i32, ptr %i.cs, align 4, !tbaa !230
  %i.em = zext i32 %i.el to i64
  %i.en = shl nuw nsw i64 %i.em, 2
  %i.eo = tail call ptr @xcalloc(i64 noundef %i.ek, i64 noundef %i.en) #24 ; 2 uses
  %i.ep = load ptr, ptr %i.cr, align 8, !tbaa !215
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.eg
  store ptr %i.eo, ptr %i.eq, align 8, !tbaa !216
  br label %indegree_slab_at.exit.i57

indegree_slab_at.exit.i57:                        ; preds = %bb.af, %bb.ae
  %i.er = phi ptr [ %i.ei, %bb.ae ], [ %i.eo, %bb.af ]
  %i.es = load i32, ptr %i.cs, align 4, !tbaa !230
  %i.et = mul i32 %i.es, %i.dg
  %i.eu = zext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.eu ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !52
  %i.ex = add nsw i32 %i.ew, -1                   ; 2 uses
  store i32 %i.ex, ptr %i.ev, align 4, !tbaa !52
  %i.ey = icmp eq i32 %i.ex, 1
  br i1 %i.ey, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %indegree_slab_at.exit.i57
  tail call void @prio_queue_put(ptr noundef nonnull %i.ct, ptr noundef nonnull %i.cu) #24
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %indegree_slab_at.exit.i57
  %i.ez = load i64, ptr %i.p, align 4
  %i.fa = and i64 %i.ez, 549755813888
  %.not30.i = icmp eq i64 %i.fa, 0
  br i1 %.not30.i, label %select.unfold.i, label %expand_topo_walk.exit

select.unfold.i:                                  ; preds = %bb.ah, %bb.aa, %bb.z
  %i.fb = getelementptr inbounds nuw i8, ptr %.02634.i, i64 8
  %.026.i = load ptr, ptr %i.fb, align 8, !tbaa !58 ; 2 uses
  %.not28.i = icmp eq ptr %.026.i, null
  br i1 %.not28.i, label %expand_topo_walk.exit, label %bb.z, !llvm.loop !490

bb.ai:                                            ; preds = %bb.t
  %i.fc = tail call fastcc i32 @process_parents(ptr noundef nonnull %0, ptr noundef nonnull %.0357173, ptr noundef nonnull %i.m)
  %i.fd = icmp slt i32 %i.fc, 0
  br i1 %i.fd, label %bb.aj, label %expand_topo_walk.exit

bb.aj:                                            ; preds = %bb.ai
  %i.fe = load i64, ptr %i.p, align 4
  %i.ff = and i64 %i.fe, 2
  %.not40 = icmp eq i64 %i.ff, 0
  br i1 %.not40, label %bb.ak, label %expand_topo_walk.exit

bb.ak:                                            ; preds = %bb.aj
  %i.fg = getelementptr inbounds nuw i8, ptr %.0357173, i64 8
  %i.fh = tail call ptr @oid_to_hex(ptr noundef nonnull %i.fg) #24
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.246, ptr noundef %i.fh) #26
  unreachable

expand_topo_walk.exit:                            ; preds = %select.unfold.i, %bb.ah, %bb.y, %bb.n, %bb.ai, %bb.aj, %bb.u, %bb.t
  %.0357174 = phi ptr [ %.035, %bb.n ], [ %.0357173, %bb.ai ], [ %.0357173, %bb.aj ], [ %.0357173, %bb.t ], [ %.0357173, %bb.u ], [ %.0357173, %bb.y ], [ %.0357173, %bb.ah ], [ %.0357173, %select.unfold.i ] ; 8 uses
  %i.fi = tail call i32 @simplify_commit(ptr noundef %0, ptr noundef nonnull %.0357174)
  switch i32 %i.fi, label %bb.am [
    i32 0, label %.backedge
    i32 2, label %bb.al
  ]

.backedge:                                        ; preds = %expand_topo_walk.exit, %comparison_date.exit
  br label %bb.f

bb.al:                                            ; preds = %expand_topo_walk.exit
  %i.fj = getelementptr inbounds nuw i8, ptr %.0357174, i64 8
  %i.fk = tail call ptr @oid_to_hex(ptr noundef nonnull %i.fj) #24
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.247, ptr noundef %i.fk) #26
  unreachable

bb.am:                                            ; preds = %expand_topo_walk.exit
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 8            ; 4 uses
  %i.fn = and i32 %i.fm, 262144
  %.not41 = icmp eq i32 %i.fn, 0
  br i1 %.not41, label %next_topo_commit.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fo = and i32 %i.fm, 524288
  %.not.i61 = icmp eq i32 %i.fo, 0
  br i1 %.not.i61, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fp = and i32 %i.fm, -1572865
  %i.fq = or disjoint i32 %i.fp, 1048576
  br label %bb.at

bb.ap:                                            ; preds = %bb.an
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 2992
  %.022.i = load ptr, ptr %i.fr, align 8, !tbaa !58 ; 2 uses
  %.not1923.i = icmp eq ptr %.022.i, null
  br i1 %.not1923.i, label %._crit_edge.i, label %.lr.ph.i62

.lr.ph.i62:                                       ; preds = %bb.ap
  %i.fs = getelementptr inbounds nuw i8, ptr %.0357174, i64 8 ; 2 uses
  br label %bb.ar

bb.aq:                                            ; preds = %bb.as
  %i.ft = getelementptr inbounds nuw i8, ptr %.024.i, i64 8
  %.0.i63 = load ptr, ptr %i.ft, align 8, !tbaa !58 ; 2 uses
  %.not19.i = icmp eq ptr %.0.i63, null
  br i1 %.not19.i, label %._crit_edge.i, label %bb.ar, !llvm.loop !491

bb.ar:                                            ; preds = %bb.aq, %.lr.ph.i62
  %.024.i = phi ptr [ %.022.i, %.lr.ph.i62 ], [ %.0.i63, %bb.aq ] ; 2 uses
  %i.fu = load ptr, ptr %.024.i, align 8, !tbaa !61 ; 2 uses
  %i.fv = icmp eq ptr %i.fu, null
  br i1 %i.fv, label %._crit_edge.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 2 uses
  %i.fx = load i128, ptr %i.fw, align 1
  %i.fy = load i128, ptr %i.fs, align 1
  %i.fz = xor i128 %i.fx, %i.fy
  %i.ga = getelementptr i8, ptr %i.fw, i64 16
  %i.gb = getelementptr i8, ptr %i.fs, i64 16
  %i.gc = load i128, ptr %i.ga, align 1
  %i.gd = load i128, ptr %i.gb, align 1
  %i.ge = xor i128 %i.gc, %i.gd
  %i.gf = or i128 %i.fz, %i.ge
  %i.gg = icmp ne i128 %i.gf, 0
  %i.gh = zext i1 %i.gg to i32
  %.not.i.not.i = icmp eq i32 %i.gh, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %bb.aq

._crit_edge.i:                                    ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap
  %i.gi = phi i32 [ 0, %bb.ap ], [ 0, %bb.aq ], [ 1048576, %bb.as ], [ 1048576, %bb.ar ]
  %i.gj = and i32 %i.fm, -1572865
  %i.gk = or disjoint i32 %i.gi, %i.gj
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge.i, %bb.ao
  %storemerge.i = phi i32 [ %i.gk, %._crit_edge.i ], [ %i.fq, %bb.ao ] ; 2 uses
  store i32 %storemerge.i, ptr %i.fl, align 8
  %1 = getelementptr i8, ptr %0, i64 336
  %2 = load i32, ptr %1, align 8
  %3 = and i32 %2, 1
  %.not20.i = icmp eq i32 %3, 0
  %i.gl = and i32 %storemerge.i, 1048576
  %.not21.i = icmp eq i32 %i.gl, 0
  %or.cond.i = select i1 %.not20.i, i1 true, i1 %.not21.i
  br i1 %or.cond.i, label %track_linear.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gm = load i64, ptr %.0357174, align 8
  %i.gn = or i64 %i.gm, 288230376151711744
  store i64 %i.gn, ptr %.0357174, align 8
  br label %track_linear.exit

track_linear.exit:                                ; preds = %bb.at, %bb.au
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 2992 ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !246
  tail call void @commit_list_free(ptr noundef %i.gp) #24
  %i.gq = getelementptr inbounds nuw i8, ptr %.0357174, i64 56
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !234
  %i.gs = tail call ptr @commit_list_copy(ptr noundef %i.gr) #24
  store ptr %i.gs, ptr %i.go, align 8, !tbaa !246
  br label %next_topo_commit.exit.thread

next_topo_commit.exit.thread:                     ; preds = %bb.h, %next_topo_commit.exit, %track_linear.exit, %bb.am
  %.1.ph = phi ptr [ %.0357174, %track_linear.exit ], [ %.0357174, %bb.am ], [ null, %next_topo_commit.exit ], [ null, %bb.h ]
  ret ptr %.1.ph
}

declare void @free_commit_buffer(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @add_object_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @next_reflog_entry(ptr noundef) local_unnamed_addr #5

declare void @object_array_filter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @entry_unshown(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !222
  %i.b = load i64, ptr %i.a, align 4
  %i.c = and i64 %i.b, 34359738368
  %.not = icmp eq i64 %i.c, 0
  %i.d = zext i1 %.not to i32
  ret i32 %i.d
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #23

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nounwind }
attributes #25 = { nounwind willreturn memory(read) }
attributes #26 = { noreturn nounwind }
attributes #27 = { nounwind willreturn memory(none) }
attributes #28 = { noreturn }

!llvm.module.flags = !{!8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}
!llvm.errno.tbaa = !{!19}

!0 = distinct !{!0, !31}
!1 = distinct !{!1, !31}
!2 = distinct !{!2, !31}
!3 = distinct !{!3, !31}
!4 = distinct !{!4, !31}
!5 = distinct !{!5, !31}
!6 = distinct !{!6, !31}
!7 = distinct !{!7, !31}
!8 = !{i32 7, !"Dwarf Version", i32 5}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 8, !"PIC Level", i32 2}
!11 = !{i32 7, !"PIE Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!14 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !{!"omnipotent char", !15, i64 0}
!17 = !{!"int", !16, i64 0}
!18 = !{!"__libc_errno", !17, i64 0}
!19 = !{!18, !17, i64 0}
!20 = !{!"any pointer", !16, i64 0}
!21 = !{!"any p2 pointer", !20, i64 0}
!22 = !{!"any p3 pointer", !21, i64 0}
!23 = !{!"p3 omnipotent char", !22, i64 0}
!24 = !{!"revision_sources", !17, i64 0, !17, i64 4, !17, i64 8, !23, i64 16}
!25 = !{!24, !17, i64 4}
!26 = !{!24, !17, i64 0}
!27 = !{!24, !17, i64 8}
!28 = !{!24, !23, i64 16}
!29 = !{!"p2 omnipotent char", !21, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!"object_id", !16, i64 0, !17, i64 32}
!33 = !{!"object", !17, i64 0, !17, i64 0, !17, i64 4, !32, i64 8}
!34 = !{!"long", !16, i64 0}
!35 = !{!"p1 _ZTS11commit_list", !20, i64 0}
!36 = !{!"p1 _ZTS4tree", !20, i64 0}
!37 = !{!"commit", !33, i64 0, !34, i64 48, !35, i64 56, !36, i64 64, !17, i64 72}
!38 = !{!37, !17, i64 72}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = !{!"p1 _ZTS10repository", !20, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{!"tree", !33, i64 0, !20, i64 48, !34, i64 56}
!44 = !{!43, !20, i64 48}
!45 = !{!43, !34, i64 56}
!46 = !{!"p1 omnipotent char", !20, i64 0}
!47 = !{!"name_entry", !32, i64 0, !46, i64 40, !17, i64 48, !17, i64 52}
!48 = !{!47, !17, i64 52}
!49 = !{!"p1 int", !20, i64 0}
!50 = !{!"p1 _ZTS9object_id", !20, i64 0}
!51 = !{!"kh_oid_set", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !49, i64 16, !50, i64 24, !49, i64 32}
!52 = !{!17, !17, i64 0}
!53 = !{!"p1 _ZTS13hashmap_entry", !20, i64 0}
!54 = !{!"hashmap_entry", !53, i64 0, !17, i64 8}
!55 = !{!"oidset", !51, i64 0}
!56 = !{!"path_and_oids_entry", !54, i64 0, !46, i64 16, !55, i64 24}
!57 = !{!56, !46, i64 16}
!58 = !{!35, !35, i64 0}
!59 = !{!"p1 _ZTS6commit", !20, i64 0}
!60 = !{!"commit_list", !59, i64 0, !35, i64 8}
!61 = !{!60, !59, i64 0}
!62 = !{!"p1 _ZTS16prio_queue_entry", !20, i64 0}
!63 = !{!"prio_queue", !20, i64 0, !34, i64 8, !20, i64 16, !34, i64 24, !34, i64 32, !62, i64 40}
!64 = !{!"p1 _ZTS18object_array_entry", !20, i64 0}
!65 = !{!"object_array", !17, i64 0, !17, i64 4, !64, i64 8}
!66 = !{!"p1 _ZTS17rev_cmdline_entry", !20, i64 0}
!67 = !{!"rev_cmdline_info", !17, i64 0, !17, i64 4, !66, i64 8}
!68 = !{!"strbuf", !34, i64 0, !34, i64 8, !46, i64 16}
!69 = !{!"p1 _ZTS27list_objects_filter_options", !20, i64 0}
!70 = !{!"list_objects_filter_options", !68, i64 0, !17, i64 24, !17, i64 28, !17, i64 28, !46, i64 32, !34, i64 40, !34, i64 48, !17, i64 56, !34, i64 64, !34, i64 72, !69, i64 80}
!71 = !{!"p1 _ZTS16string_list_item", !20, i64 0}
!72 = !{!"string_list", !71, i64 0, !34, i64 8, !34, i64 16, !17, i64 24, !20, i64 32}
!73 = !{!"strvec", !29, i64 0, !34, i64 8, !34, i64 16}
!74 = !{!"ref_exclusions", !72, i64 0, !73, i64 40, !16, i64 64}
!75 = !{!"p1 _ZTS13pathspec_item", !20, i64 0}
!76 = !{!"pathspec", !17, i64 0, !17, i64 4, !17, i64 4, !17, i64 4, !17, i64 8, !17, i64 12, !75, i64 16}
!77 = !{!"date_mode", !17, i64 0, !17, i64 4, !46, i64 8}
!78 = !{!"p1 _ZTS8log_info", !20, i64 0}
!79 = !{!"ident_split", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !46, i64 40, !46, i64 48, !46, i64 56}
!80 = !{!"p1 _ZTS11string_list", !20, i64 0}
!81 = !{!"p1 _ZTS8grep_pat", !20, i64 0}
!82 = !{!"p2 _ZTS8grep_pat", !21, i64 0}
!83 = !{!"p1 _ZTS9grep_expr", !20, i64 0}
!84 = !{!"grep_opt", !81, i64 0, !82, i64 8, !81, i64 16, !82, i64 24, !83, i64 32, !41, i64 40, !17, i64 48, !17, i64 52, !17, i64 56, !17, i64 60, !17, i64 64, !17, i64 68, !17, i64 72, !17, i64 76, !17, i64 80, !17, i64 84, !17, i64 88, !17, i64 92, !17, i64 96, !17, i64 100, !17, i64 104, !17, i64 108, !17, i64 112, !17, i64 116, !17, i64 120, !17, i64 124, !17, i64 128, !17, i64 132, !17, i64 136, !17, i64 140, !17, i64 144, !17, i64 148, !16, i64 152, !17, i64 828, !17, i64 832, !17, i64 836, !17, i64 840, !17, i64 844, !17, i64 848, !17, i64 852, !20, i64 856, !20, i64 864, !20, i64 872}
!85 = !{!"p1 _ZTS9git_graph", !20, i64 0}
!86 = !{!"p2 _ZTS17re_pattern_buffer", !21, i64 0}
!87 = !{!"diff_flags", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !17, i64 24, !17, i64 28, !17, i64 32, !17, i64 36, !17, i64 40, !17, i64 44, !17, i64 48, !17, i64 52, !17, i64 56, !17, i64 60, !17, i64 64, !17, i64 68, !17, i64 72, !17, i64 76, !17, i64 80, !17, i64 84, !17, i64 88, !17, i64 92, !17, i64 96, !17, i64 100, !17, i64 104, !17, i64 108, !17, i64 112, !17, i64 116, !17, i64 120, !17, i64 124, !17, i64 128, !17, i64 132, !17, i64 136, !17, i64 140}
!88 = !{!"p1 _ZTS6oidset", !20, i64 0}
!89 = !{!"p1 _ZTS8_IO_FILE", !20, i64 0}
!90 = !{!"p1 _ZTS20emitted_diff_symbols", !20, i64 0}
!91 = !{!"p1 _ZTS6strmap", !20, i64 0}
!92 = !{!"diff_options", !46, i64 0, !46, i64 8, !17, i64 16, !17, i64 20, !46, i64 24, !17, i64 32, !86, i64 40, !34, i64 48, !34, i64 56, !46, i64 64, !46, i64 72, !46, i64 80, !46, i64 88, !87, i64 96, !17, i64 240, !17, i64 244, !17, i64 248, !17, i64 252, !17, i64 256, !17, i64 260, !17, i64 264, !17, i64 268, !17, i64 272, !17, i64 276, !17, i64 280, !17, i64 284, !17, i64 288, !17, i64 292, !17, i64 296, !17, i64 300, !17, i64 304, !17, i64 308, !17, i64 312, !17, i64 316, !17, i64 320, !17, i64 324, !46, i64 328, !17, i64 336, !46, i64 344, !17, i64 352, !17, i64 356, !29, i64 360, !34, i64 368, !34, i64 376, !17, i64 384, !17, i64 388, !17, i64 392, !17, i64 396, !46, i64 400, !17, i64 408, !17, i64 412, !88, i64 416, !17, i64 424, !17, i64 428, !17, i64 432, !20, i64 440, !89, i64 448, !17, i64 456, !16, i64 460, !76, i64 464, !20, i64 488, !20, i64 496, !20, i64 504, !20, i64 512, !20, i64 520, !20, i64 528, !20, i64 536, !20, i64 544, !17, i64 552, !90, i64 560, !17, i64 568, !17, i64 572, !41, i64 576, !91, i64 584, !17, i64 592, !17, i64 596, !17, i64 600}
!93 = !{!"p1 _ZTS16reflog_walk_info", !20, i64 0}
!94 = !{!"p1 _ZTS16decoration_entry", !20, i64 0}
!95 = !{!"decoration", !46, i64 0, !17, i64 8, !17, i64 12, !94, i64 16}
!96 = !{!"display_notes_opt", !17, i64 0, !72, i64 8}
!97 = !{!"p1 _ZTS13saved_parents", !20, i64 0}
!98 = !{!"p1 _ZTS16revision_sources", !20, i64 0}
!99 = !{!"p1 _ZTS14topo_walk_info", !20, i64 0}
!100 = !{!"p2 _ZTS12bloom_keyvec", !21, i64 0}
!101 = !{!"p1 _ZTS21bloom_filter_settings", !20, i64 0}
!102 = !{!"p1 _ZTS10tmp_objdir", !20, i64 0}
!103 = !{!"rev_info", !35, i64 0, !63, i64 8, !65, i64 56, !41, i64 72, !65, i64 80, !67, i64 96, !70, i64 112, !74, i64 200, !46, i64 272, !46, i64 280, !46, i64 288, !76, i64 296, !17, i64 320, !17, i64 324, !17, i64 328, !17, i64 332, !17, i64 332, !17, i64 332, !17, i64 332, !17, i64 332, !17, i64 332, !17, i64 332, !17, i64 332, !17, i64 333, !17, i64 333, !17, i64 333, !17, i64 333, !17, i64 333, !17, i64 333, !17, i64 333, !17, i64 333, !17, i64 334, !17, i64 334, !17, i64 334, !17, i64 334, !17, i64 334, !17, i64 334, !17, i64 334, !17, i64 335, !17, i64 335, !17, i64 335, !17, i64 335, !17, i64 335, !17, i64 335, !17, i64 335, !17, i64 335, !17, i64 336, !17, i64 336, !17, i64 336, !17, i64 336, !17, i64 336, !17, i64 336, !17, i64 336, !17, i64 336, !17, i64 337, !17, i64 337, !17, i64 337, !17, i64 337, !17, i64 337, !17, i64 337, !17, i64 337, !17, i64 337, !17, i64 338, !17, i64 338, !17, i64 338, !17, i64 338, !17, i64 338, !17, i64 338, !17, i64 338, !17, i64 338, !17, i64 339, !17, i64 339, !17, i64 339, !17, i64 339, !17, i64 339, !17, i64 340, !17, i64 344, !17, i64 344, !17, i64 344, !17, i64 344, !17, i64 344, !17, i64 344, !17, i64 344, !17, i64 344, !17, i64 345, !17, i64 345, !17, i64 345, !17, i64 345, !17, i64 345, !17, i64 345, !17, i64 345, !17, i64 345, !17, i64 346, !17, i64 346, !17, i64 346, !17, i64 346, !17, i64 346, !77, i64 352, !17, i64 368, !17, i64 372, !17, i64 376, !17, i64 380, !78, i64 384, !17, i64 392, !17, i64 396, !46, i64 400, !46, i64 408, !17, i64 416, !46, i64 424, !46, i64 432, !79, i64 440, !80, i64 504, !17, i64 512, !46, i64 520, !46, i64 528, !17, i64 536, !17, i64 540, !17, i64 544, !80, i64 552, !84, i64 560, !85, i64 1440, !17, i64 1448, !17, i64 1452, !17, i64 1456, !17, i64 1460, !17, i64 1460, !34, i64 1464, !34, i64 1472, !34, i64 1480, !17, i64 1488, !17, i64 1492, !20, i64 1496, !20, i64 1504, !20, i64 1512, !92, i64 1520, !92, i64 2128, !93, i64 2736, !95, i64 2744, !95, i64 2768, !95, i64 2792, !96, i64 2816, !50, i64 2864, !50, i64 2872, !46, i64 2880, !46, i64 2888, !46, i64 2896, !73, i64 2904, !17, i64 2928, !46, i64 2936, !17, i64 2944, !17, i64 2948, !17, i64 2952, !95, i64 2960, !97, i64 2984, !35, i64 2992, !35, i64 3000, !46, i64 3008, !98, i64 3016, !99, i64 3024, !100, i64 3032, !17, i64 3040, !101, i64 3048, !17, i64 3056, !102, i64 3064, !55, i64 3072}
!104 = !{!103, !41, i64 72}
!105 = !{!74, !71, i64 0}
!106 = !{!74, !34, i64 8}
!107 = !{!"string_list_item", !46, i64 0, !20, i64 8}
!108 = !{!107, !46, i64 0}
!109 = !{!74, !16, i64 64}
!110 = !{!"p1 _ZTS14ref_exclusions", !20, i64 0}
!111 = !{!"exclude_hidden_refs_cb", !110, i64 0, !46, i64 8}
end_hunk_3
