Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_cache-76089326de3af34c.pingora_cache.a887ca408fb8c7ad-cgu.05?download=true
inline.NumInlined: 305
inline.NumDeleted: 158
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvMs5_NtNtCsfjHlcakrArn_9hashbrown3raw5innerINtB6_8RawTablejE14reserve_rehashNCINvNtNtCs3n24CldWWBu_8indexmap3map4core8get_hashNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtCskKLDkoKarTP_4core6option6OptionNtNtCset5b41vfmiv_13pingora_cache13cache_control14DirectiveValueEE0EB3l_:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.am, i8 -1, i64 %i.ae, i1 false), !noalias !21
  %i.an = icmp samesign ult i64 %.sroa.4.0.i.ph33.i.i83, 9
  %i.ao = add nsw i64 %.sroa.4.0.i.ph33.i.i83, -1 ; 2 uses
  %i.ap = lshr i64 %.sroa.4.0.i.ph33.i.i83, 3
  %i.aq = mul nuw nsw i64 %i.ap, 7
  %.sroa.03.0.i.i.i = select i1 %i.an, i64 %i.ao, i64 %i.aq
  %i.ar = sub i64 %.sroa.03.0.i.i.i, %i.d
  store ptr %i.am, ptr %i.b, align 8, !noalias !12
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store i64 %i.ao, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !12
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.ar, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !12
  %.sroa.69.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.d, ptr %.sroa.69.0..sroa_idx.i.i, align 8, !noalias !12
  %.sroa.69.i.i.sroa.4.0..sroa.69.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 8, ptr %.sroa.69.i.i.sroa.4.0..sroa.69.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !12
  %.sroa.69.i.i.sroa.5.0..sroa.69.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 16, ptr %.sroa.69.i.i.sroa.5.0..sroa.69.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !12
  %i.as = load i64, ptr %i.g, align 8, !alias.scope !12, !noundef !7 ; 2 uses
  %.not = icmp eq i64 %i.as, -1
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_RNvMs9_NtNtCsfjHlcakrArn_9hashbrown3raw5innerINtB5_13RawTableInnerNtNtNtB5_5alloc5inner6GlobalE14prepare_resizeCset5b41vfmiv_13pingora_cache.exit
  %.pre67 = load ptr, ptr %0, align 8, !alias.scope !12
  br label %.lr.ph

