Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ungrammar-9d1e9c1bc854813a.ungrammar.8689ab7e44756dc2-cgu.0?download=true
inline.NumInlined: 161
inline.NumDeleted: 92
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place:bb.a
._crit_edge:                                      ; preds = %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %i.x, %._crit_edge.loopexit ], [ 0, %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ]
  %i.y = phi i64 [ %.pre, %._crit_edge.loopexit ], [ -1, %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ] ; 2 uses
  %i.z = icmp ult i64 %i.y, 8
  %.sroa.04.0 = select i1 %i.z, i64 %i.y, i64 %.pre-phi
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = sub i64 %.sroa.04.0, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.k
  %.sroa.0.06 = phi i64 [ %i.ae, %bb.k ], [ 0, %._crit_edge.i ] ; 10 uses
  %i.ae = add nuw i64 %.sroa.0.06, 1
  %i.af = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.0.06
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !4
  %.not = icmp eq i8 %i.ah, -128
  br i1 %.not, label %bb.c, label %bb.k

bb.c:                                             ; preds = %.lr.ph
  %.neg = xor i64 %.sroa.0.06, -1
  %.neg11 = shl i64 %.neg, 5
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 %.neg11 ; 2 uses
  br label %_RNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes.exit

_RNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.j, %bb.c
  %i.aj = invoke noundef i64 %.40.val(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.06)
          to label %bb.e unwind label %bb.d       ; 3 uses

bb.d:                                             ; preds = %bb.j, %_RNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsby8LzHty7VS_9ungrammar(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #18
          to label %bb.m unwind label %bb.l

bb.e:                                             ; preds = %_RNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %.val12 = load i64, ptr %i.b, align 8, !noundef !4 ; 6 uses
  %.sroa.0.07.i = and i64 %.val12, %i.aj          ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.al, align 1, !noalias !108
  %i.am = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.an = bitcast <16 x i1> %i.am to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.an, 0
  br i1 %.not.i9.i, label %.lr.ph.i16, label %._crit_edge.i15, !prof !9

._crit_edge.i15:                                  ; preds = %.lr.ph.i16, %bb.e
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.e ], [ %.sroa.0.0.i, %.lr.ph.i16 ]
  %.lcssa.i = phi i16 [ %i.an, %bb.e ], [ %i.be, %.lr.ph.i16 ]
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = add i64 %.sroa.0.0.lcssa.i, %i.ap
  %i.ar = and i64 %i.aq, %.val12                  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noundef !4
  %i.au = icmp sgt i8 %i.at, -1
  br i1 %i.au, label %bb.f, label %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !5

bb.f:                                             ; preds = %._crit_edge.i15
  %.val2.i.i = load <16 x i8>, ptr %.val, align 16
  %i.av = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.aw = bitcast <16 x i1> %i.av to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.aw, 0
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aw, i1 true)
  %i.ay = zext nneg i16 %i.ax to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i16:                                       ; preds = %bb.e, %.lr.ph.i16
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i16 ], [ %.sroa.0.07.i, %bb.e ]
  %i.az = phi i64 [ %i.ba, %.lr.ph.i16 ], [ 0, %bb.e ]
  %i.ba = add i64 %i.az, 16                       ; 2 uses
  %i.bb = add i64 %i.ba, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.bb, %.val12           ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bc, align 1, !noalias !108
  %i.bd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.be, 0
  br i1 %.not.i.i, label %.lr.ph.i16, label %._crit_edge.i15, !prof !10

_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.f, %._crit_edge.i15
  %.sroa.0.0.i5.i = phi i64 [ %i.ay, %bb.f ], [ %i.ar, %._crit_edge.i15 ] ; 4 uses
  %i.bf = sub i64 %.sroa.0.06, %.sroa.0.07.i
  %i.bg = sub i64 %.sroa.0.0.i5.i, %.sroa.0.07.i
  %i.bh = xor i64 %i.bg, %i.bf
  %.unshifted = and i64 %i.bh, %.val12
  %i.bi = icmp ult i64 %.unshifted, 16
  br i1 %i.bi, label %bb.h, label %bb.g, !prof !109

bb.g:                                             ; preds = %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %i.bj = shl i64 %.sroa.0.0.i5.i, 5
  %i.bk = sub nuw nsw i64 -32, %i.bj
  %i.bl = getelementptr inbounds i8, ptr %.val, i64 %i.bk ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !noundef !4
  %i.bo = lshr i64 %i.aj, 57
  %i.bp = trunc nuw nsw i64 %i.bo to i8           ; 2 uses
  %i.bq = add i64 %.sroa.0.0.i5.i, -16
  %i.br = and i64 %i.bq, %.val12
  store i8 %i.bp, ptr %i.bm, align 1
  %i.bs = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.bt = getelementptr i8, ptr %i.bs, i64 %i.br
  %i.bu = getelementptr i8, ptr %i.bt, i64 16
  store i8 %i.bp, ptr %i.bu, align 1
  %i.bv = icmp eq i8 %i.bn, -1
  br i1 %i.bv, label %bb.i, label %bb.j

bb.h:                                             ; preds = %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %i.bw = lshr i64 %i.aj, 57
  %i.bx = trunc nuw nsw i64 %i.bw to i8           ; 2 uses
  %i.by = add i64 %.sroa.0.06, -16
  %i.bz = and i64 %.val12, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.06
  store i8 %i.bx, ptr %i.ca, align 1
  %i.cb = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.cc = getelementptr i8, ptr %i.cb, i64 %i.bz
  %i.cd = getelementptr i8, ptr %i.cc, i64 16
  store i8 %i.bx, ptr %i.cd, align 1
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.ce = add i64 %.sroa.0.06, -16
  %i.cf = load i64, ptr %i.b, align 8, !noundef !4
  %i.cg = and i64 %i.cf, %i.ce
  %i.ch = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.sroa.0.06
  store i8 -1, ptr %i.ci, align 1
  %i.cj = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.ck = getelementptr i8, ptr %i.cj, i64 %i.cg
  %i.cl = getelementptr i8, ptr %i.ck, i64 16
  store i8 -1, ptr %i.cl, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bl, ptr noundef nonnull align 1 dereferenceable(32) %i.ai, i64 32, i1 false)
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  invoke void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsby8LzHty7VS_9ungrammar(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.bl, i64 noundef 4)
          to label %_RNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes.exit unwind label %bb.d

bb.k:                                             ; preds = %bb.h, %bb.i, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.0.06, %.val14
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph

bb.l:                                             ; preds = %bb.d
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.m:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.ak
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCsby8LzHty7VS_9ungrammar5lexer8tokenize(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 14 uses
  %.sroa.10.i = alloca [24 x i8], align 8         ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  store i64 0, ptr %i.l, align 8
  %i.m = icmp eq i64 %2, 0
  br i1 %i.m, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.437.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %.sroa.538.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.516.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 4 uses
  %.sroa.516.sroa.4.0..sroa.516.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %.sroa.516.sroa.5.0..sroa.516.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.450.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %.sroa.551.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNvMNtCsby8LzHty7VS_9ungrammar5lexerNtB2_8Location7advance.exit
  %.sroa.0.0213 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.1, %_RNvMNtCsby8LzHty7VS_9ungrammar5lexerNtB2_8Location7advance.exit ] ; 12 uses
  %.sroa.8.0212 = phi i64 [ %2, %.lr.ph ], [ %.sroa.8.1, %_RNvMNtCsby8LzHty7VS_9ungrammar5lexerNtB2_8Location7advance.exit ] ; 9 uses
  %.sroa.040.0208 = phi i64 [ 0, %.lr.ph ], [ %.sroa.040.1, %_RNvMNtCsby8LzHty7VS_9ungrammar5lexerNtB2_8Location7advance.exit ] ; 4 uses
  %.sroa.843.0204 = phi i64 [ 0, %.lr.ph ], [ %.sroa.843.1, %_RNvMNtCsby8LzHty7VS_9ungrammar5lexerNtB2_8Location7advance.exit ] ; 3 uses
  %i.w = invoke { ptr, i64 } @_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchesNvNtCsby8LzHty7VS_9ungrammar5lexer13is_whitespaceEBR_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0213, i64 noundef %.sroa.8.0212)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit ; 2 uses

._crit_edge:                                      ; preds = %_RNvMNtCsby8LzHty7VS_9ungrammar5lexerNtB2_8Location7advance.exit, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  store i64 2, ptr %0, align 8
  br label %bb.ce

.loopexit:                                        ; preds = %.thread58
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.d
  %lpad.loopexit60 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit: ; preds = %bb.cc, %bb.cb, %bb.bz, %bb.by, %bb.c, %bb.b
  %lpad.loopexit373 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp: ; preds = %.split61.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsby8LzHty7VS_9ungrammar.exit.i
  %lpad.loopexit.split-lp374 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %.thread55, %bb.ay, %.split63.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.bn, %.loopexit.split-lp180.i, %bb.aa, %bb.az
  %eh.lpad-body = phi { ptr, i32 } [ %lpad.phi183.i, %.loopexit.split-lp180.i ], [ %i.kk, %bb.bn ], [ %i.ef, %bb.aa ], [ %lpad.phi.i, %bb.az ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit60, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit373, %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit ], [ %lpad.loopexit.split-lp374, %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsby8LzHty7VS_9ungrammar5lexer5TokenEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #18
          to label %common.resume unwind label %bb.cf

bb.c:                                             ; preds = %bb.b
  %i.y = extractvalue { ptr, i64 } %i.w, 0        ; 8 uses
  %i.z = extractvalue { ptr, i64 } %i.w, 1        ; 11 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  %i.aa = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsby8LzHty7VS_9ungrammar(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 2)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit

.noexc:                                           ; preds = %bb.c
  br i1 %i.aa, label %.lr.ph.split.i.i.i, label %_RNvNtCsby8LzHty7VS_9ungrammar5lexer12skip_comment.exit

.lr.ph.split.i.i.i:                               ; preds = %.noexc, %.lr.ph.split.i.i.i.backedge
  %i.ab = phi i64 [ %i.aq, %.lr.ph.split.i.i.i.backedge ], [ 0, %.noexc ] ; 4 uses
  %i.ac = sub nuw i64 %i.z, %i.ab                 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ab ; 2 uses
  %i.ae = icmp samesign ult i64 %i.ac, 16
  br i1 %i.ae, label %.preheader.i.i.i.i, label %bb.d

.preheader.i.i.i.i:                               ; preds = %.lr.ph.split.i.i.i
  %.not.i.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.split.i.i.i
  %i.af = invoke { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef range(i64 0, -9223372036854775808) %i.ac)
          to label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i unwind label %.loopexit.split-lp.loopexit

._crit_edge.i.i.i.i:                              ; preds = %bb.e, %.lr.ph.i.i.i.i, %.preheader.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ %.sroa.01.05.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ac, %bb.e ]
  %.sroa.0.1.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i ], [ 0, %bb.e ]
  %i.ag = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i, 0
  %i.ah = insertvalue { i64, i64 } %i.ag, i64 %.sroa.01.0.lcssa.i.i.i.i, 1
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.e
  %.sroa.01.05.i.i.i.i = phi i64 [ %i.al, %bb.e ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.sroa.01.05.i.i.i.i
  %i.aj = load i8, ptr %i.ai, align 1, !alias.scope !192, !noalias !193, !noundef !4
  %i.ak = icmp eq i8 %i.aj, 10
  br i1 %i.ak, label %._crit_edge.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.al = add nuw nsw i64 %.sroa.01.05.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.al, %i.ac
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i: ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.merged.i.i.i.i = phi { i64, i64 } [ %i.ah, %._crit_edge.i.i.i.i ], [ %i.af, %bb.d ] ; 2 uses
  %i.am = extractvalue { i64, i64 } %.merged.i.i.i.i, 0
  %i.an = trunc nuw i64 %i.am to i1
  br i1 %i.an, label %bb.f, label %.split.i.thread.i

bb.f:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i
  %i.ao = extractvalue { i64, i64 } %.merged.i.i.i.i, 1 ; 2 uses
  %i.ap = add i64 %i.ab, 1
  %i.aq = add i64 %i.ap, %i.ao                    ; 2 uses
  %.not12.i.i.i = icmp ugt i64 %i.aq, %i.z        ; 2 uses
  %i.ar = add i64 %i.ao, %i.ab                    ; 3 uses
  %or.cond.i.not.i.i = icmp ult i64 %i.ar, %i.z
  br i1 %or.cond.i.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not12.i.i.i, label %.split.i.thread.i, label %.lr.ph.split.i.i.i.backedge

bb.h:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ar
  %lhsc.i.i = load i8, ptr %i.as, align 1, !alias.scope !194, !noalias !195
  %lhsc.i.fr.i = freeze i8 %lhsc.i.i
  %i.at = icmp eq i8 %lhsc.i.fr.i, 10             ; 2 uses
  %brmerge.i.i = or i1 %.not12.i.i.i, %i.at
  br i1 %brmerge.i.i, label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.loopexit.i.i, label %.lr.ph.split.i.i.i.backedge

.lr.ph.split.i.i.i.backedge:                      ; preds = %bb.h, %bb.g
  br label %.lr.ph.split.i.i.i

_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.loopexit.i.i: ; preds = %bb.h
  %i.au = add nuw i64 %i.ar, 1                    ; 5 uses
  br i1 %i.at, label %bb.i, label %.split.i.thread.i

bb.i:                                             ; preds = %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.loopexit.i.i
  %.not.i.i = icmp ult i64 %i.au, %i.z
  br i1 %.not.i.i, label %bb.j, label %.split.i.thread.i

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !alias.scope !196, !noalias !195, !noundef !4
  %i.ax = icmp sgt i8 %i.aw, -65
  br i1 %i.ax, label %.split.i.thread.i, label %.invoke

.split.i.thread.i:                                ; preds = %bb.g, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i, %bb.i, %bb.j, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.loopexit.i.i
  %.sink.i.i13.i = phi i64 [ %i.au, %bb.j ], [ %i.au, %bb.i ], [ %i.z, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.loopexit.i.i ], [ %i.z, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i ], [ %i.z, %bb.g ] ; 2 uses
  %i.ay = sub nuw i64 %i.z, %.sink.i.i13.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sink.i.i13.i
  br label %_RNvNtCsby8LzHty7VS_9ungrammar5lexer12skip_comment.exit

.invoke:                                          ; preds = %bb.bw, %bb.j
  %3 = phi ptr [ %i.y, %bb.j ], [ %.sroa.0.0213, %bb.bw ]
  %4 = phi i64 [ %i.z, %bb.j ], [ %i.jw, %bb.bw ] ; 2 uses
  %5 = phi i64 [ %i.au, %bb.j ], [ %i.mj, %bb.bw ]
  %6 = phi ptr [ @3, %bb.j ], [ @1, %bb.bw ]
  invoke void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, i64 noundef %5, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %6) #22
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvNtCsby8LzHty7VS_9ungrammar5lexer12skip_comment.exit: ; preds = %.split.i.thread.i, %.noexc
  %.sroa.8.2 = phi i64 [ %i.ay, %.split.i.thread.i ], [ %i.z, %.noexc ] ; 2 uses
  %.sroa.0.2 = phi ptr [ %i.az, %.split.i.thread.i ], [ %i.y, %.noexc ] ; 7 uses
  %i.ba = icmp eq i64 %.sroa.8.0212, %.sroa.8.2
  br i1 %i.ba, label %bb.k, label %bb.bg

