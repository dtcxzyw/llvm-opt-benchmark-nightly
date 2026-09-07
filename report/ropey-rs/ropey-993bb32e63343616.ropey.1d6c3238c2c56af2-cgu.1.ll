Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ropey-rs/original/ropey-993bb32e63343616.ropey.1d6c3238c2c56af2-cgu.1?download=true
inline.NumInlined: 1161
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_RNvMs1_NtCs2wCc12Mnjqg_5ropey4iterNtB5_5Chars11from_str_at:bb.a
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 -1, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i8 0, ptr %.sroa.66.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i8 0, ptr %i.f, align 8
  %i.g = invoke { ptr, i64 } @_RNvMs7_NtCs2wCc12Mnjqg_5ropey4iterNtB5_6Chunks9next_impl(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %bb.b unwind label %bb.z       ; 2 uses

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  %i.h = icmp samesign ult i64 %2, 17
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !99
  invoke void @_RINvMNtCskKLDkoKarTP_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2)
          to label %.noexc103 unwind label %bb.z

.noexc103:                                        ; preds = %bb.c
  %i.i = load ptr, ptr %i.a, align 8, !noalias !99, !nonnull !5, !noundef !5 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noalias !99, !noundef !5 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !99, !nonnull !5, !align !8, !noundef !5 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.o = load i64, ptr %i.n, align 8, !noalias !99, !noundef !5 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !99
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k
  %i.q = icmp samesign eq i64 %i.k, 0
  br i1 %i.q, label %.noexc106, label %.lr.ph

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.s = icmp samesign eq i64 %2, 0
  br i1 %i.s, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.lr.ph1000

.lr.ph:                                           ; preds = %.noexc103, %bb.e
  %.sroa.013.0.i882 = phi i64 [ %i.z, %bb.e ], [ 0, %.noexc103 ] ; 2 uses
  %.sroa.020.0.i881 = phi i64 [ %i.w, %bb.e ], [ 0, %.noexc103 ]
  %.sroa.027.0.i880 = phi ptr [ %i.y, %bb.e ], [ %i.i, %.noexc103 ] ; 2 uses
  %i.t = load i8, ptr %.sroa.027.0.i880, align 1, !noundef !5
  %i.u = icmp sgt i8 %i.t, -65
  %i.v = zext i1 %i.u to i64
  %i.w = add i64 %.sroa.020.0.i881, %i.v          ; 3 uses
  %i.x = icmp ugt i64 %i.w, %3
  br i1 %i.x, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i880, i64 1 ; 2 uses
  %i.z = add nuw i64 %.sroa.013.0.i882, 1
  %i.aa = icmp eq ptr %i.y, %i.p
  br i1 %i.aa, label %.noexc106, label %.lr.ph

.noexc106:                                        ; preds = %bb.e, %.noexc103
  %.sroa.020.0.i.lcssa = phi i64 [ 0, %.noexc103 ], [ %i.w, %bb.e ] ; 3 uses
  %i.ab = sub i64 %3, %.sroa.020.0.i.lcssa
  %i.ac = lshr i64 %i.ab, 4
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.ac, i64 %i.o) ; 2 uses
  %i.ad = and i64 %..i, 576460752303423484        ; 2 uses
  %.not51.i884 = icmp eq i64 %i.ad, 0
  br i1 %.not51.i884, label %._crit_edge, label %.noexc131

._crit_edge:                                      ; preds = %.noexc131, %.noexc106
  %.sroa.020.1.i.lcssa = phi i64 [ %.sroa.020.0.i.lcssa, %.noexc106 ], [ %i.cd, %.noexc131 ] ; 2 uses
  %.sroa.013.1.i.lcssa = phi i64 [ %i.k, %.noexc106 ], [ %i.ce, %.noexc131 ] ; 2 uses
  %i.ae = and i64 %..i, 1152921504606846972       ; 4 uses
  %i.af = icmp ugt i64 %i.ae, %i.o
  br i1 %i.af, label %.invoke, label %bb.f, !prof !7

bb.f:                                             ; preds = %._crit_edge
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.o
  %i.ah = icmp samesign eq i64 %i.ae, %i.o
  br i1 %i.ah, label %.noexc111._crit_edge, label %.noexc111.preheader

.noexc111.preheader:                              ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.ae
  br label %.noexc111

.noexc111:                                        ; preds = %.noexc111.preheader, %bb.g
  %.sroa.040.0.i893 = phi ptr [ %i.ap, %bb.g ], [ %i.ai, %.noexc111.preheader ] ; 2 uses
  %.sroa.013.2.i892 = phi i64 [ %i.aq, %bb.g ], [ %.sroa.013.1.i.lcssa, %.noexc111.preheader ] ; 2 uses
  %.sroa.020.2.i891 = phi i64 [ %i.ao, %bb.g ], [ %.sroa.020.1.i.lcssa, %.noexc111.preheader ] ; 2 uses
  %i.aj = load <16 x i8>, ptr %.sroa.040.0.i893, align 16
  %i.ak = icmp slt <16 x i8> %i.aj, splat (i8 -64)
  %i.al = zext <16 x i1> %i.ak to <16 x i8>
  %i.am = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.al, <16 x i8> zeroinitializer)
  %.neg862 = add i64 %.sroa.020.2.i891, 16
  %i.an = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.am)
  %i.ao = sub i64 %.neg862, %i.an                 ; 3 uses
  %.not52.i = icmp ult i64 %i.ao, %3
  br i1 %.not52.i, label %bb.g, label %.noexc111._crit_edge

bb.g:                                             ; preds = %.noexc111
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.040.0.i893, i64 16 ; 2 uses
  %i.aq = add i64 %.sroa.013.2.i892, 16           ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.ag
  br i1 %i.ar, label %.noexc111._crit_edge, label %.noexc111

.noexc111._crit_edge:                             ; preds = %bb.g, %.noexc111, %bb.f
  %.sroa.020.2.i.lcssa = phi i64 [ %.sroa.020.1.i.lcssa, %bb.f ], [ %.sroa.020.2.i891, %.noexc111 ], [ %i.ao, %bb.g ]
  %.sroa.013.2.i.lcssa = phi i64 [ %.sroa.013.1.i.lcssa, %bb.f ], [ %.sroa.013.2.i892, %.noexc111 ], [ %i.aq, %bb.g ] ; 5 uses
  %i.as = icmp ugt i64 %.sroa.013.2.i.lcssa, %2
  br i1 %i.as, label %.invoke, label %bb.h, !prof !7

bb.h:                                             ; preds = %.noexc111._crit_edge
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.au = icmp samesign eq i64 %.sroa.013.2.i.lcssa, %2
  br i1 %i.au, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.lr.ph903.preheader

.lr.ph903.preheader:                              ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.013.2.i.lcssa
  br label %.lr.ph903

.invoke:                                          ; preds = %.noexc111._crit_edge, %._crit_edge
  %i.aw = phi i64 [ %i.ae, %._crit_edge ], [ %.sroa.013.2.i.lcssa, %.noexc111._crit_edge ]
  %i.ax = phi i64 [ %i.o, %._crit_edge ], [ %2, %.noexc111._crit_edge ] ; 2 uses
  %i.ay = phi ptr [ @4, %._crit_edge ], [ @3, %.noexc111._crit_edge ]
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.aw, i64 noundef %i.ax, i64 noundef %i.ax, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ay) #17
          to label %.cont unwind label %bb.z

.cont:                                            ; preds = %.invoke
  unreachable

.lr.ph903:                                        ; preds = %.lr.ph903.preheader, %bb.i
  %.sroa.036.0.i901 = phi ptr [ %i.be, %bb.i ], [ %i.av, %.lr.ph903.preheader ] ; 2 uses
  %.sroa.013.3.i900 = phi i64 [ %i.bf, %bb.i ], [ %.sroa.013.2.i.lcssa, %.lr.ph903.preheader ] ; 2 uses
  %.sroa.020.3.i899 = phi i64 [ %i.bc, %bb.i ], [ %.sroa.020.2.i.lcssa, %.lr.ph903.preheader ]
  %i.az = load i8, ptr %.sroa.036.0.i901, align 1, !alias.scope !99, !noundef !5
  %i.ba = icmp sgt i8 %i.az, -65
  %i.bb = zext i1 %i.ba to i64
  %i.bc = add i64 %.sroa.020.3.i899, %i.bb        ; 2 uses
  %i.bd = icmp ugt i64 %i.bc, %3
  br i1 %i.bd, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph903
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.036.0.i901, i64 1 ; 2 uses
  %i.bf = add i64 %.sroa.013.3.i900, 1
  %i.bg = icmp eq ptr %i.be, %i.at
  br i1 %i.bg, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.lr.ph903

.noexc131:                                        ; preds = %.noexc106, %.noexc131
  %.sroa.013.1.i888 = phi i64 [ %i.ce, %.noexc131 ], [ %i.k, %.noexc106 ]
  %.sroa.020.1.i887 = phi i64 [ %i.cd, %.noexc131 ], [ %.sroa.020.0.i.lcssa, %.noexc106 ]
  %.sroa.030.0.i886 = phi ptr [ %i.bh, %.noexc131 ], [ %i.m, %.noexc106 ] ; 5 uses
  %.sroa.5.0.i102885 = phi i64 [ %i.bi, %.noexc131 ], [ %i.ad, %.noexc106 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i886, i64 64
  %i.bi = add i64 %.sroa.5.0.i102885, -4          ; 2 uses
  %i.bj = load <16 x i8>, ptr %.sroa.030.0.i886, align 16
  %i.bk = icmp slt <16 x i8> %i.bj, splat (i8 -64)
  %i.bl = zext <16 x i1> %i.bk to <16 x i8>
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i886, i64 16
  %i.bn = load <16 x i8>, ptr %i.bm, align 16
  %i.bo = icmp slt <16 x i8> %i.bn, splat (i8 -64)
  %i.bp = zext <16 x i1> %i.bo to <16 x i8>
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i886, i64 32
  %i.br = load <16 x i8>, ptr %i.bq, align 16
  %i.bs = icmp slt <16 x i8> %i.br, splat (i8 -64)
  %i.bt = zext <16 x i1> %i.bs to <16 x i8>
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i886, i64 48
  %i.bv = load <16 x i8>, ptr %i.bu, align 16
  %i.bw = icmp slt <16 x i8> %i.bv, splat (i8 -64)
  %i.bx = zext <16 x i1> %i.bw to <16 x i8>
  %i.by = add nuw nsw <16 x i8> %i.bp, %i.bl
  %i.bz = add nuw nsw <16 x i8> %i.by, %i.bt
  %i.ca = add nuw nsw <16 x i8> %i.bz, %i.bx
  %i.cb = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.ca, <16 x i8> zeroinitializer)
  %.neg = add i64 %.sroa.020.1.i887, 64
  %i.cc = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.cb)
  %i.cd = sub i64 %.neg, %i.cc                    ; 2 uses
  %i.ce = add i64 %.sroa.013.1.i888, 64           ; 2 uses
  %.not51.i = icmp eq i64 %i.bi, 0
  br i1 %.not51.i, label %._crit_edge, label %.noexc131

bb.j:                                             ; preds = %.lr.ph1000
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0571.0997, i64 1 ; 2 uses
  %i.cg = add nuw nsw i64 %.sroa.8573.0996, 1
  %i.ch = icmp eq ptr %i.cf, %i.r
  br i1 %i.ch, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.lr.ph1000

.lr.ph1000:                                       ; preds = %bb.d, %bb.j
  %.sroa.07.0.i998 = phi i64 [ %i.cl, %bb.j ], [ 0, %bb.d ]
  %.sroa.0571.0997 = phi ptr [ %i.cf, %bb.j ], [ %1, %bb.d ] ; 2 uses
  %.sroa.8573.0996 = phi i64 [ %i.cg, %bb.j ], [ 0, %bb.d ] ; 2 uses
  %i.ci = load i8, ptr %.sroa.0571.0997, align 1, !noundef !5
  %i.cj = icmp sgt i8 %i.ci, -65
  %i.ck = zext i1 %i.cj to i64
  %i.cl = add i64 %.sroa.07.0.i998, %i.ck         ; 2 uses
  %i.cm = icmp ugt i64 %i.cl, %3
  br i1 %i.cm, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.j

_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit: ; preds = %.lr.ph, %bb.i, %.lr.ph903, %.lr.ph1000, %bb.j, %bb.d, %bb.h
  %.sroa.0.0.i98 = phi i64 [ %2, %bb.h ], [ %2, %bb.j ], [ %.sroa.013.3.i900, %.lr.ph903 ], [ %2, %bb.d ], [ %.sroa.8573.0996, %.lr.ph1000 ], [ %2, %bb.i ], [ %.sroa.013.0.i882, %.lr.ph ] ; 20 uses
  %i.cn = icmp eq i64 %.sroa.0.0.i98, 0           ; 2 uses
  br i1 %i.cn, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit
  %.not.i441 = icmp ult i64 %.sroa.0.0.i98, %2
  br i1 %.not.i441, label %bb.l, label %.split.i

.split.i:                                         ; preds = %bb.k
  %i.co = icmp eq i64 %.sroa.0.0.i98, %2
  br i1 %i.co, label %bb.m, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.i98
  %i.cq = load i8, ptr %i.cp, align 1, !alias.scope !100, !noundef !5
  %i.cr = icmp sgt i8 %i.cq, -65
  br i1 %i.cr, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l, %.split.i, %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit
  %i.cs = sub nuw i64 %2, %.sroa.0.0.i98          ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.i98 ; 7 uses
  %i.cu = icmp samesign ult i64 %i.cs, 16
  br i1 %i.cu, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !101
  invoke void @_RINvMNtCskKLDkoKarTP_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ct, i64 noundef range(i64 0, -9223372036854775808) %i.cs)
          to label %.noexc65 unwind label %bb.z

.noexc65:                                         ; preds = %bb.n
  %i.cv = load ptr, ptr %i.b, align 8, !noalias !101, !nonnull !5, !noundef !5 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !noalias !101, !noundef !5 ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !noalias !101, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.db = load i64, ptr %i.da, align 8, !noalias !101, !noundef !5 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.dd = load ptr, ptr %i.dc, align 8, !noalias !101, !nonnull !5, !noundef !5 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.df = load i64, ptr %i.de, align 8, !noalias !101, !noundef !5 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !101
  %i.dg = icmp samesign eq i64 %i.cx, 0
  br i1 %i.dg, label %.noexc67, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.noexc65
  %min.iters.check = icmp ult i64 %i.cx, 4
  br i1 %min.iters.check, label %.preheader.i.preheader1093, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.preheader
  %n.vec = and i64 %i.cx, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dn, %vector.body ]
  %vec.phi1003 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.do, %vector.body ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cv, i64 %index ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 2
  %wide.load = load <2 x i8>, ptr %i.dh, align 1, !alias.scope !102
  %wide.load1004 = load <2 x i8>, ptr %i.di, align 1, !alias.scope !102
  %i.dj = icmp slt <2 x i8> %wide.load, splat (i8 -64)
  %i.dk = icmp slt <2 x i8> %wide.load1004, splat (i8 -64)
  %i.dl = zext <2 x i1> %i.dj to <2 x i64>
  %i.dm = zext <2 x i1> %i.dk to <2 x i64>
  %i.dn = add <2 x i64> %vec.phi, %i.dl           ; 2 uses
  %i.do = add <2 x i64> %vec.phi1003, %i.dm       ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dp = icmp eq i64 %index.next, %n.vec
  br i1 %i.dp, label %middle.block, label %vector.body, !llvm.loop !77

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.do, %i.dn
  %i.dq = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cx, %n.vec
  br i1 %cmp.n, label %.noexc67, label %.preheader.i.preheader1093

