Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x_ls.yara_x_ls.375707425faaecf2-cgu.13?download=true
inline.NumInlined: 1574
inline.NumDeleted: 575
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RINvMs6_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerINtB6_8RawTableTNtCs6SHYdBec2sV_3url3UrlINtNtCsjUxepGb3YzM_7dashmap4util11SharedValueNtNtCsfF8zpZz1lvn_13yara_x_parser3cst3CSTEEE14reserve_rehashNCNvXs2_B1r_INtB1r_7DashMapBY_B25_EINtNtB1r_1t3MapBY_B25_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6__entrys_0ECs4KzxGwe94yc_9yara_x_ls:bb.a
  %i.as = add i64 %.val3.i.i, 17
  %i.at = add i64 %i.as, %i.ar                    ; 3 uses
  %i.au = icmp uge i64 %i.at, %i.ar
  %i.av = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.aw = icmp ule i64 %i.at, %i.av
  call void @llvm.assume(i1 %i.au), !noalias !506
  call void @llvm.assume(i1 %i.aw), !noalias !506
  %i.ax = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.ax), !noalias !506
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !506
  %i.ay = sub nsw i64 0, %i.ar
  %i.az = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.ay
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.az, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #37, !noalias !510
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9Ef5aAcmeIW_9hashbrown10scopeguard10ScopeGuardNtNtNtBG_3raw5inner13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtB1u_5alloc5inner6GlobalE0EECs4KzxGwe94yc_9yara_x_ls.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9Ef5aAcmeIW_9hashbrown10scopeguard10ScopeGuardNtNtNtBG_3raw5inner13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtB1u_5alloc5inner6GlobalE0EECs4KzxGwe94yc_9yara_x_ls.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs9Ef5aAcmeIW_9hashbrown3raw5inner13RawTableInnerECs4KzxGwe94yc_9yara_x_ls.exit, %_RNvMs1_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !503
  br label %_RINvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs4KzxGwe94yc_9yara_x_ls.exit

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.0124, %.preheader ], [ %i.af, %.noexc2 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.0126, %.preheader ], [ %i.ag, %.noexc2 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.0127, %.preheader ], [ %i.ad, %.noexc2 ]
  %i.ba = add i16 %.sroa.13.1.lcssa, -1
  %i.bb = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bc = zext nneg i16 %i.bb to i64
  %i.bd = and i16 %i.ba, %.sroa.13.1.lcssa
  %i.be = add i64 %.sroa.5.1.lcssa, %i.bc         ; 2 uses
  %i.bf = add i64 %.sroa.9.0125, -1               ; 2 uses
  %i.bg = call fastcc noundef i64 @_RNCINvMs6_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerINtB8_8RawTableTNtCs6SHYdBec2sV_3url3UrlINtNtCsjUxepGb3YzM_7dashmap4util11SharedValueNtNtCsfF8zpZz1lvn_13yara_x_parser3cst3CSTEEE14reserve_rehashNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6__entrys_0E0Cs4KzxGwe94yc_9yara_x_ls(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.be), !noalias !506 ; 2 uses
  %.sroa.0.07.i = and i64 %i.v, %i.bg             ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bh, align 1, !noalias !511
  %i.bi = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.bj = bitcast <16 x i1> %i.bi to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bj, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %._crit_edge
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %._crit_edge ], [ %.sroa.0.0.i11, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.bj, %._crit_edge ], [ %i.ca, %.lr.ph.i ]
  %i.bk = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bl = zext nneg i16 %i.bk to i64
  %i.bm = add i64 %.sroa.0.0.lcssa.i, %i.bl
  %i.bn = and i64 %i.bm, %i.v                     ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noundef !5
  %i.bq = icmp sgt i8 %i.bp, -1
  br i1 %i.bq, label %bb.h, label %_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit

bb.h:                                             ; preds = %._crit_edge.i
  %.val62.i.i = load <16 x i8>, ptr %i.s, align 16
  %i.br = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.bs = bitcast <16 x i1> %i.br to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bs, 0
  %i.bt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bs, i1 true)
  %i.bu = zext nneg i16 %i.bt to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i11, %.lr.ph.i ], [ %.sroa.0.07.i, %._crit_edge ]
  %i.bv = phi i64 [ %i.bw, %.lr.ph.i ], [ 0, %._crit_edge ]
  %i.bw = add i64 %i.bv, 16                       ; 2 uses
  %i.bx = add i64 %i.bw, %.sroa.0.010.i
  %.sroa.0.0.i11 = and i64 %i.bx, %i.v            ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.0.i11
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.by, align 1, !noalias !511
  %i.bz = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.ca = bitcast <16 x i1> %i.bz to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.ca, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i

_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit: ; preds = %bb.h, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.bu, %bb.h ], [ %i.bn, %._crit_edge.i ] ; 3 uses
  %i.cb = lshr i64 %i.bg, 57
  %i.cc = trunc nuw nsw i64 %i.cb to i8           ; 2 uses
  %i.cd = add i64 %.sroa.0.0.i5.i, -16
  %i.ce = and i64 %i.cd, %i.v
  %i.cf = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.0.i5.i
  store i8 %i.cc, ptr %i.cf, align 1, !noalias !506
  %i.cg = getelementptr i8, ptr %i.s, i64 %i.ce
  %i.ch = getelementptr i8, ptr %i.cg, i64 16
  store i8 %i.cc, ptr %i.ch, align 1, !noalias !506
  %i.ci = load ptr, ptr %0, align 8, !alias.scope !504, !noalias !505, !nonnull !5, !noundef !5
  %.neg.i.i = xor i64 %i.be, -1
  %.neg62.i.i = mul i64 %.neg.i.i, 120
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = mul i64 %.neg63.i.i, 120
  %i.ck = getelementptr inbounds i8, ptr %i.s, i64 %.neg64.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(120) %i.ck, ptr noundef nonnull align 1 dereferenceable(120) %i.cj, i64 range(i64 120, 257) 120, i1 false), !noalias !506
  %i.cl = icmp eq i64 %i.bf, 0
  br i1 %i.cl, label %._crit_edge128.loopexit, label %.preheader

bb.i:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !512)
  %.val9 = load ptr, ptr %0, align 8              ; 7 uses
  %.not6.i = icmp eq i64 %i.n, 0
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.i
  %i.cm = lshr i64 %i.n, 4
  %i.cn = and i64 %i.n, 15
  %.not10.i.i.i = icmp ne i64 %i.cn, 0
  %i.co = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cm, %i.co ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.cp = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.cp, label %.epil.preheader, label %.lr.ph.i12.new

.lr.ph.i12.new:                                   ; preds = %.lr.ph.i12
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.j

._crit_edge.i14.unr-lcssa:                        ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i14, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i14.unr-lcssa, %.lr.ph.i12
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i12 ], [ %i.cx, %._crit_edge.i14.unr-lcssa ]
  %lcmp.mod226 = trunc i64 %.sroa.05.0.i.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod226)
  %i.cq = getelementptr inbounds nuw i8, ptr %.val9, i64 %.sroa.01.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cq, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.cr = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.cs = or <2 x i64> %i.cr, splat (i64 -9187201950435737472)
  store <2 x i64> %i.cs, ptr %i.cq, align 16
  br label %._crit_edge.i14

._crit_edge.i14:                                  ; preds = %._crit_edge.i14.unr-lcssa, %.epil.preheader
  %i.ct = icmp ult i64 %i.n, 16
  br i1 %i.ct, label %._crit_edge.thread.i, label %_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner23prepare_rehash_in_place.exit