bb.k:                                             ; preds = %_RNvNtCsby8LzHty7VS_9ungrammar5lexer12skip_comment.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !197)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i)
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 %.sroa.8.0212 ; 19 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 1 ; 2 uses
  %i.bd = load i8, ptr %.sroa.0.2, align 1, !noalias !198, !noundef !4 ; 5 uses
  %i.be = icmp sgt i8 %i.bd, -1
  br i1 %i.be, label %bb.l, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit12.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit12.i.i: ; preds = %bb.k
  %i.bf = and i8 %i.bd, 31
  %i.bg = zext nneg i8 %i.bf to i32               ; 3 uses
  %i.bh = icmp samesign ne i64 %.sroa.8.0212, 1
  call void @llvm.assume(i1 %i.bh)
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 2 ; 2 uses
  %i.bj = load i8, ptr %i.bc, align 1, !noalias !198, !noundef !4
  %i.bk = shl nuw nsw i32 %i.bg, 6
  %i.bl = and i8 %i.bj, 63
  %i.bm = zext nneg i8 %i.bl to i32               ; 2 uses
  %i.bn = or disjoint i32 %i.bk, %i.bm
  %i.bo = icmp samesign ugt i8 %i.bd, -33
  br i1 %i.bo, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit14.i.i, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bp = zext nneg i8 %i.bd to i32
  br label %bb.m

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit14.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit12.i.i
  %i.bq = icmp samesign ne i64 %.sroa.8.0212, 2
  call void @llvm.assume(i1 %i.bq)
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 3 ; 2 uses
  %i.bs = load i8, ptr %i.bi, align 1, !noalias !198, !noundef !4
  %i.bt = shl nuw nsw i32 %i.bm, 6
  %i.bu = and i8 %i.bs, 63
  %i.bv = zext nneg i8 %i.bu to i32
  %i.bw = or disjoint i32 %i.bt, %i.bv            ; 2 uses
  %i.bx = shl nuw nsw i32 %i.bg, 12
  %i.by = or disjoint i32 %i.bw, %i.bx
  %i.bz = icmp samesign ugt i8 %i.bd, -17
  br i1 %i.bz, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit16.i.i, label %bb.m

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit16.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit14.i.i
  %i.ca = icmp samesign ne i64 %.sroa.8.0212, 3
  call void @llvm.assume(i1 %i.ca)
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 4
  %i.cc = load i8, ptr %i.br, align 1, !noalias !198, !noundef !4
  %i.cd = shl nuw nsw i32 %i.bg, 18
  %i.ce = and i32 %i.cd, 1835008
  %i.cf = shl nuw nsw i32 %i.bw, 6
  %i.cg = and i8 %i.cc, 63
  %i.ch = zext nneg i8 %i.cg to i32
  %i.ci = or disjoint i32 %i.cf, %i.ch
  %i.cj = or disjoint i32 %i.ci, %i.ce
  br label %bb.m

bb.m:                                             ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit16.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit14.i.i, %bb.l, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit12.i.i
  %.sroa.0.4.ph.i = phi ptr [ %i.bi, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit12.i.i ], [ %i.br, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit14.i.i ], [ %i.cb, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit16.i.i ], [ %i.bc, %bb.l ] ; 11 uses
  %.sroa.4.0.i.ph.i = phi i32 [ %i.bn, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit12.i.i ], [ %i.by, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit14.i.i ], [ %i.cj, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit16.i.i ], [ %i.bp, %bb.l ] ; 9 uses
  %i.ck = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 1114112
  call void @llvm.assume(i1 %i.ck)
  switch i32 %.sroa.4.0.i.ph.i, label %bb.n [
    i32 61, label %bb.bl
    i32 42, label %bb.o
    i32 63, label %bb.p
    i32 40, label %bb.q
    i32 41, label %bb.r
    i32 124, label %bb.s
    i32 58, label %bb.t
    i32 39, label %bb.u
  ]

bb.n:                                             ; preds = %bb.m
  %i.cl = add nsw i32 %.sroa.4.0.i.ph.i, -97
  %or.cond.i = icmp ult i32 %i.cl, 26
  br i1 %or.cond.i, label %bb.ax, label %bb.au

bb.o:                                             ; preds = %bb.m
  br label %bb.bl

bb.p:                                             ; preds = %bb.m
  br label %bb.bl

bb.q:                                             ; preds = %bb.m
  br label %bb.bl

bb.r:                                             ; preds = %bb.m
  br label %bb.bl

bb.s:                                             ; preds = %bb.m
  br label %bb.bl

bb.t:                                             ; preds = %bb.m
  br label %bb.bl

bb.u:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !199
  store i64 0, ptr %i.g, align 8, !noalias !199
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.437.0..sroa_idx.i, align 8, !noalias !199
  store i64 0, ptr %.sroa.538.0..sroa_idx.i, align 8, !noalias !199
  %i.cm = icmp eq ptr %.sroa.0.4.ph.i, %i.bb
  br i1 %i.cm, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.u, %bb.ar
  %i.cn = phi i64 [ %storemerge.i, %bb.ar ], [ 0, %bb.u ] ; 7 uses
  %.sroa.0.1187.i = phi ptr [ %.sroa.0.2.i, %bb.ar ], [ %.sroa.0.4.ph.i, %bb.u ] ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.1187.i, i64 1 ; 3 uses
  %i.cp = load i8, ptr %.sroa.0.1187.i, align 1, !noalias !200, !noundef !4 ; 5 uses
  %i.cq = icmp sgt i8 %i.cp, -1
  br i1 %i.cq, label %bb.v, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit12.i75.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit12.i75.i: ; preds = %.lr.ph.i
  %i.cr = and i8 %i.cp, 31
  %i.cs = zext nneg i8 %i.cr to i32               ; 3 uses
  %i.ct = icmp ne ptr %i.co, %i.bb
  call void @llvm.assume(i1 %i.ct)
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.1187.i, i64 2 ; 3 uses
  %i.cv = load i8, ptr %i.co, align 1, !noalias !200, !noundef !4
  %i.cw = shl nuw nsw i32 %i.cs, 6
  %i.cx = and i8 %i.cv, 63
  %i.cy = zext nneg i8 %i.cx to i32               ; 2 uses
  %i.cz = or disjoint i32 %i.cw, %i.cy
  %i.da = icmp samesign ugt i8 %i.cp, -33
  br i1 %i.da, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit14.i78.i, label %bb.w