.preheader.i.preheader1093:                       ; preds = %.preheader.i.preheader, %middle.block
  %.sroa.04.0.i.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %i.dq, %middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader1093, %.preheader.i
  %.sroa.04.0.i.i = phi i64 [ %i.dv, %.preheader.i ], [ %.sroa.04.0.i.i.ph, %.preheader.i.preheader1093 ] ; 2 uses
  %.sroa.02.0.i.i = phi i64 [ %i.du, %.preheader.i ], [ %.sroa.02.0.i.i.ph, %.preheader.i.preheader1093 ]
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.sroa.04.0.i.i
  %.val.i.i = load i8, ptr %i.dr, align 1, !alias.scope !102, !noundef !5
  %i.ds = icmp slt i8 %.val.i.i, -64
  %i.dt = zext i1 %i.ds to i64
  %i.du = add i64 %.sroa.02.0.i.i, %i.dt          ; 2 uses
  %i.dv = add nuw i64 %.sroa.04.0.i.i, 1          ; 2 uses
  %i.dw = icmp eq i64 %i.dv, %i.cx
  br i1 %i.dw, label %.noexc67, label %.preheader.i, !llvm.loop !78

.noexc67:                                         ; preds = %.preheader.i, %middle.block, %.noexc65
  %.sroa.0.0.i.i = phi i64 [ 0, %.noexc65 ], [ %i.dq, %middle.block ], [ %i.du, %.preheader.i ] ; 3 uses
  %i.dx = icmp ule i64 %.sroa.0.0.i.i, %i.cx
  tail call void @llvm.assume(i1 %i.dx)
  %i.dy = and i64 %i.db, 576460752303423484       ; 3 uses
  %.not.i59907 = icmp eq i64 %i.dy, 0
  br i1 %.not.i59907, label %.noexc70, label %.noexc95

bb.o:                                             ; preds = %bb.m
  %i.dz = icmp samesign eq i64 %.sroa.0.0.i98, %2
  br i1 %i.dz, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit97, label %.preheader978.preheader

.preheader978.preheader:                          ; preds = %bb.o
  %xtraiter1105 = and i64 %i.cs, 3                ; 3 uses
  %4 = sub i64 %.sroa.0.0.i98, %2
  %5 = icmp ugt i64 %4, -4
  br i1 %5, label %.preheader978.epil.preheader, label %.preheader978.preheader.new

.preheader978.preheader.new:                      ; preds = %.preheader978.preheader
  %unroll_iter = and i64 %i.cs, 12
  br label %.preheader978

.preheader978:                                    ; preds = %.preheader978, %.preheader978.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader978.preheader.new ], [ %i.et, %.preheader978 ] ; 5 uses
  %.sroa.02.0.i = phi i64 [ 0, %.preheader978.preheader.new ], [ %i.es, %.preheader978 ]
  %niter = phi i64 [ 0, %.preheader978.preheader.new ], [ %niter.next.3, %.preheader978 ]
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.sroa.04.0.i
  %.val.i = load i8, ptr %i.ea, align 1, !noundef !5
  %i.eb = icmp sgt i8 %.val.i, -65
  %i.ec = zext i1 %i.eb to i64
  %i.ed = add i64 %.sroa.02.0.i, %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.sroa.04.0.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 1
  %.val.i.1 = load i8, ptr %i.ef, align 1, !noundef !5
  %i.eg = icmp sgt i8 %.val.i.1, -65
  %i.eh = zext i1 %i.eg to i64
  %i.ei = add i64 %i.ed, %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.sroa.04.0.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 2
  %.val.i.2 = load i8, ptr %i.ek, align 1, !noundef !5
  %i.el = icmp sgt i8 %.val.i.2, -65
  %i.em = zext i1 %i.el to i64
  %i.en = add i64 %i.ei, %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.sroa.04.0.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 3
  %.val.i.3 = load i8, ptr %i.ep, align 1, !noundef !5
  %i.eq = icmp sgt i8 %.val.i.3, -65
  %i.er = zext i1 %i.eq to i64
  %i.es = add i64 %i.en, %i.er                    ; 3 uses
  %i.et = add nuw nsw i64 %.sroa.04.0.i, 4        ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit97.loopexit.unr-lcssa, label %.preheader978

.noexc70:                                         ; preds = %.noexc95, %.noexc67
  %.sroa.01.0.i58.lcssa = phi i64 [ %.sroa.0.0.i.i, %.noexc67 ], [ %i.hx, %.noexc95 ]
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %i.dy ; 3 uses
  %i.ev = shl i64 %i.db, 4
  %.idx = and i64 %i.ev, 48                       ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.idx
  %i.ex = icmp samesign eq i64 %.idx, 0
  br i1 %i.ex, label %.noexc75, label %.noexc74.preheader

.noexc74.preheader:                               ; preds = %.noexc70
  %i.ey = add nsw i64 %.idx, -16                  ; 2 uses
  %i.ez = lshr exact i64 %i.ey, 4
  %i.fa = add nuw nsw i64 %i.ez, 1
  %xtraiter = and i64 %i.fa, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.noexc74.prol.loopexit, label %.noexc74.prol

.noexc74.prol:                                    ; preds = %.noexc74.preheader, %.noexc74.prol
  %.sroa.012.0.i63912.prol = phi ptr [ %i.fc, %.noexc74.prol ], [ %i.eu, %.noexc74.preheader ] ; 2 uses
  %i.fb = phi <16 x i8> [ %i.fg, %.noexc74.prol ], [ zeroinitializer, %.noexc74.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.noexc74.prol ], [ 0, %.noexc74.preheader ]
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i63912.prol, i64 16 ; 2 uses
  %i.fd = load <16 x i8>, ptr %.sroa.012.0.i63912.prol, align 16
  %i.fe = icmp slt <16 x i8> %i.fd, splat (i8 -64)
  %i.ff = zext <16 x i1> %i.fe to <16 x i8>
  %i.fg = add <16 x i8> %i.fb, %i.ff              ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.noexc74.prol.loopexit, label %.noexc74.prol, !llvm.loop !79

.noexc74.prol.loopexit:                           ; preds = %.noexc74.prol, %.noexc74.preheader
  %.lcssa1091.unr = phi <16 x i8> [ poison, %.noexc74.preheader ], [ %i.fg, %.noexc74.prol ]
  %.sroa.012.0.i63912.unr = phi ptr [ %i.eu, %.noexc74.preheader ], [ %i.fc, %.noexc74.prol ]
  %.unr = phi <16 x i8> [ zeroinitializer, %.noexc74.preheader ], [ %i.fg, %.noexc74.prol ]
  %i.fh = icmp ult i64 %i.ey, 48
  br i1 %i.fh, label %.noexc75, label %.noexc74

.noexc74:                                         ; preds = %.noexc74.prol.loopexit, %.noexc74
  %.sroa.012.0.i63912 = phi ptr [ %i.fy, %.noexc74 ], [ %.sroa.012.0.i63912.unr, %.noexc74.prol.loopexit ] ; 5 uses
  %i.fi = phi <16 x i8> [ %i.gc, %.noexc74 ], [ %.unr, %.noexc74.prol.loopexit ]
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i63912, i64 16
  %i.fk = load <16 x i8>, ptr %.sroa.012.0.i63912, align 16
  %i.fl = icmp slt <16 x i8> %i.fk, splat (i8 -64)
  %i.fm = zext <16 x i1> %i.fl to <16 x i8>
  %i.fn = add <16 x i8> %i.fi, %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i63912, i64 32
  %i.fp = load <16 x i8>, ptr %i.fj, align 16
  %i.fq = icmp slt <16 x i8> %i.fp, splat (i8 -64)
  %i.fr = zext <16 x i1> %i.fq to <16 x i8>
  %i.fs = add <16 x i8> %i.fn, %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i63912, i64 48
  %i.fu = load <16 x i8>, ptr %i.fo, align 16
  %i.fv = icmp slt <16 x i8> %i.fu, splat (i8 -64)
  %i.fw = zext <16 x i1> %i.fv to <16 x i8>
  %i.fx = add <16 x i8> %i.fs, %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i63912, i64 64 ; 2 uses
  %i.fz = load <16 x i8>, ptr %i.ft, align 16
  %i.ga = icmp slt <16 x i8> %i.fz, splat (i8 -64)
  %i.gb = zext <16 x i1> %i.ga to <16 x i8>
  %i.gc = add <16 x i8> %i.fx, %i.gb              ; 2 uses
  %i.gd = icmp eq ptr %i.fy, %i.ew
  br i1 %i.gd, label %.noexc75, label %.noexc74

.noexc75:                                         ; preds = %.noexc74.prol.loopexit, %.noexc74, %.noexc70
  %.lcssa876 = phi <16 x i8> [ zeroinitializer, %.noexc70 ], [ %.lcssa1091.unr, %.noexc74.prol.loopexit ], [ %i.gc, %.noexc74 ]
  %i.ge = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %.lcssa876, <16 x i8> zeroinitializer) ; 2 uses
  %.sroa.0.0.vec.extract.i302 = extractelement <2 x i64> %i.ge, i64 0
  %.sroa.0.8.vec.extract.i303 = extractelement <2 x i64> %i.ge, i64 1
  %i.gf = icmp samesign eq i64 %i.df, 0
  br i1 %i.gf, label %.noexc76, label %.preheader.i444.preheader

.preheader.i444.preheader:                        ; preds = %.noexc75
  %min.iters.check1006 = icmp ult i64 %i.df, 4
  br i1 %min.iters.check1006, label %.preheader.i444.preheader1087, label %vector.ph1007

vector.ph1007:                                    ; preds = %.preheader.i444.preheader
  %n.vec1008 = and i64 %i.df, -4                  ; 3 uses
  br label %vector.body1009

vector.body1009:                                  ; preds = %vector.body1009, %vector.ph1007
  %index1010 = phi i64 [ 0, %vector.ph1007 ], [ %index.next1015, %vector.body1009 ] ; 2 uses
  %vec.phi1011 = phi <2 x i64> [ zeroinitializer, %vector.ph1007 ], [ %i.gm, %vector.body1009 ]
  %vec.phi1012 = phi <2 x i64> [ zeroinitializer, %vector.ph1007 ], [ %i.gn, %vector.body1009 ]
  %i.gg = getelementptr inbounds nuw i8, ptr %i.dd, i64 %index1010 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 2
  %wide.load1013 = load <2 x i8>, ptr %i.gg, align 1, !alias.scope !103
  %wide.load1014 = load <2 x i8>, ptr %i.gh, align 1, !alias.scope !103
  %i.gi = icmp slt <2 x i8> %wide.load1013, splat (i8 -64)
  %i.gj = icmp slt <2 x i8> %wide.load1014, splat (i8 -64)
  %i.gk = zext <2 x i1> %i.gi to <2 x i64>
  %i.gl = zext <2 x i1> %i.gj to <2 x i64>
  %i.gm = add <2 x i64> %vec.phi1011, %i.gk       ; 2 uses
  %i.gn = add <2 x i64> %vec.phi1012, %i.gl       ; 2 uses
  %index.next1015 = add nuw i64 %index1010, 4     ; 2 uses
  %i.go = icmp eq i64 %index.next1015, %n.vec1008
  br i1 %i.go, label %middle.block1016, label %vector.body1009, !llvm.loop !82

middle.block1016:                                 ; preds = %vector.body1009
  %bin.rdx1017 = add <2 x i64> %i.gn, %i.gm
  %i.gp = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx1017) ; 2 uses
  %cmp.n1018 = icmp eq i64 %i.df, %n.vec1008
  br i1 %cmp.n1018, label %.noexc76, label %.preheader.i444.preheader1087

.preheader.i444.preheader1087:                    ; preds = %.preheader.i444.preheader, %middle.block1016
  %.sroa.04.0.i.i445.ph = phi i64 [ 0, %.preheader.i444.preheader ], [ %n.vec1008, %middle.block1016 ]
  %.sroa.02.0.i.i446.ph = phi i64 [ 0, %.preheader.i444.preheader ], [ %i.gp, %middle.block1016 ]
  br label %.preheader.i444

.preheader.i444:                                  ; preds = %.preheader.i444.preheader1087, %.preheader.i444
  %.sroa.04.0.i.i445 = phi i64 [ %i.gu, %.preheader.i444 ], [ %.sroa.04.0.i.i445.ph, %.preheader.i444.preheader1087 ] ; 2 uses
  %.sroa.02.0.i.i446 = phi i64 [ %i.gt, %.preheader.i444 ], [ %.sroa.02.0.i.i446.ph, %.preheader.i444.preheader1087 ]
  %i.gq = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.sroa.04.0.i.i445
  %.val.i.i447 = load i8, ptr %i.gq, align 1, !alias.scope !103, !noundef !5
  %i.gr = icmp slt i8 %.val.i.i447, -64
  %i.gs = zext i1 %i.gr to i64
  %i.gt = add i64 %.sroa.02.0.i.i446, %i.gs       ; 2 uses
  %i.gu = add nuw i64 %.sroa.04.0.i.i445, 1       ; 2 uses
  %i.gv = icmp eq i64 %i.gu, %i.df
  br i1 %i.gv, label %.noexc76, label %.preheader.i444, !llvm.loop !83

.noexc76:                                         ; preds = %.preheader.i444, %middle.block1016, %.noexc75
  %.sroa.0.0.i.i448 = phi i64 [ 0, %.noexc75 ], [ %i.gp, %middle.block1016 ], [ %i.gt, %.preheader.i444 ] ; 2 uses
  %i.gw = icmp ule i64 %.sroa.0.0.i.i448, %i.df
  tail call void @llvm.assume(i1 %i.gw)
  %i.gx = add i64 %.sroa.01.0.i58.lcssa, %.sroa.0.8.vec.extract.i303
  %i.gy = add i64 %i.gx, %.sroa.0.0.vec.extract.i302
  %i.gz = add i64 %i.gy, %.sroa.0.0.i.i448
  %i.ha = sub i64 %i.cs, %i.gz
  br label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit97