bb.j:                                             ; preds = %bb.j, %.lr.ph.i12.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i12.new ], [ %i.cx, %bb.j ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i12.new ], [ %niter.next.1, %bb.j ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.val9, i64 %.sroa.01.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.cu, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.cv = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.cw = or <2 x i64> %i.cv, splat (i64 -9187201950435737472)
  store <2 x i64> %i.cw, ptr %i.cu, align 16
  %i.cx = add i64 %.sroa.01.08.i, 32              ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.val9, i64 %.sroa.01.08.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.cz, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.da = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.db = or <2 x i64> %i.da, splat (i64 -9187201950435737472)
  store <2 x i64> %i.db, ptr %i.cz, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i14.unr-lcssa, label %bb.j

._crit_edge.thread.i:                             ; preds = %._crit_edge.i14, %bb.i
  br label %_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner23prepare_rehash_in_place.exit

_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i14, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.n, %._crit_edge.i14 ]
  %.sink9.i = phi i64 [ %i.n, %._crit_edge.thread.i ], [ 16, %._crit_edge.i14 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9) ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.val9, i64 %.sink10.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dc, ptr nonnull align 1 %.val9, i64 %.sink9.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !513
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RINvNtCskKLDkoKarTP_4core3ptr13drop_in_placeTNtCs6SHYdBec2sV_3url3UrlINtNtCsjUxepGb3YzM_7dashmap4util11SharedValueNtNtCsfF8zpZz1lvn_13yara_x_parser3cst3CSTEEECs4KzxGwe94yc_9yara_x_ls, ptr %i.dd, align 8, !noalias !513
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 120, ptr %i.de, align 8, !noalias !513
  store ptr %0, ptr %i.a, align 8, !noalias !513
  %i.df = load i64, ptr %i.k, align 8, !alias.scope !512, !noalias !514, !noundef !5 ; 2 uses
  %.not129 = icmp eq i64 %i.df, -1
  br i1 %.not129, label %_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.w
  %.sroa.04.0.i118 = phi i64 [ %i.dg, %bb.w ], [ 0, %_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dg = add nuw i64 %.sroa.04.0.i118, 1
  %i.dh = load ptr, ptr %0, align 8, !noalias !514, !nonnull !5, !noundef !5 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.sroa.04.0.i118
  %i.dj = load i8, ptr %i.di, align 1, !noalias !514, !noundef !5
  %i.dk = icmp eq i8 %i.dj, -128
  br i1 %i.dk, label %bb.k, label %bb.w

bb.k:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i118, -1
  %.neg10.i = mul i64 %.neg.i, 120
  %i.dl = getelementptr inbounds i8, ptr %i.dh, i64 %.neg10.i ; 2 uses
  %i.dm = sub nsw i64 0, %.sroa.04.0.i118
  br label %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit

_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.v, %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !515)
  %i.dn = load ptr, ptr %0, align 8, !alias.scope !515, !noalias !516, !nonnull !5, !noundef !5 ; 8 uses
  %i.do = getelementptr inbounds [120 x i8], ptr %i.dn, i64 %i.dm ; 2 uses
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !517, !nonnull !5, !align !8, !noundef !5
  %i.dp = getelementptr i8, ptr %i.do, i64 -112
  %.val2.i = load ptr, ptr %i.dp, align 8, !noalias !517, !nonnull !5, !noundef !5 ; 4 uses
  %i.dq = getelementptr i8, ptr %i.do, i64 -104
  %.val3.i = load i64, ptr %i.dq, align 8, !noalias !517, !noundef !5 ; 6 uses
  %i.dr = load ptr, ptr %.val.i, align 8, !noalias !517, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %.val.i.i15 = load i64, ptr %i.ds, align 8, !noalias !517, !noundef !5 ; 2 uses
  %i.dt = getelementptr i8, ptr %i.dr, i64 32
  %.val1.i.i16 = load i64, ptr %i.dt, align 8, !noalias !517, !noundef !5 ; 2 uses
  %i.du = xor i64 %.val.i.i15, 8317987319222330741 ; 2 uses
  %i.dv = xor i64 %.val1.i.i16, 7237128888997146477 ; 2 uses
  %i.dw = xor i64 %.val.i.i15, 7816392313619706465 ; 2 uses
  %i.dx = xor i64 %.val1.i.i16, 8387220255154660723 ; 2 uses
  %i.dy = and i64 %.val3.i, 7                     ; 6 uses
  %i.dz = and i64 %.val3.i, -8                    ; 2 uses
  %.not = icmp eq i64 %i.dz, 0
  br i1 %.not, label %._crit_edge.i61, label %.lr.ph.i54

._crit_edge.i61.loopexit:                         ; preds = %.lr.ph.i54
  %i.ea = and i64 %.val3.i, -8
  br label %._crit_edge.i61

._crit_edge.i61:                                  ; preds = %._crit_edge.i61.loopexit, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit
  %.sroa.32.4 = phi i64 [ %i.dx, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit ], [ %i.fg, %._crit_edge.i61.loopexit ] ; 3 uses
  %.sroa.22.4 = phi i64 [ %i.dv, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit ], [ %i.fe, %._crit_edge.i61.loopexit ] ; 5 uses
  %.sroa.12.4 = phi i64 [ %i.dw, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit ], [ %i.fh, %._crit_edge.i61.loopexit ] ; 3 uses
  %.sroa.070.4 = phi i64 [ %i.du, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit ], [ %i.fi, %._crit_edge.i61.loopexit ] ; 3 uses
  %.sroa.0.1.lcssa.i44 = phi i64 [ 0, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit ], [ %i.ea, %._crit_edge.i61.loopexit ] ; 3 uses
  %i.eb = icmp samesign ugt i64 %i.dy, 3
  br i1 %i.eb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i61
  %i.ec = getelementptr inbounds nuw i8, ptr %.val2.i, i64 %.sroa.0.1.lcssa.i44
  %.sroa.014.0.copyload.i16.i53 = load i32, ptr %i.ec, align 1, !alias.scope !518, !noalias !519
  %i.ed = zext i32 %.sroa.014.0.copyload.i16.i53 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i61
  %.sroa.03.0.i10.i45 = phi i64 [ 4, %bb.l ], [ 0, %._crit_edge.i61 ] ; 5 uses
  %.sroa.0.0.i11.i46 = phi i64 [ %i.ed, %bb.l ], [ 0, %._crit_edge.i61 ] ; 2 uses
  %i.ee = or disjoint i64 %.sroa.03.0.i10.i45, 1
  %i.ef = icmp samesign ult i64 %i.ee, %i.dy
  br i1 %i.ef, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.eg = getelementptr i8, ptr %.val2.i, i64 %.sroa.0.1.lcssa.i44
  %i.eh = getelementptr i8, ptr %i.eg, i64 %.sroa.03.0.i10.i45
  %.sroa.015.0.copyload.i15.i52 = load i16, ptr %i.eh, align 1, !alias.scope !518, !noalias !519
  %i.ei = zext i16 %.sroa.015.0.copyload.i15.i52 to i64
  %i.ej = shl nuw nsw i64 %.sroa.03.0.i10.i45, 3
  %i.ek = shl nuw nsw i64 %i.ei, %i.ej
  %i.el = or i64 %i.ek, %.sroa.0.0.i11.i46
  %i.em = or disjoint i64 %.sroa.03.0.i10.i45, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.03.1.i12.i47 = phi i64 [ %i.em, %bb.n ], [ %.sroa.03.0.i10.i45, %bb.m ] ; 3 uses
  %.sroa.0.1.i13.i48 = phi i64 [ %i.el, %bb.n ], [ %.sroa.0.0.i11.i46, %bb.m ] ; 2 uses
  %i.en = icmp samesign ult i64 %.sroa.03.1.i12.i47, %i.dy
  br i1 %i.en, label %_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs4KzxGwe94yc_9yara_x_ls.exit63.thread, label %_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs4KzxGwe94yc_9yara_x_ls.exit63.a

_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs4KzxGwe94yc_9yara_x_ls.exit63.thread: ; preds = %bb.o
  %4 = add i64 %.sroa.03.1.i12.i47, %.sroa.0.1.lcssa.i44 ; 2 uses
  %5 = icmp ult i64 %4, %.val3.i
  call void @llvm.assume(i1 %5), !noalias !517
  %6 = getelementptr inbounds nuw i8, ptr %.val2.i, i64 %4
  %7 = load i8, ptr %6, align 1, !alias.scope !518, !noalias !519, !noundef !5
  %8 = zext i8 %7 to i64
  %9 = shl nuw nsw i64 %.sroa.03.1.i12.i47, 3
  %10 = shl nuw nsw i64 %8, %9
  %11 = or i64 %10, %.sroa.0.1.i13.i48
  %12 = add i64 %.val3.i, 1
  br label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i

.lr.ph.i54:                                       ; preds = %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit, %.lr.ph.i54
  %i.eo = phi i64 [ %i.fh, %.lr.ph.i54 ], [ %i.dw, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit ]
  %i.ep = phi i64 [ %i.fe, %.lr.ph.i54 ], [ %i.dv, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit ] ; 3 uses
  %i.eq = phi i64 [ %i.fg, %.lr.ph.i54 ], [ %i.dx, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit ]
  %.sroa.0.118.i59 = phi i64 [ %i.fj, %.lr.ph.i54 ], [ 0, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit ] ; 2 uses
  %i.er = phi i64 [ %i.fi, %.lr.ph.i54 ], [ %i.du, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit ]
  %i.es = getelementptr inbounds nuw i8, ptr %.val2.i, i64 %.sroa.0.118.i59
  %.sroa.07.0.copyload.i60 = load i64, ptr %i.es, align 1, !alias.scope !520, !noalias !519 ; 2 uses
  %i.et = xor i64 %.sroa.07.0.copyload.i60, %i.eq ; 3 uses
  %i.eu = add i64 %i.er, %i.ep                    ; 3 uses
  %i.ev = add i64 %i.et, %i.eo                    ; 2 uses
  %i.ew = call noundef i64 @llvm.fshl.i64(i64 %i.ep, i64 %i.ep, i64 13)
  %i.ex = xor i64 %i.eu, %i.ew                    ; 3 uses
  %i.ey = call noundef i64 @llvm.fshl.i64(i64 %i.et, i64 %i.et, i64 16)
  %i.ez = xor i64 %i.ev, %i.ey                    ; 3 uses
  %i.fa = call noundef i64 @llvm.fshl.i64(i64 %i.eu, i64 %i.eu, i64 32)
  %i.fb = add i64 %i.ev, %i.ex                    ; 3 uses
  %i.fc = add i64 %i.ez, %i.fa                    ; 2 uses
  %i.fd = call noundef i64 @llvm.fshl.i64(i64 %i.ex, i64 %i.ex, i64 17)
  %i.fe = xor i64 %i.fb, %i.fd                    ; 2 uses
  %i.ff = call noundef i64 @llvm.fshl.i64(i64 %i.ez, i64 %i.ez, i64 21)
  %i.fg = xor i64 %i.ff, %i.fc                    ; 2 uses
  %i.fh = call noundef i64 @llvm.fshl.i64(i64 %i.fb, i64 %i.fb, i64 32) ; 2 uses
  %i.fi = xor i64 %i.fc, %.sroa.07.0.copyload.i60 ; 2 uses
  %i.fj = add nuw i64 %.sroa.0.118.i59, 8         ; 2 uses
  %i.fk = icmp ult i64 %i.fj, %i.dz
  br i1 %i.fk, label %.lr.ph.i54, label %._crit_edge.i61.loopexit

_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs4KzxGwe94yc_9yara_x_ls.exit63.a: ; preds = %bb.o
  %13 = add i64 %.val3.i, 1                       ; 2 uses
  %14 = icmp eq i64 %i.dy, 0
  br i1 %14, label %bb.q, label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i

