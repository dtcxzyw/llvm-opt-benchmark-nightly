Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/miniz_oxide-4bb6cbd72a4a2a9a.miniz_oxide.e11ffb1e97ec6fa2-cgu.0?download=true
inline.NumInlined: 178
inline.NumDeleted: 95
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core14compress_block:bb.a
  br i1 %i.na, label %.lr.ph.i41.i, label %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit46.i

.lr.ph.i41.i:                                     ; preds = %bb.ci
  %umax.i43.i = call i64 @llvm.umax.i64(i64 %i.lm, i64 %i.mp) ; 2 uses
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ck, %.lr.ph.i41.i
  %i.nb = phi i64 [ %i.mp, %.lr.ph.i41.i ], [ %i.nf, %bb.ck ] ; 3 uses
  %storemerge5.i44.i = phi i32 [ %i.mz, %.lr.ph.i41.i ], [ %i.nh, %bb.ck ] ; 2 uses
  %i.nc = phi i32 [ %i.my, %.lr.ph.i41.i ], [ %i.ng, %bb.ck ] ; 2 uses
  %exitcond.not.i45.i = icmp eq i64 %i.nb, %umax.i43.i
  br i1 %exitcond.not.i45.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.nb
  %i.ne = trunc i32 %i.nc to i8
  store i8 %i.ne, ptr %i.nd, align 1, !noalias !299
  %i.nf = add nuw i64 %i.nb, 1                    ; 3 uses
  store i64 %i.nf, ptr %i.lk, align 8, !alias.scope !300
  %i.ng = lshr i32 %i.nc, 8                       ; 3 uses
  store i32 %i.ng, ptr %i.ky, align 8, !alias.scope !300
  %i.nh = add nsw i32 %storemerge5.i44.i, -8      ; 3 uses
  %i.ni = icmp ugt i32 %i.nh, 7
  br i1 %i.ni, label %bb.cj, label %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit46.i

bb.cl:                                            ; preds = %bb.cj
  store i32 %storemerge5.i44.i, ptr %i.la, align 4, !alias.scope !300
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %umax.i43.i, i64 noundef %i.lm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #22, !noalias !299
  unreachable

_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit46.i: ; preds = %bb.ck, %bb.ci
  %i.nj = phi i64 [ %i.mp, %bb.ci ], [ %i.nf, %bb.ck ]
  %i.nk = phi i32 [ %i.my, %bb.ci ], [ %i.ng, %bb.ck ] ; 2 uses
  %storemerge.lcssa.i40.i = phi i32 [ %i.mz, %bb.ci ], [ %i.nh, %bb.ck ] ; 3 uses
  store i32 %storemerge.lcssa.i40.i, ptr %i.la, align 4, !alias.scope !300
  %i.nl = lshr i64 %.sroa.0.1100.i, %i.ms
  %i.nm = sub nuw i32 %.sroa.19.199.i, %..i37.i   ; 2 uses
  %i.nn = icmp eq i32 %i.nm, 0
  br i1 %i.nn, label %._crit_edge103.i, label %bb.cg