.noexc95:                                         ; preds = %.noexc67, %.noexc95
  %.sroa.01.0.i58910 = phi i64 [ %i.hx, %.noexc95 ], [ %.sroa.0.0.i.i, %.noexc67 ]
  %.sroa.06.0.i57909 = phi ptr [ %i.hb, %.noexc95 ], [ %i.cz, %.noexc67 ] ; 5 uses
  %.sroa.5.0.i56908 = phi i64 [ %i.hc, %.noexc95 ], [ %i.dy, %.noexc67 ]
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i57909, i64 64
  %i.hc = add i64 %.sroa.5.0.i56908, -4           ; 2 uses
  %i.hd = load <16 x i8>, ptr %.sroa.06.0.i57909, align 16
  %i.he = icmp slt <16 x i8> %i.hd, splat (i8 -64)
  %i.hf = zext <16 x i1> %i.he to <16 x i8>
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i57909, i64 16
  %i.hh = load <16 x i8>, ptr %i.hg, align 16
  %i.hi = icmp slt <16 x i8> %i.hh, splat (i8 -64)
  %i.hj = zext <16 x i1> %i.hi to <16 x i8>
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i57909, i64 32
  %i.hl = load <16 x i8>, ptr %i.hk, align 16
  %i.hm = icmp slt <16 x i8> %i.hl, splat (i8 -64)
  %i.hn = zext <16 x i1> %i.hm to <16 x i8>
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i57909, i64 48
  %i.hp = load <16 x i8>, ptr %i.ho, align 16
  %i.hq = icmp slt <16 x i8> %i.hp, splat (i8 -64)
  %i.hr = zext <16 x i1> %i.hq to <16 x i8>
  %i.hs = add nuw nsw <16 x i8> %i.hj, %i.hf
  %i.ht = add nuw nsw <16 x i8> %i.hs, %i.hn
  %i.hu = add nuw nsw <16 x i8> %i.ht, %i.hr
  %i.hv = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.hu, <16 x i8> zeroinitializer) ; 2 uses
  %.sroa.0.0.vec.extract.i297 = extractelement <2 x i64> %i.hv, i64 0
  %.sroa.0.8.vec.extract.i298 = extractelement <2 x i64> %i.hv, i64 1
  %i.hw = add i64 %.sroa.0.8.vec.extract.i298, %.sroa.01.0.i58910
  %i.hx = add i64 %i.hw, %.sroa.0.0.vec.extract.i297 ; 2 uses
  %.not.i59 = icmp eq i64 %i.hc, 0
  br i1 %.not.i59, label %.noexc70, label %.noexc95

bb.p:                                             ; preds = %bb.l, %.split.i
end_hunk_0
begin_hunk_1_@_RNvMs4_NtCs2wCc12Mnjqg_5ropey4iterNtB5_5Lines9prev_impl:bb.a
  %prol.iter2132 = phi i64 [ %prol.iter2132.next, %.lr.ph1202.prol ], [ 0, %.lr.ph1202.preheader ]
  %i.os = getelementptr inbounds nuw i8, ptr %.sroa.058.01200.prol, i64 32 ; 2 uses
  %i.ot = load i64, ptr %.sroa.058.01200.prol, align 8, !noundef !5
  %i.ou = getelementptr inbounds nuw i8, ptr %.sroa.058.01200.prol, i64 8
  %i.ov = load <2 x i64>, ptr %i.ou, align 8
  %i.ow = getelementptr inbounds nuw i8, ptr %.sroa.058.01200.prol, i64 24
  %i.ox = load i64, ptr %i.ow, align 8, !noundef !5
  %i.oy = add i64 %i.ot, %.sroa.0515.31199.prol   ; 3 uses
  %i.oz = add <2 x i64> %i.ov, %i.or              ; 3 uses
  %i.pa = add i64 %i.ox, %.sroa.22.31196.prol     ; 3 uses
  %prol.iter2132.next = add i64 %prol.iter2132, 1 ; 2 uses
  %prol.iter2132.cmp.not = icmp eq i64 %prol.iter2132.next, %xtraiter2130
  br i1 %prol.iter2132.cmp.not, label %.lr.ph1202.prol.loopexit, label %.lr.ph1202.prol, !llvm.loop !343

.lr.ph1202.prol.loopexit:                         ; preds = %.lr.ph1202.prol, %.lr.ph1202.preheader
  %.lcssa2026.unr = phi i64 [ poison, %.lr.ph1202.preheader ], [ %i.oy, %.lr.ph1202.prol ]
  %.lcssa2025.unr = phi <2 x i64> [ poison, %.lr.ph1202.preheader ], [ %i.oz, %.lr.ph1202.prol ]
  %.lcssa2024.unr = phi i64 [ poison, %.lr.ph1202.preheader ], [ %i.pa, %.lr.ph1202.prol ]
  %.sroa.058.01200.unr = phi ptr [ %i.ol, %.lr.ph1202.preheader ], [ %i.os, %.lr.ph1202.prol ]
  %.sroa.0515.31199.unr = phi i64 [ %.sroa.0515.21210, %.lr.ph1202.preheader ], [ %i.oy, %.lr.ph1202.prol ]
  %.sroa.22.31196.unr = phi i64 [ %.sroa.22.21207, %.lr.ph1202.preheader ], [ %i.pa, %.lr.ph1202.prol ]
  %.unr2133 = phi <2 x i64> [ %i.ob, %.lr.ph1202.preheader ], [ %i.oz, %.lr.ph1202.prol ]
  %i.pb = icmp ult i64 %i.oo, 96
  br i1 %i.pb, label %.loopexit, label %.lr.ph1202

bb.ag:                                            ; preds = %.lr.ph1213
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ok, i64 noundef %i.oi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #17
  unreachable

.lr.ph1202:                                       ; preds = %.lr.ph1202.prol.loopexit, %.lr.ph1202
  %.sroa.058.01200 = phi ptr [ %i.qe, %.lr.ph1202 ], [ %.sroa.058.01200.unr, %.lr.ph1202.prol.loopexit ] ; 13 uses
  %.sroa.0515.31199 = phi i64 [ %i.qk, %.lr.ph1202 ], [ %.sroa.0515.31199.unr, %.lr.ph1202.prol.loopexit ]
  %.sroa.22.31196 = phi i64 [ %i.qm, %.lr.ph1202 ], [ %.sroa.22.31196.unr, %.lr.ph1202.prol.loopexit ]
  %i.pc = phi <2 x i64> [ %i.ql, %.lr.ph1202 ], [ %.unr2133, %.lr.ph1202.prol.loopexit ]
  %i.pd = getelementptr inbounds nuw i8, ptr %.sroa.058.01200, i64 32
  %i.pe = load i64, ptr %.sroa.058.01200, align 8, !noundef !5
  %i.pf = getelementptr inbounds nuw i8, ptr %.sroa.058.01200, i64 8
  %i.pg = load <2 x i64>, ptr %i.pf, align 8
  %i.ph = getelementptr inbounds nuw i8, ptr %.sroa.058.01200, i64 24
  %i.pi = load i64, ptr %i.ph, align 8, !noundef !5
  %i.pj = add i64 %i.pe, %.sroa.0515.31199
  %i.pk = add <2 x i64> %i.pg, %i.pc
  %i.pl = add i64 %i.pi, %.sroa.22.31196
  %i.pm = getelementptr inbounds nuw i8, ptr %.sroa.058.01200, i64 64
  %i.pn = load i64, ptr %i.pd, align 8, !noundef !5
  %i.po = getelementptr inbounds nuw i8, ptr %.sroa.058.01200, i64 40
  %i.pp = load <2 x i64>, ptr %i.po, align 8
  %i.pq = getelementptr inbounds nuw i8, ptr %.sroa.058.01200, i64 56
  %i.pr = load i64, ptr %i.pq, align 8, !noundef !5
  %i.ps = add i64 %i.pn, %i.pj
  %i.pt = add <2 x i64> %i.pp, %i.pk
  %i.pu = add i64 %i.pr, %i.pl
  %i.pv = getelementptr inbounds nuw i8, ptr %.sroa.058.01200, i64 96
  %i.pw = load i64, ptr %i.pm, align 8, !noundef !5
  %i.px = getelementptr inbounds nuw i8, ptr %.sroa.058.01200, i64 72
  %i.py = load <2 x i64>, ptr %i.px, align 8
  %i.pz = getelementptr inbounds nuw i8, ptr %.sroa.058.01200, i64 88
  %i.qa = load i64, ptr %i.pz, align 8, !noundef !5
  %i.qb = add i64 %i.pw, %i.ps
  %i.qc = add <2 x i64> %i.py, %i.pt
  %i.qd = add i64 %i.qa, %i.pu
  %i.qe = getelementptr inbounds nuw i8, ptr %.sroa.058.01200, i64 128 ; 2 uses
  %i.qf = load i64, ptr %i.pv, align 8, !noundef !5
  %i.qg = getelementptr inbounds nuw i8, ptr %.sroa.058.01200, i64 104
  %i.qh = load <2 x i64>, ptr %i.qg, align 8
  %i.qi = getelementptr inbounds nuw i8, ptr %.sroa.058.01200, i64 120
  %i.qj = load i64, ptr %i.qi, align 8, !noundef !5
  %i.qk = add i64 %i.qf, %i.qb                    ; 2 uses
  %i.ql = add <2 x i64> %i.qh, %i.qc              ; 2 uses
  %i.qm = add i64 %i.qj, %i.qd                    ; 2 uses
  %i.qn = icmp eq ptr %i.qe, %i.om
  br i1 %i.qn, label %.loopexit, label %.lr.ph1202

.loopexit1068.loopexit:                           ; preds = %.loopexit
  %.pre = load i64, ptr %i.nw, align 8
  br label %.loopexit1068

.loopexit1068:                                    ; preds = %.loopexit1068.loopexit, %bb.ac
  %i.qo = phi i64 [ %i.ns, %bb.ac ], [ %.pre, %.loopexit1068.loopexit ]
  %.sroa.22.1 = phi i64 [ %.sroa.22.0, %bb.ac ], [ %.sroa.22.3.lcssa, %.loopexit1068.loopexit ] ; 2 uses
  %.sroa.0515.1 = phi i64 [ %.sroa.0515.0, %bb.ac ], [ %.sroa.0515.3.lcssa, %.loopexit1068.loopexit ] ; 2 uses
  %.sroa.061.1 = phi i64 [ %.sroa.061.0, %bb.ac ], [ %.sroa.043.01191, %.loopexit1068.loopexit ] ; 2 uses
  %i.qp = phi <2 x i64> [ %i.nl, %bb.ac ], [ %i.nz, %.loopexit1068.loopexit ] ; 2 uses
  %i.qq = add i64 %i.qo, -1                       ; 2 uses
  store i64 %i.qq, ptr %i.nw, align 8
  %i.qr = icmp ult i64 %.sroa.043.01191, %i.cr
  br i1 %i.qr, label %.lr.ph1220.preheader, label %.loopexit1067

.lr.ph1220.preheader:                             ; preds = %.loopexit1068
  %.pre1449 = load ptr, ptr %i.nq, align 8
  br label %.lr.ph1220

.lr.ph1220:                                       ; preds = %.lr.ph1220.preheader, %bb.ah
  %i.qs = phi ptr [ %i.rb, %bb.ah ], [ %.pre1449, %.lr.ph1220.preheader ]
  %i.qt = phi i64 [ %i.rg, %bb.ah ], [ %i.qq, %.lr.ph1220.preheader ] ; 3 uses
  %.sroa.043.11219 = phi i64 [ %i.rf, %bb.ah ], [ %.sroa.043.01191, %.lr.ph1220.preheader ]
  %i.qu = load ptr, ptr %i.qs, align 8, !nonnull !5, !noundef !5
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 16
  %i.qw = tail call noundef nonnull align 8 ptr @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node8children(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.qv)
  %i.qx = tail call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren5nodes(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.qw) ; 2 uses
  %i.qy = extractvalue { ptr, i64 } %i.qx, 1      ; 2 uses
  %i.qz = icmp ult i64 %i.qt, %i.qy
  br i1 %i.qz, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph1220
  %i.ra = extractvalue { ptr, i64 } %i.qx, 0
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %i.ra, i64 %i.qt ; 3 uses
  %i.rc = load ptr, ptr %i.rb, align 8, !nonnull !5, !noundef !5
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 16
  %i.re = tail call noundef i64 @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node11child_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.rd)
  %i.rf = add i64 %.sroa.043.11219, 1             ; 3 uses
  %i.rg = add i64 %i.re, -1                       ; 2 uses
  %i.rh = getelementptr inbounds nuw [16 x i8], ptr %i.lr, i64 %i.rf ; 2 uses
  store ptr %i.rb, ptr %i.rh, align 8
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  store i64 %i.rg, ptr %i.ri, align 8
  %exitcond.not = icmp eq i64 %i.rf, %i.cr
  br i1 %exitcond.not, label %.loopexit1067, label %.lr.ph1220

bb.ai:                                            ; preds = %.lr.ph1220
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.qt, i64 noundef %i.qy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #17
  unreachable

.loopexit1067:                                    ; preds = %bb.ah, %.loopexit1068, %bb.z
  %.sroa.22.4 = phi i64 [ %.sroa.22.0, %bb.z ], [ %.sroa.22.1, %.loopexit1068 ], [ %.sroa.22.1, %bb.ah ] ; 3 uses
  %.sroa.0515.4 = phi i64 [ %.sroa.0515.0, %bb.z ], [ %.sroa.0515.1, %.loopexit1068 ], [ %.sroa.0515.1, %bb.ah ] ; 3 uses
  %.sroa.061.2 = phi i64 [ %.sroa.061.0, %bb.z ], [ %.sroa.061.1, %.loopexit1068 ], [ %.sroa.061.1, %bb.ah ] ; 4 uses
  %i.rj = phi <2 x i64> [ %i.nl, %bb.z ], [ %i.qp, %.loopexit1068 ], [ %i.qp, %bb.ah ] ; 3 uses
  %i.rk = load ptr, ptr %i.nh, align 8, !nonnull !5, !align !23, !noundef !5 ; 3 uses
  %i.rl = load i64, ptr %i.ni, align 8, !noundef !5 ; 9 uses
  %i.rm = load ptr, ptr %i.rk, align 8, !nonnull !5, !noundef !5
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 16
  %i.ro = tail call noundef nonnull align 8 ptr @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node8children(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.rn)
  %i.rp = tail call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4info(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.ro) ; 2 uses
  %i.rq = extractvalue { ptr, i64 } %i.rp, 1      ; 2 uses
  %i.rr = icmp ult i64 %i.rl, %i.rq
  br i1 %i.rr, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.loopexit1067
  %i.rs = extractvalue { ptr, i64 } %i.rp, 0
  %i.rt = getelementptr inbounds nuw [32 x i8], ptr %i.rs, i64 %i.rl ; 3 uses
  %i.ru = load i64, ptr %i.rt, align 8, !noundef !5 ; 3 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rt, i64 8
  %i.rw = load <2 x i64>, ptr %i.rv, align 8
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rt, i64 24
  %i.ry = load i64, ptr %i.rx, align 8, !noundef !5
  %i.rz = icmp eq i64 %i.ry, 0
  br i1 %i.rz, label %bb.al, label %bb.am

bb.ak:                                            ; preds = %.loopexit1067
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.rl, i64 noundef %i.rq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #17
  unreachable

bb.al:                                            ; preds = %bb.aj
  %.not180 = icmp ult i64 %i.ru, %i.nk
  br i1 %.not180, label %bb.an, label %bb.ao