_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i: ; preds = %_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs4KzxGwe94yc_9yara_x_ls.exit63.a, %_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs4KzxGwe94yc_9yara_x_ls.exit63.thread
  %15 = phi i64 [ %12, %_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs4KzxGwe94yc_9yara_x_ls.exit63.thread ], [ %13, %_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs4KzxGwe94yc_9yara_x_ls.exit63.a ] ; 2 uses
  %.sroa.0.2.i14.i5097 = phi i64 [ %11, %_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs4KzxGwe94yc_9yara_x_ls.exit63.thread ], [ %.sroa.0.1.i13.i48, %_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs4KzxGwe94yc_9yara_x_ls.exit63.a ]
  %i.fl = shl nuw nsw i64 %i.dy, 3
  %i.fm = shl nuw i64 255, %i.fl
  %i.fn = or i64 %i.fm, %.sroa.0.2.i14.i5097      ; 3 uses
  %.not98 = icmp eq i64 %i.dy, 7
  br i1 %.not98, label %.thread, label %bb.q

.thread:                                          ; preds = %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i
  %i.fo = xor i64 %i.fn, %.sroa.32.4              ; 3 uses
  %i.fp = add i64 %.sroa.070.4, %.sroa.22.4       ; 3 uses
  %i.fq = add i64 %i.fo, %.sroa.12.4              ; 2 uses
  %i.fr = call noundef i64 @llvm.fshl.i64(i64 %.sroa.22.4, i64 %.sroa.22.4, i64 13)
  %i.fs = xor i64 %i.fp, %i.fr                    ; 3 uses
  %i.ft = call noundef i64 @llvm.fshl.i64(i64 %i.fo, i64 %i.fo, i64 16)
  %i.fu = xor i64 %i.fq, %i.ft                    ; 3 uses
  %i.fv = call noundef i64 @llvm.fshl.i64(i64 %i.fp, i64 %i.fp, i64 32)
  %i.fw = add i64 %i.fq, %i.fs                    ; 3 uses
  %i.fx = add i64 %i.fu, %i.fv                    ; 2 uses
  %i.fy = call noundef i64 @llvm.fshl.i64(i64 %i.fs, i64 %i.fs, i64 17)
  %i.fz = xor i64 %i.fw, %i.fy
  %i.ga = call noundef i64 @llvm.fshl.i64(i64 %i.fu, i64 %i.fu, i64 21)
  %i.gb = xor i64 %i.ga, %i.fx
  %i.gc = call noundef i64 @llvm.fshl.i64(i64 %i.fw, i64 %i.fw, i64 32)
  %i.gd = xor i64 %i.fx, %i.fn
  br label %bb.q

bb.p:                                             ; preds = %bb.v
  %i.ge = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9Ef5aAcmeIW_9hashbrown10scopeguard10ScopeGuardQNtNtNtBG_3raw5inner13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #39
          to label %bb.y unwind label %bb.x, !noalias !514

bb.q:                                             ; preds = %_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs4KzxGwe94yc_9yara_x_ls.exit63.a, %.thread, %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i
  %16 = phi i64 [ %15, %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i ], [ %15, %.thread ], [ %13, %_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs4KzxGwe94yc_9yara_x_ls.exit63.a ]
  %.sroa.50.0 = phi i64 [ %i.fn, %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i ], [ 0, %.thread ], [ 255, %_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs4KzxGwe94yc_9yara_x_ls.exit63.a ]
  %.sroa.32.2 = phi i64 [ %.sroa.32.4, %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i ], [ %i.gb, %.thread ], [ %.sroa.32.4, %_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs4KzxGwe94yc_9yara_x_ls.exit63.a ]
  %.sroa.22.2 = phi i64 [ %.sroa.22.4, %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i ], [ %i.fz, %.thread ], [ %.sroa.22.4, %_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs4KzxGwe94yc_9yara_x_ls.exit63.a ] ; 3 uses
  %.sroa.12.2 = phi i64 [ %.sroa.12.4, %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i ], [ %i.gc, %.thread ], [ %.sroa.12.4, %_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs4KzxGwe94yc_9yara_x_ls.exit63.a ]
  %.sroa.070.2 = phi i64 [ %.sroa.070.4, %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i ], [ %i.gd, %.thread ], [ %.sroa.070.4, %_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs4KzxGwe94yc_9yara_x_ls.exit63.a ]
  %17 = shl i64 %16, 56
  %i.gf = or i64 %17, %.sroa.50.0                 ; 2 uses
  %i.gg = xor i64 %i.gf, %.sroa.32.2              ; 3 uses
  %i.gh = add i64 %.sroa.070.2, %.sroa.22.2       ; 3 uses
  %i.gi = add i64 %.sroa.12.2, %i.gg              ; 2 uses
  %i.gj = call noundef i64 @llvm.fshl.i64(i64 %.sroa.22.2, i64 %.sroa.22.2, i64 13)
  %i.gk = xor i64 %i.gh, %i.gj                    ; 3 uses
  %i.gl = call noundef i64 @llvm.fshl.i64(i64 %i.gg, i64 %i.gg, i64 16)
  %i.gm = xor i64 %i.gi, %i.gl                    ; 3 uses
  %i.gn = call noundef i64 @llvm.fshl.i64(i64 %i.gh, i64 %i.gh, i64 32)
  %i.go = add i64 %i.gk, %i.gi                    ; 3 uses
  %i.gp = add i64 %i.gn, %i.gm                    ; 2 uses
  %i.gq = call noundef i64 @llvm.fshl.i64(i64 %i.gk, i64 %i.gk, i64 17)
  %i.gr = xor i64 %i.go, %i.gq                    ; 3 uses
  %i.gs = call noundef i64 @llvm.fshl.i64(i64 %i.gm, i64 %i.gm, i64 21)
  %i.gt = xor i64 %i.gp, %i.gs                    ; 3 uses
  %i.gu = call noundef i64 @llvm.fshl.i64(i64 %i.go, i64 %i.go, i64 32)
  %i.gv = xor i64 %i.gp, %i.gf
  %i.gw = xor i64 %i.gu, 255
  %i.gx = add i64 %i.gv, %i.gr                    ; 3 uses
  %i.gy = add i64 %i.gw, %i.gt                    ; 2 uses
  %i.gz = call noundef i64 @llvm.fshl.i64(i64 %i.gr, i64 %i.gr, i64 13)
  %i.ha = xor i64 %i.gx, %i.gz                    ; 3 uses
  %i.hb = call noundef i64 @llvm.fshl.i64(i64 %i.gt, i64 %i.gt, i64 16)
  %i.hc = xor i64 %i.gy, %i.hb                    ; 3 uses
  %i.hd = call noundef i64 @llvm.fshl.i64(i64 %i.gx, i64 %i.gx, i64 32)
  %i.he = add i64 %i.ha, %i.gy                    ; 3 uses
  %i.hf = add i64 %i.hc, %i.hd                    ; 2 uses
  %i.hg = call noundef i64 @llvm.fshl.i64(i64 %i.ha, i64 %i.ha, i64 17)
  %i.hh = xor i64 %i.he, %i.hg                    ; 3 uses
  %i.hi = call noundef i64 @llvm.fshl.i64(i64 %i.hc, i64 %i.hc, i64 21)
  %i.hj = xor i64 %i.hi, %i.hf                    ; 3 uses
  %i.hk = call noundef i64 @llvm.fshl.i64(i64 %i.he, i64 %i.he, i64 32)
  %i.hl = add i64 %i.hh, %i.hf                    ; 3 uses
  %i.hm = add i64 %i.hj, %i.hk                    ; 2 uses
  %i.hn = call noundef i64 @llvm.fshl.i64(i64 %i.hh, i64 %i.hh, i64 13)
  %i.ho = xor i64 %i.hn, %i.hl                    ; 3 uses
  %i.hp = call noundef i64 @llvm.fshl.i64(i64 %i.hj, i64 %i.hj, i64 16)
  %i.hq = xor i64 %i.hp, %i.hm                    ; 3 uses
  %i.hr = call noundef i64 @llvm.fshl.i64(i64 %i.hl, i64 %i.hl, i64 32)
  %i.hs = add i64 %i.ho, %i.hm                    ; 3 uses
  %i.ht = add i64 %i.hq, %i.hr                    ; 2 uses
  %i.hu = call noundef i64 @llvm.fshl.i64(i64 %i.ho, i64 %i.ho, i64 17)
  %i.hv = xor i64 %i.hu, %i.hs                    ; 3 uses
  %i.hw = call noundef i64 @llvm.fshl.i64(i64 %i.hq, i64 %i.hq, i64 21)
  %i.hx = xor i64 %i.hw, %i.ht                    ; 3 uses
  %i.hy = call noundef i64 @llvm.fshl.i64(i64 %i.hs, i64 %i.hs, i64 32)
  %i.hz = add i64 %i.hv, %i.ht
  %i.ia = add i64 %i.hx, %i.hy                    ; 2 uses
  %i.ib = call noundef i64 @llvm.fshl.i64(i64 %i.hv, i64 %i.hv, i64 13)
  %i.ic = xor i64 %i.ib, %i.hz                    ; 3 uses
  %i.id = call noundef i64 @llvm.fshl.i64(i64 %i.hx, i64 %i.hx, i64 16)
  %i.ie = xor i64 %i.id, %i.ia                    ; 2 uses
  %i.if = add i64 %i.ic, %i.ia                    ; 3 uses
  %i.ig = call noundef i64 @llvm.fshl.i64(i64 %i.ic, i64 %i.ic, i64 17)
  %i.ih = call noundef i64 @llvm.fshl.i64(i64 %i.ie, i64 %i.ie, i64 21)
  %i.ii = call noundef i64 @llvm.fshl.i64(i64 %i.if, i64 %i.if, i64 32)
  %i.ij = xor i64 %i.ig, %i.ih
  %i.ik = xor i64 %i.ij, %i.ii
  %i.il = xor i64 %i.ik, %i.if                    ; 3 uses
  %.val7 = load i64, ptr %i.k, align 8, !noundef !5 ; 6 uses
  %.sroa.0.07.i17 = and i64 %i.il, %.val7         ; 5 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.sroa.0.07.i17
  %.sroa.0.0.copyload.i68.i18 = load <16 x i8>, ptr %i.im, align 1, !noalias !521
  %i.in = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i18, zeroinitializer
  %i.io = bitcast <16 x i1> %i.in to i16          ; 2 uses
  %.not.i9.i19 = icmp eq i16 %i.io, 0
  br i1 %.not.i9.i19, label %.lr.ph.i26, label %._crit_edge.i20