bb.cm:                                            ; preds = %bb.ca
  %i.no = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.07.093.i
  %i.np = load i8, ptr %i.no, align 1, !alias.scope !293, !noundef !5
  %i.nq = zext i8 %i.np to i32
  %i.nr = or disjoint i32 %i.nq, 256
  %i.ns = add nuw nsw i64 %.sroa.07.093.i, 1
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.ca
  %.sroa.07.1.i = phi i64 [ %i.ns, %bb.cm ], [ %.sroa.07.093.i, %bb.ca ] ; 8 uses
  %.sroa.02.1.i = phi i32 [ %i.nr, %bb.cm ], [ %.sroa.02.094.i, %bb.ca ] ; 7 uses
  %i.nt = and i32 %.sroa.02.1.i, 1
  %.not.i10 = icmp eq i32 %i.nt, 0
  br i1 %.not.i10, label %.preheader.i21, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.nu = lshr i32 %.sroa.02.1.i, 1
  %i.nv = and i64 %.sroa.07.1.i, 65535
  %i.nw = getelementptr inbounds nuw i8, ptr %2, i64 %i.nv
  %i.nx = load i8, ptr %i.nw, align 1, !alias.scope !293, !noundef !5
  %i.ny = zext i8 %i.nx to i64                    ; 3 uses
  %i.nz = add nuw nsw i64 %.sroa.07.1.i, 2
  %i.oa = and i64 %i.nz, 65535
  %i.ob = add nuw nsw i64 %.sroa.07.1.i, 1
  %i.oc = and i64 %i.ob, 65535
  %i.od = getelementptr inbounds nuw i8, ptr %2, i64 %i.oc
  %i.oe = load i8, ptr %i.od, align 1, !alias.scope !293, !noundef !5
  %i.of = zext i8 %i.oe to i16
  %i.og = getelementptr inbounds nuw i8, ptr %2, i64 %i.oa
  %i.oh = load i8, ptr %i.og, align 1, !alias.scope !293, !noundef !5 ; 4 uses
  %i.oi = zext i8 %i.oh to i16
  %i.oj = shl nuw i16 %i.oi, 8
  %i.ok = or disjoint i16 %i.oj, %i.of            ; 2 uses
  %i.ol = add nuw nsw i64 %.sroa.07.1.i, 3
  %i.om = getelementptr inbounds nuw i8, ptr @44, i64 %i.ny
  %i.on = load i8, ptr %i.om, align 1, !noalias !297, !noundef !5
  %i.oo = and i8 %i.on, 31
  %i.op = zext nneg i8 %i.oo to i64
  %i.oq = or disjoint i64 %i.op, 256              ; 2 uses
  %i.or = getelementptr inbounds nuw [2 x i8], ptr %i.lb, i64 %i.oq
  %i.os = load i16, ptr %i.or, align 2, !alias.scope !291, !noundef !5
  %i.ot = zext i16 %i.os to i64
  %i.ou = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.oq
  %i.ov = load i8, ptr %i.ou, align 1, !alias.scope !291, !noundef !5
  %i.ow = zext i8 %i.ov to i32
  %i.ox = and i32 %.sroa.19.091.i, 63
  %i.oy = zext nneg i32 %i.ox to i64
  %i.oz = shl i64 %i.ot, %i.oy
  %i.pa = add i32 %.sroa.19.091.i, %i.ow          ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr @57, i64 %i.ny
  %i.pc = load i8, ptr %i.pb, align 1, !noalias !297, !noundef !5 ; 2 uses
  %i.pd = and i8 %i.pc, 7
  %i.pe = zext nneg i8 %i.pd to i64
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr @56, i64 %i.pe
  %i.pg = load i32, ptr %i.pf, align 4, !noalias !297, !noundef !5
  %i.ph = zext i32 %i.pg to i64
  %i.pi = and i64 %i.ph, %i.ny
  %i.pj = zext i8 %i.pc to i32
  %i.pk = and i32 %i.pa, 63
  %i.pl = zext nneg i32 %i.pk to i64
  %i.pm = shl i64 %i.pi, %i.pl
  %i.pn = add i32 %i.pa, %i.pj                    ; 2 uses
  %i.po = icmp ult i8 %i.oh, 2
  br i1 %i.po, label %bb.ct, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.pp = zext i8 %i.oh to i64                    ; 3 uses
  %i.pq = icmp sgt i8 %i.oh, -1
  br i1 %i.pq, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.pr = getelementptr inbounds nuw i8, ptr @42, i64 %i.pp
  %i.ps = getelementptr inbounds nuw i8, ptr @59, i64 %i.pp
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cp
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.pp, i64 noundef 128, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #22, !noalias !297
  unreachable