bb.v:                                             ; preds = %.lr.ph.i
  %i.db = zext nneg i8 %i.cp to i32
  br label %bb.w

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit14.i78.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit12.i75.i
  %i.dc = icmp ne ptr %i.cu, %i.bb
  call void @llvm.assume(i1 %i.dc)
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.1187.i, i64 3 ; 3 uses
  %i.de = load i8, ptr %i.cu, align 1, !noalias !200, !noundef !4
  %i.df = shl nuw nsw i32 %i.cy, 6
  %i.dg = and i8 %i.de, 63
  %i.dh = zext nneg i8 %i.dg to i32
  %i.di = or disjoint i32 %i.df, %i.dh            ; 2 uses
  %i.dj = shl nuw nsw i32 %i.cs, 12
  %i.dk = or disjoint i32 %i.di, %i.dj
  %i.dl = icmp samesign ugt i8 %i.cp, -17
  br i1 %i.dl, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit16.i79.i, label %bb.w

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit16.i79.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit14.i78.i
  %i.dm = icmp ne ptr %i.dd, %i.bb
  call void @llvm.assume(i1 %i.dm)
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.1187.i, i64 4
  %i.do = load i8, ptr %i.dd, align 1, !noalias !200, !noundef !4
  %i.dp = shl nuw nsw i32 %i.cs, 18
  %i.dq = and i32 %i.dp, 1835008
  %i.dr = shl nuw nsw i32 %i.di, 6
  %i.ds = and i8 %i.do, 63
  %i.dt = zext nneg i8 %i.ds to i32
  %i.du = or disjoint i32 %i.dr, %i.dt
  %i.dv = or disjoint i32 %i.du, %i.dq
  br label %bb.w

.loopexit179.i:                                   ; preds = %bb.aq, %bb.ae, %bb.ad
  %lpad.loopexit181.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp180.i

.loopexit.split-lp180.i.loopexit:                 ; preds = %._crit_edge.i, %bb.ao
  %lpad.loopexit65 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp180.i

.loopexit.split-lp180.i.loopexit.split-lp:        ; preds = %.invoke.i
  %lpad.loopexit.split-lp66 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp180.i