._crit_edge:                                      ; preds = %.backedge, %_RNvMs9_NtNtCsfjHlcakrArn_9hashbrown3raw5innerINtB5_13RawTableInnerNtNtNtB5_5alloc5inner6GlobalE14prepare_resizeCset5b41vfmiv_13pingora_cache.exit
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECset5b41vfmiv_13pingora_cache(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, i64 noundef 4)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCsfjHlcakrArn_9hashbrown3raw5inner13RawTableInnerNtNtNtB13_5alloc5inner6GlobalEECset5b41vfmiv_13pingora_cache.exit unwind label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCsfjHlcakrArn_9hashbrown3raw5inner13RawTableInnerNtNtNtB13_5alloc5inner6GlobalEECset5b41vfmiv_13pingora_cache.exit: ; preds = %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !22)
  call void @llvm.experimental.noalias.scope.decl(metadata !25)
  %.val3.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !28, !noundef !7 ; 3 uses
  %i.au = icmp eq i64 %.val3.i.i, 0
  br i1 %i.au, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfjHlcakrArn_9hashbrown10scopeguard10ScopeGuardINtNtNtBG_3raw5inner13RawTableInnerNtNtNtB1v_5alloc5inner6GlobalENCNvMs9_B1v_B1s_14prepare_resize0EECset5b41vfmiv_13pingora_cache.exit, label %_RNvMs0_NtNtCsfjHlcakrArn_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs0_NtNtCsfjHlcakrArn_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCsfjHlcakrArn_9hashbrown3raw5inner13RawTableInnerNtNtNtB13_5alloc5inner6GlobalEECset5b41vfmiv_13pingora_cache.exit
  %.val2.i.i = load ptr, ptr %i.b, align 8, !alias.scope !28 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.69.i.i.sroa.5.0..sroa.69.0..sroa_idx.i.i.sroa_idx, align 8, !alias.scope !28 ; 4 uses
  %.val.i.i = load i64, ptr %.sroa.69.i.i.sroa.4.0..sroa.69.0..sroa_idx.i.i.sroa_idx, align 8, !alias.scope !28
  %i.av = add i64 %.val3.i.i, 1
  %i.aw = mul nuw i64 %.val.i.i, %i.av            ; 2 uses
  %i.ax = add i64 %.val1.i.i, -1
  %i.ay = add i64 %i.ax, %i.aw                    ; 2 uses
  %i.az = icmp uge i64 %i.ay, %i.aw
  call void @llvm.assume(i1 %i.az)
  %i.ba = sub i64 0, %.val1.i.i
  %i.bb = and i64 %i.ay, %i.ba                    ; 3 uses
  %i.bc = add i64 %.val3.i.i, 17
  %i.bd = add i64 %i.bc, %i.bb                    ; 2 uses
  %i.be = icmp uge i64 %i.bd, %i.bb
  call void @llvm.assume(i1 %i.be)
  %i.bf = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bf)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ]
  %i.bg = sub nsw i64 0, %i.bb
  %i.bh = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bg
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bh, i64 noundef %i.bd, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #25, !noalias !28
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfjHlcakrArn_9hashbrown10scopeguard10ScopeGuardINtNtNtBG_3raw5inner13RawTableInnerNtNtNtB1v_5alloc5inner6GlobalENCNvMs9_B1v_B1s_14prepare_resize0EECset5b41vfmiv_13pingora_cache.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfjHlcakrArn_9hashbrown10scopeguard10ScopeGuardINtNtNtBG_3raw5inner13RawTableInnerNtNtNtB1v_5alloc5inner6GlobalENCNvMs9_B1v_B1s_14prepare_resize0EECset5b41vfmiv_13pingora_cache.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCsfjHlcakrArn_9hashbrown3raw5inner13RawTableInnerNtNtNtB13_5alloc5inner6GlobalEECset5b41vfmiv_13pingora_cache.exit, %_RNvMs0_NtNtCsfjHlcakrArn_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12
  br label %_RNvMs9_NtNtCsfjHlcakrArn_9hashbrown3raw5innerINtB5_13RawTableInnerNtNtNtB5_5alloc5inner6GlobalE20reserve_rehash_innerCset5b41vfmiv_13pingora_cache.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.backedge
  %.val1 = phi ptr [ %.val168, %.backedge ], [ %i.am, %.lr.ph.preheader ] ; 7 uses
  %i.bi = phi ptr [ %i.bn, %.backedge ], [ %.pre67, %.lr.ph.preheader ] ; 3 uses
  %.sroa.016.0.i.i49 = phi i64 [ %i.bj, %.backedge ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %.neg.i.i = xor i64 %.sroa.016.0.i.i49, -1
  %i.bj = add nuw i64 %.sroa.016.0.i.i49, 1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.sroa.016.0.i.i49
  %i.bl = load i8, ptr %i.bk, align 1, !noundef !7
  %i.bm = icmp sgt i8 %i.bl, -1
  br i1 %i.bm, label %bb.m, label %.backedge

.backedge:                                        ; preds = %.lr.ph, %bb.r
  %.val168 = phi ptr [ %.val1, %.lr.ph ], [ %i.da, %bb.r ]
  %i.bn = phi ptr [ %i.bi, %.lr.ph ], [ %.pre66, %bb.r ]
  %exitcond.not = icmp eq i64 %.sroa.016.0.i.i49, %i.as
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.m:                                             ; preds = %.lr.ph
  %i.bo = sub nsw i64 0, %.sroa.016.0.i.i49
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bo
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -8
  %.val3.i = load i64, ptr %i.bq, align 8, !noalias !29, !noundef !7 ; 3 uses
  %i.br = icmp ult i64 %.val3.i, %3
  br i1 %i.br, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.val3.i, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #27
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfjHlcakrArn_9hashbrown10scopeguard10ScopeGuardINtNtNtBG_3raw5inner13RawTableInnerNtNtNtB1v_5alloc5inner6GlobalENCNvMs9_B1v_B1s_14prepare_resize0EECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef align 8 dereferenceable(48) %i.b) #28
  br label %common.resume

bb.p:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %.val3.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !29, !noundef !7 ; 2 uses
  %.val2 = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noundef !7 ; 4 uses
  %.sroa.02.06.i.i = and i64 %.val2, %i.bv        ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.val1, i64 %.sroa.02.06.i.i
  %.sroa.0.0.copyload.i47.i.i = load <16 x i8>, ptr %i.bw, align 1, !noalias !33
  %i.bx = icmp slt <16 x i8> %.sroa.0.0.copyload.i47.i.i, zeroinitializer
  %i.by = bitcast <16 x i1> %i.bx to i16          ; 2 uses
  %i.bz = icmp eq i16 %i.by, 0
  br i1 %i.bz, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.p, %.lr.ph.i.i
  %.sroa.02.09.i.i = phi i64 [ %.sroa.02.0.i.i, %.lr.ph.i.i ], [ %.sroa.02.06.i.i, %bb.p ]
  %.sroa.9.08.i.i = phi i64 [ %i.ca, %.lr.ph.i.i ], [ 0, %bb.p ]
  %i.ca = add i64 %.sroa.9.08.i.i, 16             ; 2 uses
  %i.cb = add i64 %i.ca, %.sroa.02.09.i.i
  %.sroa.02.0.i.i = and i64 %i.cb, %.val2         ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.val1, i64 %.sroa.02.0.i.i
  %.sroa.0.0.copyload.i4.i.i = load <16 x i8>, ptr %i.cc, align 1, !noalias !33
  %i.cd = icmp slt <16 x i8> %.sroa.0.0.copyload.i4.i.i, zeroinitializer
  %i.ce = bitcast <16 x i1> %i.cd to i16          ; 2 uses
  %i.cf = icmp eq i16 %i.ce, 0
  br i1 %i.cf, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.p
  %.sroa.02.0.lcssa.i.i = phi i64 [ %.sroa.02.06.i.i, %bb.p ], [ %.sroa.02.0.i.i, %.lr.ph.i.i ]
  %.lcssa.i.i = phi i16 [ %i.by, %bb.p ], [ %i.ce, %.lr.ph.i.i ]
  %i.cg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.ch = zext nneg i16 %i.cg to i64
  %i.ci = add i64 %.sroa.02.0.lcssa.i.i, %i.ch
  %i.cj = and i64 %i.ci, %.val2                   ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.val1, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !noundef !7
  %i.cm = icmp sgt i8 %i.cl, -1
  br i1 %i.cm, label %bb.q, label %bb.r, !prof !8