bb.cs:                                            ; preds = %bb.ct, %bb.cq
  %.sroa.021.0.in.in.i = phi ptr [ %i.qv, %bb.ct ], [ %i.ps, %bb.cq ]
  %.sroa.017.0.in.in.i = phi ptr [ %i.qu, %bb.ct ], [ %i.pr, %bb.cq ]
  %.sroa.017.0.in.i = load i8, ptr %.sroa.017.0.in.in.i, align 1, !noalias !297, !noundef !5
  %.sroa.017.0.i = zext i8 %.sroa.017.0.in.i to i64 ; 2 uses
  %.sroa.021.0.in.i = load i8, ptr %.sroa.021.0.in.in.i, align 1, !noalias !297, !noundef !5 ; 2 uses
  %i.pt = getelementptr inbounds nuw [2 x i8], ptr %i.ld, i64 %.sroa.017.0.i
  %i.pu = load i16, ptr %i.pt, align 2, !alias.scope !291, !noundef !5
  %i.pv = zext i16 %i.pu to i64
  %i.pw = getelementptr inbounds nuw i8, ptr %i.le, i64 %.sroa.017.0.i
  %i.px = load i8, ptr %i.pw, align 1, !alias.scope !291, !noundef !5
  %i.py = zext i8 %i.px to i32
  %i.pz = and i32 %i.pn, 63
  %i.qa = zext nneg i32 %i.pz to i64
  %i.qb = shl i64 %i.pv, %i.qa
  %i.qc = add i32 %i.pn, %i.py                    ; 2 uses
  %i.qd = and i8 %.sroa.021.0.in.i, 15
  %i.qe = zext nneg i8 %i.qd to i64
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr @56, i64 %i.qe
  %i.qg = load i32, ptr %i.qf, align 4, !noalias !297, !noundef !5
  %i.qh = zext i16 %i.ok to i32
  %i.qi = and i32 %i.qg, %i.qh
  %i.qj = zext nneg i32 %i.qi to i64
  %i.qk = zext i8 %.sroa.021.0.in.i to i32
  %i.ql = and i32 %i.qc, 63
  %i.qm = zext nneg i32 %i.ql to i64
  %i.qn = shl i64 %i.qj, %i.qm
  %i.qo = or i64 %i.oz, %i.pm
  %i.qp = or i64 %i.qo, %i.qb
  %i.qq = or i64 %i.qp, %i.qn
  %i.qr = or i64 %i.qq, %.sroa.0.06692.i
  %i.qs = add i32 %i.qc, %i.qk
  br label %.loopexit.i

bb.ct:                                            ; preds = %bb.co
  %i.qt = zext nneg i16 %i.ok to i64              ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr @43, i64 %i.qt
  %i.qv = getelementptr inbounds nuw i8, ptr @60, i64 %i.qt
  br label %bb.cs

.loopexit.i:                                      ; preds = %.preheader.i21.2, %.preheader.i21, %.preheader.i21.1, %bb.cs
  %.sroa.19.2.i = phi i32 [ %i.qs, %bb.cs ], [ %i.ry, %.preheader.i21 ], [ %i.tk, %.preheader.i21.2 ], [ %i.sr, %.preheader.i21.1 ] ; 3 uses
  %.sroa.0.2.i11 = phi i64 [ %i.qr, %bb.cs ], [ %i.rx, %.preheader.i21 ], [ %i.tj, %.preheader.i21.2 ], [ %i.sq, %.preheader.i21.1 ] ; 2 uses
  %.sroa.07.2.i = phi i64 [ %i.ol, %bb.cs ], [ %i.rj, %.preheader.i21 ], [ %i.sv, %.preheader.i21.2 ], [ %i.sc, %.preheader.i21.1 ] ; 2 uses
  %.sroa.02.2.i = phi i32 [ %i.nu, %bb.cs ], [ %i.ri, %.preheader.i21 ], [ %i.su, %.preheader.i21.2 ], [ %i.sb, %.preheader.i21.1 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !301)
  %i.qw = add i64 %i.lo, 8                        ; 2 uses
  %i.qx = icmp ugt i64 %i.lo, -9
  %.not.i.i = icmp ugt i64 %i.qw, %i.lh
  %or.cond.i.i = or i1 %i.qx, %.not.i.i
  br i1 %or.cond.i.i, label %bb.cv, label %bb.cu, !prof !9

bb.cu:                                            ; preds = %.loopexit.i
  %i.qy = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.lo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !302
  store i64 %.sroa.0.2.i11, ptr %i.a, align 8, !noalias !302
  call void @_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull %i.qy, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11), !noalias !302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !302
  %i.qz = lshr i32 %.sroa.19.2.i, 3
  %i.ra = zext nneg i32 %i.qz to i64
  %i.rb = add i64 %i.lo, %i.ra                    ; 4 uses
  %i.rc = icmp ult i64 %i.rb, %i.lo
  %.not5.i.i = icmp ugt i64 %i.rb, %i.lh
  %or.cond6.i.i = or i1 %i.rc, %.not5.i.i
  br i1 %or.cond6.i.i, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core17compress_lz_codes.exit, label %_RNvMs8_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_9BitBuffer5flush.exit.i, !prof !303

bb.cv:                                            ; preds = %.loopexit.i
  call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.lo, i64 noundef %i.qw, i64 noundef %i.lh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #22, !noalias !302
  unreachable

_RNvMs8_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_9BitBuffer5flush.exit.i: ; preds = %bb.cu
  store i64 %i.rb, ptr %i.lf, align 8, !alias.scope !304
  %i.rd = and i32 %.sroa.19.2.i, 56
  %i.re = zext nneg i32 %i.rd to i64
  %i.rf = lshr i64 %.sroa.0.2.i11, %i.re          ; 2 uses
  %i.rg = and i32 %.sroa.19.2.i, 7                ; 2 uses
  %i.rh = icmp ult i64 %.sroa.07.2.i, %..i.i7
  br i1 %i.rh, label %bb.ca, label %._crit_edge.i12