bb.am:                                            ; preds = %bb.aj
  %i.sa = load ptr, ptr %i.rk, align 8, !nonnull !5, !noundef !5
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 16
  %i.sc = tail call noundef nonnull align 8 ptr @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node8children(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.sb)
  %i.sd = tail call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren5nodes(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.sc) ; 2 uses
  %i.se = extractvalue { ptr, i64 } %i.sd, 1      ; 2 uses
  %i.sf = icmp ult i64 %i.rl, %i.se
  br i1 %i.sf, label %bb.au, label %bb.av

bb.an:                                            ; preds = %bb.al
  %i.sg = add i64 %i.nj, %i.ru
  %i.sh = add <2 x i64> %i.nm, %i.rw
  %i.si = sub nuw i64 %i.nk, %i.ru                ; 2 uses
  store i64 %i.si, ptr %i.bv, align 8
  br label %bb.y

bb.ao:                                            ; preds = %bb.al
  %i.sj = load ptr, ptr %i.rk, align 8, !nonnull !5, !noundef !5
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 16
  %i.sl = tail call noundef nonnull align 8 ptr @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node8children(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.sk)
  %i.sm = tail call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren5nodes(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.sl) ; 2 uses
  %i.sn = extractvalue { ptr, i64 } %i.sm, 1      ; 2 uses
  %i.so = icmp ult i64 %i.rl, %i.sn
  br i1 %i.so, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.sp = extractvalue { ptr, i64 } %i.sm, 0
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %i.sp, i64 %i.rl
  %i.sr = load ptr, ptr %i.sq, align 8, !nonnull !5, !noundef !5
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 16
  %i.st = tail call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9leaf_text(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.ss) ; 2 uses
  %i.su = extractvalue { ptr, i64 } %i.st, 0      ; 2 uses
  %i.sv = extractvalue { ptr, i64 } %i.st, 1      ; 3 uses
  store ptr %i.su, ptr %i.m, align 8, !captures !24
  store i64 %i.sv, ptr %i.o, align 8
  %i.sw = sub i64 %i.sv, %i.nk
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.rl, i64 noundef %i.sn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #17
  unreachable

bb.ar:                                            ; preds = %bb.au, %bb.ap
  %i.sx = phi i64 [ %i.sv, %bb.ap ], [ %i.tk, %bb.au ] ; 7 uses
  %i.sy = phi ptr [ %i.su, %bb.ap ], [ %i.tj, %bb.au ] ; 3 uses
  %.sroa.070.0 = phi i64 [ %i.sw, %bb.ap ], [ %spec.select, %bb.au ] ; 10 uses
  %i.sz = icmp eq i64 %.sroa.070.0, 0
  br i1 %i.sz, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.not.i435 = icmp ult i64 %.sroa.070.0, %i.sx
  br i1 %.not.i435, label %bb.at, label %.split.i436

.split.i436:                                      ; preds = %bb.as
  %i.ta = icmp eq i64 %.sroa.070.0, %i.sx
  br i1 %i.ta, label %bb.aw, label %bb.ba

bb.at:                                            ; preds = %bb.as
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sy, i64 %.sroa.070.0
  %i.tc = load i8, ptr %i.tb, align 1, !alias.scope !410, !noundef !5
  %i.td = icmp sgt i8 %i.tc, -65
  br i1 %i.td, label %bb.aw, label %bb.ba

bb.au:                                            ; preds = %bb.am
  %i.te = extractvalue { ptr, i64 } %i.sd, 0
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %i.te, i64 %i.rl
  %i.tg = load ptr, ptr %i.tf, align 8, !nonnull !5, !noundef !5
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 16
  %i.ti = tail call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9leaf_text(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.th) ; 2 uses
  %i.tj = extractvalue { ptr, i64 } %i.ti, 0      ; 3 uses
  %i.tk = extractvalue { ptr, i64 } %i.ti, 1      ; 5 uses
  store ptr %i.tj, ptr %i.m, align 8, !captures !24
  store i64 %i.tk, ptr %i.o, align 8
  %i.tl = tail call noundef i64 @_RNvNtCs2wCc12Mnjqg_5ropey9str_utils24last_line_start_byte_idx(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.tj, i64 noundef %i.tk) ; 2 uses
  %i.tm = sub i64 %i.tk, %i.tl
  %.not179 = icmp ult i64 %i.tm, %i.nk
  %i.tn = sub i64 %i.tk, %i.nk
  %spec.select = select i1 %.not179, i64 %i.tl, i64 %i.tn
  br label %bb.ar

bb.av:                                            ; preds = %bb.am
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.rl, i64 noundef %i.se, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #17
  unreachable

bb.aw:                                            ; preds = %bb.at, %.split.i436, %bb.ar
  %i.to = sub nuw i64 %i.sx, %.sroa.070.0         ; 10 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.sy, i64 %.sroa.070.0 ; 8 uses
  %i.tq = sub i64 %i.nk, %i.to
  store i64 %i.tq, ptr %i.bv, align 8
  %i.tr = trunc i64 %.sroa.070.0 to i32
  store i32 %i.tr, ptr %i.q, align 8
  %i.ts = icmp samesign ult i64 %i.to, 16
  br i1 %i.ts, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !411
  call void @_RINvMNtCskKLDkoKarTP_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.tp, i64 noundef range(i64 0, -9223372036854775808) %i.to)
  %i.tt = load ptr, ptr %i.e, align 8, !noalias !411, !nonnull !5, !noundef !5 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.tv = load i64, ptr %i.tu, align 8, !noalias !411, !noundef !5 ; 6 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.tx = load ptr, ptr %i.tw, align 8, !noalias !411, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.tz = load i64, ptr %i.ty, align 8, !noalias !411, !noundef !5 ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ub = load ptr, ptr %i.ua, align 8, !noalias !411, !nonnull !5, !noundef !5 ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ud = load i64, ptr %i.uc, align 8, !noalias !411, !noundef !5 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !411
  %i.ue = icmp samesign eq i64 %i.tv, 0
  br i1 %i.ue, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit445, label %.preheader.i440.preheader

.preheader.i440.preheader:                        ; preds = %bb.ax
  %min.iters.check1842 = icmp ult i64 %i.tv, 4
  br i1 %min.iters.check1842, label %.preheader.i440.preheader2012, label %vector.ph1843

vector.ph1843:                                    ; preds = %.preheader.i440.preheader
  %n.vec1844 = and i64 %i.tv, -4                  ; 3 uses
  br label %vector.body1845

vector.body1845:                                  ; preds = %vector.body1845, %vector.ph1843
  %index1846 = phi i64 [ 0, %vector.ph1843 ], [ %index.next1851, %vector.body1845 ] ; 2 uses
  %vec.phi1847 = phi <2 x i64> [ zeroinitializer, %vector.ph1843 ], [ %i.ul, %vector.body1845 ]
  %vec.phi1848 = phi <2 x i64> [ zeroinitializer, %vector.ph1843 ], [ %i.um, %vector.body1845 ]
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tt, i64 %index1846 ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 2
  %wide.load1849 = load <2 x i8>, ptr %i.uf, align 1, !alias.scope !412
  %wide.load1850 = load <2 x i8>, ptr %i.ug, align 1, !alias.scope !412
  %i.uh = icmp slt <2 x i8> %wide.load1849, splat (i8 -64)
  %i.ui = icmp slt <2 x i8> %wide.load1850, splat (i8 -64)
  %i.uj = zext <2 x i1> %i.uh to <2 x i64>
  %i.uk = zext <2 x i1> %i.ui to <2 x i64>
  %i.ul = add <2 x i64> %vec.phi1847, %i.uj       ; 2 uses
  %i.um = add <2 x i64> %vec.phi1848, %i.uk       ; 2 uses
  %index.next1851 = add nuw i64 %index1846, 4     ; 2 uses
  %i.un = icmp eq i64 %index.next1851, %n.vec1844
  br i1 %i.un, label %middle.block1852, label %vector.body1845, !llvm.loop !350

middle.block1852:                                 ; preds = %vector.body1845
  %bin.rdx1853 = add <2 x i64> %i.um, %i.ul
  %i.uo = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx1853) ; 2 uses
  %cmp.n1854 = icmp eq i64 %i.tv, %n.vec1844
  br i1 %cmp.n1854, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit445, label %.preheader.i440.preheader2012

.preheader.i440.preheader2012:                    ; preds = %.preheader.i440.preheader, %middle.block1852
  %.sroa.04.0.i.i441.ph = phi i64 [ 0, %.preheader.i440.preheader ], [ %n.vec1844, %middle.block1852 ]
  %.sroa.02.0.i.i442.ph = phi i64 [ 0, %.preheader.i440.preheader ], [ %i.uo, %middle.block1852 ]
  br label %.preheader.i440

.preheader.i440:                                  ; preds = %.preheader.i440.preheader2012, %.preheader.i440
  %.sroa.04.0.i.i441 = phi i64 [ %i.ut, %.preheader.i440 ], [ %.sroa.04.0.i.i441.ph, %.preheader.i440.preheader2012 ] ; 2 uses
  %.sroa.02.0.i.i442 = phi i64 [ %i.us, %.preheader.i440 ], [ %.sroa.02.0.i.i442.ph, %.preheader.i440.preheader2012 ]
  %i.up = getelementptr inbounds nuw i8, ptr %i.tt, i64 %.sroa.04.0.i.i441
  %.val.i.i443 = load i8, ptr %i.up, align 1, !alias.scope !412, !noundef !5
  %i.uq = icmp slt i8 %.val.i.i443, -64
  %i.ur = zext i1 %i.uq to i64
  %i.us = add i64 %.sroa.02.0.i.i442, %i.ur       ; 2 uses
  %i.ut = add nuw i64 %.sroa.04.0.i.i441, 1       ; 2 uses
  %i.uu = icmp eq i64 %i.ut, %i.tv
  br i1 %i.uu, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit445, label %.preheader.i440, !llvm.loop !351

_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit445: ; preds = %.preheader.i440, %middle.block1852, %bb.ax
  %.sroa.0.0.i.i444 = phi i64 [ 0, %bb.ax ], [ %i.uo, %middle.block1852 ], [ %i.us, %.preheader.i440 ] ; 3 uses
  %i.uv = icmp ule i64 %.sroa.0.0.i.i444, %i.tv
  tail call void @llvm.assume(i1 %i.uv)
  %i.uw = and i64 %i.tz, 576460752303423484       ; 3 uses
  %.not.i1921254 = icmp eq i64 %i.uw, 0
  br i1 %.not.i1921254, label %._crit_edge1259, label %.lr.ph1258

bb.ay:                                            ; preds = %bb.aw
  %i.ux = icmp samesign eq i64 %.sroa.070.0, %i.sx
  br i1 %i.ux, label %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit227, label %.preheader1672.preheader

.preheader1672.preheader:                         ; preds = %bb.ay
  %xtraiter2138 = and i64 %i.to, 3                ; 3 uses
  %2 = sub i64 %.sroa.070.0, %i.sx
  %3 = icmp ugt i64 %2, -4
  br i1 %3, label %.preheader1672.epil.preheader, label %.preheader1672.preheader.new

.preheader1672.preheader.new:                     ; preds = %.preheader1672.preheader
  %unroll_iter2143 = and i64 %i.to, 12
  br label %.preheader1672

.preheader1672:                                   ; preds = %.preheader1672, %.preheader1672.preheader.new
  %.sroa.04.0.i446 = phi i64 [ 0, %.preheader1672.preheader.new ], [ %i.vr, %.preheader1672 ] ; 5 uses
  %.sroa.02.0.i447 = phi i64 [ 0, %.preheader1672.preheader.new ], [ %i.vq, %.preheader1672 ]
  %niter2144 = phi i64 [ 0, %.preheader1672.preheader.new ], [ %niter2144.next.3, %.preheader1672 ]
  %i.uy = getelementptr inbounds nuw i8, ptr %i.tp, i64 %.sroa.04.0.i446
  %.val.i448 = load i8, ptr %i.uy, align 1, !noundef !5
  %i.uz = icmp sgt i8 %.val.i448, -65
  %i.va = zext i1 %i.uz to i64
  %i.vb = add i64 %.sroa.02.0.i447, %i.va
  %i.vc = getelementptr inbounds nuw i8, ptr %i.tp, i64 %.sroa.04.0.i446
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 1
  %.val.i448.1 = load i8, ptr %i.vd, align 1, !noundef !5
  %i.ve = icmp sgt i8 %.val.i448.1, -65
  %i.vf = zext i1 %i.ve to i64
  %i.vg = add i64 %i.vb, %i.vf
  %i.vh = getelementptr inbounds nuw i8, ptr %i.tp, i64 %.sroa.04.0.i446
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 2
  %.val.i448.2 = load i8, ptr %i.vi, align 1, !noundef !5
  %i.vj = icmp sgt i8 %.val.i448.2, -65
  %i.vk = zext i1 %i.vj to i64
  %i.vl = add i64 %i.vg, %i.vk
  %i.vm = getelementptr inbounds nuw i8, ptr %i.tp, i64 %.sroa.04.0.i446
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 3
  %.val.i448.3 = load i8, ptr %i.vn, align 1, !noundef !5
  %i.vo = icmp sgt i8 %.val.i448.3, -65
  %i.vp = zext i1 %i.vo to i64
  %i.vq = add i64 %i.vl, %i.vp                    ; 3 uses
  %i.vr = add nuw nsw i64 %.sroa.04.0.i446, 4     ; 2 uses
  %niter2144.next.3 = add i64 %niter2144, 4       ; 2 uses
  %niter2144.ncmp.3 = icmp eq i64 %niter2144.next.3, %unroll_iter2143
  br i1 %niter2144.ncmp.3, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit198.unr-lcssa, label %.preheader1672

._crit_edge1259:                                  ; preds = %.lr.ph1258, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit445
  %.sroa.01.0.i191.lcssa = phi i64 [ %.sroa.0.0.i.i444, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit445 ], [ %i.yv, %.lr.ph1258 ]
  %i.vs = getelementptr inbounds nuw [16 x i8], ptr %i.tx, i64 %i.uw ; 3 uses
  %i.vt = shl i64 %i.tz, 4
  %.idx1323 = and i64 %i.vt, 48                   ; 3 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vs, i64 %.idx1323
  %i.vv = icmp samesign eq i64 %.idx1323, 0
  br i1 %i.vv, label %._crit_edge1264, label %.lr.ph1263.preheader

.lr.ph1263.preheader:                             ; preds = %._crit_edge1259
  %i.vw = add nsw i64 %.idx1323, -16              ; 2 uses
  %i.vx = lshr exact i64 %i.vw, 4
  %i.vy = add nuw nsw i64 %i.vx, 1
  %xtraiter2134 = and i64 %i.vy, 3                ; 2 uses
  %lcmp.mod2135.not = icmp eq i64 %xtraiter2134, 0
  br i1 %lcmp.mod2135.not, label %.lr.ph1263.prol.loopexit, label %.lr.ph1263.prol