._crit_edge.i20:                                  ; preds = %.lr.ph.i26, %bb.q
  %.sroa.0.0.lcssa.i21 = phi i64 [ %.sroa.0.07.i17, %bb.q ], [ %.sroa.0.0.i28, %.lr.ph.i26 ]
  %.lcssa.i22 = phi i16 [ %i.io, %bb.q ], [ %i.jf, %.lr.ph.i26 ]
  %i.ip = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i22, i1 true)
  %i.iq = zext nneg i16 %i.ip to i64
  %i.ir = add i64 %.sroa.0.0.lcssa.i21, %i.iq
  %i.is = and i64 %i.ir, %.val7                   ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.is
  %i.iu = load i8, ptr %i.it, align 1, !noundef !5
  %i.iv = icmp sgt i8 %i.iu, -1
  br i1 %i.iv, label %bb.r, label %_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit31

bb.r:                                             ; preds = %._crit_edge.i20
  %.val62.i.i24 = load <16 x i8>, ptr %i.dn, align 16
  %i.iw = icmp slt <16 x i8> %.val62.i.i24, zeroinitializer
  %i.ix = bitcast <16 x i1> %i.iw to i16          ; 2 uses
  %.not.i6.i25 = icmp ne i16 %i.ix, 0
  %i.iy = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ix, i1 true)
  %i.iz = zext nneg i16 %i.iy to i64
  call void @llvm.assume(i1 %.not.i6.i25)
  br label %_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit31

.lr.ph.i26:                                       ; preds = %bb.q, %.lr.ph.i26
  %.sroa.0.010.i27 = phi i64 [ %.sroa.0.0.i28, %.lr.ph.i26 ], [ %.sroa.0.07.i17, %bb.q ]
  %i.ja = phi i64 [ %i.jb, %.lr.ph.i26 ], [ 0, %bb.q ]
  %i.jb = add i64 %i.ja, 16                       ; 2 uses
  %i.jc = add i64 %i.jb, %.sroa.0.010.i27
  %.sroa.0.0.i28 = and i64 %i.jc, %.val7          ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.sroa.0.0.i28
  %.sroa.0.0.copyload.i6.i29 = load <16 x i8>, ptr %i.jd, align 1, !noalias !521
  %i.je = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i29, zeroinitializer
  %i.jf = bitcast <16 x i1> %i.je to i16          ; 2 uses
  %.not.i.i30 = icmp eq i16 %i.jf, 0
  br i1 %.not.i.i30, label %.lr.ph.i26, label %._crit_edge.i20

_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit31: ; preds = %bb.r, %._crit_edge.i20
  %.sroa.0.0.i5.i23 = phi i64 [ %i.iz, %bb.r ], [ %i.is, %._crit_edge.i20 ] ; 4 uses
  %i.jg = sub i64 %.sroa.04.0.i118, %.sroa.0.07.i17
  %i.jh = sub i64 %.sroa.0.0.i5.i23, %.sroa.0.07.i17
  %i.ji = xor i64 %i.jh, %i.jg
  %.unshifted.i = and i64 %i.ji, %.val7
  %i.jj = icmp ult i64 %.unshifted.i, 16
  br i1 %i.jj, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit31
  %.neg11.i = xor i64 %.sroa.0.0.i5.i23, -1
  %.neg12.i = mul i64 %.neg11.i, 120
  %i.jk = getelementptr inbounds i8, ptr %i.dn, i64 %.neg12.i ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.sroa.0.0.i5.i23 ; 2 uses
  %i.jm = load i8, ptr %i.jl, align 1, !noalias !514, !noundef !5
  %i.jn = lshr i64 %i.il, 57
  %i.jo = trunc nuw nsw i64 %i.jn to i8           ; 2 uses
  %i.jp = add i64 %.sroa.0.0.i5.i23, -16
  %i.jq = and i64 %i.jp, %.val7
  store i8 %i.jo, ptr %i.jl, align 1, !noalias !514
  %i.jr = load ptr, ptr %0, align 8, !noalias !514, !nonnull !5, !noundef !5
  %i.js = getelementptr i8, ptr %i.jr, i64 %i.jq
  %i.jt = getelementptr i8, ptr %i.js, i64 16
  store i8 %i.jo, ptr %i.jt, align 1, !noalias !514
  %i.ju = icmp eq i8 %i.jm, -1
  br i1 %i.ju, label %bb.u, label %bb.v

bb.t:                                             ; preds = %_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit31
  %i.jv = lshr i64 %i.il, 57
  %i.jw = trunc nuw nsw i64 %i.jv to i8           ; 2 uses
  %i.jx = add i64 %.sroa.04.0.i118, -16
  %i.jy = and i64 %.val7, %i.jx
  %i.jz = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.sroa.04.0.i118
  store i8 %i.jw, ptr %i.jz, align 1, !noalias !514
  %i.ka = load ptr, ptr %0, align 8, !noalias !514, !nonnull !5, !noundef !5
  %i.kb = getelementptr i8, ptr %i.ka, i64 %i.jy
  %i.kc = getelementptr i8, ptr %i.kb, i64 16
  store i8 %i.jw, ptr %i.kc, align 1, !noalias !514
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.kd = add i64 %.sroa.04.0.i118, -16
  %i.ke = load i64, ptr %i.k, align 8, !noalias !514, !noundef !5
  %i.kf = and i64 %i.ke, %i.kd
  %i.kg = load ptr, ptr %0, align 8, !noalias !514, !nonnull !5, !noundef !5
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 %.sroa.04.0.i118
  store i8 -1, ptr %i.kh, align 1, !noalias !514
  %i.ki = load ptr, ptr %0, align 8, !noalias !514, !nonnull !5, !noundef !5
  %i.kj = getelementptr i8, ptr %i.ki, i64 %i.kf
  %i.kk = getelementptr i8, ptr %i.kj, i64 16
  store i8 -1, ptr %i.kk, align 1, !noalias !514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(120) %i.jk, ptr noundef nonnull align 1 dereferenceable(120) %i.dl, i64 120, i1 false), !noalias !514
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs4KzxGwe94yc_9yara_x_ls(ptr noundef nonnull %i.dl, ptr noundef nonnull %i.jk, i64 noundef 15)
          to label %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit unwind label %bb.p

bb.w:                                             ; preds = %bb.u, %bb.t, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.04.0.i118, %i.df
  br i1 %exitcond.not, label %_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit.loopexit, label %.lr.ph

bb.x:                                             ; preds = %bb.p
  %i.kl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !514
  unreachable

bb.y:                                             ; preds = %bb.p
  resume { ptr, i32 } %i.ge

_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit.loopexit: ; preds = %bb.w
  %.pre = load i64, ptr %i.k, align 8, !noalias !514 ; 2 uses
  %.pre153 = add i64 %.pre, 1
  %i.km = lshr i64 %.pre153, 3
  %i.kn = mul nuw i64 %i.km, 7
  br label %_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit

_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit.loopexit, %_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner23prepare_rehash_in_place.exit
  %.pre-phi = phi i64 [ %i.kn, %_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit.loopexit ], [ 0, %_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner23prepare_rehash_in_place.exit ]
  %i.ko = phi i64 [ %.pre, %_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit.loopexit ], [ -1, %_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 2 uses
  %i.kp = icmp ult i64 %i.ko, 8
  %.sroa.01.0.i = select i1 %i.kp, i64 %i.ko, i64 %.pre-phi
  %i.kq = load i64, ptr %i.g, align 8, !noalias !514, !noundef !5
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ks = sub i64 %.sroa.01.0.i, %i.kq
  store i64 %i.ks, ptr %i.kr, align 8, !noalias !514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !513
  br label %_RINvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs4KzxGwe94yc_9yara_x_ls.exit

bb.z:                                             ; preds = %bb.c
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #40, !noalias !522
  unreachable

_RINvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs4KzxGwe94yc_9yara_x_ls.exit: ; preds = %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9Ef5aAcmeIW_9hashbrown10scopeguard10ScopeGuardNtNtNtBG_3raw5inner13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtB1u_5alloc5inner6GlobalE0EECs4KzxGwe94yc_9yara_x_ls.exit, %bb.c, %_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit
  %.sroa.4.0.i = phi i64 [ undef, %bb.c ], [ undef, %_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.x, %bb.e ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9Ef5aAcmeIW_9hashbrown10scopeguard10ScopeGuardNtNtNtBG_3raw5inner13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtB1u_5alloc5inner6GlobalE0EECs4KzxGwe94yc_9yara_x_ls.exit ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ -1, %_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.v, %bb.e ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9Ef5aAcmeIW_9hashbrown10scopeguard10ScopeGuardNtNtNtBG_3raw5inner13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtB1u_5alloc5inner6GlobalE0EECs4KzxGwe94yc_9yara_x_ls.exit ]
end_hunk_0
begin_hunk_1_@_RINvMs6_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerINtB6_8RawTableTNtCs6SHYdBec2sV_3url3UrlINtNtCsjUxepGb3YzM_7dashmap4util11SharedValueNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents8document8DocumentEEE14reserve_rehashNCNvXs2_B1r_INtB1r_7DashMapBY_B25_EINtNtB1r_1t3MapBY_B25_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6__entrys_0EB2b_:bb.a
  %i.as = add i64 %.val3.i.i, 17
  %i.at = add i64 %i.as, %i.ar                    ; 3 uses
  %i.au = icmp uge i64 %i.at, %i.ar
  %i.av = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.aw = icmp ule i64 %i.at, %i.av
  call void @llvm.assume(i1 %i.au), !noalias !556
  call void @llvm.assume(i1 %i.aw), !noalias !556
  %i.ax = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.ax), !noalias !556
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !556
  %i.ay = sub nsw i64 0, %i.ar
  %i.az = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.ay
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.az, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #37, !noalias !560
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9Ef5aAcmeIW_9hashbrown10scopeguard10ScopeGuardNtNtNtBG_3raw5inner13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtB1u_5alloc5inner6GlobalE0EECs4KzxGwe94yc_9yara_x_ls.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9Ef5aAcmeIW_9hashbrown10scopeguard10ScopeGuardNtNtNtBG_3raw5inner13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtB1u_5alloc5inner6GlobalE0EECs4KzxGwe94yc_9yara_x_ls.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs9Ef5aAcmeIW_9hashbrown3raw5inner13RawTableInnerECs4KzxGwe94yc_9yara_x_ls.exit, %_RNvMs1_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !553
  br label %_RINvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs4KzxGwe94yc_9yara_x_ls.exit

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.0124, %.preheader ], [ %i.af, %.noexc2 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.0126, %.preheader ], [ %i.ag, %.noexc2 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.0127, %.preheader ], [ %i.ad, %.noexc2 ]
  %i.ba = add i16 %.sroa.13.1.lcssa, -1
  %i.bb = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bc = zext nneg i16 %i.bb to i64
  %i.bd = and i16 %i.ba, %.sroa.13.1.lcssa
  %i.be = add i64 %.sroa.5.1.lcssa, %i.bc         ; 2 uses
  %i.bf = add i64 %.sroa.9.0125, -1               ; 2 uses
  %i.bg = call fastcc noundef i64 @_RNCINvMs6_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerINtB8_8RawTableTNtCs6SHYdBec2sV_3url3UrlINtNtCsjUxepGb3YzM_7dashmap4util11SharedValueNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents8document8DocumentEEE14reserve_rehashNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6__entrys_0E0B2d_(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.be), !noalias !556 ; 2 uses
  %.sroa.0.07.i = and i64 %i.v, %i.bg             ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bh, align 1, !noalias !561
  %i.bi = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.bj = bitcast <16 x i1> %i.bi to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bj, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %._crit_edge
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %._crit_edge ], [ %.sroa.0.0.i11, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.bj, %._crit_edge ], [ %i.ca, %.lr.ph.i ]
  %i.bk = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bl = zext nneg i16 %i.bk to i64
  %i.bm = add i64 %.sroa.0.0.lcssa.i, %i.bl
  %i.bn = and i64 %i.bm, %i.v                     ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noundef !5
  %i.bq = icmp sgt i8 %i.bp, -1
  br i1 %i.bq, label %bb.h, label %_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit

bb.h:                                             ; preds = %._crit_edge.i
  %.val62.i.i = load <16 x i8>, ptr %i.s, align 16
  %i.br = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.bs = bitcast <16 x i1> %i.br to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bs, 0
  %i.bt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bs, i1 true)
  %i.bu = zext nneg i16 %i.bt to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i11, %.lr.ph.i ], [ %.sroa.0.07.i, %._crit_edge ]
  %i.bv = phi i64 [ %i.bw, %.lr.ph.i ], [ 0, %._crit_edge ]
  %i.bw = add i64 %i.bv, 16                       ; 2 uses
  %i.bx = add i64 %i.bw, %.sroa.0.010.i
  %.sroa.0.0.i11 = and i64 %i.bx, %i.v            ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.0.i11
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.by, align 1, !noalias !561
  %i.bz = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.ca = bitcast <16 x i1> %i.bz to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.ca, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i

_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit: ; preds = %bb.h, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.bu, %bb.h ], [ %i.bn, %._crit_edge.i ] ; 3 uses
  %i.cb = lshr i64 %i.bg, 57
  %i.cc = trunc nuw nsw i64 %i.cb to i8           ; 2 uses
  %i.cd = add i64 %.sroa.0.0.i5.i, -16
  %i.ce = and i64 %i.cd, %i.v
  %i.cf = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.0.i5.i
  store i8 %i.cc, ptr %i.cf, align 1, !noalias !556
  %i.cg = getelementptr i8, ptr %i.s, i64 %i.ce
  %i.ch = getelementptr i8, ptr %i.cg, i64 16
  store i8 %i.cc, ptr %i.ch, align 1, !noalias !556
  %i.ci = load ptr, ptr %0, align 8, !alias.scope !554, !noalias !555, !nonnull !5, !noundef !5
  %.neg.i.i = xor i64 %i.be, -1
  %.neg62.i.i = shl i64 %.neg.i.i, 8
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = shl i64 %.neg63.i.i, 8
  %i.ck = getelementptr inbounds i8, ptr %i.s, i64 %.neg64.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.ck, ptr noundef nonnull align 1 dereferenceable(256) %i.cj, i64 range(i64 120, 257) 256, i1 false), !noalias !556
  %i.cl = icmp eq i64 %i.bf, 0
  br i1 %i.cl, label %._crit_edge128.loopexit, label %.preheader

bb.i:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !562)
  %.val9 = load ptr, ptr %0, align 8              ; 7 uses
  %.not6.i = icmp eq i64 %i.n, 0
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.i
  %i.cm = lshr i64 %i.n, 4
  %i.cn = and i64 %i.n, 15
  %.not10.i.i.i = icmp ne i64 %i.cn, 0
  %i.co = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cm, %i.co ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.cp = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.cp, label %.epil.preheader, label %.lr.ph.i12.new

.lr.ph.i12.new:                                   ; preds = %.lr.ph.i12
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.j

._crit_edge.i14.unr-lcssa:                        ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i14, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i14.unr-lcssa, %.lr.ph.i12
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i12 ], [ %i.cx, %._crit_edge.i14.unr-lcssa ]
  %lcmp.mod226 = trunc i64 %.sroa.05.0.i.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod226)
  %i.cq = getelementptr inbounds nuw i8, ptr %.val9, i64 %.sroa.01.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cq, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.cr = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.cs = or <2 x i64> %i.cr, splat (i64 -9187201950435737472)
  store <2 x i64> %i.cs, ptr %i.cq, align 16
  br label %._crit_edge.i14

._crit_edge.i14:                                  ; preds = %._crit_edge.i14.unr-lcssa, %.epil.preheader
  %i.ct = icmp ult i64 %i.n, 16
  br i1 %i.ct, label %._crit_edge.thread.i, label %_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner23prepare_rehash_in_place.exit

bb.j:                                             ; preds = %bb.j, %.lr.ph.i12.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i12.new ], [ %i.cx, %bb.j ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i12.new ], [ %niter.next.1, %bb.j ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.val9, i64 %.sroa.01.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.cu, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.cv = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.cw = or <2 x i64> %i.cv, splat (i64 -9187201950435737472)
  store <2 x i64> %i.cw, ptr %i.cu, align 16
  %i.cx = add i64 %.sroa.01.08.i, 32              ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.val9, i64 %.sroa.01.08.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.cz, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.da = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.db = or <2 x i64> %i.da, splat (i64 -9187201950435737472)
  store <2 x i64> %i.db, ptr %i.cz, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i14.unr-lcssa, label %bb.j

._crit_edge.thread.i:                             ; preds = %._crit_edge.i14, %bb.i
  br label %_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner23prepare_rehash_in_place.exit

_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i14, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.n, %._crit_edge.i14 ]
  %.sink9.i = phi i64 [ %i.n, %._crit_edge.thread.i ], [ 16, %._crit_edge.i14 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9) ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.val9, i64 %.sink10.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dc, ptr nonnull align 1 %.val9, i64 %.sink9.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !563
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RINvNtCskKLDkoKarTP_4core3ptr13drop_in_placeTNtCs6SHYdBec2sV_3url3UrlINtNtCsjUxepGb3YzM_7dashmap4util11SharedValueNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents8document8DocumentEEEB1U_, ptr %i.dd, align 8, !noalias !563
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 256, ptr %i.de, align 8, !noalias !563
  store ptr %0, ptr %i.a, align 8, !noalias !563
  %i.df = load i64, ptr %i.k, align 8, !alias.scope !562, !noalias !564, !noundef !5 ; 2 uses
  %.not129 = icmp eq i64 %i.df, -1
  br i1 %.not129, label %_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.w
  %.sroa.04.0.i118 = phi i64 [ %i.dg, %bb.w ], [ 0, %_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dg = add nuw i64 %.sroa.04.0.i118, 1
  %i.dh = load ptr, ptr %0, align 8, !noalias !564, !nonnull !5, !noundef !5 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.sroa.04.0.i118
  %i.dj = load i8, ptr %i.di, align 1, !noalias !564, !noundef !5
  %i.dk = icmp eq i8 %i.dj, -128
  br i1 %i.dk, label %bb.k, label %bb.w

bb.k:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i118, -1
  %.neg10.i = shl i64 %.neg.i, 8
  %i.dl = getelementptr inbounds i8, ptr %i.dh, i64 %.neg10.i ; 2 uses
  %i.dm = sub nsw i64 0, %.sroa.04.0.i118
  br label %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit

_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.v, %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !565)
  %i.dn = load ptr, ptr %0, align 8, !alias.scope !565, !noalias !566, !nonnull !5, !noundef !5 ; 8 uses
  %i.do = getelementptr inbounds [256 x i8], ptr %i.dn, i64 %i.dm ; 2 uses
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !567, !nonnull !5, !align !8, !noundef !5
  %i.dp = getelementptr i8, ptr %i.do, i64 -248
  %.val2.i = load ptr, ptr %i.dp, align 8, !noalias !567, !nonnull !5, !noundef !5 ; 4 uses
  %i.dq = getelementptr i8, ptr %i.do, i64 -240
  %.val3.i = load i64, ptr %i.dq, align 8, !noalias !567, !noundef !5 ; 6 uses
  %i.dr = load ptr, ptr %.val.i, align 8, !noalias !567, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %.val.i.i15 = load i64, ptr %i.ds, align 8, !noalias !567, !noundef !5 ; 2 uses
  %i.dt = getelementptr i8, ptr %i.dr, i64 32
  %.val1.i.i16 = load i64, ptr %i.dt, align 8, !noalias !567, !noundef !5 ; 2 uses
  %i.du = xor i64 %.val.i.i15, 8317987319222330741 ; 2 uses
  %i.dv = xor i64 %.val1.i.i16, 7237128888997146477 ; 2 uses
  %i.dw = xor i64 %.val.i.i15, 7816392313619706465 ; 2 uses
  %i.dx = xor i64 %.val1.i.i16, 8387220255154660723 ; 2 uses
  %i.dy = and i64 %.val3.i, 7                     ; 6 uses
  %i.dz = and i64 %.val3.i, -8                    ; 2 uses
  %.not = icmp eq i64 %i.dz, 0
  br i1 %.not, label %._crit_edge.i61, label %.lr.ph.i54