bb.q:                                             ; preds = %._crit_edge.i.i
  %.val95.i.i = load <16 x i8>, ptr %.val1, align 16
  %i.cn = icmp slt <16 x i8> %.val95.i.i, zeroinitializer
  %i.co = bitcast <16 x i1> %i.cn to i16
  %i.cp = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.co, i1 false)
  %i.cq = zext nneg i16 %i.cp to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i
  %.sroa.0.0.i.i4 = phi i64 [ %i.cq, %bb.q ], [ %i.cj, %._crit_edge.i.i ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.val1, i64 %.sroa.0.0.i.i4
  %i.cs = lshr i64 %i.bv, 57
  %i.ct = trunc nuw nsw i64 %i.cs to i8           ; 2 uses
  %i.cu = add i64 %.sroa.0.0.i.i4, -16
  %i.cv = and i64 %i.cu, %.val2
  store i8 %i.ct, ptr %i.cr, align 1
  %i.cw = getelementptr i8, ptr %.val1, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.cw, i64 16
  store i8 %i.ct, ptr %i.cx, align 1
  %i.cy = load ptr, ptr %0, align 8, !alias.scope !12, !nonnull !7, !noundef !7
  %.neg21.i.i = shl i64 %.neg.i.i, 3
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 %.neg21.i.i
  %i.da = load ptr, ptr %i.b, align 8, !noalias !12, !nonnull !7, !noundef !7 ; 2 uses
  %i.db = shl i64 %.sroa.0.0.i.i4, 3
  %i.dc = sub nuw nsw i64 -8, %i.db
  %i.dd = getelementptr inbounds i8, ptr %i.da, i64 %i.dc
  %i.de = load i64, ptr %i.cz, align 1
  store i64 %i.de, ptr %i.dd, align 1
  %.pre66 = load ptr, ptr %0, align 8, !alias.scope !12
  br label %.backedge

common.resume:                                    ; preds = %bb.x, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.bs, %bb.o ], [ %lpad.phi.i, %bb.x ]
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %.val12.i = load ptr, ptr %0, align 8, !alias.scope !36 ; 7 uses
  %.not6.i.i = icmp eq i64 %i.j, 0
  br i1 %.not6.i.i, label %_RNvMs9_NtNtCsfjHlcakrArn_9hashbrown3raw5innerINtB5_13RawTableInnerNtNtNtB5_5alloc5inner6GlobalE15rehash_in_placeCset5b41vfmiv_13pingora_cache.exit.thread, label %.lr.ph.i.i5

_RNvMs9_NtNtCsfjHlcakrArn_9hashbrown3raw5innerINtB5_13RawTableInnerNtNtNtB5_5alloc5inner6GlobalE15rehash_in_placeCset5b41vfmiv_13pingora_cache.exit.thread: ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val12.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36
  br label %bb.ag

.lr.ph.i.i5:                                      ; preds = %bb.s
  %i.df = lshr i64 %i.j, 4
  %i.dg = and i64 %i.j, 15
  %.not10.i.i.i.i = icmp ne i64 %i.dg, 0
  %i.dh = zext i1 %.not10.i.i.i.i to i64
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.df, %i.dh ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val12.i) ]
  %i.di = icmp eq i64 %.sroa.05.0.i.i.i.i, 1
  br i1 %i.di, label %.epil.preheader, label %.lr.ph.i.i5.new

.lr.ph.i.i5.new:                                  ; preds = %.lr.ph.i.i5
  %unroll_iter = and i64 %.sroa.05.0.i.i.i.i, 2305843009213693950
  br label %bb.t

._crit_edge.i.i6.unr-lcssa:                       ; preds = %bb.t
  %lcmp.mod.not = trunc i64 %.sroa.05.0.i.i.i.i to i1
  br i1 %lcmp.mod.not, label %.epil.preheader, label %._crit_edge.i.i6

.epil.preheader:                                  ; preds = %._crit_edge.i.i6.unr-lcssa, %.lr.ph.i.i5
  %.sroa.01.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i5 ], [ %i.ds, %._crit_edge.i.i6.unr-lcssa ]
  %lcmp.mod132 = trunc i64 %.sroa.05.0.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod132)
  %i.dj = getelementptr inbounds nuw i8, ptr %.val12.i, i64 %.sroa.01.08.i.i.epil.init ; 2 uses
  %.val5.i.i.epil = load <16 x i8>, ptr %i.dj, align 16, !noalias !36
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val5.i.i.epil, splat (i8 7)
  %i.dk = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>
  %i.dl = or <2 x i64> %i.dk, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dl, ptr %i.dj, align 16, !noalias !36
  br label %._crit_edge.i.i6