.loopexit.split-lp180.i:                          ; preds = %.loopexit.split-lp180.i.loopexit, %.loopexit.split-lp180.i.loopexit.split-lp, %.loopexit179.i
  %lpad.phi183.i = phi { ptr, i32 } [ %lpad.loopexit181.i, %.loopexit179.i ], [ %lpad.loopexit65, %.loopexit.split-lp180.i.loopexit ], [ %lpad.loopexit.split-lp66, %.loopexit.split-lp180.i.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsby8LzHty7VS_9ungrammar(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #18
          to label %.body unwind label %bb.at, !noalias !199

bb.w:                                             ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit16.i79.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit14.i78.i, %bb.v, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit12.i75.i
  %.sroa.0.5.ph.i = phi ptr [ %i.cu, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit12.i75.i ], [ %i.dd, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit14.i78.i ], [ %i.dn, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit16.i79.i ], [ %i.co, %bb.v ] ; 8 uses
  %.sroa.4.0.i76.ph.i = phi i32 [ %i.cz, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit12.i75.i ], [ %i.dk, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit14.i78.i ], [ %i.dv, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit16.i79.i ], [ %i.db, %bb.v ] ; 10 uses
  %i.dw = icmp samesign ult i32 %.sroa.4.0.i76.ph.i, 1114112
  call void @llvm.assume(i1 %i.dw)
  switch i32 %.sroa.4.0.i76.ph.i, label %bb.ac [
    i32 92, label %bb.aj
    i32 39, label %bb.am
  ]

._crit_edge.i:                                    ; preds = %bb.u, %bb.ar
end_hunk_0
begin_hunk_1_@_RNvNtCsby8LzHty7VS_9ungrammar5lexer8tokenize:bb.a
  %i.hm = icmp eq i32 %.sroa.4.0.i.ph.i, 95
  %or.cond1.i = or i1 %i.hl, %i.hm
  br i1 %or.cond1.i, label %bb.ax, label %.split63.i

bb.aw:                                            ; preds = %bb.au
  %i.hn = icmp eq i32 %.sroa.4.0.i.ph.i, 13
  br i1 %i.hn, label %.split61.i, label %.split63.i

bb.ax:                                            ; preds = %bb.av, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !199
  store i64 0, ptr %i.f, align 8, !noalias !199
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.450.0..sroa_idx.i, align 8, !noalias !199
  store i64 0, ptr %.sroa.551.0..sroa_idx.i, align 8, !noalias !199
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsby8LzHty7VS_9ungrammar(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 1)
          to label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit106.i unwind label %.loopexit.split-lp.i, !noalias !199

_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit106.i: ; preds = %bb.ax
  %i.ho = load ptr, ptr %.sroa.450.0..sroa_idx.i, align 8, !alias.scope !211, !noalias !199, !nonnull !4, !noundef !4
  %i.hp = trunc nuw nsw i32 %.sroa.4.0.i.ph.i to i8
  store i8 %i.hp, ptr %i.ho, align 1, !noalias !199
  store i64 1, ptr %.sroa.551.0..sroa_idx.i, align 8, !noalias !199
  %i.hq = icmp eq ptr %.sroa.0.4.ph.i, %i.bb
  br i1 %i.hq, label %._crit_edge190.i, label %.lr.ph189.i

.split61.i:                                       ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !212
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsby8LzHty7VS_9ungrammar(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 53, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc16:                                         ; preds = %.split61.i
  %i.hr = load i64, ptr %i.a, align 8, !range !202, !noalias !212, !noundef !4
  %i.hs = trunc nuw i64 %i.hr to i1
  %i.ht = load i64, ptr %i.r, align 8, !range !203, !noalias !212, !noundef !4 ; 3 uses
  br i1 %i.hs, label %bb.ay, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsby8LzHty7VS_9ungrammar.exit109.i, !prof !5

bb.ay:                                            ; preds = %.noexc16
  %i.hu = load i64, ptr %i.s, align 8, !noalias !212
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.ht, i64 %i.hu) #23
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc17:                                         ; preds = %bb.ay
  unreachable

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsby8LzHty7VS_9ungrammar.exit109.i: ; preds = %.noexc16
  %i.hv = load ptr, ptr %i.s, align 8, !noalias !212, !nonnull !4, !noundef !4 ; 2 uses
  %i.hw = icmp ugt i64 %i.ht, 52
  call void @llvm.assume(i1 %i.hw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !212
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(53) %i.hv, ptr noundef nonnull readonly align 1 dereferenceable(53) @6, i64 range(i64 0, -9223372036854775808) 53, i1 false), !noalias !213
  store i64 %i.ht, ptr %.sroa.516.0..sroa_idx.i, align 8, !alias.scope !197, !noalias !205
  store ptr %i.hv, ptr %.sroa.516.sroa.4.0..sroa.516.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !197, !noalias !205
  store i64 53, ptr %.sroa.516.sroa.5.0..sroa.516.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !197, !noalias !205
  br label %.loopexit68

.split63.i:                                       ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !199
  store i32 %.sroa.4.0.i.ph.i, ptr %i.e, align 4, !noalias !199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !199
  store ptr %i.e, ptr %i.d, align 8, !noalias !199
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsk_NtCshzWfHUSfYae_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.435.0..sroa_idx.i, align 8, !noalias !199
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.516.0..sroa_idx.i, ptr noundef nonnull @7, ptr noundef nonnull %i.d)
          to label %.thread51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread51:                                        ; preds = %.split63.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !199
  br label %.loopexit68

.loopexit.i:                                      ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit16.i120.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.loopexit.split-lp.i:                             ; preds = %bb.ax
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.az:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsby8LzHty7VS_9ungrammar(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #18
          to label %.body unwind label %bb.at, !noalias !199

.lr.ph189.i:                                      ; preds = %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit106.i, %bb.bf
  %i.hx = phi i64 [ %i.ju, %bb.bf ], [ 1, %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit106.i ] ; 3 uses
  %.sroa.0.3188.i = phi ptr [ %.sroa.0.7.i, %bb.bf ], [ %.sroa.0.4.ph.i, %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit106.i ] ; 9 uses
  %i.hy = load i8, ptr %.sroa.0.3188.i, align 1, !noalias !214, !noundef !4 ; 7 uses
  %i.hz = icmp sgt i8 %i.hy, -1                   ; 2 uses
  br i1 %i.hz, label %bb.ba, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit12.i110.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit12.i110.i: ; preds = %.lr.ph189.i
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.0.3188.i, i64 1 ; 2 uses
  %i.ib = and i8 %i.hy, 31
  %i.ic = zext nneg i8 %i.ib to i32               ; 3 uses
  %i.id = icmp ne ptr %i.ia, %i.bb
  call void @llvm.assume(i1 %i.id)
  %i.ie = load i8, ptr %i.ia, align 1, !noalias !214, !noundef !4
  %i.if = shl nuw nsw i32 %i.ic, 6
  %i.ig = and i8 %i.ie, 63
  %i.ih = zext nneg i8 %i.ig to i32               ; 2 uses
  %i.ii = or disjoint i32 %i.if, %i.ih
  %i.ij = icmp samesign ugt i8 %i.hy, -33
  br i1 %i.ij, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit14.i113.i, label %bb.bb

bb.ba:                                            ; preds = %.lr.ph189.i
  %i.ik = zext nneg i8 %i.hy to i32
  br label %bb.bb

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit14.i113.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit12.i110.i
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.0.3188.i, i64 2 ; 2 uses
  %i.im = icmp ne ptr %i.il, %i.bb
  call void @llvm.assume(i1 %i.im)
  %i.in = load i8, ptr %i.il, align 1, !noalias !214, !noundef !4
  %i.io = shl nuw nsw i32 %i.ih, 6
  %i.ip = and i8 %i.in, 63
  %i.iq = zext nneg i8 %i.ip to i32
  %i.ir = or disjoint i32 %i.io, %i.iq            ; 2 uses
  %i.is = shl nuw nsw i32 %i.ic, 12
  %i.it = or disjoint i32 %i.ir, %i.is
  %i.iu = icmp samesign ugt i8 %i.hy, -17
  br i1 %i.iu, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit16.i114.i, label %bb.bb

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit16.i114.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit14.i113.i
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.0.3188.i, i64 3 ; 2 uses
  %i.iw = icmp ne ptr %i.iv, %i.bb
  call void @llvm.assume(i1 %i.iw)
  %i.ix = load i8, ptr %i.iv, align 1, !noalias !214, !noundef !4
  %i.iy = shl nuw nsw i32 %i.ic, 18
  %i.iz = and i32 %i.iy, 1835008
  %i.ja = shl nuw nsw i32 %i.ir, 6
  %i.jb = and i8 %i.ix, 63
  %i.jc = zext nneg i8 %i.jb to i32
  %i.jd = or disjoint i32 %i.ja, %i.jc
  %i.je = or disjoint i32 %i.jd, %i.iz
  br label %bb.bb

bb.bb:                                            ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit16.i114.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit14.i113.i, %bb.ba, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit12.i110.i
  %.sroa.4.0.i111.ph.i = phi i32 [ %i.it, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit14.i113.i ], [ %i.je, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit16.i114.i ], [ %i.ii, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit12.i110.i ], [ %i.ik, %bb.ba ] ; 6 uses
  %i.jf = icmp samesign ult i32 %.sroa.4.0.i111.ph.i, 1114112
  call void @llvm.assume(i1 %i.jf)
  %i.jg = add nsw i32 %.sroa.4.0.i111.ph.i, -97
  %or.cond2.i = icmp ult i32 %i.jg, 26
  br i1 %or.cond2.i, label %bb.be, label %bb.bc

._crit_edge190.i:                                 ; preds = %bb.bf, %bb.bd, %bb.bc, %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit106.i
  %.sroa.0.3.lcssa.i = phi ptr [ %i.bb, %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit106.i ], [ %.sroa.0.3188.i, %bb.bc ], [ %.sroa.0.3188.i, %bb.bd ], [ %i.bb, %bb.bf ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !199
  br label %bb.bl

bb.bc:                                            ; preds = %bb.bb
  %i.jh = icmp samesign ugt i32 %.sroa.4.0.i111.ph.i, 64
  br i1 %i.jh, label %bb.bd, label %._crit_edge190.i

bb.bd:                                            ; preds = %bb.bc
  %i.ji = icmp samesign ult i32 %.sroa.4.0.i111.ph.i, 91
  %i.jj = icmp eq i32 %.sroa.4.0.i111.ph.i, 95
  %or.cond3.i = or i1 %i.ji, %i.jj
  br i1 %or.cond3.i, label %bb.be, label %._crit_edge190.i

bb.be:                                            ; preds = %bb.bd, %bb.bb
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.0.3188.i, i64 1 ; 2 uses
  br i1 %i.hz, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit16.i120.i, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit12.i116.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit12.i116.i: ; preds = %bb.be
  %i.jl = icmp ne ptr %i.jk, %i.bb
  call void @llvm.assume(i1 %i.jl)
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.0.3188.i, i64 2 ; 2 uses
  %i.jn = icmp samesign ugt i8 %i.hy, -33
  br i1 %i.jn, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit14.i119.i, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit16.i120.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit14.i119.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit12.i116.i
  %i.jo = icmp ne ptr %i.jm, %i.bb
  call void @llvm.assume(i1 %i.jo)
  %i.jp = icmp samesign ugt i8 %i.hy, -17
  %spec.select.v.i = select i1 %i.jp, i64 4, i64 3
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.sroa.0.3188.i, i64 %spec.select.v.i
  br label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit16.i120.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit16.i120.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit14.i119.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit12.i116.i, %bb.be
  %.sroa.0.7.i = phi ptr [ %i.jm, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit12.i116.i ], [ %spec.select.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit14.i119.i ], [ %i.jk, %bb.be ] ; 2 uses
  %i.jq = icmp sgt i64 %i.hx, -1
  call void @llvm.assume(i1 %i.jq)
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsby8LzHty7VS_9ungrammar(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 1)
          to label %bb.bf unwind label %.loopexit.i, !noalias !199

bb.bf:                                            ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit16.i120.i
  %i.jr = load ptr, ptr %.sroa.450.0..sroa_idx.i, align 8, !alias.scope !215, !noalias !199, !nonnull !4, !noundef !4
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 %i.hx
  %i.jt = trunc nuw nsw i32 %.sroa.4.0.i111.ph.i to i8
  store i8 %i.jt, ptr %i.js, align 1, !noalias !199
  %i.ju = add nuw i64 %i.hx, 1                    ; 2 uses
  store i64 %i.ju, ptr %.sroa.551.0..sroa_idx.i, align 8, !noalias !199
  %i.jv = icmp eq ptr %.sroa.0.7.i, %i.bb
  br i1 %i.jv, label %._crit_edge190.i, label %.lr.ph189.i

bb.bg:                                            ; preds = %_RNvNtCsby8LzHty7VS_9ungrammar5lexer12skip_comment.exit, %bb.bp
  %.sroa.8.1 = phi i64 [ %i.kg, %bb.bp ], [ %.sroa.8.2, %_RNvNtCsby8LzHty7VS_9ungrammar5lexer12skip_comment.exit ] ; 4 uses
  %.sroa.0.1 = phi ptr [ %.sroa.0.0.i, %bb.bp ], [ %.sroa.0.2, %_RNvNtCsby8LzHty7VS_9ungrammar5lexer12skip_comment.exit ]
  %i.jw = sub i64 %.sroa.8.0212, %.sroa.8.1       ; 14 uses
  %i.jx = icmp eq i64 %i.jw, 0
  br i1 %i.jx, label %.thread58.preheader, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.not.i = icmp ult i64 %i.jw, %.sroa.8.0212
  br i1 %.not.i, label %bb.bi, label %.split.i

.split.i:                                         ; preds = %bb.bh
  %i.jy = icmp eq i64 %.sroa.8.1, 0
  br i1 %i.jy, label %.thread58.preheader, label %.thread55

bb.bi:                                            ; preds = %bb.bh
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.0.0213, i64 %i.jw
  %i.ka = load i8, ptr %i.jz, align 1, !alias.scope !216, !noundef !4
  %i.kb = icmp sgt i8 %i.ka, -65
  br i1 %i.kb, label %.thread58.preheader, label %.thread55

.thread58.preheader:                              ; preds = %.split.i, %bb.bg, %bb.bi
  br label %.thread58

.loopexit68:                                      ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsby8LzHty7VS_9ungrammar.exit109.i, %.noexc15, %.thread51
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.516.0..sroa_idx.i, i64 24, i1 false)
  store i64 1, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.040.0208, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.843.0204, ptr %.sroa.53.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsby8LzHty7VS_9ungrammar5lexer5TokenENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsby8LzHty7VS_9ungrammar5lexer5TokenEEB1c_.exit unwind label %bb.bj

bb.bj:                                            ; preds = %.loopexit68
  %i.kc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsby8LzHty7VS_9ungrammar5lexer5TokenENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.kd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %.body, %bb.bj
  %common.resume.op = phi { ptr, i32 } [ %i.kc, %bb.bj ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsby8LzHty7VS_9ungrammar5lexer5TokenEEB1c_.exit: ; preds = %.loopexit68
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsby8LzHty7VS_9ungrammar5lexer5TokenENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %bb.ce

bb.bl:                                            ; preds = %._crit_edge190.i, %bb.am, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.m
  %.sroa.0.0.i = phi ptr [ %.sroa.0.3.lcssa.i, %._crit_edge190.i ], [ %.sroa.0.4.ph.i, %bb.m ], [ %.sroa.0.4.ph.i, %bb.o ], [ %.sroa.0.4.ph.i, %bb.p ], [ %.sroa.0.4.ph.i, %bb.q ], [ %.sroa.0.4.ph.i, %bb.r ], [ %.sroa.0.4.ph.i, %bb.s ], [ %.sroa.0.4.ph.i, %bb.t ], [ %.sroa.0.5.ph.i, %bb.am ] ; 2 uses
  %.sroa.04.0.i = phi i64 [ 0, %._crit_edge190.i ], [ 2, %bb.m ], [ 3, %bb.o ], [ 5, %bb.p ], [ 7, %bb.q ], [ 8, %bb.r ], [ 4, %bb.s ], [ 6, %bb.t ], [ 1, %bb.am ]
  %i.ke = ptrtoint ptr %i.bb to i64
  %i.kf = ptrtoint ptr %.sroa.0.0.i to i64
  %i.kg = sub nuw i64 %i.ke, %i.kf
  store i64 %.sroa.04.0.i, ptr %i.t, align 8, !alias.scope !197, !noalias !205
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i, i64 24, i1 false), !noalias !205
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false)
  store i64 %.sroa.040.0208, ptr %i.u, align 8
  store i64 %.sroa.843.0204, ptr %i.v, align 8
  %i.kh = load i64, ptr %i.l, align 8, !alias.scope !217, !noalias !218, !noundef !4 ; 3 uses
  %i.ki = load i64, ptr %i.j, align 8, !range !219, !alias.scope !217, !noalias !218, !noundef !4
  %i.kj = icmp eq i64 %i.kh, %i.ki
  br i1 %i.kj, label %bb.bm, label %bb.bp

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsby8LzHty7VS_9ungrammar5lexer5TokenE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.bp unwind label %bb.bn, !noalias !218

bb.bn:                                            ; preds = %bb.bm
  %i.kk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsby8LzHty7VS_9ungrammar5lexer5TokenEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h) #18
          to label %.body unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.kl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.bp:                                            ; preds = %bb.bm, %bb.bl
  %i.km = load ptr, ptr %i.k, align 8, !alias.scope !217, !noalias !218, !nonnull !4, !noundef !4
  %i.kn = getelementptr inbounds nuw [48 x i8], ptr %i.km, i64 %i.kh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.kn, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  %i.ko = add i64 %i.kh, 1
  store i64 %i.ko, ptr %i.l, align 8, !alias.scope !217, !noalias !218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.bg