.lr.ph1263.prol:                                  ; preds = %.lr.ph1263.preheader, %.lr.ph1263.prol
  %.sroa.012.0.i1961261.prol = phi ptr [ %i.wa, %.lr.ph1263.prol ], [ %i.vs, %.lr.ph1263.preheader ] ; 2 uses
  %i.vz = phi <16 x i8> [ %i.we, %.lr.ph1263.prol ], [ zeroinitializer, %.lr.ph1263.preheader ]
  %prol.iter2136 = phi i64 [ %prol.iter2136.next, %.lr.ph1263.prol ], [ 0, %.lr.ph1263.preheader ]
  %i.wa = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i1961261.prol, i64 16 ; 2 uses
  %i.wb = load <16 x i8>, ptr %.sroa.012.0.i1961261.prol, align 16
  %i.wc = icmp slt <16 x i8> %i.wb, splat (i8 -64)
  %i.wd = zext <16 x i1> %i.wc to <16 x i8>
  %i.we = add <16 x i8> %i.vz, %i.wd              ; 3 uses
  %prol.iter2136.next = add i64 %prol.iter2136, 1 ; 2 uses
  %prol.iter2136.cmp.not = icmp eq i64 %prol.iter2136.next, %xtraiter2134
  br i1 %prol.iter2136.cmp.not, label %.lr.ph1263.prol.loopexit, label %.lr.ph1263.prol, !llvm.loop !352

.lr.ph1263.prol.loopexit:                         ; preds = %.lr.ph1263.prol, %.lr.ph1263.preheader
  %.lcssa2010.unr = phi <16 x i8> [ poison, %.lr.ph1263.preheader ], [ %i.we, %.lr.ph1263.prol ]
  %.sroa.012.0.i1961261.unr = phi ptr [ %i.vs, %.lr.ph1263.preheader ], [ %i.wa, %.lr.ph1263.prol ]
  %.unr2137 = phi <16 x i8> [ zeroinitializer, %.lr.ph1263.preheader ], [ %i.we, %.lr.ph1263.prol ]
  %i.wf = icmp ult i64 %i.vw, 48
  br i1 %i.wf, label %._crit_edge1264, label %.lr.ph1263

.lr.ph1263:                                       ; preds = %.lr.ph1263.prol.loopexit, %.lr.ph1263
  %.sroa.012.0.i1961261 = phi ptr [ %i.ww, %.lr.ph1263 ], [ %.sroa.012.0.i1961261.unr, %.lr.ph1263.prol.loopexit ] ; 5 uses
  %i.wg = phi <16 x i8> [ %i.xa, %.lr.ph1263 ], [ %.unr2137, %.lr.ph1263.prol.loopexit ]
  %i.wh = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i1961261, i64 16
  %i.wi = load <16 x i8>, ptr %.sroa.012.0.i1961261, align 16
  %i.wj = icmp slt <16 x i8> %i.wi, splat (i8 -64)
  %i.wk = zext <16 x i1> %i.wj to <16 x i8>
  %i.wl = add <16 x i8> %i.wg, %i.wk
  %i.wm = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i1961261, i64 32
  %i.wn = load <16 x i8>, ptr %i.wh, align 16
  %i.wo = icmp slt <16 x i8> %i.wn, splat (i8 -64)
  %i.wp = zext <16 x i1> %i.wo to <16 x i8>
  %i.wq = add <16 x i8> %i.wl, %i.wp
  %i.wr = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i1961261, i64 48
  %i.ws = load <16 x i8>, ptr %i.wm, align 16
  %i.wt = icmp slt <16 x i8> %i.ws, splat (i8 -64)
  %i.wu = zext <16 x i1> %i.wt to <16 x i8>
  %i.wv = add <16 x i8> %i.wq, %i.wu
  %i.ww = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i1961261, i64 64 ; 2 uses
  %i.wx = load <16 x i8>, ptr %i.wr, align 16
  %i.wy = icmp slt <16 x i8> %i.wx, splat (i8 -64)
  %i.wz = zext <16 x i1> %i.wy to <16 x i8>
  %i.xa = add <16 x i8> %i.wv, %i.wz              ; 2 uses
  %i.xb = icmp eq ptr %i.ww, %i.vu
  br i1 %i.xb, label %._crit_edge1264, label %.lr.ph1263

._crit_edge1264:                                  ; preds = %.lr.ph1263.prol.loopexit, %.lr.ph1263, %._crit_edge1259
  %.lcssa1082 = phi <16 x i8> [ zeroinitializer, %._crit_edge1259 ], [ %.lcssa2010.unr, %.lr.ph1263.prol.loopexit ], [ %i.xa, %.lr.ph1263 ]
  %i.xc = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %.lcssa1082, <16 x i8> zeroinitializer) ; 2 uses
  %.sroa.0.0.vec.extract.i248 = extractelement <2 x i64> %i.xc, i64 0
  %.sroa.0.8.vec.extract.i249 = extractelement <2 x i64> %i.xc, i64 1
  %i.xd = icmp samesign eq i64 %i.ud, 0
  br i1 %i.xd, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit198.thread1537, label %.preheader.i451.preheader

.preheader.i451.preheader:                        ; preds = %._crit_edge1264
  %min.iters.check1858 = icmp ult i64 %i.ud, 4
  br i1 %min.iters.check1858, label %.preheader.i451.preheader2006, label %vector.ph1859

vector.ph1859:                                    ; preds = %.preheader.i451.preheader
  %n.vec1860 = and i64 %i.ud, -4                  ; 3 uses
  br label %vector.body1861

vector.body1861:                                  ; preds = %vector.body1861, %vector.ph1859
  %index1862 = phi i64 [ 0, %vector.ph1859 ], [ %index.next1867, %vector.body1861 ] ; 2 uses
  %vec.phi1863 = phi <2 x i64> [ zeroinitializer, %vector.ph1859 ], [ %i.xk, %vector.body1861 ]
  %vec.phi1864 = phi <2 x i64> [ zeroinitializer, %vector.ph1859 ], [ %i.xl, %vector.body1861 ]
  %i.xe = getelementptr inbounds nuw i8, ptr %i.ub, i64 %index1862 ; 2 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 2
  %wide.load1865 = load <2 x i8>, ptr %i.xe, align 1, !alias.scope !413
  %wide.load1866 = load <2 x i8>, ptr %i.xf, align 1, !alias.scope !413
  %i.xg = icmp slt <2 x i8> %wide.load1865, splat (i8 -64)
  %i.xh = icmp slt <2 x i8> %wide.load1866, splat (i8 -64)
  %i.xi = zext <2 x i1> %i.xg to <2 x i64>
  %i.xj = zext <2 x i1> %i.xh to <2 x i64>
  %i.xk = add <2 x i64> %vec.phi1863, %i.xi       ; 2 uses
  %i.xl = add <2 x i64> %vec.phi1864, %i.xj       ; 2 uses
  %index.next1867 = add nuw i64 %index1862, 4     ; 2 uses
  %i.xm = icmp eq i64 %index.next1867, %n.vec1860
  br i1 %i.xm, label %middle.block1868, label %vector.body1861, !llvm.loop !355

middle.block1868:                                 ; preds = %vector.body1861
  %bin.rdx1869 = add <2 x i64> %i.xl, %i.xk
  %i.xn = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx1869) ; 2 uses
  %cmp.n1870 = icmp eq i64 %i.ud, %n.vec1860
  br i1 %cmp.n1870, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit198.thread1537, label %.preheader.i451.preheader2006

.preheader.i451.preheader2006:                    ; preds = %.preheader.i451.preheader, %middle.block1868
  %.sroa.04.0.i.i452.ph = phi i64 [ 0, %.preheader.i451.preheader ], [ %n.vec1860, %middle.block1868 ]
  %.sroa.02.0.i.i453.ph = phi i64 [ 0, %.preheader.i451.preheader ], [ %i.xn, %middle.block1868 ]
  br label %.preheader.i451

.preheader.i451:                                  ; preds = %.preheader.i451.preheader2006, %.preheader.i451
  %.sroa.04.0.i.i452 = phi i64 [ %i.xs, %.preheader.i451 ], [ %.sroa.04.0.i.i452.ph, %.preheader.i451.preheader2006 ] ; 2 uses
  %.sroa.02.0.i.i453 = phi i64 [ %i.xr, %.preheader.i451 ], [ %.sroa.02.0.i.i453.ph, %.preheader.i451.preheader2006 ]
  %i.xo = getelementptr inbounds nuw i8, ptr %i.ub, i64 %.sroa.04.0.i.i452
  %.val.i.i454 = load i8, ptr %i.xo, align 1, !alias.scope !413, !noundef !5
  %i.xp = icmp slt i8 %.val.i.i454, -64
  %i.xq = zext i1 %i.xp to i64
  %i.xr = add i64 %.sroa.02.0.i.i453, %i.xq       ; 2 uses
  %i.xs = add nuw i64 %.sroa.04.0.i.i452, 1       ; 2 uses
  %i.xt = icmp eq i64 %i.xs, %i.ud
  br i1 %i.xt, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit198.thread1537, label %.preheader.i451, !llvm.loop !356

_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit198.thread1537: ; preds = %.preheader.i451, %middle.block1868, %._crit_edge1264
  %.sroa.0.0.i.i455 = phi i64 [ 0, %._crit_edge1264 ], [ %i.xn, %middle.block1868 ], [ %i.xr, %.preheader.i451 ] ; 2 uses
  %i.xu = icmp ule i64 %.sroa.0.0.i.i455, %i.ud
  tail call void @llvm.assume(i1 %i.xu)
  %i.xv = add i64 %.sroa.01.0.i191.lcssa, %.sroa.0.8.vec.extract.i249
  %i.xw = add i64 %i.xv, %.sroa.0.0.vec.extract.i248
  %i.xx = add i64 %i.xw, %.sroa.0.0.i.i455
  %i.xy = sub i64 %i.to, %i.xx
  br label %bb.az

.lr.ph1258:                                       ; preds = %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit445, %.lr.ph1258
  %.sroa.01.0.i1911257 = phi i64 [ %i.yv, %.lr.ph1258 ], [ %.sroa.0.0.i.i444, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit445 ]
  %.sroa.06.0.i1901256 = phi ptr [ %i.xz, %.lr.ph1258 ], [ %i.tx, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit445 ] ; 5 uses
  %.sroa.5.0.i1891255 = phi i64 [ %i.ya, %.lr.ph1258 ], [ %i.uw, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit445 ]
  %i.xz = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i1901256, i64 64
  %i.ya = add i64 %.sroa.5.0.i1891255, -4         ; 2 uses
  %i.yb = load <16 x i8>, ptr %.sroa.06.0.i1901256, align 16
  %i.yc = icmp slt <16 x i8> %i.yb, splat (i8 -64)
  %i.yd = zext <16 x i1> %i.yc to <16 x i8>
  %i.ye = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i1901256, i64 16
  %i.yf = load <16 x i8>, ptr %i.ye, align 16
  %i.yg = icmp slt <16 x i8> %i.yf, splat (i8 -64)
  %i.yh = zext <16 x i1> %i.yg to <16 x i8>
  %i.yi = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i1901256, i64 32
  %i.yj = load <16 x i8>, ptr %i.yi, align 16
  %i.yk = icmp slt <16 x i8> %i.yj, splat (i8 -64)
  %i.yl = zext <16 x i1> %i.yk to <16 x i8>
  %i.ym = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i1901256, i64 48
  %i.yn = load <16 x i8>, ptr %i.ym, align 16
  %i.yo = icmp slt <16 x i8> %i.yn, splat (i8 -64)
  %i.yp = zext <16 x i1> %i.yo to <16 x i8>
  %i.yq = add nuw nsw <16 x i8> %i.yh, %i.yd
  %i.yr = add nuw nsw <16 x i8> %i.yq, %i.yl
  %i.ys = add nuw nsw <16 x i8> %i.yr, %i.yp
  %i.yt = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.ys, <16 x i8> zeroinitializer) ; 2 uses
  %.sroa.0.0.vec.extract.i250 = extractelement <2 x i64> %i.yt, i64 0
  %.sroa.0.8.vec.extract.i251 = extractelement <2 x i64> %i.yt, i64 1
  %i.yu = add i64 %.sroa.0.8.vec.extract.i251, %.sroa.01.0.i1911257
  %i.yv = add i64 %i.yu, %.sroa.0.0.vec.extract.i250 ; 2 uses
  %.not.i192 = icmp eq i64 %i.ya, 0
  br i1 %.not.i192, label %._crit_edge1259, label %.lr.ph1258

_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit198.unr-lcssa: ; preds = %.preheader1672
end_hunk_1
begin_hunk_2_@_RNvMs4_NtCs2wCc12Mnjqg_5ropey4iterNtB5_5Lines9prev_impl:bb.a
  %xtraiter2145 = and i64 %i.aam, 3               ; 2 uses
  %lcmp.mod2146.not = icmp eq i64 %xtraiter2145, 0
  br i1 %lcmp.mod2146.not, label %.lr.ph1273.prol.loopexit, label %.lr.ph1273.prol

.lr.ph1273.prol:                                  ; preds = %.lr.ph1273.preheader, %.lr.ph1273.prol
  %.sroa.016.0.i2231271.prol = phi ptr [ %i.aao, %.lr.ph1273.prol ], [ %.sroa.0699.01276, %.lr.ph1273.preheader ] ; 2 uses
  %i.aan = phi <16 x i8> [ %i.aas, %.lr.ph1273.prol ], [ zeroinitializer, %.lr.ph1273.preheader ]
  %prol.iter2147 = phi i64 [ %prol.iter2147.next, %.lr.ph1273.prol ], [ 0, %.lr.ph1273.preheader ]
  %i.aao = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i2231271.prol, i64 16 ; 2 uses
  %i.aap = load <16 x i8>, ptr %.sroa.016.0.i2231271.prol, align 16, !alias.scope !415, !noalias !416
  %i.aaq = icmp ugt <16 x i8> %i.aap, splat (i8 -17)
  %i.aar = zext <16 x i1> %i.aaq to <16 x i8>
  %i.aas = add <16 x i8> %i.aan, %i.aar           ; 3 uses
  %prol.iter2147.next = add i64 %prol.iter2147, 1 ; 2 uses
  %prol.iter2147.cmp.not = icmp eq i64 %prol.iter2147.next, %xtraiter2145
  br i1 %prol.iter2147.cmp.not, label %.lr.ph1273.prol.loopexit, label %.lr.ph1273.prol, !llvm.loop !366

.lr.ph1273.prol.loopexit:                         ; preds = %.lr.ph1273.prol, %.lr.ph1273.preheader
  %.lcssa1999.unr = phi <16 x i8> [ poison, %.lr.ph1273.preheader ], [ %i.aas, %.lr.ph1273.prol ]
  %.sroa.016.0.i2231271.unr = phi ptr [ %.sroa.0699.01276, %.lr.ph1273.preheader ], [ %i.aao, %.lr.ph1273.prol ]
  %.unr2148 = phi <16 x i8> [ zeroinitializer, %.lr.ph1273.preheader ], [ %i.aas, %.lr.ph1273.prol ]
  %i.aat = icmp ult i64 %i.aak, 48
  br i1 %i.aat, label %._crit_edge1274, label %.lr.ph1273