._crit_edge.i.i6:                                 ; preds = %._crit_edge.i.i6.unr-lcssa, %.epil.preheader
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %..i7 = tail call i64 @llvm.umax.i64(i64 %i.j, i64 16)
  %.65.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 16)
  %i.do = getelementptr inbounds nuw i8, ptr %.val12.i, i64 %..i7
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.do, ptr nonnull align 1 %.val12.i, i64 %.65.i, i1 false), !noalias !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36
  store ptr null, ptr %i.dm, align 8, !noalias !36
  store i64 8, ptr %i.dn, align 8, !noalias !36
  store ptr %0, ptr %i.a, align 8, !noalias !36
  br label %bb.u

bb.t:                                             ; preds = %bb.t, %.lr.ph.i.i5.new
  %.sroa.01.08.i.i = phi i64 [ 0, %.lr.ph.i.i5.new ], [ %i.ds, %bb.t ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i5.new ], [ %niter.next.1, %bb.t ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.val12.i, i64 %.sroa.01.08.i.i ; 2 uses
  %.val5.i.i = load <16 x i8>, ptr %i.dp, align 16, !noalias !36
  %.lobit.i.i.i = ashr <16 x i8> %.val5.i.i, splat (i8 7)
  %i.dq = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>
  %i.dr = or <2 x i64> %i.dq, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dr, ptr %i.dp, align 16, !noalias !36
  %i.ds = add i64 %.sroa.01.08.i.i, 32            ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.val12.i, i64 %.sroa.01.08.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  %.val5.i.i.1 = load <16 x i8>, ptr %i.du, align 16, !noalias !36
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val5.i.i.1, splat (i8 7)
  %i.dv = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>
  %i.dw = or <2 x i64> %i.dv, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dw, ptr %i.du, align 16, !noalias !36
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i6.unr-lcssa, label %bb.t

bb.u:                                             ; preds = %bb.ae, %._crit_edge.i.i6
  %.sroa.04.019.i = phi i64 [ 0, %._crit_edge.i.i6 ], [ %i.dx, %bb.ae ] ; 10 uses
  %i.dx = add nuw i64 %.sroa.04.019.i, 1
  %i.dy = load ptr, ptr %0, align 8, !alias.scope !36, !nonnull !7, !noundef !7 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %.sroa.04.019.i
  %i.ea = load i8, ptr %i.dz, align 1, !noundef !7
  %i.eb = icmp eq i8 %i.ea, -128
  br i1 %i.eb, label %bb.v, label %bb.ae

bb.v:                                             ; preds = %bb.u
  %.neg.i = xor i64 %.sroa.04.019.i, -1
  %.neg10.i = shl i64 %.neg.i, 3
  %i.ec = getelementptr inbounds i8, ptr %i.dy, i64 %.neg10.i ; 2 uses
  %i.ed = sub nsw i64 0, %.sroa.04.019.i
  br label %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i

_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i: ; preds = %bb.ac, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.ee = load ptr, ptr %0, align 8, !alias.scope !42, !noalias !43, !nonnull !7, !noundef !7 ; 8 uses
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.ed
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 -8
  %.val3.i.i10 = load i64, ptr %i.eg, align 8, !noalias !45, !noundef !7 ; 3 uses
  %i.eh = icmp ult i64 %.val3.i.i10, %3
  br i1 %i.eh, label %bb.y, label %bb.w

bb.w:                                             ; preds = %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.val3.i.i10, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #27
          to label %.noexc.i unwind label %.loopexit.split-lp.i

.noexc.i:                                         ; preds = %bb.w
  unreachable

.loopexit.i:                                      ; preds = %bb.ac
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.loopexit.split-lp.i:                             ; preds = %bb.w
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.x:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfjHlcakrArn_9hashbrown10scopeguard10ScopeGuardQINtNtNtBG_3raw5inner13RawTableInnerNtNtNtB1w_5alloc5inner6GlobalENCNvMs9_B1w_B1t_15rehash_in_place0EECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #28
          to label %common.resume unwind label %bb.af

bb.y:                                             ; preds = %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %i.ei = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %.val3.i.i10
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 48
  %i.ek = load i64, ptr %i.ej, align 8, !noalias !45, !noundef !7 ; 3 uses
  %.val11.i = load i64, ptr %i.g, align 8, !alias.scope !36, !noundef !7 ; 6 uses
  %.sroa.02.06.i.i12 = and i64 %.val11.i, %i.ek   ; 5 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.sroa.02.06.i.i12
  %.sroa.0.0.copyload.i47.i.i13 = load <16 x i8>, ptr %i.el, align 1, !noalias !46
  %i.em = icmp slt <16 x i8> %.sroa.0.0.copyload.i47.i.i13, zeroinitializer
  %i.en = bitcast <16 x i1> %i.em to i16          ; 2 uses
  %i.eo = icmp eq i16 %i.en, 0
  br i1 %i.eo, label %.lr.ph.i15.i, label %._crit_edge.i14.i

.lr.ph.i15.i:                                     ; preds = %bb.y, %.lr.ph.i15.i
  %.sroa.02.09.i.i18 = phi i64 [ %.sroa.02.0.i.i20, %.lr.ph.i15.i ], [ %.sroa.02.06.i.i12, %bb.y ]
  %.sroa.9.08.i.i19 = phi i64 [ %i.ep, %.lr.ph.i15.i ], [ 0, %bb.y ]
  %i.ep = add i64 %.sroa.9.08.i.i19, 16           ; 2 uses
  %i.eq = add i64 %i.ep, %.sroa.02.09.i.i18
  %.sroa.02.0.i.i20 = and i64 %i.eq, %.val11.i    ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.sroa.02.0.i.i20
  %.sroa.0.0.copyload.i4.i.i21 = load <16 x i8>, ptr %i.er, align 1, !noalias !46
  %i.es = icmp slt <16 x i8> %.sroa.0.0.copyload.i4.i.i21, zeroinitializer
  %i.et = bitcast <16 x i1> %i.es to i16          ; 2 uses
  %i.eu = icmp eq i16 %i.et, 0
  br i1 %i.eu, label %.lr.ph.i15.i, label %._crit_edge.i14.i

._crit_edge.i14.i:                                ; preds = %.lr.ph.i15.i, %bb.y
  %.sroa.02.0.lcssa.i.i14 = phi i64 [ %.sroa.02.06.i.i12, %bb.y ], [ %.sroa.02.0.i.i20, %.lr.ph.i15.i ]
  %.lcssa.i.i15 = phi i16 [ %i.en, %bb.y ], [ %i.et, %.lr.ph.i15.i ]
  %i.ev = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i15, i1 true)
  %i.ew = zext nneg i16 %i.ev to i64
  %i.ex = add i64 %.sroa.02.0.lcssa.i.i14, %i.ew
  %i.ey = and i64 %i.ex, %.val11.i                ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !noundef !7
  %i.fb = icmp sgt i8 %i.fa, -1
  br i1 %i.fb, label %bb.z, label %_RNvMs9_NtNtCsfjHlcakrArn_9hashbrown3raw5innerINtB5_13RawTableInnerNtNtNtB5_5alloc5inner6GlobalE16find_insert_slotCset5b41vfmiv_13pingora_cache.exit.i, !prof !8