.preheader.i21:                                   ; preds = %bb.cn
  %i.ri = lshr exact i32 %.sroa.02.1.i, 1
  %i.rj = add i64 %.sroa.07.1.i, 1                ; 3 uses
  %i.rk = and i64 %.sroa.07.1.i, 65535
  %i.rl = getelementptr inbounds nuw i8, ptr %2, i64 %i.rk
  %i.rm = load i8, ptr %i.rl, align 1, !alias.scope !293, !noundef !5
  %i.rn = zext i8 %i.rm to i64                    ; 2 uses
  %i.ro = getelementptr inbounds nuw [2 x i8], ptr %i.lb, i64 %i.rn
  %i.rp = load i16, ptr %i.ro, align 2, !alias.scope !291, !noundef !5
  %i.rq = zext i16 %i.rp to i64
  %i.rr = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.rn
  %i.rs = load i8, ptr %i.rr, align 1, !alias.scope !291, !noundef !5
  %i.rt = zext i8 %i.rs to i32
  %i.ru = and i32 %.sroa.19.091.i, 63
  %i.rv = zext nneg i32 %i.ru to i64
  %i.rw = shl i64 %i.rq, %i.rv
  %i.rx = or i64 %i.rw, %.sroa.0.06692.i          ; 2 uses
  %i.ry = add i32 %.sroa.19.091.i, %i.rt          ; 3 uses
  %i.rz = and i32 %.sroa.02.1.i, 2
  %.not36.i = icmp eq i32 %i.rz, 0
  %i.sa = icmp ult i64 %i.rj, %..i.i7
  %or.cond = select i1 %.not36.i, i1 %i.sa, i1 false
  br i1 %or.cond, label %.preheader.i21.1, label %.loopexit.i

.preheader.i21.1:                                 ; preds = %.preheader.i21
  %i.sb = lshr exact i32 %.sroa.02.1.i, 2
  %i.sc = add i64 %.sroa.07.1.i, 2                ; 3 uses
  %i.sd = and i64 %i.rj, 65535
  %i.se = getelementptr inbounds nuw i8, ptr %2, i64 %i.sd
  %i.sf = load i8, ptr %i.se, align 1, !alias.scope !293, !noundef !5
  %i.sg = zext i8 %i.sf to i64                    ; 2 uses
  %i.sh = getelementptr inbounds nuw [2 x i8], ptr %i.lb, i64 %i.sg
  %i.si = load i16, ptr %i.sh, align 2, !alias.scope !291, !noundef !5
  %i.sj = zext i16 %i.si to i64
  %i.sk = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.sg
  %i.sl = load i8, ptr %i.sk, align 1, !alias.scope !291, !noundef !5
  %i.sm = zext i8 %i.sl to i32
  %i.sn = and i32 %i.ry, 63
  %i.so = zext nneg i32 %i.sn to i64
  %i.sp = shl i64 %i.sj, %i.so
  %i.sq = or i64 %i.sp, %i.rx                     ; 2 uses
  %i.sr = add i32 %i.ry, %i.sm                    ; 3 uses
  %i.ss = and i32 %.sroa.02.1.i, 4
  %.not36.i.1 = icmp eq i32 %i.ss, 0
  %i.st = icmp ult i64 %i.sc, %..i.i7
  %or.cond415 = select i1 %.not36.i.1, i1 %i.st, i1 false
  br i1 %or.cond415, label %.preheader.i21.2, label %.loopexit.i

.preheader.i21.2:                                 ; preds = %.preheader.i21.1
  %i.su = lshr exact i32 %.sroa.02.1.i, 3
  %i.sv = add i64 %.sroa.07.1.i, 3
  %i.sw = and i64 %i.sc, 65535
  %i.sx = getelementptr inbounds nuw i8, ptr %2, i64 %i.sw
  %i.sy = load i8, ptr %i.sx, align 1, !alias.scope !293, !noundef !5
  %i.sz = zext i8 %i.sy to i64                    ; 2 uses
  %i.ta = getelementptr inbounds nuw [2 x i8], ptr %i.lb, i64 %i.sz
  %i.tb = load i16, ptr %i.ta, align 2, !alias.scope !291, !noundef !5
  %i.tc = zext i16 %i.tb to i64
  %i.td = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.sz
  %i.te = load i8, ptr %i.td, align 1, !alias.scope !291, !noundef !5
  %i.tf = zext i8 %i.te to i32
  %i.tg = and i32 %i.sr, 63
  %i.th = zext nneg i32 %i.tg to i64
  %i.ti = shl i64 %i.tc, %i.th
  %i.tj = or i64 %i.ti, %i.sq
  %i.tk = add i32 %i.sr, %i.tf
  br label %.loopexit.i