._crit_edge1280:                                  ; preds = %._crit_edge1274, %.preheader1066
  %.sroa.0.1.i221.lcssa = phi i64 [ %.sroa.0.0.i218.lcssa, %.preheader1066 ], [ %i.acl, %._crit_edge1274 ] ; 3 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %i.zl, i64 %i.zn
  %i.aav = icmp samesign eq i64 %i.zn, 0
  br i1 %i.aav, label %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit227, label %.lr.ph1285.preheader

.lr.ph1285.preheader:                             ; preds = %._crit_edge1280
  %min.iters.check1891 = icmp ult i64 %i.zn, 4
  br i1 %min.iters.check1891, label %.lr.ph1285.preheader1995, label %vector.ph1892

vector.ph1892:                                    ; preds = %.lr.ph1285.preheader
  %n.vec1893 = and i64 %i.zn, -4                  ; 3 uses
  %i.aaw = getelementptr i8, ptr %i.zl, i64 %n.vec1893
  %i.aax = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.sroa.0.1.i221.lcssa, i64 0
  br label %vector.body1894

vector.body1894:                                  ; preds = %vector.body1894, %vector.ph1892
  %index1895 = phi i64 [ 0, %vector.ph1892 ], [ %index.next1901, %vector.body1894 ] ; 2 uses
  %vec.phi1896 = phi <2 x i64> [ %i.aax, %vector.ph1892 ], [ %i.abd, %vector.body1894 ]
  %vec.phi1897 = phi <2 x i64> [ zeroinitializer, %vector.ph1892 ], [ %i.abe, %vector.body1894 ]
  %next.gep1898 = getelementptr i8, ptr %i.zl, i64 %index1895 ; 2 uses
  %i.aay = getelementptr i8, ptr %next.gep1898, i64 2
  %wide.load1899 = load <2 x i8>, ptr %next.gep1898, align 1
  %wide.load1900 = load <2 x i8>, ptr %i.aay, align 1
  %i.aaz = icmp ugt <2 x i8> %wide.load1899, splat (i8 -17)
  %i.aba = icmp ugt <2 x i8> %wide.load1900, splat (i8 -17)
  %i.abb = zext <2 x i1> %i.aaz to <2 x i64>
  %i.abc = zext <2 x i1> %i.aba to <2 x i64>
  %i.abd = add <2 x i64> %vec.phi1896, %i.abb     ; 2 uses
  %i.abe = add <2 x i64> %vec.phi1897, %i.abc     ; 2 uses
  %index.next1901 = add nuw i64 %index1895, 4     ; 2 uses
  %i.abf = icmp eq i64 %index.next1901, %n.vec1893
  br i1 %i.abf, label %middle.block1902, label %vector.body1894, !llvm.loop !367

middle.block1902:                                 ; preds = %vector.body1894
  %bin.rdx1903 = add <2 x i64> %i.abe, %i.abd
  %i.abg = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx1903) ; 2 uses
  %cmp.n1904 = icmp eq i64 %i.zn, %n.vec1893
  br i1 %cmp.n1904, label %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit227, label %.lr.ph1285.preheader1995

.lr.ph1285.preheader1995:                         ; preds = %.lr.ph1285.preheader, %middle.block1902
  %.sroa.0.2.i2251283.ph = phi i64 [ %.sroa.0.1.i221.lcssa, %.lr.ph1285.preheader ], [ %i.abg, %middle.block1902 ]
  %.sroa.012.0.i2241282.ph = phi ptr [ %i.zl, %.lr.ph1285.preheader ], [ %i.aaw, %middle.block1902 ]
  br label %.lr.ph1285

.lr.ph1285:                                       ; preds = %.lr.ph1285.preheader1995, %.lr.ph1285
  %.sroa.0.2.i2251283 = phi i64 [ %i.abl, %.lr.ph1285 ], [ %.sroa.0.2.i2251283.ph, %.lr.ph1285.preheader1995 ]
  %.sroa.012.0.i2241282 = phi ptr [ %i.abh, %.lr.ph1285 ], [ %.sroa.012.0.i2241282.ph, %.lr.ph1285.preheader1995 ] ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i2241282, i64 1 ; 2 uses
  %i.abi = load i8, ptr %.sroa.012.0.i2241282, align 1, !noundef !5
  %i.abj = icmp ugt i8 %i.abi, -17
  %i.abk = zext i1 %i.abj to i64
  %i.abl = add i64 %.sroa.0.2.i2251283, %i.abk    ; 2 uses
  %i.abm = icmp eq ptr %i.abh, %i.aau
  br i1 %i.abm, label %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit227, label %.lr.ph1285, !llvm.loop !368

.lr.ph1273:                                       ; preds = %.lr.ph1273.prol.loopexit, %.lr.ph1273
  %.sroa.016.0.i2231271 = phi ptr [ %i.acd, %.lr.ph1273 ], [ %.sroa.016.0.i2231271.unr, %.lr.ph1273.prol.loopexit ] ; 5 uses
  %i.abn = phi <16 x i8> [ %i.ach, %.lr.ph1273 ], [ %.unr2148, %.lr.ph1273.prol.loopexit ]
  %i.abo = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i2231271, i64 16
  %i.abp = load <16 x i8>, ptr %.sroa.016.0.i2231271, align 16, !alias.scope !415, !noalias !416
  %i.abq = icmp ugt <16 x i8> %i.abp, splat (i8 -17)
  %i.abr = zext <16 x i1> %i.abq to <16 x i8>
  %i.abs = add <16 x i8> %i.abn, %i.abr
  %i.abt = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i2231271, i64 32
  %i.abu = load <16 x i8>, ptr %i.abo, align 16, !alias.scope !415, !noalias !416
  %i.abv = icmp ugt <16 x i8> %i.abu, splat (i8 -17)
  %i.abw = zext <16 x i1> %i.abv to <16 x i8>
  %i.abx = add <16 x i8> %i.abs, %i.abw
  %i.aby = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i2231271, i64 48
  %i.abz = load <16 x i8>, ptr %i.abt, align 16, !alias.scope !415, !noalias !416
  %i.aca = icmp ugt <16 x i8> %i.abz, splat (i8 -17)
  %i.acb = zext <16 x i1> %i.aca to <16 x i8>
  %i.acc = add <16 x i8> %i.abx, %i.acb
  %i.acd = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i2231271, i64 64 ; 2 uses
  %i.ace = load <16 x i8>, ptr %i.aby, align 16, !alias.scope !415, !noalias !416
  %i.acf = icmp ugt <16 x i8> %i.ace, splat (i8 -17)
  %i.acg = zext <16 x i1> %i.acf to <16 x i8>
  %i.ach = add <16 x i8> %i.acc, %i.acg           ; 2 uses
  %i.aci = icmp eq ptr %i.acd, %i.aaj
  br i1 %i.aci, label %._crit_edge1274, label %.lr.ph1273

._crit_edge1274:                                  ; preds = %.lr.ph1273, %.lr.ph1273.prol.loopexit
  %.lcssa1999 = phi <16 x i8> [ %.lcssa1999.unr, %.lr.ph1273.prol.loopexit ], [ %i.ach, %.lr.ph1273 ]
  %i.acj = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %.lcssa1999, <16 x i8> zeroinitializer) ; 2 uses
  %.sroa.0.0.vec.extract.i240 = extractelement <2 x i64> %i.acj, i64 0
  %.sroa.0.8.vec.extract.i241 = extractelement <2 x i64> %i.acj, i64 1
  %i.ack = add i64 %.sroa.0.8.vec.extract.i241, %.sroa.0.1.i2211278
  %i.acl = add i64 %i.ack, %.sroa.0.0.vec.extract.i240 ; 2 uses
  %i.acm = icmp eq i64 %i.aai, 0
  br i1 %i.acm, label %._crit_edge1280, label %.lr.ph1273.preheader

_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit227: ; preds = %.lr.ph1285, %middle.block1902, %bb.ay, %._crit_edge1280, %_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit198
  %.sroa.0.0.i1971536 = phi i64 [ %.lcssa2005, %_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit198 ], [ %.sroa.0.0.i1971539, %._crit_edge1280 ], [ 0, %bb.ay ], [ %.sroa.0.0.i1971539, %middle.block1902 ], [ %.sroa.0.0.i1971539, %.lr.ph1285 ] ; 2 uses
  %.sroa.0.3.i226 = phi i64 [ 0, %_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit198 ], [ %.sroa.0.1.i221.lcssa, %._crit_edge1280 ], [ 0, %bb.ay ], [ %i.abg, %middle.block1902 ], [ %i.abl, %.lr.ph1285 ] ; 2 uses
  %i.acn = insertelement <2 x i64> poison, i64 %i.to, i64 0
  %i.aco = insertelement <2 x i64> %i.acn, i64 %.sroa.0.0.i1971536, i64 1
  br i1 %.sroa.042.0, label %bb.bb, label %bb.bc

bb.ba:                                            ; preds = %bb.at, %.split.i436
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.sy, i64 noundef %i.sx, i64 noundef %.sroa.070.0, i64 noundef %i.sx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #17
  unreachable

bb.bb:                                            ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit227
  %i.acp = icmp ult i64 %.sroa.061.2, %i.cp
  br i1 %i.acp, label %bb.bd, label %bb.be

bb.bc:                                            ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit227, %bb.bd
  %.sroa.10.sroa.3.0 = phi i64 [ %.sroa.22.4, %bb.bd ], [ undef, %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit227 ]
  %.sroa.073.0 = phi ptr [ %i.acu, %bb.bd ], [ null, %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit227 ]
  %.sroa.374.0 = phi ptr [ %i.adc, %bb.bd ], [ %i.tp, %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit227 ]
  %.sroa.777.0 = phi i64 [ %i.adb, %bb.bd ], [ %.sroa.0.3.i226, %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit227 ]
  %.sroa.878.0 = phi i64 [ %.sroa.0515.4, %bb.bd ], [ 0, %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit227 ]
  %i.acq = phi <2 x i64> [ %i.ada, %bb.bd ], [ %i.aco, %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit227 ]
  %i.acr = phi <2 x i64> [ %i.rj, %bb.bd ], [ undef, %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit227 ]
  %i.acs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.073.0, ptr %i.acs, align 8
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.374.0, ptr %.sroa.484.0..sroa_idx, align 8
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i64> %i.acq, ptr %.sroa.585.0..sroa_idx, align 8
  %.sroa.787.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.777.0, ptr %.sroa.787.0..sroa_idx, align 8
  %.sroa.888.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.878.0, ptr %.sroa.888.0..sroa_idx, align 8
  %.sroa.989.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x i64> %i.acr, ptr %.sroa.989.0..sroa_idx, align 8
  %.sroa.989.sroa.5.0..sroa.989.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.10.sroa.3.0, ptr %.sroa.989.sroa.5.0..sroa.989.0..sroa_idx.sroa_idx, align 8
  br label %bb.bf

bb.bd:                                            ; preds = %bb.bb
  %i.act = getelementptr inbounds nuw [16 x i8], ptr %i.lr, i64 %.sroa.061.2
  %i.acu = load ptr, ptr %i.act, align 8, !nonnull !5, !align !23, !noundef !5
  %i.acv = add i64 %i.to, %i.nj
  %i.acw = sub i64 %.sroa.0515.4, %i.acv
  %i.acx = insertelement <2 x i64> poison, i64 %.sroa.0.0.i1971536, i64 0
  %i.acy = insertelement <2 x i64> %i.acx, i64 %.sroa.0.3.i226, i64 1
  %i.acz = add <2 x i64> %i.acy, %i.nm
  %i.ada = sub <2 x i64> %i.rj, %i.acz
  %i.adb = sub i64 %.sroa.22.4, %i.my
  %i.adc = inttoptr i64 %i.acw to ptr
  br label %bb.bc

bb.be:                                            ; preds = %bb.bb
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.061.2, i64 noundef %i.cp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #17
  unreachable