bb.z:                                             ; preds = %._crit_edge.i14.i
  %.val95.i.i17 = load <16 x i8>, ptr %i.ee, align 16
  %i.fc = icmp slt <16 x i8> %.val95.i.i17, zeroinitializer
  %i.fd = bitcast <16 x i1> %i.fc to i16
  %i.fe = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fd, i1 false)
  %i.ff = zext nneg i16 %i.fe to i64
  br label %_RNvMs9_NtNtCsfjHlcakrArn_9hashbrown3raw5innerINtB5_13RawTableInnerNtNtNtB5_5alloc5inner6GlobalE16find_insert_slotCset5b41vfmiv_13pingora_cache.exit.i

_RNvMs9_NtNtCsfjHlcakrArn_9hashbrown3raw5innerINtB5_13RawTableInnerNtNtNtB5_5alloc5inner6GlobalE16find_insert_slotCset5b41vfmiv_13pingora_cache.exit.i: ; preds = %bb.z, %._crit_edge.i14.i
  %.sroa.0.0.i.i16 = phi i64 [ %i.ff, %bb.z ], [ %i.ey, %._crit_edge.i14.i ] ; 4 uses
  %i.fg = shl i64 %.sroa.0.0.i.i16, 3
  %i.fh = sub nuw nsw i64 -8, %i.fg
  %i.fi = getelementptr inbounds i8, ptr %i.ee, i64 %i.fh ; 2 uses
  %i.fj = sub i64 %.sroa.04.019.i, %.sroa.02.06.i.i12
  %i.fk = sub i64 %.sroa.0.0.i.i16, %.sroa.02.06.i.i12
  %i.fl = xor i64 %i.fk, %i.fj
  %.unshifted.i = and i64 %i.fl, %.val11.i
  %i.fm = icmp ult i64 %.unshifted.i, 16
  br i1 %i.fm, label %bb.ad, label %bb.aa, !prof !49