.thread58:                                        ; preds = %.thread58.preheader, %bb.bq
  %i.kp = phi i64 [ %i.kt, %bb.bq ], [ %i.jw, %.thread58.preheader ]
  %i.kq = invoke { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr7memrchr(i8 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0213, i64 noundef %i.kp)
          to label %.noexc26 unwind label %.loopexit ; 2 uses

.noexc26:                                         ; preds = %.thread58
  %i.kr = extractvalue { i64, i64 } %i.kq, 0
  %i.ks = trunc nuw i64 %i.kr to i1
  br i1 %i.ks, label %bb.br, label %bb.bx

bb.bq:                                            ; preds = %bb.bs, %bb.br
  %.not.i.i.i = icmp ugt i64 %i.kt, %i.jw
  br i1 %.not.i.i.i, label %bb.bx, label %.thread58

bb.br:                                            ; preds = %.noexc26
  %i.kt = extractvalue { i64, i64 } %i.kq, 1      ; 5 uses
  %or.cond16.i.not.i.i = icmp ult i64 %i.kt, %i.jw
  br i1 %or.cond16.i.not.i.i, label %bb.bs, label %bb.bq

bb.bs:                                            ; preds = %bb.br
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.0.0213, i64 %i.kt
  %lhsc.i.i22 = load i8, ptr %i.ku, align 1, !alias.scope !220, !noalias !221
  %i.kv = icmp eq i8 %lhsc.i.i22, 10
  br i1 %i.kv, label %bb.bt, label %bb.bq

bb.bt:                                            ; preds = %bb.bs
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.0.0213, i64 %i.jw ; 4 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bv, %bb.bt
  %.sroa.0.013.i.i.i = phi i64 [ %i.mh, %bb.bv ], [ 0, %bb.bt ]
  %.sroa.0.0512.i.i.i = phi ptr [ %.sroa.0.1.ph.i.i.i, %bb.bv ], [ %.sroa.0.0213, %bb.bt ] ; 5 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.0.0512.i.i.i, i64 1 ; 3 uses
  %i.ky = load i8, ptr %.sroa.0.0512.i.i.i, align 1, !alias.scope !222, !noalias !223, !noundef !4 ; 5 uses
  %i.kz = icmp sgt i8 %i.ky, -1
  br i1 %i.kz, label %bb.bu, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit12.i.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit12.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.la = and i8 %i.ky, 31
  %i.lb = zext nneg i8 %i.la to i32               ; 3 uses
  %i.lc = icmp ne ptr %i.kx, %i.kw
  call void @llvm.assume(i1 %i.lc)
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.0.0512.i.i.i, i64 2 ; 3 uses
  %i.le = load i8, ptr %i.kx, align 1, !alias.scope !222, !noalias !223, !noundef !4
  %i.lf = shl nuw nsw i32 %i.lb, 6
  %i.lg = and i8 %i.le, 63
  %i.lh = zext nneg i8 %i.lg to i32               ; 2 uses
  %i.li = or disjoint i32 %i.lf, %i.lh
  %i.lj = icmp samesign ugt i8 %i.ky, -33
  br i1 %i.lj, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit14.i.i.i.i.i, label %bb.bv

bb.bu:                                            ; preds = %.lr.ph.i.i.i
  %i.lk = zext nneg i8 %i.ky to i32
  br label %bb.bv

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit12.i.i.i.i.i
  %i.ll = icmp ne ptr %i.ld, %i.kw
  call void @llvm.assume(i1 %i.ll)
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.0.0512.i.i.i, i64 3 ; 3 uses
  %i.ln = load i8, ptr %i.ld, align 1, !alias.scope !222, !noalias !223, !noundef !4
  %i.lo = shl nuw nsw i32 %i.lh, 6
  %i.lp = and i8 %i.ln, 63
  %i.lq = zext nneg i8 %i.lp to i32
  %i.lr = or disjoint i32 %i.lo, %i.lq            ; 2 uses
  %i.ls = shl nuw nsw i32 %i.lb, 12
  %i.lt = or disjoint i32 %i.lr, %i.ls
  %i.lu = icmp samesign ugt i8 %i.ky, -17
  br i1 %i.lu, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit16.i.i.i.i.i, label %bb.bv

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit14.i.i.i.i.i
  %i.lv = icmp ne ptr %i.lm, %i.kw
  call void @llvm.assume(i1 %i.lv)
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.0.0512.i.i.i, i64 4
  %i.lx = load i8, ptr %i.lm, align 1, !alias.scope !222, !noalias !223, !noundef !4
  %i.ly = shl nuw nsw i32 %i.lb, 18
  %i.lz = and i32 %i.ly, 1835008
  %i.ma = shl nuw nsw i32 %i.lr, 6
  %i.mb = and i8 %i.lx, 63
  %i.mc = zext nneg i8 %i.mb to i32
  %i.md = or disjoint i32 %i.ma, %i.mc
  %i.me = or disjoint i32 %i.md, %i.lz
  br label %bb.bv

bb.bv:                                            ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit14.i.i.i.i.i, %bb.bu, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit12.i.i.i.i.i
  %.sroa.0.1.ph.i.i.i = phi ptr [ %i.ld, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit12.i.i.i.i.i ], [ %i.lm, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit14.i.i.i.i.i ], [ %i.lw, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit16.i.i.i.i.i ], [ %i.kx, %bb.bu ] ; 2 uses
  %spec.select.i.ph.i.i.i = phi i32 [ %i.li, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit12.i.i.i.i.i ], [ %i.lt, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit14.i.i.i.i.i ], [ %i.me, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsby8LzHty7VS_9ungrammar.exit16.i.i.i.i.i ], [ %i.lk, %bb.bu ]
  %i.mf = icmp eq i32 %spec.select.i.ph.i.i.i, 10
  %i.mg = zext i1 %i.mf to i64
  %i.mh = add i64 %.sroa.0.013.i.i.i, %i.mg       ; 2 uses
  %.not.i.i.i.i23 = icmp eq ptr %.sroa.0.1.ph.i.i.i, %i.kw
  br i1 %.not.i.i.i.i23, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters6filterINtB5_6FilterNtNtNtBb_3str4iter5CharsNCNvMNtCsby8LzHty7VS_9ungrammar5lexerNtB1v_8Location7advance0ENtNtNtB9_6traits8iterator8Iterator5countB1x_.exit.i, label %.lr.ph.i.i.i

_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters6filterINtB5_6FilterNtNtNtBb_3str4iter5CharsNCNvMNtCsby8LzHty7VS_9ungrammar5lexerNtB1v_8Location7advance0ENtNtNtB9_6traits8iterator8Iterator5countB1x_.exit.i: ; preds = %bb.bv
  %i.mi = add i64 %i.mh, %.sroa.040.0208          ; 2 uses
  %i.mj = add nuw i64 %i.kt, 1                    ; 5 uses
  %.not.i.i24 = icmp ult i64 %i.mj, %i.jw
  br i1 %.not.i.i24, label %bb.bw, label %bb.ca

bb.bw:                                            ; preds = %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters6filterINtB5_6FilterNtNtNtBb_3str4iter5CharsNCNvMNtCsby8LzHty7VS_9ungrammar5lexerNtB1v_8Location7advance0ENtNtNtB9_6traits8iterator8Iterator5countB1x_.exit.i
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.0.0213, i64 %i.mj
  %i.ml = load i8, ptr %i.mk, align 1, !alias.scope !224, !noalias !221, !noundef !4
  %i.mm = icmp sgt i8 %i.ml, -65
  br i1 %i.mm, label %bb.ca, label %.invoke

bb.bx:                                            ; preds = %bb.bq, %.noexc26
  %i.mn = icmp ult i64 %i.jw, 32
  br i1 %i.mn, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.mo = invoke noundef i64 @_RNvNtNtCshzWfHUSfYae_4core3str5count14do_count_chars(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0213, i64 noundef %i.jw)
          to label %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit

bb.bz:                                            ; preds = %bb.bx
  %i.mp = invoke noundef i64 @_RNvNtNtCshzWfHUSfYae_4core3str5count23char_count_general_case(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0213, i64 noundef %i.jw)
          to label %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit

_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit.i: ; preds = %bb.bz, %bb.by
  %.sroa.0.0.i5.i = phi i64 [ %i.mo, %bb.by ], [ %i.mp, %bb.bz ]
  %i.mq = add i64 %.sroa.0.0.i5.i, %.sroa.843.0204
  br label %_RNvMNtCsby8LzHty7VS_9ungrammar5lexerNtB2_8Location7advance.exit

bb.ca:                                            ; preds = %bb.bw, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters6filterINtB5_6FilterNtNtNtBb_3str4iter5CharsNCNvMNtCsby8LzHty7VS_9ungrammar5lexerNtB1v_8Location7advance0ENtNtNtB9_6traits8iterator8Iterator5countB1x_.exit.i
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.0.0213, i64 %i.mj ; 2 uses
  %gepdiff.i = sub nuw nsw i64 %i.jw, %i.mj       ; 3 uses
  %i.ms = icmp ult i64 %gepdiff.i, 32
  br i1 %i.ms, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.mt = invoke noundef i64 @_RNvNtNtCshzWfHUSfYae_4core3str5count14do_count_chars(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.mr, i64 noundef %gepdiff.i)
          to label %_RNvMNtCsby8LzHty7VS_9ungrammar5lexerNtB2_8Location7advance.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit

bb.cc:                                            ; preds = %bb.ca
  %i.mu = invoke noundef i64 @_RNvNtNtCshzWfHUSfYae_4core3str5count23char_count_general_case(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.mr, i64 noundef %gepdiff.i)
          to label %_RNvMNtCsby8LzHty7VS_9ungrammar5lexerNtB2_8Location7advance.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit

_RNvMNtCsby8LzHty7VS_9ungrammar5lexerNtB2_8Location7advance.exit: ; preds = %bb.cb, %bb.cc, %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit.i
  %.sroa.843.1 = phi i64 [ %i.mq, %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit.i ], [ %i.mt, %bb.cb ], [ %i.mu, %bb.cc ]
  %.sroa.040.1 = phi i64 [ %.sroa.040.0208, %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit.i ], [ %i.mi, %bb.cb ], [ %i.mi, %bb.cc ]
  %i.mv = icmp eq i64 %.sroa.8.1, 0
  br i1 %i.mv, label %._crit_edge, label %bb.b

.thread55:                                        ; preds = %.split.i, %bb.bi
  invoke void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0213, i64 noundef %.sroa.8.0212, i64 noundef 0, i64 noundef %i.jw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #23
          to label %bb.cd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cd:                                            ; preds = %.thread55
  unreachable

bb.ce:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsby8LzHty7VS_9ungrammar5lexer5TokenEEB1c_.exit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.cf:                                            ; preds = %.body
  %i.mw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCsby8LzHty7VS_9ungrammar5lexer8LocationNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !228
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.a, align 8, !noalias !228
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 4, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !228
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCshzWfHUSfYae_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXs6_NtNtCshzWfHUSfYae_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCshzWfHUSfYae_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs8_NtNtCshzWfHUSfYae_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCsby8LzHty7VS_9ungrammar4NodeEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !237, !noundef !4 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCsby8LzHty7VS_9ungrammar4NodeENtNtB1h_5alloc6GlobalEB1R_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !239, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCsby8LzHty7VS_9ungrammar4NodeEEB1O_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !239, !nonnull !4, !noundef !4 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !240
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCsby8LzHty7VS_9ungrammar4NodeEEB1g_.exit.i.i, %bb.c
  %.sroa.05.017.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCsby8LzHty7VS_9ungrammar4NodeEEB1g_.exit.i.i ] ; 2 uses
  %.sroa.6.016.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCsby8LzHty7VS_9ungrammar4NodeEEB1g_.exit.i.i ] ; 2 uses
  %.sroa.86.015.i.i = phi i16 [ %i.j, %bb.c ], [ %i.y, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCsby8LzHty7VS_9ungrammar4NodeEEB1g_.exit.i.i ] ; 2 uses
  %.sroa.107.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.w, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCsby8LzHty7VS_9ungrammar4NodeEEB1g_.exit.i.i ]
  %.not11.i.i.i = icmp eq i16 %.sroa.86.015.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCsby8LzHty7VS_9ungrammar4NodeEE9next_implKb0_EB1z_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.016.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.017.i.i, %bb.d ]
  %.val9.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !241
  %i.m = icmp sgt <16 x i8> %.val9.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -512 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCsby8LzHty7VS_9ungrammar4NodeEE9next_implKb0_EB1z_.exit.i.i