._crit_edge.i61.loopexit:                         ; preds = %.lr.ph.i54
  %i.ea = and i64 %.val3.i, -8
  br label %._crit_edge.i61

._crit_edge.i61:                                  ; preds = %._crit_edge.i61.loopexit, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit
  %.sroa.32.4 = phi i64 [ %i.dx, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit ], [ %i.fg, %._crit_edge.i61.loopexit ] ; 3 uses
  %.sroa.22.4 = phi i64 [ %i.dv, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit ], [ %i.fe, %._crit_edge.i61.loopexit ] ; 5 uses
  %.sroa.12.4 = phi i64 [ %i.dw, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit ], [ %i.fh, %._crit_edge.i61.loopexit ] ; 3 uses
  %.sroa.070.4 = phi i64 [ %i.du, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit ], [ %i.fi, %._crit_edge.i61.loopexit ] ; 3 uses
  %.sroa.0.1.lcssa.i44 = phi i64 [ 0, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit ], [ %i.ea, %._crit_edge.i61.loopexit ] ; 3 uses
  %i.eb = icmp samesign ugt i64 %i.dy, 3
  br i1 %i.eb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i61
  %i.ec = getelementptr inbounds nuw i8, ptr %.val2.i, i64 %.sroa.0.1.lcssa.i44
  %.sroa.014.0.copyload.i16.i53 = load i32, ptr %i.ec, align 1, !alias.scope !568, !noalias !569
  %i.ed = zext i32 %.sroa.014.0.copyload.i16.i53 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i61
  %.sroa.03.0.i10.i45 = phi i64 [ 4, %bb.l ], [ 0, %._crit_edge.i61 ] ; 5 uses
  %.sroa.0.0.i11.i46 = phi i64 [ %i.ed, %bb.l ], [ 0, %._crit_edge.i61 ] ; 2 uses
  %i.ee = or disjoint i64 %.sroa.03.0.i10.i45, 1
  %i.ef = icmp samesign ult i64 %i.ee, %i.dy
  br i1 %i.ef, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.eg = getelementptr i8, ptr %.val2.i, i64 %.sroa.0.1.lcssa.i44
  %i.eh = getelementptr i8, ptr %i.eg, i64 %.sroa.03.0.i10.i45
  %.sroa.015.0.copyload.i15.i52 = load i16, ptr %i.eh, align 1, !alias.scope !568, !noalias !569
  %i.ei = zext i16 %.sroa.015.0.copyload.i15.i52 to i64
  %i.ej = shl nuw nsw i64 %.sroa.03.0.i10.i45, 3
  %i.ek = shl nuw nsw i64 %i.ei, %i.ej
  %i.el = or i64 %i.ek, %.sroa.0.0.i11.i46
  %i.em = or disjoint i64 %.sroa.03.0.i10.i45, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.03.1.i12.i47 = phi i64 [ %i.em, %bb.n ], [ %.sroa.03.0.i10.i45, %bb.m ] ; 3 uses
  %.sroa.0.1.i13.i48 = phi i64 [ %i.el, %bb.n ], [ %.sroa.0.0.i11.i46, %bb.m ] ; 2 uses
  %i.en = icmp samesign ult i64 %.sroa.03.1.i12.i47, %i.dy
  br i1 %i.en, label %_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs4KzxGwe94yc_9yara_x_ls.exit63.thread, label %_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs4KzxGwe94yc_9yara_x_ls.exit63.a

_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs4KzxGwe94yc_9yara_x_ls.exit63.thread: ; preds = %bb.o
  %4 = add i64 %.sroa.03.1.i12.i47, %.sroa.0.1.lcssa.i44 ; 2 uses
  %5 = icmp ult i64 %4, %.val3.i
  call void @llvm.assume(i1 %5), !noalias !567
  %6 = getelementptr inbounds nuw i8, ptr %.val2.i, i64 %4
  %7 = load i8, ptr %6, align 1, !alias.scope !568, !noalias !569, !noundef !5
  %8 = zext i8 %7 to i64
  %9 = shl nuw nsw i64 %.sroa.03.1.i12.i47, 3
  %10 = shl nuw nsw i64 %8, %9
  %11 = or i64 %10, %.sroa.0.1.i13.i48
  %12 = add i64 %.val3.i, 1
  br label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i

.lr.ph.i54:                                       ; preds = %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit, %.lr.ph.i54
  %i.eo = phi i64 [ %i.fh, %.lr.ph.i54 ], [ %i.dw, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit ]
  %i.ep = phi i64 [ %i.fe, %.lr.ph.i54 ], [ %i.dv, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit ] ; 3 uses
  %i.eq = phi i64 [ %i.fg, %.lr.ph.i54 ], [ %i.dx, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit ]
  %.sroa.0.118.i59 = phi i64 [ %i.fj, %.lr.ph.i54 ], [ 0, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit ] ; 2 uses
  %i.er = phi i64 [ %i.fi, %.lr.ph.i54 ], [ %i.du, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit ]
  %i.es = getelementptr inbounds nuw i8, ptr %.val2.i, i64 %.sroa.0.118.i59
  %.sroa.07.0.copyload.i60 = load i64, ptr %i.es, align 1, !alias.scope !570, !noalias !569 ; 2 uses
  %i.et = xor i64 %.sroa.07.0.copyload.i60, %i.eq ; 3 uses
  %i.eu = add i64 %i.er, %i.ep                    ; 3 uses
  %i.ev = add i64 %i.et, %i.eo                    ; 2 uses
  %i.ew = call noundef i64 @llvm.fshl.i64(i64 %i.ep, i64 %i.ep, i64 13)
  %i.ex = xor i64 %i.eu, %i.ew                    ; 3 uses
  %i.ey = call noundef i64 @llvm.fshl.i64(i64 %i.et, i64 %i.et, i64 16)
  %i.ez = xor i64 %i.ev, %i.ey                    ; 3 uses
  %i.fa = call noundef i64 @llvm.fshl.i64(i64 %i.eu, i64 %i.eu, i64 32)
  %i.fb = add i64 %i.ev, %i.ex                    ; 3 uses
  %i.fc = add i64 %i.ez, %i.fa                    ; 2 uses
  %i.fd = call noundef i64 @llvm.fshl.i64(i64 %i.ex, i64 %i.ex, i64 17)
  %i.fe = xor i64 %i.fb, %i.fd                    ; 2 uses
  %i.ff = call noundef i64 @llvm.fshl.i64(i64 %i.ez, i64 %i.ez, i64 21)
  %i.fg = xor i64 %i.ff, %i.fc                    ; 2 uses
  %i.fh = call noundef i64 @llvm.fshl.i64(i64 %i.fb, i64 %i.fb, i64 32) ; 2 uses
  %i.fi = xor i64 %i.fc, %.sroa.07.0.copyload.i60 ; 2 uses
  %i.fj = add nuw i64 %.sroa.0.118.i59, 8         ; 2 uses
  %i.fk = icmp ult i64 %i.fj, %i.dz
  br i1 %i.fk, label %.lr.ph.i54, label %._crit_edge.i61.loopexit

_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs4KzxGwe94yc_9yara_x_ls.exit63.a: ; preds = %bb.o
  %13 = add i64 %.val3.i, 1                       ; 2 uses
  %14 = icmp eq i64 %i.dy, 0
  br i1 %14, label %bb.q, label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i