bb.aa:                                            ; preds = %_RNvMs9_NtNtCsfjHlcakrArn_9hashbrown3raw5innerINtB5_13RawTableInnerNtNtNtB5_5alloc5inner6GlobalE16find_insert_slotCset5b41vfmiv_13pingora_cache.exit.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.sroa.0.0.i.i16 ; 2 uses
  %i.fo = load i8, ptr %i.fn, align 1, !noundef !7
  %i.fp = lshr i64 %i.ek, 57
  %i.fq = trunc nuw nsw i64 %i.fp to i8           ; 2 uses
  %i.fr = add i64 %.sroa.0.0.i.i16, -16
  %i.fs = and i64 %i.fr, %.val11.i
  store i8 %i.fq, ptr %i.fn, align 1
  %i.ft = load ptr, ptr %0, align 8, !alias.scope !36, !nonnull !7, !noundef !7
  %i.fu = getelementptr i8, ptr %i.ft, i64 %i.fs
  %i.fv = getelementptr i8, ptr %i.fu, i64 16
  store i8 %i.fq, ptr %i.fv, align 1
  %i.fw = icmp eq i8 %i.fo, -1
  br i1 %i.fw, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fx = add i64 %.sroa.04.019.i, -16
  %i.fy = load i64, ptr %i.g, align 8, !alias.scope !36, !noundef !7
  %i.fz = and i64 %i.fy, %i.fx
  %i.ga = load ptr, ptr %0, align 8, !alias.scope !36, !nonnull !7, !noundef !7
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %.sroa.04.019.i
  store i8 -1, ptr %i.gb, align 1
  %i.gc = load ptr, ptr %0, align 8, !alias.scope !36, !nonnull !7, !noundef !7
  %i.gd = getelementptr i8, ptr %i.gc, i64 %i.fz
  %i.ge = getelementptr i8, ptr %i.gd, i64 16
  store i8 -1, ptr %i.ge, align 1
  %i.gf = load i64, ptr %i.ec, align 1
  store i64 %i.gf, ptr %i.fi, align 1
  br label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECset5b41vfmiv_13pingora_cache(ptr noundef nonnull %i.ec, ptr noundef nonnull %i.fi, i64 noundef 1)
          to label %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i unwind label %.loopexit.i

bb.ad:                                            ; preds = %_RNvMs9_NtNtCsfjHlcakrArn_9hashbrown3raw5innerINtB5_13RawTableInnerNtNtNtB5_5alloc5inner6GlobalE16find_insert_slotCset5b41vfmiv_13pingora_cache.exit.i
  %i.gg = lshr i64 %i.ek, 57
  %i.gh = trunc nuw nsw i64 %i.gg to i8           ; 2 uses
  %i.gi = add i64 %.sroa.04.019.i, -16
  %i.gj = and i64 %.val11.i, %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.sroa.04.019.i
  store i8 %i.gh, ptr %i.gk, align 1
  %i.gl = load ptr, ptr %0, align 8, !alias.scope !36, !nonnull !7, !noundef !7
  %i.gm = getelementptr i8, ptr %i.gl, i64 %i.gj
  %i.gn = getelementptr i8, ptr %i.gm, i64 16
  store i8 %i.gh, ptr %i.gn, align 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ab, %bb.u
end_hunk_0
begin_hunk_1_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http10extensions10ExtensionsECset5b41vfmiv_13pingora_cache:bb.a

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 32, i64 noundef 8) #25
  resume { ptr, i32 } %i.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECset5b41vfmiv_13pingora_cache.exit.i: ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 32, i64 noundef 8) #25
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBY_DNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3x_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2P_8IdHasherEEEEECset5b41vfmiv_13pingora_cache.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBY_DNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3x_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2P_8IdHasherEEEEECset5b41vfmiv_13pingora_cache.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECset5b41vfmiv_13pingora_cache.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCset5b41vfmiv_13pingora_cache4lock11WritePermitEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !238, !alias.scope !235, !noundef !7
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_RNvXs6_NtCset5b41vfmiv_13pingora_cache4lockNtB5_11WritePermitNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  store i8 1, ptr %i.a, align 8, !alias.scope !242
  %i.d = load ptr, ptr %0, align 8, !alias.scope !242, !nonnull !7, !noundef !7 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 97
  store atomic i8 4, ptr %i.e seq_cst, align 1, !noalias !242
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  invoke void @_RNvMNtNtCs2awuzAz5vY4_5tokio4sync9semaphoreNtB2_9Semaphore11add_permits(ptr noundef nonnull align 8 %i.f, i64 noundef 10)
          to label %_RNvXs6_NtCset5b41vfmiv_13pingora_cache4lockNtB5_11WritePermitNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  %i.h = load ptr, ptr %0, align 8, !alias.scope !249, !nonnull !7, !noundef !7
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !249
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreEEB1d_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #29
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreEEB1d_.exit unwind label %bb.f

_RNvXs6_NtCset5b41vfmiv_13pingora_cache4lockNtB5_11WritePermitNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop.exit: ; preds = %bb.a, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253)
  %i.k = load ptr, ptr %0, align 8, !alias.scope !256, !nonnull !7, !noundef !7
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !256
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreEEB1d_.exit2

bb.e:                                             ; preds = %_RNvXs6_NtCset5b41vfmiv_13pingora_cache4lockNtB5_11WritePermitNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop.exit
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #29
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreEEB1d_.exit2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreEEB1d_.exit2: ; preds = %_RNvXs6_NtCset5b41vfmiv_13pingora_cache4lockNtB5_11WritePermitNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop.exit, %bb.e
  ret void