bb.bf:                                            ; preds = %bb.h, %bb.bg, %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485.thread, %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit238, %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread1012, %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, %bb.bc
  %.sink = phi i64 [ 1, %bb.bc ], [ 1, %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485.thread ], [ 1, %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit238 ], [ 1, %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread1012 ], [ 0, %bb.bg ], [ 1, %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ], [ 0, %bb.h ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.bg:                                            ; preds = %bb.b
  %i.add = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ade = load i64, ptr %i.add, align 8, !noundef !5
  %i.adf = icmp eq i64 %i.ade, 0
  br i1 %i.adf, label %bb.bf, label %._RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485.thread1037_crit_edge

._RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485.thread1037_crit_edge: ; preds = %bb.bg
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.pre1450 = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert1451 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.pre1452 = load i64, ptr %.phi.trans.insert1451, align 8
  br label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485.thread1037

bb.bh:                                            ; preds = %bb.b
  %i.adg = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.adh = load i64, ptr %i.adg, align 8, !noundef !5 ; 8 uses
  %i.adi = icmp eq i64 %i.adh, 0
  br i1 %i.adi, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485.thread, label %.preheader.i466

_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485.thread1037: ; preds = %._RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485.thread1037_crit_edge, %.split10.i473, %.split1040, %.split1039, %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485
  %i.adj = phi i64 [ %.pre1452, %._RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485.thread1037_crit_edge ], [ %i.adh, %.split10.i473 ], [ %i.adh, %.split1040 ], [ %i.adh, %.split1039 ], [ %i.adh, %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485 ] ; 7 uses
  %i.adk = phi ptr [ %.pre1450, %._RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485.thread1037_crit_edge ], [ %i.adt, %.split10.i473 ], [ %i.adt, %.split1040 ], [ %i.adt, %.split1039 ], [ %i.adt, %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485 ] ; 7 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.adm = load i64, ptr %i.adl, align 8, !noundef !5 ; 14 uses
  %i.adn = icmp eq i64 %i.adm, 0
  br i1 %i.adn, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485.thread1037
  %.not.i462 = icmp ult i64 %i.adm, %i.adj
  br i1 %.not.i462, label %bb.bj, label %.split.i463

.split.i463:                                      ; preds = %bb.bi
  %i.ado = icmp eq i64 %i.adm, %i.adj
  br i1 %i.ado, label %bb.bl, label %bb.bq

bb.bj:                                            ; preds = %bb.bi
  %i.adp = getelementptr inbounds nuw i8, ptr %i.adk, i64 %i.adm
  %i.adq = load i8, ptr %i.adp, align 1, !alias.scope !417, !noundef !5
  %i.adr = icmp sgt i8 %i.adq, -65
  br i1 %i.adr, label %bb.bl, label %bb.bq

.preheader.i466:                                  ; preds = %bb.bh
  %i.ads = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.adt = load ptr, ptr %i.ads, align 8, !nonnull !5, !noundef !5 ; 8 uses
  %.sroa.01.024.i467 = add i64 %i.adh, -1         ; 2 uses
  %i.adu = icmp eq i64 %.sroa.01.024.i467, 0
  br i1 %i.adu, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485, label %.lr.ph.i468

.lr.ph.i468:                                      ; preds = %.preheader.i466, %.backedge.i471
  %.sroa.01.025.i469 = phi i64 [ %.sroa.01.0.i472, %.backedge.i471 ], [ %.sroa.01.024.i467, %.preheader.i466 ] ; 4 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adt, i64 %.sroa.01.025.i469
  %i.adw = load i8, ptr %i.adv, align 1, !alias.scope !418, !noundef !5
  %i.adx = icmp sgt i8 %i.adw, -65
  br i1 %i.adx, label %.split.i.i484, label %.backedge.i471

.backedge.i471:                                   ; preds = %.lr.ph.i468
  %.sroa.01.0.i472 = add i64 %.sroa.01.025.i469, -1 ; 2 uses
  %i.ady = icmp eq i64 %.sroa.01.0.i472, 0
  br i1 %i.ady, label %.split10.i473, label %.lr.ph.i468

.split.i.i484:                                    ; preds = %.lr.ph.i468
  %i.adz = getelementptr inbounds nuw i8, ptr %i.adt, i64 %.sroa.01.025.i469
  %i.aea = sub nuw i64 %i.adh, %.sroa.01.025.i469
  br label %.split10.i473

.split10.i473:                                    ; preds = %.backedge.i471, %.split.i.i484
  %.sroa.0.0.i.pn.i474 = phi ptr [ %i.adz, %.split.i.i484 ], [ %i.adt, %.backedge.i471 ] ; 6 uses
  %.sroa.3.0.i.pn.i475 = phi i64 [ %i.aea, %.split.i.i484 ], [ %i.adh, %.backedge.i471 ]
  switch i64 %.sroa.3.0.i.pn.i475, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485.thread1037 [
    i64 1, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485
    i64 2, label %.split1039
    i64 3, label %bb.bk
  ]

.split1039:                                       ; preds = %.split10.i473
  %i.aeb = load i16, ptr %.sroa.0.0.i.pn.i474, align 1
  %i.aec = icmp ne i16 %i.aeb, -31294
  %i.aed = zext i1 %i.aec to i32
  %i.aee = icmp eq i32 %i.aed, 0
  br i1 %i.aee, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485.thread, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485.thread1037

bb.bk:                                            ; preds = %.split10.i473
  %i.aef = load i16, ptr %.sroa.0.0.i.pn.i474, align 1
  %i.aeg = xor i16 %i.aef, -32542
  %i.aeh = getelementptr i8, ptr %.sroa.0.0.i.pn.i474, i64 2
  %i.aei = load i8, ptr %i.aeh, align 1
  %i.aej = zext i8 %i.aei to i16
  %i.aek = xor i16 %i.aej, 168
  %i.ael = or i16 %i.aeg, %i.aek
  %i.aem = icmp ne i16 %i.ael, 0
  %i.aen = zext i1 %i.aem to i32
  %i.aeo = icmp eq i32 %i.aen, 0
  br i1 %i.aeo, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485.thread, label %.split1040

.split1040:                                       ; preds = %bb.bk
  %i.aep = load i16, ptr %.sroa.0.0.i.pn.i474, align 1
  %i.aeq = xor i16 %i.aep, -32542
  %i.aer = getelementptr i8, ptr %.sroa.0.0.i.pn.i474, i64 2
  %i.aes = load i8, ptr %i.aer, align 1
  %i.aet = zext i8 %i.aes to i16
  %i.aeu = xor i16 %i.aet, 169
  %i.aev = or i16 %i.aeq, %i.aeu
  %i.aew = icmp ne i16 %i.aev, 0
  %i.aex = zext i1 %i.aew to i32
  %i.aey = icmp eq i32 %i.aex, 0
  br i1 %i.aey, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485.thread, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485.thread1037

_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485: ; preds = %.preheader.i466, %.split10.i473
  %.sroa.0.0.i.pn31.i481 = phi ptr [ %.sroa.0.0.i.pn.i474, %.split10.i473 ], [ %i.adt, %.preheader.i466 ]
  %lhsc.i482 = load i8, ptr %.sroa.0.0.i.pn31.i481, align 1, !alias.scope !418
  %i.aez = add i8 %lhsc.i482, -10
  %switch.selectcmp.i483 = icmp ult i8 %i.aez, 4
  br i1 %switch.selectcmp.i483, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485.thread, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485.thread1037

_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485.thread: ; preds = %bb.bk, %.split1040, %.split1039, %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485, %bb.bh
  %i.afa = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.afb = load i64, ptr %i.afa, align 8, !noundef !5
  %i.afc = add i64 %i.afb, -1
  store i64 %i.afc, ptr %i.afa, align 8
  %i.afd = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> zeroinitializer, <16 x i8> zeroinitializer)
  %i.afe = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.afd)
  %i.aff = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.aff, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5512.0..sroa_idx, i8 0, i64 24, i1 false)
  store i64 %i.afe, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.bf

bb.bl:                                            ; preds = %bb.bj, %.split.i463, %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit485.thread1037
  %i.afg = tail call fastcc { ptr, i64 } @_RNvNtCs2wCc12Mnjqg_5ropey9str_utils15trim_line_break(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.adk, i64 noundef %i.adm) #18 ; 2 uses
  %i.afh = extractvalue { ptr, i64 } %i.afg, 0
  %i.afi = extractvalue { ptr, i64 } %i.afg, 1
  %i.afj = tail call noundef i64 @_RNvNtCs2wCc12Mnjqg_5ropey9str_utils24last_line_start_byte_idx(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.afh, i64 noundef %i.afi) ; 10 uses
  store i64 %i.afj, ptr %i.adl, align 8
  %i.afk = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.afl = load i64, ptr %i.afk, align 8, !noundef !5
  %i.afm = add i64 %i.afl, -1
  store i64 %i.afm, ptr %i.afk, align 8
  %i.afn = icmp ugt i64 %i.afj, %i.adm
  %i.afo = icmp ugt i64 %i.adm, %i.adj
  %or.cond.i = or i1 %i.afo, %i.afn
  br i1 %or.cond.i, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread1043, label %bb.bm, !prof !15

bb.bm:                                            ; preds = %bb.bl
  %i.afp = icmp eq i64 %i.afj, %i.adj
  br i1 %i.afp, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.afq = icmp eq i64 %i.afj, 0
  br i1 %i.afq, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bp, %bb.bn
  %i.afr = icmp eq i64 %i.adm, %i.adj
  br i1 %i.afr, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit

bb.bp:                                            ; preds = %bb.bn
  %i.afs = getelementptr inbounds nuw i8, ptr %i.adk, i64 %i.afj
  %i.aft = load i8, ptr %i.afs, align 1, !alias.scope !419, !noundef !5
  %i.afu = icmp sgt i8 %i.aft, -65
  br i1 %i.afu, label %bb.bo, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread1043, !prof !16

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit: ; preds = %bb.bo
  %i.afv = getelementptr inbounds nuw i8, ptr %i.adk, i64 %i.adm
  %i.afw = load i8, ptr %i.afv, align 1, !alias.scope !419, !noundef !5
  %i.afx = icmp sgt i8 %i.afw, -65
  br i1 %i.afx, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread1043, !prof !17

bb.bq:                                            ; preds = %bb.bj, %.split.i463
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.adk, i64 noundef %i.adj, i64 noundef 0, i64 noundef %i.adm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #17
  unreachable

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread1043: ; preds = %bb.bp, %bb.bl, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.adk, i64 noundef %i.adj, i64 noundef %i.afj, i64 noundef %i.adm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #17
  unreachable

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread: ; preds = %bb.bo, %bb.bm, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit
  %i.afy = sub nuw i64 %i.adm, %i.afj             ; 8 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %i.adk, i64 %i.afj ; 8 uses
  %i.aga = icmp samesign ult i64 %i.afy, 16
  br i1 %i.aga, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !420
  call void @_RINvMNtCskKLDkoKarTP_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.afz, i64 noundef range(i64 0, -9223372036854775808) %i.afy)
  %i.agb = load ptr, ptr %i.f, align 8, !noalias !420, !nonnull !5, !noundef !5 ; 2 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.agd = load i64, ptr %i.agc, align 8, !noalias !420, !noundef !5 ; 6 uses
  %i.age = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.agf = load ptr, ptr %i.age, align 8, !noalias !420, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.agh = load i64, ptr %i.agg, align 8, !noalias !420, !noundef !5 ; 2 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.agj = load ptr, ptr %i.agi, align 8, !noalias !420, !nonnull !5, !noundef !5 ; 2 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.agl = load i64, ptr %i.agk, align 8, !noalias !420, !noundef !5 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !420
  %i.agm = icmp samesign eq i64 %i.agd, 0
  br i1 %i.agm, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit494, label %.preheader.i489.preheader

.preheader.i489.preheader:                        ; preds = %bb.br
  %min.iters.check1908 = icmp ult i64 %i.agd, 4
  br i1 %min.iters.check1908, label %.preheader.i489.preheader1990, label %vector.ph1909

vector.ph1909:                                    ; preds = %.preheader.i489.preheader
  %n.vec1910 = and i64 %i.agd, -4                 ; 3 uses
  br label %vector.body1911

vector.body1911:                                  ; preds = %vector.body1911, %vector.ph1909
  %index1912 = phi i64 [ 0, %vector.ph1909 ], [ %index.next1917, %vector.body1911 ] ; 2 uses
  %vec.phi1913 = phi <2 x i64> [ zeroinitializer, %vector.ph1909 ], [ %i.agt, %vector.body1911 ]
  %vec.phi1914 = phi <2 x i64> [ zeroinitializer, %vector.ph1909 ], [ %i.agu, %vector.body1911 ]
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agb, i64 %index1912 ; 2 uses
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agn, i64 2
  %wide.load1915 = load <2 x i8>, ptr %i.agn, align 1, !alias.scope !421
  %wide.load1916 = load <2 x i8>, ptr %i.ago, align 1, !alias.scope !421
  %i.agp = icmp slt <2 x i8> %wide.load1915, splat (i8 -64)
  %i.agq = icmp slt <2 x i8> %wide.load1916, splat (i8 -64)
  %i.agr = zext <2 x i1> %i.agp to <2 x i64>
  %i.ags = zext <2 x i1> %i.agq to <2 x i64>
  %i.agt = add <2 x i64> %vec.phi1913, %i.agr     ; 2 uses
  %i.agu = add <2 x i64> %vec.phi1914, %i.ags     ; 2 uses
  %index.next1917 = add nuw i64 %index1912, 4     ; 2 uses
  %i.agv = icmp eq i64 %index.next1917, %n.vec1910
  br i1 %i.agv, label %middle.block1918, label %vector.body1911, !llvm.loop !379

middle.block1918:                                 ; preds = %vector.body1911
  %bin.rdx1919 = add <2 x i64> %i.agu, %i.agt
  %i.agw = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx1919) ; 2 uses
  %cmp.n1920 = icmp eq i64 %i.agd, %n.vec1910
  br i1 %cmp.n1920, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit494, label %.preheader.i489.preheader1990

.preheader.i489.preheader1990:                    ; preds = %.preheader.i489.preheader, %middle.block1918
  %.sroa.04.0.i.i490.ph = phi i64 [ 0, %.preheader.i489.preheader ], [ %n.vec1910, %middle.block1918 ]
  %.sroa.02.0.i.i491.ph = phi i64 [ 0, %.preheader.i489.preheader ], [ %i.agw, %middle.block1918 ]
  br label %.preheader.i489

.preheader.i489:                                  ; preds = %.preheader.i489.preheader1990, %.preheader.i489
  %.sroa.04.0.i.i490 = phi i64 [ %i.ahb, %.preheader.i489 ], [ %.sroa.04.0.i.i490.ph, %.preheader.i489.preheader1990 ] ; 2 uses
  %.sroa.02.0.i.i491 = phi i64 [ %i.aha, %.preheader.i489 ], [ %.sroa.02.0.i.i491.ph, %.preheader.i489.preheader1990 ]
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agb, i64 %.sroa.04.0.i.i490
  %.val.i.i492 = load i8, ptr %i.agx, align 1, !alias.scope !421, !noundef !5
  %i.agy = icmp slt i8 %.val.i.i492, -64
  %i.agz = zext i1 %i.agy to i64
  %i.aha = add i64 %.sroa.02.0.i.i491, %i.agz     ; 2 uses
  %i.ahb = add nuw i64 %.sroa.04.0.i.i490, 1      ; 2 uses
  %i.ahc = icmp eq i64 %i.ahb, %i.agd
  br i1 %i.ahc, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit494, label %.preheader.i489, !llvm.loop !380

_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit494: ; preds = %.preheader.i489, %middle.block1918, %bb.br
  %.sroa.0.0.i.i493 = phi i64 [ 0, %bb.br ], [ %i.agw, %middle.block1918 ], [ %i.aha, %.preheader.i489 ] ; 3 uses
  %i.ahd = icmp ule i64 %.sroa.0.0.i.i493, %i.agd
  tail call void @llvm.assume(i1 %i.ahd)
  %i.ahe = and i64 %i.agh, 576460752303423484     ; 3 uses
  %.not.i1288 = icmp eq i64 %i.ahe, 0
  br i1 %.not.i1288, label %._crit_edge1293, label %.lr.ph1292

bb.bs:                                            ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread
  %i.ahf = icmp samesign eq i64 %i.afj, %i.adm
  br i1 %i.ahf, label %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.preheader1671.preheader

.preheader1671.preheader:                         ; preds = %bb.bs
  %xtraiter2153 = and i64 %i.afy, 3               ; 3 uses
  %4 = sub i64 %i.afj, %i.adm
  %5 = icmp ugt i64 %4, -4
  br i1 %5, label %.preheader1671.epil.preheader, label %.preheader1671.preheader.new

.preheader1671.preheader.new:                     ; preds = %.preheader1671.preheader
  %unroll_iter2158 = and i64 %i.afy, 12
  br label %.preheader1671

