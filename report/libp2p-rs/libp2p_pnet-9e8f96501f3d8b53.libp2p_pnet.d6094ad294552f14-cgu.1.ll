Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_pnet-9e8f96501f3d8b53.libp2p_pnet.d6094ad294552f14-cgu.1?download=true
inline.NumInlined: 280
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvYINtNtNtCs4WSCZBoZJWV_6cipher6stream7wrapper23StreamCipherCoreWrapperINtCs5sEvUJpJda_7salsa209SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1H_IB1H_IB1H_NtB1J_5UTermNtNtB1L_3bit2B1ENtB2K_2B0EB2I_EB2Y_EEENtB7_12StreamCipher25try_apply_keystream_inoutCsinjenlOLFM6_11libp2p_pnet:bb.a
  %i.ad = lshr i64 %i.ac, 6
  %i.ae = and i64 %i.ac, -64                      ; 2 uses
  %i.af = and i64 %i.ac, 63                       ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ae ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %.not.i1 = icmp eq i64 %..i.i, 0
  br i1 %.not.i1, label %_RNvMs2_NtCs9HgoOO8pbyf_5inout9inout_bufINtB5_8InOutBufhE10xor_in2out.exit.i, label %iter.check

iter.check:                                       ; preds = %_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtCs5sEvUJpJda_7salsa209SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1N_IB1N_IB1N_NtB1P_5UTermNtNtB1R_3bit2B1ENtB2Q_2B0EB2O_EB34_EEENtB7_12StreamCipher15check_remainingCsinjenlOLFM6_11libp2p_pnet.exit.thread
  %min.iters.check = icmp samesign ult i64 %..i.i, 4
  %i.ai = sub i64 %i.z, %i.x
  %diff.check = icmp ugt i64 %i.ai, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check7 = icmp samesign ult i64 %..i.i, 16
  br i1 %min.iters.check7, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aj = and i64 %..i.i, 12
  %n.vec = and i64 %..i.i, 112                    ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %wide.load = load <8 x i8>, ptr %i.y, align 1, !noalias !134
  %wide.load8 = load <8 x i8>, ptr %i.ak, align 1, !noalias !134
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %wide.load9 = load <8 x i8>, ptr %i.u, align 1, !alias.scope !135, !noalias !136
  %wide.load10 = load <8 x i8>, ptr %i.al, align 1, !alias.scope !135, !noalias !136
  %i.am = xor <8 x i8> %wide.load9, %wide.load
  %i.an = xor <8 x i8> %wide.load10, %wide.load8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store <8 x i8> %i.am, ptr %i.w, align 1, !noalias !134
  store <8 x i8> %i.an, ptr %i.ao, align 1, !noalias !134
  %i.ap = icmp eq i64 %n.vec, 16
  br i1 %i.ap, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.aq = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %wide.load.1 = load <8 x i8>, ptr %i.aq, align 1, !noalias !134
  %wide.load8.1 = load <8 x i8>, ptr %i.ar, align 1, !noalias !134
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %wide.load9.1 = load <8 x i8>, ptr %i.at, align 1, !alias.scope !135, !noalias !136
  %wide.load10.1 = load <8 x i8>, ptr %i.au, align 1, !alias.scope !135, !noalias !136
  %i.av = xor <8 x i8> %wide.load9.1, %wide.load.1
  %i.aw = xor <8 x i8> %wide.load10.1, %wide.load8.1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store <8 x i8> %i.av, ptr %i.as, align 1, !noalias !134
  store <8 x i8> %i.aw, ptr %i.ax, align 1, !noalias !134
  %i.ay = icmp eq i64 %n.vec, 32
  br i1 %i.ay, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.az = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %wide.load.2 = load <8 x i8>, ptr %i.az, align 1, !noalias !134
  %wide.load8.2 = load <8 x i8>, ptr %i.ba, align 1, !noalias !134
  %i.bb = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %wide.load9.2 = load <8 x i8>, ptr %i.bc, align 1, !alias.scope !135, !noalias !136
  %wide.load10.2 = load <8 x i8>, ptr %i.bd, align 1, !alias.scope !135, !noalias !136
  %i.be = xor <8 x i8> %wide.load9.2, %wide.load.2
  %i.bf = xor <8 x i8> %wide.load10.2, %wide.load8.2
  %i.bg = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store <8 x i8> %i.be, ptr %i.bb, align 1, !noalias !134
  store <8 x i8> %i.bf, ptr %i.bg, align 1, !noalias !134
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %..i.i, %n.vec
  br i1 %cmp.n, label %_RNvMs2_NtCs9HgoOO8pbyf_5inout9inout_bufINtB5_8InOutBufhE10xor_in2out.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !137

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec11 = and i64 %..i.i, 124                  ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index12 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next15, %vec.epilog.vector.body ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.y, i64 %index12
  %wide.load13 = load <4 x i8>, ptr %i.bh, align 1, !noalias !134
  %i.bi = getelementptr inbounds nuw i8, ptr %i.w, i64 %index12
  %i.bj = getelementptr inbounds nuw i8, ptr %i.u, i64 %index12
  %wide.load14 = load <4 x i8>, ptr %i.bj, align 1, !alias.scope !135, !noalias !136
  %i.bk = xor <4 x i8> %wide.load14, %wide.load13
  store <4 x i8> %i.bk, ptr %i.bi, align 1, !noalias !134
  %index.next15 = add nuw i64 %index12, 4         ; 2 uses
  %i.bl = icmp eq i64 %index.next15, %n.vec11
  br i1 %i.bl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !108

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n16 = icmp eq i64 %..i.i, %n.vec11
  br i1 %cmp.n16, label %_RNvMs2_NtCs9HgoOO8pbyf_5inout9inout_bufINtB5_8InOutBufhE10xor_in2out.exit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.0.i11.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec11, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %..i.i, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.01.0.i11.i.prol = phi i64 [ %i.bp, %.lr.ph.i.prol ], [ %.sroa.01.0.i11.i.ph, %.lr.ph.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.01.0.i11.i.prol
  %i.bn = load i8, ptr %i.bm, align 1, !noalias !134, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.01.0.i11.i.prol
  %i.bp = add nuw nsw i64 %.sroa.01.0.i11.i.prol, 1 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.01.0.i11.i.prol
  %i.br = load i8, ptr %i.bq, align 1, !alias.scope !135, !noalias !136, !noundef !4
  %i.bs = xor i8 %i.br, %i.bn
  store i8 %i.bs, ptr %i.bo, align 1, !noalias !134
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !109

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.sroa.01.0.i11.i.unr = phi i64 [ %.sroa.01.0.i11.i.ph, %.lr.ph.i.preheader ], [ %i.bp, %.lr.ph.i.prol ]
  %i.bt = sub nsw i64 %.sroa.01.0.i11.i.ph, %..i.i
  %i.bu = icmp ugt i64 %i.bt, -4
  br i1 %i.bu, label %_RNvMs2_NtCs9HgoOO8pbyf_5inout9inout_bufINtB5_8InOutBufhE10xor_in2out.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.01.0.i11.i = phi i64 [ %i.ct, %.lr.ph.i ], [ %.sroa.01.0.i11.i.unr, %.lr.ph.i.prol.loopexit ] ; 7 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.01.0.i11.i
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !134, !noundef !4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.01.0.i11.i
  %i.by = add nuw nsw i64 %.sroa.01.0.i11.i, 1    ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.01.0.i11.i
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !135, !noalias !136, !noundef !4
  %i.cb = xor i8 %i.ca, %i.bw
  store i8 %i.cb, ptr %i.bx, align 1, !noalias !134
  %i.cc = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.by
  %i.cd = load i8, ptr %i.cc, align 1, !noalias !134, !noundef !4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.by
  %i.cf = add nuw nsw i64 %.sroa.01.0.i11.i, 2    ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.by
  %i.ch = load i8, ptr %i.cg, align 1, !alias.scope !135, !noalias !136, !noundef !4
  %i.ci = xor i8 %i.ch, %i.cd
  store i8 %i.ci, ptr %i.ce, align 1, !noalias !134
  %i.cj = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.cf
  %i.ck = load i8, ptr %i.cj, align 1, !noalias !134, !noundef !4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.cf
  %i.cm = add nuw nsw i64 %.sroa.01.0.i11.i, 3    ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.cf
  %i.co = load i8, ptr %i.cn, align 1, !alias.scope !135, !noalias !136, !noundef !4
  %i.cp = xor i8 %i.co, %i.ck
  store i8 %i.cp, ptr %i.cl, align 1, !noalias !134
  %i.cq = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.cm
  %i.cr = load i8, ptr %i.cq, align 1, !noalias !134, !noundef !4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.cm
  %i.ct = add nuw nsw i64 %.sroa.01.0.i11.i, 4    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.cm
  %i.cv = load i8, ptr %i.cu, align 1, !alias.scope !135, !noalias !136, !noundef !4
  %i.cw = xor i8 %i.cv, %i.cr
  store i8 %i.cw, ptr %i.cs, align 1, !noalias !134
  %exitcond.not.i.3 = icmp eq i64 %i.ct, %..i.i
  br i1 %exitcond.not.i.3, label %_RNvMs2_NtCs9HgoOO8pbyf_5inout9inout_bufINtB5_8InOutBufhE10xor_in2out.exit.i, label %.lr.ph.i, !llvm.loop !110

_RNvMs2_NtCs9HgoOO8pbyf_5inout9inout_bufINtB5_8InOutBufhE10xor_in2out.exit.i: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtCs5sEvUJpJda_7salsa209SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1N_IB1N_IB1N_NtB1P_5UTermNtNtB1R_3bit2B1ENtB2Q_2B0EB2O_EB34_EEENtB7_12StreamCipher15check_remainingCsinjenlOLFM6_11libp2p_pnet.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !141
  store ptr %i.aa, ptr %i.a, align 8, !noalias !142
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ab, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !142
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.ad, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !142
  call void @_RINvXs3_Cs5sEvUJpJda_7salsa20INtB6_9SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBI_IBI_IBI_NtBK_5UTermNtNtBM_3bit2B1ENtB1H_2B0EB1F_EB1U_EENtNtNtCs4WSCZBoZJWV_6cipher6stream8core_api16StreamCipherCore20process_with_backendINtB2h_14ApplyBlocksCtxIBI_IBI_IBI_IBI_IBI_B1m_B1U_EB1U_EB1U_EB1U_EB1U_EEECsinjenlOLFM6_11libp2p_pnet(ptr noalias nofree noundef nonnull align 4 dereferenceable(128) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !141
  %i.cx = icmp eq i64 %i.af, 0
  br i1 %i.cx, label %_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtCs5sEvUJpJda_7salsa209SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1N_IB1N_IB1N_NtB1P_5UTermNtNtB1R_3bit2B1ENtB2Q_2B0EB2O_EB34_EEENtB7_12StreamCipher31unchecked_apply_keystream_inoutCsinjenlOLFM6_11libp2p_pnet.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs2_NtCs9HgoOO8pbyf_5inout9inout_bufINtB5_8InOutBufhE10xor_in2out.exit.i
  invoke void @_RINvXs3_Cs5sEvUJpJda_7salsa20INtB6_9SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBI_IBI_IBI_NtBK_5UTermNtNtBM_3bit2B1ENtB1H_2B0EB1F_EB1U_EENtNtNtCs4WSCZBoZJWV_6cipher6stream8core_api16StreamCipherCore20process_with_backendINtB2h_13WriteBlockCtxIBI_IBI_IBI_IBI_IBI_B1m_B1U_EB1U_EB1U_EB1U_EB1U_EEECsinjenlOLFM6_11libp2p_pnet(ptr noalias nofree noundef nonnull align 4 dereferenceable(128) %0, ptr noalias nofree noundef nonnull dereferenceable(64) %i.d)
          to label %iter.check34 unwind label %bb.c, !noalias !131

iter.check34:                                     ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %min.iters.check19 = icmp samesign ult i64 %i.af, 4
  %i.cy = sub i64 %i.z, %i.x
  %diff.check18 = icmp ugt i64 %i.cy, -16
  %or.cond48 = or i1 %min.iters.check19, %diff.check18
  br i1 %or.cond48, label %vec.epilog.scalar.ph35.preheader, label %vector.main.loop.iter.check20

vector.main.loop.iter.check20:                    ; preds = %iter.check34
  %min.iters.check21 = icmp samesign ult i64 %i.af, 16
  br i1 %min.iters.check21, label %vec.epilog.ph38, label %vector.ph22

vector.ph22:                                      ; preds = %vector.main.loop.iter.check20
  %i.cz = and i64 %i.ac, 12
  %n.vec23 = and i64 %i.ac, 48                    ; 4 uses
  br label %vector.body24

vector.body24:                                    ; preds = %vector.body24, %vector.ph22
  %index25 = phi i64 [ 0, %vector.ph22 ], [ %index.next30, %vector.body24 ] ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.ag, i64 %index25 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %wide.load26 = load <8 x i8>, ptr %i.da, align 1, !noalias !146
  %wide.load27 = load <8 x i8>, ptr %i.db, align 1, !noalias !146
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ah, i64 %index25 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.d, i64 %index25 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %wide.load28 = load <8 x i8>, ptr %i.dd, align 4, !alias.scope !147, !noalias !148
  %wide.load29 = load <8 x i8>, ptr %i.de, align 4, !alias.scope !147, !noalias !148
  %i.df = xor <8 x i8> %wide.load28, %wide.load26
  %i.dg = xor <8 x i8> %wide.load29, %wide.load27
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store <8 x i8> %i.df, ptr %i.dc, align 1, !noalias !146
  store <8 x i8> %i.dg, ptr %i.dh, align 1, !noalias !146
  %index.next30 = add nuw i64 %index25, 16        ; 2 uses
  %i.di = icmp eq i64 %index.next30, %n.vec23
  br i1 %i.di, label %middle.block31, label %vector.body24, !llvm.loop !120

middle.block31:                                   ; preds = %vector.body24
  %cmp.n32 = icmp eq i64 %i.af, %n.vec23
  br i1 %cmp.n32, label %.loopexit, label %vec.epilog.iter.check36

vec.epilog.iter.check36:                          ; preds = %middle.block31
  %min.epilog.iters.check37 = icmp eq i64 %i.cz, 0
  br i1 %min.epilog.iters.check37, label %vec.epilog.scalar.ph35.preheader, label %vec.epilog.ph38, !prof !137

vec.epilog.ph38:                                  ; preds = %vector.main.loop.iter.check20, %vec.epilog.iter.check36
  %vec.epilog.resume.val33 = phi i64 [ %n.vec23, %vec.epilog.iter.check36 ], [ 0, %vector.main.loop.iter.check20 ]
  %n.vec39 = and i64 %i.ac, 60                    ; 3 uses
  br label %vec.epilog.vector.body40

vec.epilog.vector.body40:                         ; preds = %vec.epilog.vector.body40, %vec.epilog.ph38
  %index41 = phi i64 [ %vec.epilog.resume.val33, %vec.epilog.ph38 ], [ %index.next44, %vec.epilog.vector.body40 ] ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %index41
  %wide.load42 = load <4 x i8>, ptr %i.dj, align 1, !noalias !146
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ah, i64 %index41
  %i.dl = getelementptr inbounds nuw i8, ptr %i.d, i64 %index41
  %wide.load43 = load <4 x i8>, ptr %i.dl, align 4, !alias.scope !147, !noalias !148
  %i.dm = xor <4 x i8> %wide.load43, %wide.load42
  store <4 x i8> %i.dm, ptr %i.dk, align 1, !noalias !146
  %index.next44 = add nuw i64 %index41, 4         ; 2 uses
  %i.dn = icmp eq i64 %index.next44, %n.vec39
  br i1 %i.dn, label %vec.epilog.middle.block45, label %vec.epilog.vector.body40, !llvm.loop !121

vec.epilog.middle.block45:                        ; preds = %vec.epilog.vector.body40
  %cmp.n46 = icmp eq i64 %i.af, %n.vec39
  br i1 %cmp.n46, label %.loopexit, label %vec.epilog.scalar.ph35.preheader

vec.epilog.scalar.ph35.preheader:                 ; preds = %iter.check34, %vec.epilog.iter.check36, %vec.epilog.middle.block45
  %.sroa.01.0.i1.i.i.ph = phi i64 [ 0, %iter.check34 ], [ %n.vec23, %vec.epilog.iter.check36 ], [ %n.vec39, %vec.epilog.middle.block45 ] ; 3 uses
  %xtraiter49 = and i64 %i.ac, 3                  ; 2 uses
  %lcmp.mod50.not = icmp eq i64 %xtraiter49, 0
  br i1 %lcmp.mod50.not, label %vec.epilog.scalar.ph35.prol.loopexit, label %vec.epilog.scalar.ph35.prol

vec.epilog.scalar.ph35.prol:                      ; preds = %vec.epilog.scalar.ph35.preheader, %vec.epilog.scalar.ph35.prol
  %.sroa.01.0.i1.i.i.prol = phi i64 [ %i.dr, %vec.epilog.scalar.ph35.prol ], [ %.sroa.01.0.i1.i.i.ph, %vec.epilog.scalar.ph35.preheader ] ; 4 uses
  %prol.iter51 = phi i64 [ %prol.iter51.next, %vec.epilog.scalar.ph35.prol ], [ 0, %vec.epilog.scalar.ph35.preheader ]
  %i.do = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.sroa.01.0.i1.i.i.prol
  %i.dp = load i8, ptr %i.do, align 1, !noalias !146, !noundef !4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.sroa.01.0.i1.i.i.prol
  %i.dr = add nuw nsw i64 %.sroa.01.0.i1.i.i.prol, 1 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.01.0.i1.i.i.prol
  %i.dt = load i8, ptr %i.ds, align 1, !alias.scope !147, !noalias !148, !noundef !4
  %i.du = xor i8 %i.dt, %i.dp
  store i8 %i.du, ptr %i.dq, align 1, !noalias !146
  %prol.iter51.next = add i64 %prol.iter51, 1     ; 2 uses
  %prol.iter51.cmp.not = icmp eq i64 %prol.iter51.next, %xtraiter49
  br i1 %prol.iter51.cmp.not, label %vec.epilog.scalar.ph35.prol.loopexit, label %vec.epilog.scalar.ph35.prol, !llvm.loop !122

vec.epilog.scalar.ph35.prol.loopexit:             ; preds = %vec.epilog.scalar.ph35.prol, %vec.epilog.scalar.ph35.preheader
  %.sroa.01.0.i1.i.i.unr = phi i64 [ %.sroa.01.0.i1.i.i.ph, %vec.epilog.scalar.ph35.preheader ], [ %i.dr, %vec.epilog.scalar.ph35.prol ]
  %i.dv = sub nsw i64 %.sroa.01.0.i1.i.i.ph, %i.af
  %i.dw = icmp ugt i64 %i.dv, -4
  br i1 %i.dw, label %.loopexit, label %vec.epilog.scalar.ph35

vec.epilog.scalar.ph35:                           ; preds = %vec.epilog.scalar.ph35.prol.loopexit, %vec.epilog.scalar.ph35
  %.sroa.01.0.i1.i.i = phi i64 [ %i.ev, %vec.epilog.scalar.ph35 ], [ %.sroa.01.0.i1.i.i.unr, %vec.epilog.scalar.ph35.prol.loopexit ] ; 7 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.sroa.01.0.i1.i.i
  %i.dy = load i8, ptr %i.dx, align 1, !noalias !146, !noundef !4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.sroa.01.0.i1.i.i
  %i.ea = add nuw nsw i64 %.sroa.01.0.i1.i.i, 1   ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.01.0.i1.i.i
  %i.ec = load i8, ptr %i.eb, align 1, !alias.scope !147, !noalias !148, !noundef !4
  %i.ed = xor i8 %i.ec, %i.dy
  store i8 %i.ed, ptr %i.dz, align 1, !noalias !146
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ea
  %i.ef = load i8, ptr %i.ee, align 1, !noalias !146, !noundef !4
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ea
  %i.eh = add nuw nsw i64 %.sroa.01.0.i1.i.i, 2   ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ea
  %i.ej = load i8, ptr %i.ei, align 1, !alias.scope !147, !noalias !148, !noundef !4
  %i.ek = xor i8 %i.ej, %i.ef
  store i8 %i.ek, ptr %i.eg, align 1, !noalias !146
  %i.el = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.eh
  %i.em = load i8, ptr %i.el, align 1, !noalias !146, !noundef !4
  %i.en = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.eh
  %i.eo = add nuw nsw i64 %.sroa.01.0.i1.i.i, 3   ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.eh
  %i.eq = load i8, ptr %i.ep, align 1, !alias.scope !147, !noalias !148, !noundef !4
  %i.er = xor i8 %i.eq, %i.em
  store i8 %i.er, ptr %i.en, align 1, !noalias !146
  %i.es = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.eo
  %i.et = load i8, ptr %i.es, align 1, !noalias !146, !noundef !4
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.eo
  %i.ev = add nuw nsw i64 %.sroa.01.0.i1.i.i, 4   ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.eo
  %i.ex = load i8, ptr %i.ew, align 1, !alias.scope !147, !noalias !148, !noundef !4
  %i.ey = xor i8 %i.ex, %i.et
  store i8 %i.ey, ptr %i.eu, align 1, !noalias !146
  %exitcond.not.i.i.3 = icmp eq i64 %i.ev, %i.af
  br i1 %exitcond.not.i.i.3, label %.loopexit, label %vec.epilog.scalar.ph35, !llvm.loop !123

.loopexit:                                        ; preds = %vec.epilog.scalar.ph35.prol.loopexit, %vec.epilog.scalar.ph35, %vec.epilog.middle.block45, %middle.block31
  %i.ez = trunc nuw nsw i64 %i.af to i8
  store i8 %i.ez, ptr %i.d, align 4, !alias.scope !149, !noalias !150
  br label %_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtCs5sEvUJpJda_7salsa209SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1N_IB1N_IB1N_NtB1P_5UTermNtNtB1R_3bit2B1ENtB2Q_2B0EB2O_EB34_EEENtB7_12StreamCipher31unchecked_apply_keystream_inoutCsinjenlOLFM6_11libp2p_pnet.exit

bb.c:                                             ; preds = %bb.b
  %i.fa = landingpad { ptr, i32 }
          cleanup
  store i8 64, ptr %i.d, align 4, !alias.scope !130, !noalias !131
  resume { ptr, i32 } %i.fa

_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtCs5sEvUJpJda_7salsa209SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1N_IB1N_IB1N_NtB1P_5UTermNtNtB1R_3bit2B1ENtB2Q_2B0EB2O_EB34_EEENtB7_12StreamCipher31unchecked_apply_keystream_inoutCsinjenlOLFM6_11libp2p_pnet.exit: ; preds = %.loopexit, %_RNvMs2_NtCs9HgoOO8pbyf_5inout9inout_bufINtB5_8InOutBufhE10xor_in2out.exit.i, %_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtCs5sEvUJpJda_7salsa209SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1N_IB1N_IB1N_NtB1P_5UTermNtNtB1R_3bit2B1ENtB2Q_2B0EB2O_EB34_EEENtB7_12StreamCipher15check_remainingCsinjenlOLFM6_11libp2p_pnet.exit
  %.sroa.0.0.i4 = phi i1 [ true, %_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtCs5sEvUJpJda_7salsa209SalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1N_IB1N_IB1N_NtB1P_5UTermNtNtB1R_3bit2B1ENtB2Q_2B0EB2O_EB34_EEENtB7_12StreamCipher15check_remainingCsinjenlOLFM6_11libp2p_pnet.exit ], [ false, %_RNvMs2_NtCs9HgoOO8pbyf_5inout9inout_bufINtB5_8InOutBufhE10xor_in2out.exit.i ], [ false, %.loopexit ]
  ret i1 %.sroa.0.0.i4
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs9Bqz0CSWZZv_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCsinjenlOLFM6_11libp2p_pnet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #9 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @24, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #11

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecReENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsinjenlOLFM6_11libp2p_pnet(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNvNtCskKLDkoKarTP_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsinjenlOLFM6_11libp2p_pnet(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #17

; Function Attrs: cold nonlazybind uwtable
declare hidden void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsinjenlOLFM6_11libp2p_pnet(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCs9Bqz0CSWZZv_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite12set_interest(ptr noundef nonnull align 8, i8 noundef range(i8 0, 3)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter3pad(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
end_hunk_0