bb.f:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreEEB1d_.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCset5b41vfmiv_13pingora_cache4lock9CacheLockEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(912) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableToNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableToNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.1 unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.1: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableToNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.2 unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.2: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableToNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.3 unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.3: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableToNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.4 unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.4: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 288
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableToNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.5 unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.5: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 344
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableToNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.6 unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.6: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 400
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableToNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.7 unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.7: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.6
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 456
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableToNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.8 unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.8: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.7
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 512
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableToNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.9 unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.9: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 568
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableToNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.10 unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.10: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.9
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 624
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableToNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.11 unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.11: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.10
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 680
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableToNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.12 unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.12: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.11
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 736
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableToNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.13 unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.13: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.12
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 792
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableToNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.14 unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.14: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.13
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 848
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableToNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.15 unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.15: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.14
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit7.i.i.i: ; preds = %.lr.ph
  %i.q = add i64 %.sroa.0.1.i.i.i2, 1             ; 2 uses
  %i.r = icmp eq i64 %i.q, 16
  br i1 %i.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit7.i.i.i._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.14, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.13, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.12, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.11, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.10, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.9, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.8, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.7, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.6, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.5, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.4, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.3, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i, %bb.a
  %i.s = phi i1 [ false, %bb.a ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.1 ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.2 ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.3 ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.4 ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.5 ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.6 ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.7 ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.8 ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.9 ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.10 ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.11 ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.12 ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.13 ], [ true, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.14 ]
  %.lcssa = phi i64 [ 1, %bb.a ], [ 2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i ], [ 3, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.1 ], [ 4, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.2 ], [ 5, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.3 ], [ 6, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.4 ], [ 7, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.5 ], [ 8, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.6 ], [ 9, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.7 ], [ 10, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.8 ], [ 11, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.9 ], [ 12, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.10 ], [ 13, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.11 ], [ 14, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.12 ], [ 15, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.13 ], [ 16, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.14 ]
  %i.t = landingpad { ptr, i32 }
          cleanup
  br i1 %i.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit7.i.i.i._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit7.i.i.i
  %.sroa.0.1.i.i.i2 = phi i64 [ %i.q, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit7.i.i.i ], [ %.lcssa, %bb.b ] ; 2 uses
  %i.u = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.0.1.i.i.i2
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableToNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit7.i.i.i unwind label %bb.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit7.i.i.i._crit_edge: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit7.i.i.i, %bb.b
  resume { ptr, i32 } %i.t

bb.c:                                             ; preds = %.lr.ph
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvNtNtCs2awuzAz5vY4_5tokio4sync5watch13maybe_changedNtNtCset5b41vfmiv_13pingora_cache6memory12PartialStateEBU_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.b = tail call noundef i64 @_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio4sync5watch5stateNtB5_11AtomicState4load(ptr noundef nonnull align 8 %i.a) ; 2 uses
  %i.c = and i64 %i.b, -2                         ; 2 uses
  %i.d = load i64, ptr %1, align 8, !noundef !7
  %.not = icmp eq i64 %i.d, %i.c
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %2 = trunc i64 %i.b to i1
  %. = select i1 %2, i8 1, i8 2
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 %i.c, ptr %1, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.0.0 = phi i8 [ 0, %bb.c ], [ %., %bb.b ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs2awuzAz5vY4_5tokio4sync5watch7channelNtNtCset5b41vfmiv_13pingora_cache6memory12PartialStateEBN_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef range(i64 0, 2) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [256 x i8], align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @_RNvMNtNtNtCs2awuzAz5vY4_5tokio4sync5watch10big_notifyNtB2_9BigNotify3new(ptr noalias nofree noundef nonnull sret([256 x i8]) align 8 captures(none) dereferenceable(256) %.sroa.5)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !257
  %i.a = tail call noundef align 8 dereferenceable_or_null(360) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 72, 913) 360, i64 noundef 8) #25, !noalias !257 ; 17 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 360) #31, !noalias !257
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i64 1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(256) %.sroa.5, i64 256, i1 false)
  %.sroa.6.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store i64 0, ptr %.sroa.6.0..sroa_idx37, align 8
  %.sroa.7.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  store i8 0, ptr %.sroa.7.0..sroa_idx38, align 8
  %.sroa.840.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  store i64 %1, ptr %.sroa.840.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  store i64 %2, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  store i64 0, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  store i32 0, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 316
  store i8 0, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.1341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1341.0..sroa_idx, i8 0, i64 24, i1 false)
  store i64 1, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store i64 1, ptr %.sroa.17.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %i.c = atomicrmw add ptr %i.a, i64 1 monotonic, align 8
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  store ptr %i.a, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.f, align 8
  ret void