_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core17compress_lz_codes.exit: ; preds = %bb.cu, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit.i14, %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide19start_dynamic_block.exit.thread
  %.sroa.0.0 = phi i8 [ 2, %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide19start_dynamic_block.exit.thread ], [ 1, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit.i14 ], [ 2, %bb.cu ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core14compress_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(65712) initializes((65640, 65656)) %1, ptr noalias nofree noundef align 8 dereferenceable(56) %2, i8 noundef range(i8 0, 5) %3) unnamed_addr #3 personality ptr @rust_eh_personality !guid !344 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 65640 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 65648 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 65700 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.d = load i32, ptr %i.c, align 4, !range !345, !noundef !5
  %i.e = icmp eq i32 %i.d, 0                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 65705 ; 9 uses
  %i.g = load i8, ptr %i.f, align 1, !range !346, !noundef !5
  %.not18 = icmp eq i8 %i.g, 4
  br i1 %.not18, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i8 %3, 4
  store i8 %3, ptr %i.f, align 1
  %or.cond = and i1 %i.h, %i.e
  br i1 %or.cond, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  store i8 %3, ptr %i.f, align 1
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 -2, ptr %i.c, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -2, ptr %i.i, align 8
  store i64 0, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.j, align 8
  br label %bb.fb

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 65684 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !noundef !5
  %i.m = icmp ne i32 %i.l, 0
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 65707 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !range !11
  %i.p = trunc nuw i8 %i.o to i1
  %or.cond7 = select i1 %i.m, i1 true, i1 %i.p
  br i1 %or.cond7, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 65664 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !noundef !5 ; 2 uses
  %i.s = and i32 %i.r, 524288
  %.not20 = icmp eq i32 %i.s, 0
  br i1 %.not20, label %bb.h, label %.split

bb.g:                                             ; preds = %bb.e
  tail call fastcc void @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core19flush_output_buffer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %2, ptr noalias nofree noundef align 8 dereferenceable(72) %i.a)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i32, ptr %i.t, align 8, !range !345, !noundef !5
  store i32 %i.u, ptr %i.c, align 4
  br label %bb.fb

bb.h:                                             ; preds = %bb.f
  %i.v = and i32 %i.r, 151551
  %brmerge3.not = icmp eq i32 %i.v, 16385
  br i1 %brmerge3.not, label %bb.cb, label %bb.i

.split:                                           ; preds = %bb.f
  %i.w = tail call noundef zeroext i1 @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate6stored15compress_stored(ptr noalias nofree noundef nonnull align 8 dereferenceable(65712) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2)
  br i1 %i.w, label %.split._RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread_crit_edge, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread40

.split._RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread_crit_edge: ; preds = %.split
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !348, !noundef !5 ; 5 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !348, !noundef !5 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 65560 ; 12 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 65600 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !347, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 65608 ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !347, !noundef !5
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 65704 ; 4 uses
  %i.ah = load i8, ptr %i.ag, align 8, !alias.scope !347, !noundef !5
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 65672 ; 4 uses
  %i.aj = load i32, ptr %i.ai, align 8, !alias.scope !347, !noundef !5
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 65676 ; 4 uses
  %i.al = load i32, ptr %i.ak, align 4, !alias.scope !347, !noundef !5
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 65616 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 65576 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 65568 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 65624
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 65632 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 65552 ; 11 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 65536 ; 16 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 65544 ; 10 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 65556 ; 15 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 65706
  br label %bb.k