_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCsby8LzHty7VS_9ungrammar4NodeEE9next_implKb0_EB1z_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.016.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.017.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.015.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds [32 x i8], ptr %.sroa.05.1.i.i, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -32 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsby8LzHty7VS_9ungrammar(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCsby8LzHty7VS_9ungrammar4NodeEEB1g_.exit.i.i unwind label %bb.e, !noalias !239

bb.e:                                             ; preds = %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCsby8LzHty7VS_9ungrammar4NodeEE9next_implKb0_EB1z_.exit.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsby8LzHty7VS_9ungrammar(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECsby8LzHty7VS_9ungrammar.exit.i.i.i.i.i unwind label %bb.f, !noalias !239

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19, !noalias !239
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECsby8LzHty7VS_9ungrammar.exit.i.i.i.i.i: ; preds = %bb.e
  resume { ptr, i32 } %i.u

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCsby8LzHty7VS_9ungrammar4NodeEEB1g_.exit.i.i: ; preds = %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCsby8LzHty7VS_9ungrammar4NodeEE9next_implKb0_EB1z_.exit.i.i
  %i.w = add i64 %.sroa.107.014.i.i, -1           ; 2 uses
  %i.x = add i16 %.lcssa.i.i.i, -1
  %i.y = and i16 %i.x, %.lcssa.i.i.i
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsby8LzHty7VS_9ungrammar(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t), !noalias !239
  %i.z = icmp eq i64 %i.w, 0
  br i1 %i.z, label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCsby8LzHty7VS_9ungrammar4NodeEEB1O_.exit.i, label %bb.d

_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCsby8LzHty7VS_9ungrammar4NodeEEB1O_.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCsby8LzHty7VS_9ungrammar4NodeEEB1g_.exit.i.i, %bb.b
  %i.aa = shl i64 %i.b, 5                         ; 2 uses
  %i.ab = add i64 %i.aa, 32                       ; 2 uses
  %i.ac = add i64 %i.b, 17
  %i.ad = add i64 %i.ac, %i.ab                    ; 4 uses
  %i.ae = icmp uge i64 %i.ad, %i.ab
  %i.af = icmp ult i64 %i.ad, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ae)
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCsby8LzHty7VS_9ungrammar4NodeENtNtB1h_5alloc6GlobalEB1R_.exit, label %bb.g

bb.g:                                             ; preds = %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCsby8LzHty7VS_9ungrammar4NodeEEB1O_.exit.i
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !237, !nonnull !4, !noundef !4
  %i.ai = sub nuw nsw i64 -32, %i.aa
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 16) #17, !noalias !237
  br label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCsby8LzHty7VS_9ungrammar4NodeENtNtB1h_5alloc6GlobalEB1R_.exit

_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCsby8LzHty7VS_9ungrammar4NodeENtNtB1h_5alloc6GlobalEB1R_.exit: ; preds = %bb.a, %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCsby8LzHty7VS_9ungrammar4NodeEEB1O_.exit.i, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCsby8LzHty7VS_9ungrammar5TokenEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !250, !noundef !4 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCsby8LzHty7VS_9ungrammar5TokenENtNtB1h_5alloc6GlobalEB1R_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !252, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCsby8LzHty7VS_9ungrammar5TokenEEB1O_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !252, !nonnull !4, !noundef !4 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !253
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
end_hunk_1