bb.d:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXCskD7i0qFYELX_3lruINtB3_6KeyRefyENtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtCsaHowi4STlW6_9hashbrown6hasher13DefaultHasherECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 16 captures(none) dereferenceable(48) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !7
  %.val = load i64, ptr %i.a, align 8, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = load i8, ptr %i.b, align 16, !alias.scope !269, !noundef !7 ; 3 uses
  %i.d = icmp ugt i8 %i.c, 64
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = zext i64 %.val to i128
  %i.f = zext nneg i8 %i.c to i128
  %i.g = shl nuw i128 %i.e, %i.f
  %i.h = load i128, ptr %1, align 16, !alias.scope !269, !noundef !7
  %i.i = or i128 %i.h, %i.g
  %i.j = add nuw i8 %i.c, 64
  br label %_RINvXsa_NtNtCskKLDkoKarTP_4core4hash5implsyNtB8_4Hash4hashNtNtCsaHowi4STlW6_9hashbrown6hasher13DefaultHasherECset5b41vfmiv_13pingora_cache.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load i128, ptr %1, align 16, !alias.scope !269, !noundef !7 ; 2 uses
  %i.l = trunc i128 %i.k to i64
  %i.m = lshr i128 %i.k, 64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !269, !noundef !7
  %i.p = xor i64 %i.o, %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 16, !alias.scope !269, !nonnull !7, !align !270, !noundef !7
  %i.s = load i64, ptr %i.r, align 8, !noalias !269, !noundef !7
  %i.t = zext i64 %i.p to i128
  %i.u = zext i64 %i.s to i128
  %i.v = xor i128 %i.m, %i.u
  %i.w = mul nuw i128 %i.v, %i.t                  ; 2 uses
  %i.x = lshr i128 %i.w, 64
  %i.y = xor i128 %i.x, %i.w
  %i.z = trunc i128 %i.y to i64
  store i64 %i.z, ptr %i.n, align 8, !alias.scope !269
  %i.aa = zext i64 %.val to i128
  br label %_RINvXsa_NtNtCskKLDkoKarTP_4core4hash5implsyNtB8_4Hash4hashNtNtCsaHowi4STlW6_9hashbrown6hasher13DefaultHasherECset5b41vfmiv_13pingora_cache.exit

_RINvXsa_NtNtCskKLDkoKarTP_4core4hash5implsyNtB8_4Hash4hashNtNtCsaHowi4STlW6_9hashbrown6hasher13DefaultHasherECset5b41vfmiv_13pingora_cache.exit: ; preds = %bb.b, %bb.c
  %.sink.i = phi i128 [ %i.aa, %bb.c ], [ %i.i, %bb.b ]
  %storemerge.i.i.i = phi i8 [ 64, %bb.c ], [ %i.j, %bb.b ]
  store i128 %.sink.i, ptr %1, align 16, !alias.scope !269
  store i8 %storemerge.i.i.i, ptr %i.b, align 16, !alias.scope !269
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMNtNtCskKLDkoKarTP_4core4char7methodsc11is_assigned(i32 noundef range(i32 33, 1114112) %0) unnamed_addr #6 {
bb.a:
  %i.a = icmp samesign ult i32 %0, 888
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %0, 262142
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %0, 917505
  %i.d = add nsw i32 %0, -917536
  %or.cond2 = icmp ult i32 %i.d, 96
  %or.cond = select i1 %i.c, i1 true, i1 %or.cond2
  %i.e = add nsw i32 %0, -917760
  %or.cond3 = icmp ult i32 %i.e, 240
  %or.cond6 = select i1 %or.cond, i1 true, i1 %or.cond3
  %i.f = add nsw i32 %0, -983040
  %or.cond4 = icmp ult i32 %i.f, 65534
  %or.cond7 = select i1 %or.cond6, i1 true, i1 %or.cond4
  br i1 %or.cond7, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvNtNtNtCskKLDkoKarTP_4core7unicode12unicode_data13cn_planes_0_311lookup_slow(i32 noundef %0) #29
  %i.h = xor i1 %i.g, true
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = add nsw i32 %0, -1048576
  %spec.select = icmp ult i32 %i.i, 65534
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.a, %bb.d
  %.sroa.0.0.shrunk = phi i1 [ true, %bb.c ], [ %i.h, %bb.d ], [ true, %bb.a ], [ %spec.select, %bb.e ]
  ret i1 %.sroa.0.0.shrunk
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtNtCs2awuzAz5vY4_5tokio4sync5watchINtB5_8ReceiverNtNtCset5b41vfmiv_13pingora_cache6memory12PartialStateE17borrow_and_updateBX_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 272 ; 4 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 3 uses
  %or.cond3.i = icmp ult i32 %i.e, 1073741822
  br i1 %or.cond3.i, label %bb.b, label %bb.c, !prof !271

bb.b:                                             ; preds = %bb.a
  %i.f = add nuw nsw i32 %i.e, 1
  %i.g = cmpxchg weak ptr %i.d, i32 %i.e, i32 %i.f acquire monotonic, align 4
  %i.h = extractvalue { i32, i1 } %i.g, 1
  br i1 %i.h, label %_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit, label %bb.c, !prof !49

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended(ptr noundef nonnull align 4 %i.d)
  br label %_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit

_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit: ; preds = %bb.b, %bb.c
  call void @_RNvMsd_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtCset5b41vfmiv_13pingora_cache6memory12PartialStateE3newB1c_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.d)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !7, !align !272, !noundef !7 ; 2 uses
  store ptr %i.j, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 336
  %i.o = invoke noundef i64 @_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio4sync5watch5stateNtB5_11AtomicState4load(ptr noundef nonnull align 8 %i.n)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsh_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtCset5b41vfmiv_13pingora_cache6memory12PartialStateENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
end_hunk_1