bb.k:                                             ; preds = %.backedge, %bb.j
  %.sroa.0148.0.i = phi i8 [ %i.ah, %bb.j ], [ %.sroa.0148.1.i, %.backedge ] ; 7 uses
  %.sroa.056.0.i = phi i32 [ %i.al, %bb.j ], [ %.sroa.056.1.i, %.backedge ] ; 8 uses
  %.sroa.053.0.i = phi i32 [ %i.aj, %bb.j ], [ %.sroa.053.1.i, %.backedge ] ; 6 uses
  %.sroa.043.0.i = phi i64 [ %i.af, %bb.j ], [ %i.nu, %.backedge ] ; 13 uses
  %.sroa.025.0.i = phi i64 [ %i.ad, %bb.j ], [ %i.sm, %.backedge ] ; 8 uses
  %.sroa.015.0.i = phi i64 [ 0, %bb.j ], [ %.sroa.015.2.i, %.backedge ] ; 11 uses
  %i.aw = icmp ult i64 %.sroa.015.0.i, %i.aa
  br i1 %i.aw, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = load i8, ptr %i.f, align 1, !range !346, !alias.scope !347, !noundef !5
  %i.ay = icmp eq i8 %i.ax, 0
  %i.az = icmp eq i64 %.sroa.025.0.i, 0
  %or.cond8.i = or i1 %i.az, %i.ay
  br i1 %or.cond8.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.loopexit.i, %bb.l
  %.sroa.025.1.i = phi i64 [ %.sroa.025.3.i, %.loopexit.i ], [ %.sroa.025.0.i, %bb.l ]
  %.sroa.015.1.i = phi i64 [ %.sroa.015.2.i, %.loopexit.i ], [ %.sroa.015.0.i, %bb.l ]
  store i64 %.sroa.015.1.i, ptr %i.a, align 8, !alias.scope !347
  store i64 %.sroa.025.1.i, ptr %i.ac, align 8, !alias.scope !347
  store i64 %.sroa.043.0.i, ptr %i.ae, align 8, !alias.scope !347
  store i8 %.sroa.0148.0.i, ptr %i.ag, align 8, !alias.scope !347
  store i32 %.sroa.053.0.i, ptr %i.ai, align 8, !alias.scope !347
  store i32 %.sroa.056.0.i, ptr %i.ak, align 4, !alias.scope !347
  br label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.ba = sub i64 %i.aa, %.sroa.015.0.i
  %i.bb = sub i64 258, %.sroa.025.0.i
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.bb, i64 %i.ba) ; 6 uses
  %i.bc = load i64, ptr %i.am, align 8, !alias.scope !347, !noundef !5
  %i.bd = add i64 %i.bc, %.sroa.025.0.i
  %i.be = icmp ugt i64 %i.bd, 1
  %i.bf = icmp ne i64 %..i.i, 0                   ; 2 uses
  %or.cond.i = and i1 %i.bf, %i.be
  br i1 %or.cond.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = add i64 %..i.i, %.sroa.015.0.i          ; 5 uses
  %i.bh = icmp ult i64 %i.bg, %.sroa.015.0.i
  %.not169.i = icmp ugt i64 %i.bg, %i.aa
  %or.cond182.i = or i1 %i.bh, %.not169.i
  br i1 %or.cond182.i, label %bb.q, label %bb.r, !prof !9

bb.p:                                             ; preds = %bb.n
  %i.bi = add i64 %..i.i, %.sroa.025.0.i
  %i.bj = add i64 %..i.i, %.sroa.015.0.i          ; 4 uses
  %i.bk = icmp ult i64 %i.bj, %.sroa.015.0.i
  %.not170.i = icmp ugt i64 %i.bj, %i.aa
  %or.cond183.i = or i1 %i.bk, %.not170.i
  br i1 %or.cond183.i, label %bb.w, label %.lr.ph254.preheader.i, !prof !9

bb.q:                                             ; preds = %bb.o
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %.sroa.015.0.i, i64 noundef %i.bg, i64 noundef %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #22, !noalias !348
  unreachable

bb.r:                                             ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.015.0.i ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %..i.i
  br i1 %i.bf, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.r, %bb.v
  %.sroa.025.2248.i = phi i64 [ %i.bu, %bb.v ], [ %.sroa.025.0.i, %bb.r ] ; 2 uses
  %.sroa.079.0247.i = phi ptr [ %i.bn, %bb.v ], [ %i.bl, %bb.r ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.079.0247.i, i64 1 ; 2 uses
  %i.bo = load i8, ptr %.sroa.079.0247.i, align 1, !noalias !348, !noundef !5 ; 3 uses
  %i.bp = add i64 %.sroa.025.2248.i, %.sroa.043.0.i
  %i.bq = and i64 %i.bp, 32767                    ; 3 uses
  %i.br = load ptr, ptr %i.ab, align 8, !alias.scope !347, !nonnull !5, !noundef !5
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bq
  store i8 %i.bo, ptr %i.bs, align 1, !noalias !348
end_hunk_0