.preheader1671:                                   ; preds = %.preheader1671, %.preheader1671.preheader.new
  %.sroa.04.0.i495 = phi i64 [ 0, %.preheader1671.preheader.new ], [ %i.ahz, %.preheader1671 ] ; 5 uses
  %.sroa.02.0.i496 = phi i64 [ 0, %.preheader1671.preheader.new ], [ %i.ahy, %.preheader1671 ]
  %niter2159 = phi i64 [ 0, %.preheader1671.preheader.new ], [ %niter2159.next.3, %.preheader1671 ]
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.afz, i64 %.sroa.04.0.i495
  %.val.i497 = load i8, ptr %i.ahg, align 1, !noundef !5
  %i.ahh = icmp sgt i8 %.val.i497, -65
  %i.ahi = zext i1 %i.ahh to i64
  %i.ahj = add i64 %.sroa.02.0.i496, %i.ahi
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.afz, i64 %.sroa.04.0.i495
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahk, i64 1
  %.val.i497.1 = load i8, ptr %i.ahl, align 1, !noundef !5
  %i.ahm = icmp sgt i8 %.val.i497.1, -65
  %i.ahn = zext i1 %i.ahm to i64
  %i.aho = add i64 %i.ahj, %i.ahn
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.afz, i64 %.sroa.04.0.i495
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahp, i64 2
  %.val.i497.2 = load i8, ptr %i.ahq, align 1, !noundef !5
  %i.ahr = icmp sgt i8 %.val.i497.2, -65
  %i.ahs = zext i1 %i.ahr to i64
  %i.aht = add i64 %i.aho, %i.ahs
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.afz, i64 %.sroa.04.0.i495
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahu, i64 3
  %.val.i497.3 = load i8, ptr %i.ahv, align 1, !noundef !5
  %i.ahw = icmp sgt i8 %.val.i497.3, -65
  %i.ahx = zext i1 %i.ahw to i64
  %i.ahy = add i64 %i.aht, %i.ahx                 ; 3 uses
  %i.ahz = add nuw nsw i64 %.sroa.04.0.i495, 4    ; 2 uses
  %niter2159.next.3 = add i64 %niter2159, 4       ; 2 uses
  %niter2159.ncmp.3 = icmp eq i64 %niter2159.next.3, %unroll_iter2158
  br i1 %niter2159.ncmp.3, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.unr-lcssa, label %.preheader1671

._crit_edge1293:                                  ; preds = %.lr.ph1292, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit494
  %.sroa.01.0.i.lcssa = phi i64 [ %.sroa.0.0.i.i493, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit494 ], [ %i.ald, %.lr.ph1292 ]
  %i.aia = getelementptr inbounds nuw [16 x i8], ptr %i.agf, i64 %i.ahe ; 3 uses
  %i.aib = shl i64 %i.agh, 4
  %.idx1325 = and i64 %i.aib, 48                  ; 3 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aia, i64 %.idx1325
  %i.aid = icmp samesign eq i64 %.idx1325, 0
  br i1 %i.aid, label %._crit_edge1298, label %.lr.ph1297.preheader

.lr.ph1297.preheader:                             ; preds = %._crit_edge1293
  %i.aie = add nsw i64 %.idx1325, -16             ; 2 uses
  %i.aif = lshr exact i64 %i.aie, 4
  %i.aig = add nuw nsw i64 %i.aif, 1
  %xtraiter2149 = and i64 %i.aig, 3               ; 2 uses
  %lcmp.mod2150.not = icmp eq i64 %xtraiter2149, 0
  br i1 %lcmp.mod2150.not, label %.lr.ph1297.prol.loopexit, label %.lr.ph1297.prol

.lr.ph1297.prol:                                  ; preds = %.lr.ph1297.preheader, %.lr.ph1297.prol
  %.sroa.012.0.i1295.prol = phi ptr [ %i.aii, %.lr.ph1297.prol ], [ %i.aia, %.lr.ph1297.preheader ] ; 2 uses
  %i.aih = phi <16 x i8> [ %i.aim, %.lr.ph1297.prol ], [ zeroinitializer, %.lr.ph1297.preheader ]
  %prol.iter2151 = phi i64 [ %prol.iter2151.next, %.lr.ph1297.prol ], [ 0, %.lr.ph1297.preheader ]
  %i.aii = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i1295.prol, i64 16 ; 2 uses
  %i.aij = load <16 x i8>, ptr %.sroa.012.0.i1295.prol, align 16
  %i.aik = icmp slt <16 x i8> %i.aij, splat (i8 -64)
  %i.ail = zext <16 x i1> %i.aik to <16 x i8>
  %i.aim = add <16 x i8> %i.aih, %i.ail           ; 3 uses
  %prol.iter2151.next = add i64 %prol.iter2151, 1 ; 2 uses
  %prol.iter2151.cmp.not = icmp eq i64 %prol.iter2151.next, %xtraiter2149
  br i1 %prol.iter2151.cmp.not, label %.lr.ph1297.prol.loopexit, label %.lr.ph1297.prol, !llvm.loop !381

.lr.ph1297.prol.loopexit:                         ; preds = %.lr.ph1297.prol, %.lr.ph1297.preheader
  %.lcssa1988.unr = phi <16 x i8> [ poison, %.lr.ph1297.preheader ], [ %i.aim, %.lr.ph1297.prol ]
  %.sroa.012.0.i1295.unr = phi ptr [ %i.aia, %.lr.ph1297.preheader ], [ %i.aii, %.lr.ph1297.prol ]
  %.unr2152 = phi <16 x i8> [ zeroinitializer, %.lr.ph1297.preheader ], [ %i.aim, %.lr.ph1297.prol ]
  %i.ain = icmp ult i64 %i.aie, 48
  br i1 %i.ain, label %._crit_edge1298, label %.lr.ph1297

.lr.ph1297:                                       ; preds = %.lr.ph1297.prol.loopexit, %.lr.ph1297
  %.sroa.012.0.i1295 = phi ptr [ %i.aje, %.lr.ph1297 ], [ %.sroa.012.0.i1295.unr, %.lr.ph1297.prol.loopexit ] ; 5 uses
  %i.aio = phi <16 x i8> [ %i.aji, %.lr.ph1297 ], [ %.unr2152, %.lr.ph1297.prol.loopexit ]
  %i.aip = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i1295, i64 16
  %i.aiq = load <16 x i8>, ptr %.sroa.012.0.i1295, align 16
  %i.air = icmp slt <16 x i8> %i.aiq, splat (i8 -64)
  %i.ais = zext <16 x i1> %i.air to <16 x i8>
  %i.ait = add <16 x i8> %i.aio, %i.ais
  %i.aiu = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i1295, i64 32
  %i.aiv = load <16 x i8>, ptr %i.aip, align 16
  %i.aiw = icmp slt <16 x i8> %i.aiv, splat (i8 -64)
  %i.aix = zext <16 x i1> %i.aiw to <16 x i8>
  %i.aiy = add <16 x i8> %i.ait, %i.aix
  %i.aiz = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i1295, i64 48
  %i.aja = load <16 x i8>, ptr %i.aiu, align 16
  %i.ajb = icmp slt <16 x i8> %i.aja, splat (i8 -64)
  %i.ajc = zext <16 x i1> %i.ajb to <16 x i8>
  %i.ajd = add <16 x i8> %i.aiy, %i.ajc
  %i.aje = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i1295, i64 64 ; 2 uses
  %i.ajf = load <16 x i8>, ptr %i.aiz, align 16
  %i.ajg = icmp slt <16 x i8> %i.ajf, splat (i8 -64)
  %i.ajh = zext <16 x i1> %i.ajg to <16 x i8>
  %i.aji = add <16 x i8> %i.ajd, %i.ajh           ; 2 uses
  %i.ajj = icmp eq ptr %i.aje, %i.aic
  br i1 %i.ajj, label %._crit_edge1298, label %.lr.ph1297

._crit_edge1298:                                  ; preds = %.lr.ph1297.prol.loopexit, %.lr.ph1297, %._crit_edge1293
  %.lcssa1075 = phi <16 x i8> [ zeroinitializer, %._crit_edge1293 ], [ %.lcssa1988.unr, %.lr.ph1297.prol.loopexit ], [ %i.aji, %.lr.ph1297 ]
  %i.ajk = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %.lcssa1075, <16 x i8> zeroinitializer) ; 2 uses
  %.sroa.0.0.vec.extract.i252 = extractelement <2 x i64> %i.ajk, i64 0
  %.sroa.0.8.vec.extract.i253 = extractelement <2 x i64> %i.ajk, i64 1
  %i.ajl = icmp samesign eq i64 %i.agl, 0
  br i1 %i.ajl, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.thread1542, label %.preheader.i500.preheader

.preheader.i500.preheader:                        ; preds = %._crit_edge1298
  %min.iters.check1924 = icmp ult i64 %i.agl, 4
  br i1 %min.iters.check1924, label %.preheader.i500.preheader1984, label %vector.ph1925

vector.ph1925:                                    ; preds = %.preheader.i500.preheader
  %n.vec1926 = and i64 %i.agl, -4                 ; 3 uses
  br label %vector.body1927

vector.body1927:                                  ; preds = %vector.body1927, %vector.ph1925
  %index1928 = phi i64 [ 0, %vector.ph1925 ], [ %index.next1933, %vector.body1927 ] ; 2 uses
  %vec.phi1929 = phi <2 x i64> [ zeroinitializer, %vector.ph1925 ], [ %i.ajs, %vector.body1927 ]
  %vec.phi1930 = phi <2 x i64> [ zeroinitializer, %vector.ph1925 ], [ %i.ajt, %vector.body1927 ]
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.agj, i64 %index1928 ; 2 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajm, i64 2
  %wide.load1931 = load <2 x i8>, ptr %i.ajm, align 1, !alias.scope !422
  %wide.load1932 = load <2 x i8>, ptr %i.ajn, align 1, !alias.scope !422
  %i.ajo = icmp slt <2 x i8> %wide.load1931, splat (i8 -64)
  %i.ajp = icmp slt <2 x i8> %wide.load1932, splat (i8 -64)
  %i.ajq = zext <2 x i1> %i.ajo to <2 x i64>
  %i.ajr = zext <2 x i1> %i.ajp to <2 x i64>
  %i.ajs = add <2 x i64> %vec.phi1929, %i.ajq     ; 2 uses
  %i.ajt = add <2 x i64> %vec.phi1930, %i.ajr     ; 2 uses
  %index.next1933 = add nuw i64 %index1928, 4     ; 2 uses
  %i.aju = icmp eq i64 %index.next1933, %n.vec1926
  br i1 %i.aju, label %middle.block1934, label %vector.body1927, !llvm.loop !384

middle.block1934:                                 ; preds = %vector.body1927
  %bin.rdx1935 = add <2 x i64> %i.ajt, %i.ajs
  %i.ajv = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx1935) ; 2 uses
  %cmp.n1936 = icmp eq i64 %i.agl, %n.vec1926
  br i1 %cmp.n1936, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.thread1542, label %.preheader.i500.preheader1984

.preheader.i500.preheader1984:                    ; preds = %.preheader.i500.preheader, %middle.block1934
  %.sroa.04.0.i.i501.ph = phi i64 [ 0, %.preheader.i500.preheader ], [ %n.vec1926, %middle.block1934 ]
  %.sroa.02.0.i.i502.ph = phi i64 [ 0, %.preheader.i500.preheader ], [ %i.ajv, %middle.block1934 ]
  br label %.preheader.i500

.preheader.i500:                                  ; preds = %.preheader.i500.preheader1984, %.preheader.i500
  %.sroa.04.0.i.i501 = phi i64 [ %i.aka, %.preheader.i500 ], [ %.sroa.04.0.i.i501.ph, %.preheader.i500.preheader1984 ] ; 2 uses
  %.sroa.02.0.i.i502 = phi i64 [ %i.ajz, %.preheader.i500 ], [ %.sroa.02.0.i.i502.ph, %.preheader.i500.preheader1984 ]
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.agj, i64 %.sroa.04.0.i.i501
  %.val.i.i503 = load i8, ptr %i.ajw, align 1, !alias.scope !422, !noundef !5
  %i.ajx = icmp slt i8 %.val.i.i503, -64
  %i.ajy = zext i1 %i.ajx to i64
  %i.ajz = add i64 %.sroa.02.0.i.i502, %i.ajy     ; 2 uses
  %i.aka = add nuw i64 %.sroa.04.0.i.i501, 1      ; 2 uses
  %i.akb = icmp eq i64 %i.aka, %i.agl
  br i1 %i.akb, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.thread1542, label %.preheader.i500, !llvm.loop !385

_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.thread1542: ; preds = %.preheader.i500, %middle.block1934, %._crit_edge1298
  %.sroa.0.0.i.i504 = phi i64 [ 0, %._crit_edge1298 ], [ %i.ajv, %middle.block1934 ], [ %i.ajz, %.preheader.i500 ] ; 2 uses
  %i.akc = icmp ule i64 %.sroa.0.0.i.i504, %i.agl
  tail call void @llvm.assume(i1 %i.akc)
  %i.akd = add i64 %.sroa.01.0.i.lcssa, %.sroa.0.8.vec.extract.i253
  %i.ake = add i64 %i.akd, %.sroa.0.0.vec.extract.i252
  %i.akf = add i64 %i.ake, %.sroa.0.0.i.i504
  %i.akg = sub i64 %i.afy, %i.akf
  br label %bb.bt

.lr.ph1292:                                       ; preds = %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit494, %.lr.ph1292
  %.sroa.01.0.i1291 = phi i64 [ %i.ald, %.lr.ph1292 ], [ %.sroa.0.0.i.i493, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit494 ]
  %.sroa.06.0.i1290 = phi ptr [ %i.akh, %.lr.ph1292 ], [ %i.agf, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit494 ] ; 5 uses
  %.sroa.5.0.i1289 = phi i64 [ %i.aki, %.lr.ph1292 ], [ %i.ahe, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit494 ]
  %i.akh = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i1290, i64 64
  %i.aki = add i64 %.sroa.5.0.i1289, -4           ; 2 uses
  %i.akj = load <16 x i8>, ptr %.sroa.06.0.i1290, align 16
  %i.akk = icmp slt <16 x i8> %i.akj, splat (i8 -64)
  %i.akl = zext <16 x i1> %i.akk to <16 x i8>
  %i.akm = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i1290, i64 16
  %i.akn = load <16 x i8>, ptr %i.akm, align 16
  %i.ako = icmp slt <16 x i8> %i.akn, splat (i8 -64)
  %i.akp = zext <16 x i1> %i.ako to <16 x i8>
  %i.akq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i1290, i64 32
  %i.akr = load <16 x i8>, ptr %i.akq, align 16
  %i.aks = icmp slt <16 x i8> %i.akr, splat (i8 -64)
  %i.akt = zext <16 x i1> %i.aks to <16 x i8>
  %i.aku = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i1290, i64 48
  %i.akv = load <16 x i8>, ptr %i.aku, align 16
  %i.akw = icmp slt <16 x i8> %i.akv, splat (i8 -64)
  %i.akx = zext <16 x i1> %i.akw to <16 x i8>
  %i.aky = add nuw nsw <16 x i8> %i.akp, %i.akl
  %i.akz = add nuw nsw <16 x i8> %i.aky, %i.akt
  %i.ala = add nuw nsw <16 x i8> %i.akz, %i.akx
  %i.alb = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.ala, <16 x i8> zeroinitializer) ; 2 uses
  %.sroa.0.0.vec.extract.i254 = extractelement <2 x i64> %i.alb, i64 0
  %.sroa.0.8.vec.extract.i255 = extractelement <2 x i64> %i.alb, i64 1
  %i.alc = add i64 %.sroa.0.8.vec.extract.i255, %.sroa.01.0.i1291
  %i.ald = add i64 %i.alc, %.sroa.0.0.vec.extract.i254 ; 2 uses
  %.not.i = icmp eq i64 %i.aki, 0
  br i1 %.not.i, label %._crit_edge1293, label %.lr.ph1292

_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.unr-lcssa: ; preds = %.preheader1671
end_hunk_2