_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i: ; preds = %_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs4KzxGwe94yc_9yara_x_ls.exit63.a, %_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs4KzxGwe94yc_9yara_x_ls.exit63.thread
  %15 = phi i64 [ %12, %_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs4KzxGwe94yc_9yara_x_ls.exit63.thread ], [ %13, %_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs4KzxGwe94yc_9yara_x_ls.exit63.a ] ; 2 uses
  %.sroa.0.2.i14.i5097 = phi i64 [ %11, %_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs4KzxGwe94yc_9yara_x_ls.exit63.thread ], [ %.sroa.0.1.i13.i48, %_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs4KzxGwe94yc_9yara_x_ls.exit63.a ]
  %i.fl = shl nuw nsw i64 %i.dy, 3
  %i.fm = shl nuw i64 255, %i.fl
  %i.fn = or i64 %i.fm, %.sroa.0.2.i14.i5097      ; 3 uses
  %.not98 = icmp eq i64 %i.dy, 7
  br i1 %.not98, label %.thread, label %bb.q

.thread:                                          ; preds = %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i
  %i.fo = xor i64 %i.fn, %.sroa.32.4              ; 3 uses
  %i.fp = add i64 %.sroa.070.4, %.sroa.22.4       ; 3 uses
  %i.fq = add i64 %i.fo, %.sroa.12.4              ; 2 uses
  %i.fr = call noundef i64 @llvm.fshl.i64(i64 %.sroa.22.4, i64 %.sroa.22.4, i64 13)
  %i.fs = xor i64 %i.fp, %i.fr                    ; 3 uses
  %i.ft = call noundef i64 @llvm.fshl.i64(i64 %i.fo, i64 %i.fo, i64 16)
  %i.fu = xor i64 %i.fq, %i.ft                    ; 3 uses
  %i.fv = call noundef i64 @llvm.fshl.i64(i64 %i.fp, i64 %i.fp, i64 32)
  %i.fw = add i64 %i.fq, %i.fs                    ; 3 uses
  %i.fx = add i64 %i.fu, %i.fv                    ; 2 uses
  %i.fy = call noundef i64 @llvm.fshl.i64(i64 %i.fs, i64 %i.fs, i64 17)
  %i.fz = xor i64 %i.fw, %i.fy
  %i.ga = call noundef i64 @llvm.fshl.i64(i64 %i.fu, i64 %i.fu, i64 21)
  %i.gb = xor i64 %i.ga, %i.fx
  %i.gc = call noundef i64 @llvm.fshl.i64(i64 %i.fw, i64 %i.fw, i64 32)
  %i.gd = xor i64 %i.fx, %i.fn
  br label %bb.q

bb.p:                                             ; preds = %bb.v
  %i.ge = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9Ef5aAcmeIW_9hashbrown10scopeguard10ScopeGuardQNtNtNtBG_3raw5inner13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #39
          to label %bb.y unwind label %bb.x, !noalias !564

bb.q:                                             ; preds = %_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs4KzxGwe94yc_9yara_x_ls.exit63.a, %.thread, %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i
  %16 = phi i64 [ %15, %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i ], [ %15, %.thread ], [ %13, %_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs4KzxGwe94yc_9yara_x_ls.exit63.a ]
  %.sroa.50.0 = phi i64 [ %i.fn, %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i ], [ 0, %.thread ], [ 255, %_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs4KzxGwe94yc_9yara_x_ls.exit63.a ]
  %.sroa.32.2 = phi i64 [ %.sroa.32.4, %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i ], [ %i.gb, %.thread ], [ %.sroa.32.4, %_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs4KzxGwe94yc_9yara_x_ls.exit63.a ]
  %.sroa.22.2 = phi i64 [ %.sroa.22.4, %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i ], [ %i.fz, %.thread ], [ %.sroa.22.4, %_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs4KzxGwe94yc_9yara_x_ls.exit63.a ] ; 3 uses
  %.sroa.12.2 = phi i64 [ %.sroa.12.4, %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i ], [ %i.gc, %.thread ], [ %.sroa.12.4, %_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs4KzxGwe94yc_9yara_x_ls.exit63.a ]
  %.sroa.070.2 = phi i64 [ %.sroa.070.4, %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i ], [ %i.gd, %.thread ], [ %.sroa.070.4, %_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs4KzxGwe94yc_9yara_x_ls.exit63.a ]
  %17 = shl i64 %16, 56
  %i.gf = or i64 %17, %.sroa.50.0                 ; 2 uses
  %i.gg = xor i64 %i.gf, %.sroa.32.2              ; 3 uses
  %i.gh = add i64 %.sroa.070.2, %.sroa.22.2       ; 3 uses
  %i.gi = add i64 %.sroa.12.2, %i.gg              ; 2 uses
  %i.gj = call noundef i64 @llvm.fshl.i64(i64 %.sroa.22.2, i64 %.sroa.22.2, i64 13)
  %i.gk = xor i64 %i.gh, %i.gj                    ; 3 uses
  %i.gl = call noundef i64 @llvm.fshl.i64(i64 %i.gg, i64 %i.gg, i64 16)
  %i.gm = xor i64 %i.gi, %i.gl                    ; 3 uses
  %i.gn = call noundef i64 @llvm.fshl.i64(i64 %i.gh, i64 %i.gh, i64 32)
  %i.go = add i64 %i.gk, %i.gi                    ; 3 uses
  %i.gp = add i64 %i.gn, %i.gm                    ; 2 uses
  %i.gq = call noundef i64 @llvm.fshl.i64(i64 %i.gk, i64 %i.gk, i64 17)
  %i.gr = xor i64 %i.go, %i.gq                    ; 3 uses
  %i.gs = call noundef i64 @llvm.fshl.i64(i64 %i.gm, i64 %i.gm, i64 21)
  %i.gt = xor i64 %i.gp, %i.gs                    ; 3 uses
  %i.gu = call noundef i64 @llvm.fshl.i64(i64 %i.go, i64 %i.go, i64 32)
  %i.gv = xor i64 %i.gp, %i.gf
  %i.gw = xor i64 %i.gu, 255
  %i.gx = add i64 %i.gv, %i.gr                    ; 3 uses
  %i.gy = add i64 %i.gw, %i.gt                    ; 2 uses
  %i.gz = call noundef i64 @llvm.fshl.i64(i64 %i.gr, i64 %i.gr, i64 13)
  %i.ha = xor i64 %i.gx, %i.gz                    ; 3 uses
  %i.hb = call noundef i64 @llvm.fshl.i64(i64 %i.gt, i64 %i.gt, i64 16)
  %i.hc = xor i64 %i.gy, %i.hb                    ; 3 uses
  %i.hd = call noundef i64 @llvm.fshl.i64(i64 %i.gx, i64 %i.gx, i64 32)
  %i.he = add i64 %i.ha, %i.gy                    ; 3 uses
  %i.hf = add i64 %i.hc, %i.hd                    ; 2 uses
  %i.hg = call noundef i64 @llvm.fshl.i64(i64 %i.ha, i64 %i.ha, i64 17)
  %i.hh = xor i64 %i.he, %i.hg                    ; 3 uses
  %i.hi = call noundef i64 @llvm.fshl.i64(i64 %i.hc, i64 %i.hc, i64 21)
  %i.hj = xor i64 %i.hi, %i.hf                    ; 3 uses
  %i.hk = call noundef i64 @llvm.fshl.i64(i64 %i.he, i64 %i.he, i64 32)
  %i.hl = add i64 %i.hh, %i.hf                    ; 3 uses
  %i.hm = add i64 %i.hj, %i.hk                    ; 2 uses
  %i.hn = call noundef i64 @llvm.fshl.i64(i64 %i.hh, i64 %i.hh, i64 13)
  %i.ho = xor i64 %i.hn, %i.hl                    ; 3 uses
  %i.hp = call noundef i64 @llvm.fshl.i64(i64 %i.hj, i64 %i.hj, i64 16)
  %i.hq = xor i64 %i.hp, %i.hm                    ; 3 uses
  %i.hr = call noundef i64 @llvm.fshl.i64(i64 %i.hl, i64 %i.hl, i64 32)
  %i.hs = add i64 %i.ho, %i.hm                    ; 3 uses
  %i.ht = add i64 %i.hq, %i.hr                    ; 2 uses
  %i.hu = call noundef i64 @llvm.fshl.i64(i64 %i.ho, i64 %i.ho, i64 17)
  %i.hv = xor i64 %i.hu, %i.hs                    ; 3 uses
  %i.hw = call noundef i64 @llvm.fshl.i64(i64 %i.hq, i64 %i.hq, i64 21)
  %i.hx = xor i64 %i.hw, %i.ht                    ; 3 uses
  %i.hy = call noundef i64 @llvm.fshl.i64(i64 %i.hs, i64 %i.hs, i64 32)
  %i.hz = add i64 %i.hv, %i.ht
  %i.ia = add i64 %i.hx, %i.hy                    ; 2 uses
  %i.ib = call noundef i64 @llvm.fshl.i64(i64 %i.hv, i64 %i.hv, i64 13)
  %i.ic = xor i64 %i.ib, %i.hz                    ; 3 uses
  %i.id = call noundef i64 @llvm.fshl.i64(i64 %i.hx, i64 %i.hx, i64 16)
  %i.ie = xor i64 %i.id, %i.ia                    ; 2 uses
  %i.if = add i64 %i.ic, %i.ia                    ; 3 uses
  %i.ig = call noundef i64 @llvm.fshl.i64(i64 %i.ic, i64 %i.ic, i64 17)
  %i.ih = call noundef i64 @llvm.fshl.i64(i64 %i.ie, i64 %i.ie, i64 21)
  %i.ii = call noundef i64 @llvm.fshl.i64(i64 %i.if, i64 %i.if, i64 32)
  %i.ij = xor i64 %i.ig, %i.ih
  %i.ik = xor i64 %i.ij, %i.ii
  %i.il = xor i64 %i.ik, %i.if                    ; 3 uses
  %.val7 = load i64, ptr %i.k, align 8, !noundef !5 ; 6 uses
  %.sroa.0.07.i17 = and i64 %i.il, %.val7         ; 5 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.sroa.0.07.i17
  %.sroa.0.0.copyload.i68.i18 = load <16 x i8>, ptr %i.im, align 1, !noalias !571
  %i.in = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i18, zeroinitializer
  %i.io = bitcast <16 x i1> %i.in to i16          ; 2 uses
  %.not.i9.i19 = icmp eq i16 %i.io, 0
  br i1 %.not.i9.i19, label %.lr.ph.i26, label %._crit_edge.i20

._crit_edge.i20:                                  ; preds = %.lr.ph.i26, %bb.q
  %.sroa.0.0.lcssa.i21 = phi i64 [ %.sroa.0.07.i17, %bb.q ], [ %.sroa.0.0.i28, %.lr.ph.i26 ]
  %.lcssa.i22 = phi i16 [ %i.io, %bb.q ], [ %i.jf, %.lr.ph.i26 ]
  %i.ip = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i22, i1 true)
  %i.iq = zext nneg i16 %i.ip to i64
  %i.ir = add i64 %.sroa.0.0.lcssa.i21, %i.iq
  %i.is = and i64 %i.ir, %.val7                   ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.is
  %i.iu = load i8, ptr %i.it, align 1, !noundef !5
  %i.iv = icmp sgt i8 %i.iu, -1
  br i1 %i.iv, label %bb.r, label %_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit31

bb.r:                                             ; preds = %._crit_edge.i20
  %.val62.i.i24 = load <16 x i8>, ptr %i.dn, align 16
  %i.iw = icmp slt <16 x i8> %.val62.i.i24, zeroinitializer
  %i.ix = bitcast <16 x i1> %i.iw to i16          ; 2 uses
  %.not.i6.i25 = icmp ne i16 %i.ix, 0
  %i.iy = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ix, i1 true)
  %i.iz = zext nneg i16 %i.iy to i64
  call void @llvm.assume(i1 %.not.i6.i25)
  br label %_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit31

.lr.ph.i26:                                       ; preds = %bb.q, %.lr.ph.i26
  %.sroa.0.010.i27 = phi i64 [ %.sroa.0.0.i28, %.lr.ph.i26 ], [ %.sroa.0.07.i17, %bb.q ]
  %i.ja = phi i64 [ %i.jb, %.lr.ph.i26 ], [ 0, %bb.q ]
  %i.jb = add i64 %i.ja, 16                       ; 2 uses
  %i.jc = add i64 %i.jb, %.sroa.0.010.i27
  %.sroa.0.0.i28 = and i64 %i.jc, %.val7          ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.sroa.0.0.i28
  %.sroa.0.0.copyload.i6.i29 = load <16 x i8>, ptr %i.jd, align 1, !noalias !571
  %i.je = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i29, zeroinitializer
  %i.jf = bitcast <16 x i1> %i.je to i16          ; 2 uses
  %.not.i.i30 = icmp eq i16 %i.jf, 0
  br i1 %.not.i.i30, label %.lr.ph.i26, label %._crit_edge.i20

_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit31: ; preds = %bb.r, %._crit_edge.i20
  %.sroa.0.0.i5.i23 = phi i64 [ %i.iz, %bb.r ], [ %i.is, %._crit_edge.i20 ] ; 4 uses
  %i.jg = sub i64 %.sroa.04.0.i118, %.sroa.0.07.i17
  %i.jh = sub i64 %.sroa.0.0.i5.i23, %.sroa.0.07.i17
  %i.ji = xor i64 %i.jh, %i.jg
  %.unshifted.i = and i64 %i.ji, %.val7
  %i.jj = icmp ult i64 %.unshifted.i, 16
  br i1 %i.jj, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit31
  %.neg11.i = xor i64 %.sroa.0.0.i5.i23, -1
  %.neg12.i = shl i64 %.neg11.i, 8
  %i.jk = getelementptr inbounds i8, ptr %i.dn, i64 %.neg12.i ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.sroa.0.0.i5.i23 ; 2 uses
  %i.jm = load i8, ptr %i.jl, align 1, !noalias !564, !noundef !5
  %i.jn = lshr i64 %i.il, 57
  %i.jo = trunc nuw nsw i64 %i.jn to i8           ; 2 uses
  %i.jp = add i64 %.sroa.0.0.i5.i23, -16
  %i.jq = and i64 %i.jp, %.val7
  store i8 %i.jo, ptr %i.jl, align 1, !noalias !564
  %i.jr = load ptr, ptr %0, align 8, !noalias !564, !nonnull !5, !noundef !5
  %i.js = getelementptr i8, ptr %i.jr, i64 %i.jq
  %i.jt = getelementptr i8, ptr %i.js, i64 16
  store i8 %i.jo, ptr %i.jt, align 1, !noalias !564
  %i.ju = icmp eq i8 %i.jm, -1
  br i1 %i.ju, label %bb.u, label %bb.v

bb.t:                                             ; preds = %_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit31
  %i.jv = lshr i64 %i.il, 57
  %i.jw = trunc nuw nsw i64 %i.jv to i8           ; 2 uses
  %i.jx = add i64 %.sroa.04.0.i118, -16
  %i.jy = and i64 %.val7, %i.jx
  %i.jz = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.sroa.04.0.i118
  store i8 %i.jw, ptr %i.jz, align 1, !noalias !564
  %i.ka = load ptr, ptr %0, align 8, !noalias !564, !nonnull !5, !noundef !5
  %i.kb = getelementptr i8, ptr %i.ka, i64 %i.jy
  %i.kc = getelementptr i8, ptr %i.kb, i64 16
  store i8 %i.jw, ptr %i.kc, align 1, !noalias !564
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.kd = add i64 %.sroa.04.0.i118, -16
  %i.ke = load i64, ptr %i.k, align 8, !noalias !564, !noundef !5
  %i.kf = and i64 %i.ke, %i.kd
  %i.kg = load ptr, ptr %0, align 8, !noalias !564, !nonnull !5, !noundef !5
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 %.sroa.04.0.i118
  store i8 -1, ptr %i.kh, align 1, !noalias !564
  %i.ki = load ptr, ptr %0, align 8, !noalias !564, !nonnull !5, !noundef !5
  %i.kj = getelementptr i8, ptr %i.ki, i64 %i.kf
  %i.kk = getelementptr i8, ptr %i.kj, i64 16
  store i8 -1, ptr %i.kk, align 1, !noalias !564
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.jk, ptr noundef nonnull align 1 dereferenceable(256) %i.dl, i64 256, i1 false), !noalias !564
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs4KzxGwe94yc_9yara_x_ls(ptr noundef nonnull %i.dl, ptr noundef nonnull %i.jk, i64 noundef 32)
          to label %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit unwind label %bb.p

bb.w:                                             ; preds = %bb.u, %bb.t, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.04.0.i118, %i.df
  br i1 %exitcond.not, label %_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit.loopexit, label %.lr.ph

bb.x:                                             ; preds = %bb.p
  %i.kl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !564
  unreachable

bb.y:                                             ; preds = %bb.p
  resume { ptr, i32 } %i.ge

_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit.loopexit: ; preds = %bb.w
  %.pre = load i64, ptr %i.k, align 8, !noalias !564 ; 2 uses
  %.pre153 = add i64 %.pre, 1
  %i.km = lshr i64 %.pre153, 3
  %i.kn = mul nuw i64 %i.km, 7
  br label %_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit

_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit.loopexit, %_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner23prepare_rehash_in_place.exit
  %.pre-phi = phi i64 [ %i.kn, %_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit.loopexit ], [ 0, %_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner23prepare_rehash_in_place.exit ]
  %i.ko = phi i64 [ %.pre, %_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit.loopexit ], [ -1, %_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 2 uses
  %i.kp = icmp ult i64 %i.ko, 8
  %.sroa.01.0.i = select i1 %i.kp, i64 %i.ko, i64 %.pre-phi
  %i.kq = load i64, ptr %i.g, align 8, !noalias !564, !noundef !5
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ks = sub i64 %.sroa.01.0.i, %i.kq
  store i64 %i.ks, ptr %i.kr, align 8, !noalias !564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !563
  br label %_RINvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs4KzxGwe94yc_9yara_x_ls.exit

bb.z:                                             ; preds = %bb.c
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #40, !noalias !572
  unreachable

_RINvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs4KzxGwe94yc_9yara_x_ls.exit: ; preds = %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9Ef5aAcmeIW_9hashbrown10scopeguard10ScopeGuardNtNtNtBG_3raw5inner13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtB1u_5alloc5inner6GlobalE0EECs4KzxGwe94yc_9yara_x_ls.exit, %bb.c, %_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit
  %.sroa.4.0.i = phi i64 [ undef, %bb.c ], [ undef, %_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.x, %bb.e ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9Ef5aAcmeIW_9hashbrown10scopeguard10ScopeGuardNtNtNtBG_3raw5inner13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtB1u_5alloc5inner6GlobalE0EECs4KzxGwe94yc_9yara_x_ls.exit ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ -1, %_RNvMsa_NtNtCs9Ef5aAcmeIW_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.v, %bb.e ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9Ef5aAcmeIW_9hashbrown10scopeguard10ScopeGuardNtNtNtBG_3raw5inner13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtB1u_5alloc5inner6GlobalE0EECs4KzxGwe94yc_9yara_x_ls.exit ]
end_hunk_1
