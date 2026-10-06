Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/libsignal_protocol-78e79be79537878f.libsignal_protocol.3431899de14c0db4-cgu.02?download=true
inline.NumInlined: 381
inline.NumDeleted: 154
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvMs6_NtCs454tfXuUxcf_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCsbPnb37KEv9e_8indexmap5inner8get_hashNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientE0EB2K_:bb.a
bb.i:                                             ; preds = %bb.i, %.new
  %.sroa.01.07.i.i = phi i64 [ 0, %.new ], [ %i.aa, %bb.i ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.01.07.i.i ; 2 uses
  %.val5.i.i = load <16 x i8>, ptr %i.x, align 16
  %.lobit.i.i.i = ashr <16 x i8> %.val5.i.i, splat (i8 7)
  %i.y = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>
  %i.z = or <2 x i64> %i.y, splat (i64 -9187201950435737472)
  store <2 x i64> %i.z, ptr %i.x, align 16
  %i.aa = add i64 %.sroa.01.07.i.i, 32            ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.01.07.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %.val5.i.i.1 = load <16 x i8>, ptr %i.ac, align 16
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val5.i.i.1, splat (i8 7)
  %i.ad = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>
  %i.ae = or <2 x i64> %i.ad, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ae, ptr %i.ac, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.i.unr-lcssa, label %bb.i

.lr.ph.i.unr-lcssa:                               ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.i.unr-lcssa, %bb.h
  %.sroa.01.07.i.i.epil.init = phi i64 [ 0, %bb.h ], [ %i.aa, %.lr.ph.i.unr-lcssa ]
  %lcmp.mod351 = trunc i64 %.sroa.05.0.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod351)
  %i.af = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.01.07.i.i.epil.init ; 2 uses
  %.val5.i.i.epil = load <16 x i8>, ptr %i.af, align 16
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val5.i.i.epil, splat (i8 7)
  %i.ag = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>
  %i.ah = or <2 x i64> %i.ag, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ah, ptr %i.af, align 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.unr-lcssa, %.epil.preheader
  %i.ai = icmp ult i64 %i.i, 15                   ; 2 uses
  %spec.select.i.i = select i1 %i.ai, i64 16, i64 %i.s, !prof !5
  %spec.select10.i.i = select i1 %i.ai, i64 %i.s, i64 16, !prof !5
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i, i64 %spec.select.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aj, ptr noundef nonnull align 1 dereferenceable(1) %.val.i, i64 %spec.select10.i.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !39
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.ak, align 8, !noalias !39
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 8, ptr %i.al, align 8, !noalias !39
  store ptr %0, ptr %i.a, align 8, !noalias !39
  br label %bb.l

.loopexit.i:                                      ; preds = %bb.ah
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp.i:                             ; preds = %.invoke172.i, %bb.s, %.invoke170.i, %bb.p, %.invoke.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs454tfXuUxcf_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #18
          to label %common.resume unwind label %bb.ak

bb.k:                                             ; preds = %bb.p
  unreachable

._crit_edge.i:                                    ; preds = %bb.aj
  %.pre.i = load i64, ptr %i.h, align 8, !alias.scope !39 ; 4 uses
  %i.am = icmp ult i64 %.pre.i, 8
  br i1 %i.am, label %bb.o, label %bb.m

bb.l:                                             ; preds = %bb.aj, %.lr.ph.i
  %.sroa.04.053.i = phi i64 [ 0, %.lr.ph.i ], [ %i.an, %bb.aj ] ; 11 uses
  %.neg.i = xor i64 %.sroa.04.053.i, -1
  %i.an = add nuw i64 %.sroa.04.053.i, 1
  %i.ao = load ptr, ptr %0, align 8, !alias.scope !39, !nonnull !4, !noundef !4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sroa.04.053.i
  %i.aq = load i8, ptr %i.ap, align 1, !noundef !4
  %.not.i11 = icmp eq i8 %i.aq, -128
  br i1 %.not.i11, label %bb.q, label %bb.aj

bb.m:                                             ; preds = %._crit_edge.i
  %i.ar = icmp eq i64 %.pre.i, -1
  br i1 %i.ar, label %.invoke.i, label %bb.n

.invoke.i:                                        ; preds = %bb.af, %bb.aa, %bb.ad, %bb.ab, %bb.m
  %i.as = phi ptr [ @3, %bb.ab ], [ @4, %bb.m ], [ @9, %bb.ad ], [ @9, %bb.aa ], [ @9, %bb.af ]
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.as) #19
          to label %.cont.i unwind label %.loopexit.split-lp.i

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.at = add nuw i64 %.pre.i, 1
  %i.au = lshr i64 %i.at, 3
  %i.av = mul nuw i64 %i.au, 7
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i
  %.sroa.01.0.i = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.av, %bb.n ] ; 2 uses
  %i.aw = load i64, ptr %i.d, align 8, !alias.scope !39, !noundef !4 ; 2 uses
  %i.ax = icmp ult i64 %.sroa.01.0.i, %i.aw
  br i1 %i.ax, label %bb.p, label %_RNvMsa_NtCs454tfXuUxcf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #19
          to label %bb.k unwind label %.loopexit.split-lp.i

bb.q:                                             ; preds = %bb.l
  %i.ay = icmp ugt i64 %.sroa.04.053.i, 2305843009213693950
  br i1 %i.ay, label %.invoke170.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.neg18.i = shl i64 %.neg.i, 3
  %i.az = getelementptr inbounds i8, ptr %i.ao, i64 %.neg18.i ; 2 uses
  %i.ba = sub nsw i64 0, %.sroa.04.053.i
  br label %_RNvNtCsgxBkk5gSRhY_4core3ptr25swap_nonoverlapping_bytes.exit.i

.invoke170.i:                                     ; preds = %bb.q, %bb.ac
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #19
          to label %.cont171.i unwind label %.loopexit.split-lp.i

.cont171.i:                                       ; preds = %.invoke170.i
  unreachable

_RNvNtCsgxBkk5gSRhY_4core3ptr25swap_nonoverlapping_bytes.exit.i: ; preds = %bb.ah, %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %i.bb = load ptr, ptr %0, align 8, !alias.scope !41, !noalias !42, !nonnull !4, !noundef !4 ; 7 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.ba
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -8
  %.val3.i.i = load i64, ptr %i.bd, align 8, !noalias !43, !noundef !4 ; 3 uses
  %i.be = icmp ult i64 %.val3.i.i, %3
  br i1 %i.be, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RNvNtCsgxBkk5gSRhY_4core3ptr25swap_nonoverlapping_bytes.exit.i
  invoke void @_RNvNtCsgxBkk5gSRhY_4core9panicking18panic_bounds_check(i64 noundef %.val3.i.i, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #17
          to label %.noexc.i unwind label %.loopexit.split-lp.i

.noexc.i:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %_RNvNtCsgxBkk5gSRhY_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %i.bf = getelementptr inbounds nuw [72 x i8], ptr %2, i64 %.val3.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !43, !noundef !4 ; 4 uses
  %.val23.i = load i64, ptr %i.h, align 8, !alias.scope !39, !noundef !4 ; 6 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.z, %bb.t
  %.pn.i.i = phi i64 [ %i.bh, %bb.t ], [ %i.cb, %bb.z ]
  %i.bi = phi i64 [ 0, %bb.t ], [ %i.ca, %bb.z ]  ; 2 uses
  %.sroa.0.0.i.i12 = and i64 %.pn.i.i, %.val23.i  ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.sroa.0.0.i.i12
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.bj, align 1, !noalias !44
  %i.bk = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.bl = bitcast <16 x i1> %i.bk to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.bl, 0
  br i1 %.not.i.i.i, label %bb.y, label %bb.v, !prof !5

bb.v:                                             ; preds = %bb.u
  %i.bm = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bl, i1 true)
  %i.bn = zext nneg i16 %i.bm to i64
  %i.bo = add i64 %.sroa.0.0.i.i12, %i.bn         ; 2 uses
  %i.bp = icmp ult i64 %i.bo, %.sroa.0.0.i.i12
  br i1 %i.bp, label %.invoke172.i, label %bb.w

.invoke172.i:                                     ; preds = %bb.v, %bb.z, %bb.y
  %i.bq = phi ptr [ @15, %bb.y ], [ @16, %bb.z ], [ @19, %bb.v ]
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bq) #17
          to label %.cont173.i unwind label %.loopexit.split-lp.i

.cont173.i:                                       ; preds = %.invoke172.i
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.br = and i64 %i.bo, %.val23.i                ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !noundef !4
  %i.bu = icmp sgt i8 %i.bt, -1
  br i1 %i.bu, label %bb.x, label %_RNvMsa_NtCs454tfXuUxcf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !prof !5

bb.x:                                             ; preds = %bb.w
  %.val2.i.i.i = load <16 x i8>, ptr %i.bb, align 16
  %i.bv = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.bw = bitcast <16 x i1> %i.bv to i16          ; 2 uses
  %.not.i7.i.i = icmp ne i16 %i.bw, 0
  %i.bx = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bw, i1 true)
  %i.by = zext nneg i16 %i.bx to i64
  tail call void @llvm.assume(i1 %.not.i7.i.i)
  br label %_RNvMsa_NtCs454tfXuUxcf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i

bb.y:                                             ; preds = %bb.u
  %i.bz = icmp eq i64 %i.bi, -16
  br i1 %i.bz, label %.invoke172.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ca = add i64 %i.bi, 16                       ; 2 uses
  %i.cb = add i64 %i.ca, %.sroa.0.0.i.i12         ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %.sroa.0.0.i.i12
  br i1 %i.cc, label %.invoke172.i, label %bb.u

_RNvMsa_NtCs454tfXuUxcf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i: ; preds = %bb.x, %bb.w
  %.sroa.0.0.i6.i.i = phi i64 [ %i.by, %bb.x ], [ %i.br, %bb.w ] ; 6 uses
  %i.cd = and i64 %.val23.i, %i.bh                ; 2 uses
  %i.ce = sub i64 %.sroa.04.053.i, %i.cd
  %i.cf = sub i64 %.sroa.0.0.i6.i.i, %i.cd
  %i.cg = xor i64 %i.cf, %i.ce
  %.unshifted.i = and i64 %i.cg, %.val23.i
  %i.ch = icmp ult i64 %.unshifted.i, 16
  br i1 %i.ch, label %bb.aa, label %bb.ab, !prof !6

bb.aa:                                            ; preds = %_RNvMsa_NtCs454tfXuUxcf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.ci = add nsw i64 %.sroa.04.053.i, -16
  %i.cj = and i64 %.val23.i, %i.ci                ; 2 uses
  %i.ck = icmp ugt i64 %i.cj, -17
  br i1 %i.ck, label %.invoke.i, label %bb.ai

bb.ab:                                            ; preds = %_RNvMsa_NtCs454tfXuUxcf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.cl = icmp eq i64 %.sroa.0.0.i6.i.i, -1
  br i1 %i.cl, label %.invoke.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cm = icmp ugt i64 %.sroa.0.0.i6.i.i, 2305843009213693950
  br i1 %i.cm, label %.invoke170.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.neg19.i = xor i64 %.sroa.0.0.i6.i.i, -1
  %.neg20.i = shl i64 %.neg19.i, 3
  %i.cn = getelementptr inbounds i8, ptr %i.bb, i64 %.neg20.i ; 2 uses
  %i.co = add nsw i64 %.sroa.0.0.i6.i.i, -16
  %i.cp = and i64 %i.co, %.val23.i                ; 2 uses
  %i.cq = icmp ugt i64 %i.cp, -17
  br i1 %i.cq, label %.invoke.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cr = lshr i64 %i.bh, 57
  %i.cs = trunc nuw nsw i64 %i.cr to i8           ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.sroa.0.0.i6.i.i ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !noundef !4
  store i8 %i.cs, ptr %i.ct, align 1
  %i.cv = load ptr, ptr %0, align 8, !alias.scope !39, !nonnull !4, !noundef !4
  %i.cw = getelementptr i8, ptr %i.cv, i64 %i.cp
  %i.cx = getelementptr i8, ptr %i.cw, i64 16
  store i8 %i.cs, ptr %i.cx, align 1
  %i.cy = icmp eq i8 %i.cu, -1
  br i1 %i.cy, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.cz = add nsw i64 %.sroa.04.053.i, -16
  %i.da = load i64, ptr %i.h, align 8, !alias.scope !39, !noundef !4
  %i.db = and i64 %i.da, %i.cz                    ; 2 uses
  %i.dc = icmp ugt i64 %i.db, -17
  br i1 %i.dc, label %.invoke.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dd = load ptr, ptr %0, align 8, !alias.scope !39, !nonnull !4, !noundef !4
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.sroa.04.053.i
  store i8 -1, ptr %i.de, align 1
  %i.df = load ptr, ptr %0, align 8, !alias.scope !39, !nonnull !4, !noundef !4
  %i.dg = getelementptr i8, ptr %i.df, i64 %i.db
  %i.dh = getelementptr i8, ptr %i.dg, i64 16
  store i8 -1, ptr %i.dh, align 1
  %i.di = load i64, ptr %i.az, align 1
  store i64 %i.di, ptr %i.cn, align 1
  br label %bb.aj

bb.ah:                                            ; preds = %bb.ae
  invoke void @_RINvNvNtCsgxBkk5gSRhY_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs4tP8yUXWbFU_18libsignal_protocol(ptr noundef nonnull %i.az, ptr noundef nonnull %i.cn, i64 noundef 1)
          to label %_RNvNtCsgxBkk5gSRhY_4core3ptr25swap_nonoverlapping_bytes.exit.i unwind label %.loopexit.i

bb.ai:                                            ; preds = %bb.aa
  %i.dj = lshr i64 %i.bh, 57
  %i.dk = trunc nuw nsw i64 %i.dj to i8           ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.sroa.04.053.i
  store i8 %i.dk, ptr %i.dl, align 1
  %i.dm = load ptr, ptr %0, align 8, !alias.scope !39, !nonnull !4, !noundef !4
  %i.dn = getelementptr i8, ptr %i.dm, i64 %i.cj
  %i.do = getelementptr i8, ptr %i.dn, i64 16
  store i8 %i.dk, ptr %i.do, align 1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ag, %bb.l
  %exitcond.not.i = icmp eq i64 %.sroa.04.053.i, %i.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.l

bb.ak:                                            ; preds = %bb.j
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %bb.as, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi.i, %bb.j ], [ %i.ez, %bb.as ]
  resume { ptr, i32 } %common.resume.op

_RNvMsa_NtCs454tfXuUxcf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %bb.o
  %i.dq = sub nuw i64 %.sroa.01.0.i, %i.aw
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dq, ptr %i.dr, align 8, !alias.scope !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !39
  br label %_RINvMsa_NtCs454tfXuUxcf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECs4tP8yUXWbFU_18libsignal_protocol.exit

bb.al:                                            ; preds = %bb.g
  %i.ds = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i13 = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.ds, i64 range(i64 1, 0) %i.f) ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !46
  %i.dt = icmp ult i64 %.sroa.0.0.i13, 15
  br i1 %i.dt, label %.thread.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.du = icmp ugt i64 %.sroa.0.0.i13, 2305843009213693951
  br i1 %i.du, label %bb.ar, label %bb.an, !prof !5

.thread.i:                                        ; preds = %bb.al
  %i.dv = icmp samesign ult i64 %.sroa.0.0.i13, 4
  %i.dw = and i64 %.sroa.0.0.i13, 8
  %..i.i = add nuw nsw i64 %i.dw, 8
  %.sroa.03.0.i.i = select i1 %i.dv, i64 4, i64 %..i.i
  br label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.dx = shl nuw i64 %.sroa.0.0.i13, 3
  %i.dy = udiv i64 %i.dx, 7
  %i.dz = add nsw i64 %i.dy, -1
  %i.ea = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dz, i1 true)
  %i.eb = lshr i64 -1, %i.ea                      ; 2 uses
  %i.ec = add nuw nsw i64 %i.eb, 1
  %or.cond8.i.i = icmp samesign ugt i64 %i.eb, 2305843009213693949
  br i1 %or.cond8.i.i, label %bb.ap, label %bb.ao, !prof !7

bb.ao:                                            ; preds = %bb.an, %.thread.i
  %.sroa.4.0.i.ph8.i = phi i64 [ %.sroa.03.0.i.i, %.thread.i ], [ %i.ec, %bb.an ] ; 5 uses
  %i.ed = shl nuw i64 %.sroa.4.0.i.ph8.i, 3
  %i.ee = add nuw i64 %i.ed, 8
  %i.ef = and i64 %i.ee, -16                      ; 3 uses
  %i.eg = add nuw nsw i64 %.sroa.4.0.i.ph8.i, 16  ; 2 uses
  %i.eh = add i64 %i.ef, %i.eg                    ; 4 uses
  %i.ei = icmp ult i64 %i.eh, %i.ef
  %i.ej = icmp ugt i64 %i.eh, 9223372036854775792
  %or.cond.i.i = or i1 %i.ei, %i.ej
  br i1 %or.cond.i.i, label %bb.ap, label %_RNvMs1_NtCs454tfXuUxcf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !8

_RNvMs1_NtCs454tfXuUxcf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.ao
  tail call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !47
  %i.ek = tail call noundef align 16 ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef %i.eh, i64 noundef range(i64 1, -9223372036854775807) 16) #21, !noalias !47 ; 2 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %bb.aq, label %_RINvMsa_NtCs454tfXuUxcf_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECs4tP8yUXWbFU_18libsignal_protocol.exit

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.em = tail call { i64, i64 } @_RNvMNtCs454tfXuUxcf_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %4), !noalias !47
  br label %_RINvMsa_NtCs454tfXuUxcf_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECs4tP8yUXWbFU_18libsignal_protocol.exit.thread

bb.aq:                                            ; preds = %_RNvMs1_NtCs454tfXuUxcf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.en = tail call { i64, i64 } @_RNvMNtCs454tfXuUxcf_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %4, i64 noundef 16, i64 noundef %i.eh), !noalias !47
  br label %_RINvMsa_NtCs454tfXuUxcf_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECs4tP8yUXWbFU_18libsignal_protocol.exit.thread

bb.ar:                                            ; preds = %bb.am
  %i.eo = tail call { i64, i64 } @_RNvMNtCs454tfXuUxcf_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %4), !noalias !48
  br label %_RINvMsa_NtCs454tfXuUxcf_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECs4tP8yUXWbFU_18libsignal_protocol.exit.thread

_RINvMsa_NtCs454tfXuUxcf_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %_RNvMs1_NtCs454tfXuUxcf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ef ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ep, i8 -1, i64 %i.eg, i1 false), !noalias !48
  %i.eq = icmp samesign ult i64 %.sroa.4.0.i.ph8.i, 9
  %i.er = add nsw i64 %.sroa.4.0.i.ph8.i, -1      ; 5 uses
  %i.es = lshr i64 %.sroa.4.0.i.ph8.i, 3
  %i.et = mul nuw nsw i64 %i.es, 7
  %.sroa.12.0.i = select i1 %i.eq, i64 %i.er, i64 %i.et ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !noalias !46
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !46
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !46
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store ptr %i.ep, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !46
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.er, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !46
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 %.sroa.12.0.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !46
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !46
  %i.eu = load i64, ptr %i.d, align 8, !alias.scope !49, !noalias !50, !noundef !4 ; 5 uses
  %i.ev = icmp eq i64 %i.eu, 0
  br i1 %i.ev, label %._crit_edge115, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtCs454tfXuUxcf_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECs4tP8yUXWbFU_18libsignal_protocol.exit
  %i.ew = load ptr, ptr %0, align 8, !alias.scope !49, !noalias !50, !nonnull !4, !noundef !4 ; 4 uses
  %.val652 = load <16 x i8>, ptr %i.ew, align 16
  %i.ex = icmp sgt <16 x i8> %.val652, splat (i8 -1)
  %i.ey = bitcast <16 x i1> %i.ex to i16
  br label %.preheader

_RINvMsa_NtCs454tfXuUxcf_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECs4tP8yUXWbFU_18libsignal_protocol.exit.thread: ; preds = %bb.ap, %bb.aq, %bb.ar
  %.pn.i.pn = phi { i64, i64 } [ %i.eo, %bb.ar ], [ %i.em, %bb.ap ], [ %i.en, %bb.aq ] ; 2 uses
  %.sroa.12.045 = extractvalue { i64, i64 } %.pn.i.pn, 1
  %.sroa.7.046 = extractvalue { i64, i64 } %.pn.i.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !46
  br label %_RINvMsa_NtCs454tfXuUxcf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECs4tP8yUXWbFU_18libsignal_protocol.exit

bb.as:                                            ; preds = %.invoke245, %.invoke, %bb.au, %bb.bg, %bb.ay
  %i.ez = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs454tfXuUxcf_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #18
          to label %common.resume unwind label %bb.bi

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.bh
  %.sroa.030.0114 = phi ptr [ %i.ew, %.preheader.lr.ph ], [ %.sroa.030.1.lcssa, %bb.bh ] ; 3 uses
  %.sroa.5.0113 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %bb.bh ] ; 3 uses
  %.sroa.9.0112 = phi i64 [ %i.eu, %.preheader.lr.ph ], [ %i.fn, %bb.bh ]
  %.sroa.13.0111 = phi i16 [ %i.ey, %.preheader.lr.ph ], [ %i.fe, %bb.bh ] ; 2 uses
  %.not.i14106 = icmp eq i16 %.sroa.13.0111, 0
  br i1 %.not.i14106, label %.noexc3.preheader, label %._crit_edge

.noexc3.preheader:                                ; preds = %.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.030.0114) ]
  %i.fa = icmp ugt i64 %.sroa.5.0113, -17
  br i1 %i.fa, label %.invoke, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.0111, %.preheader ], [ %i.fk, %.lr.ph ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.0113, %.preheader ], [ %i.fl, %.lr.ph ] ; 3 uses
  %.sroa.030.1.lcssa = phi ptr [ %.sroa.030.0114, %.preheader ], [ %i.fi, %.lr.ph ]
  %i.fb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.fc = zext nneg i16 %i.fb to i64
  %i.fd = add i16 %.sroa.13.1.lcssa, -1
  %i.fe = and i16 %i.fd, %.sroa.13.1.lcssa
  %i.ff = add i64 %.sroa.5.1.lcssa, %i.fc         ; 5 uses
  %i.fg = icmp ult i64 %i.ff, %.sroa.5.1.lcssa
  br i1 %i.fg, label %.invoke, label %bb.at

.noexc3:                                          ; preds = %.lr.ph
  %i.fh = icmp ugt i64 %.sroa.5.1107297, -33
  br i1 %i.fh, label %.invoke, label %.lr.ph

.lr.ph:                                           ; preds = %.noexc3.preheader, %.noexc3
  %.sroa.5.1107297 = phi i64 [ %i.fl, %.noexc3 ], [ %.sroa.5.0113, %.noexc3.preheader ] ; 2 uses
  %.sroa.030.1108296 = phi ptr [ %i.fi, %.noexc3 ], [ %.sroa.030.0114, %.noexc3.preheader ]
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.030.1108296, i64 16 ; 3 uses
  %.val53 = load <16 x i8>, ptr %i.fi, align 16
  %i.fj = icmp sgt <16 x i8> %.val53, splat (i8 -1)
  %i.fk = bitcast <16 x i1> %i.fj to i16          ; 2 uses
  %i.fl = add nuw i64 %.sroa.5.1107297, 16        ; 2 uses
  %.not.i14 = icmp eq i16 %i.fk, 0
  br i1 %.not.i14, label %.noexc3, label %._crit_edge

._crit_edge115:                                   ; preds = %bb.bh, %_RINvMsa_NtCs454tfXuUxcf_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECs4tP8yUXWbFU_18libsignal_protocol.exit
  %i.fm = icmp ult i64 %.sroa.12.0.i, %i.eu
  br i1 %i.fm, label %bb.ay, label %bb.aw

bb.at:                                            ; preds = %._crit_edge
  %i.fn = add i64 %.sroa.9.0112, -1               ; 2 uses
  %i.fo = sub nsw i64 0, %i.ff
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.fo
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 -8
  %.val3.i = load i64, ptr %i.fq, align 8, !noalias !51, !noundef !4 ; 3 uses
  %i.fr = icmp ult i64 %.val3.i, %3
  br i1 %i.fr, label %bb.az, label %bb.au

bb.au:                                            ; preds = %bb.at
  invoke void @_RNvNtCsgxBkk5gSRhY_4core9panicking18panic_bounds_check(i64 noundef %.val3.i, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #17
          to label %.noexc17 unwind label %bb.as

.noexc17:                                         ; preds = %bb.au
  unreachable

bb.av:                                            ; preds = %bb.bg, %bb.ay
  unreachable

bb.aw:                                            ; preds = %._crit_edge115
  %i.fs = sub nuw nsw i64 %.sroa.12.0.i, %i.eu
  store i64 %i.fs, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !46
  store i64 %i.eu, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !46
  invoke void @_RINvNvNtCsgxBkk5gSRhY_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs4tP8yUXWbFU_18libsignal_protocol(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsgxBkk5gSRhY_4core10intrinsics25typed_swap_nonoverlappingNtNtCs454tfXuUxcf_9hashbrown3raw13RawTableInnerECs4tP8yUXWbFU_18libsignal_protocol.exit unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking19panic_cannot_unwind() #20
  unreachable

_RINvNtCsgxBkk5gSRhY_4core10intrinsics25typed_swap_nonoverlappingNtNtCs454tfXuUxcf_9hashbrown3raw13RawTableInnerECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.aw
  call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs454tfXuUxcf_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !46
  br label %_RINvMsa_NtCs454tfXuUxcf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECs4tP8yUXWbFU_18libsignal_protocol.exit

bb.ay:                                            ; preds = %._crit_edge115
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #19
          to label %bb.av unwind label %bb.as

bb.az:                                            ; preds = %bb.at
  %i.fu = getelementptr inbounds nuw [72 x i8], ptr %2, i64 %.val3.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 40
  %i.fw = load i64, ptr %i.fv, align 8, !noalias !51, !noundef !4 ; 2 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.be, %bb.az
  %.pn.i.i18 = phi i64 [ %i.fw, %bb.az ], [ %i.go, %bb.be ]
  %i.fx = phi i64 [ 0, %bb.az ], [ %i.gn, %bb.be ] ; 2 uses
  %.sroa.0.0.i.i19 = and i64 %.pn.i.i18, %i.er    ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.sroa.0.0.i.i19
  %.sroa.0.0.copyload.i6.i.i20 = load <16 x i8>, ptr %i.fy, align 1, !noalias !52
  %i.fz = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i20, zeroinitializer
  %i.ga = bitcast <16 x i1> %i.fz to i16          ; 2 uses
  %.not.i.i.i21 = icmp eq i16 %i.ga, 0
  br i1 %.not.i.i.i21, label %bb.bd, label %bb.bb, !prof !5

bb.bb:                                            ; preds = %bb.ba
  %i.gb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ga, i1 true)
  %i.gc = zext nneg i16 %i.gb to i64
  %i.gd = add nuw nsw i64 %.sroa.0.0.i.i19, %i.gc
  %i.ge = and i64 %i.gd, %i.er                    ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !noundef !4
  %i.gh = icmp sgt i8 %i.gg, -1
  br i1 %i.gh, label %bb.bc, label %_RNvMsa_NtCs454tfXuUxcf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i22, !prof !5

bb.bc:                                            ; preds = %bb.bb
  %.val2.i.i.i24 = load <16 x i8>, ptr %i.ep, align 16
  %i.gi = icmp slt <16 x i8> %.val2.i.i.i24, zeroinitializer
  %i.gj = bitcast <16 x i1> %i.gi to i16          ; 2 uses
  %.not.i7.i.i25 = icmp ne i16 %i.gj, 0
  %i.gk = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.gj, i1 true)
  %i.gl = zext nneg i16 %i.gk to i64
  tail call void @llvm.assume(i1 %.not.i7.i.i25)
  br label %_RNvMsa_NtCs454tfXuUxcf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i22

bb.bd:                                            ; preds = %bb.ba
  %i.gm = icmp eq i64 %i.fx, -16
  br i1 %i.gm, label %.invoke, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gn = add i64 %i.fx, 16                       ; 2 uses
  %i.go = add i64 %i.gn, %.sroa.0.0.i.i19         ; 2 uses
  %i.gp = icmp ult i64 %i.go, %.sroa.0.0.i.i19
  br i1 %i.gp, label %.invoke, label %bb.ba

.invoke:                                          ; preds = %._crit_edge, %.noexc3.preheader, %.noexc3, %bb.be, %bb.bd
  %i.gq = phi ptr [ @21, %.noexc3 ], [ @15, %bb.bd ], [ @16, %bb.be ], [ @20, %._crit_edge ], [ @21, %.noexc3.preheader ]
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gq) #17
          to label %.cont unwind label %bb.as

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMsa_NtCs454tfXuUxcf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i22: ; preds = %bb.bb, %bb.bc
  %.sroa.0.0.i6.i.i23 = phi i64 [ %i.gl, %bb.bc ], [ %i.ge, %bb.bb ] ; 4 uses
  %i.gr = add nsw i64 %.sroa.0.0.i6.i.i23, -16
  %i.gs = and i64 %i.gr, %i.er
  %i.gt = lshr i64 %i.fw, 57
  %i.gu = trunc nuw nsw i64 %i.gt to i8           ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.sroa.0.0.i6.i.i23
  store i8 %i.gu, ptr %i.gv, align 1
  %i.gw = getelementptr i8, ptr %i.ep, i64 %i.gs
  %i.gx = getelementptr i8, ptr %i.gw, i64 16
  store i8 %i.gu, ptr %i.gx, align 1
  %i.gy = icmp eq i64 %i.ff, -1
  br i1 %i.gy, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %_RNvMsa_NtCs454tfXuUxcf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i22
  %i.gz = icmp ugt i64 %i.ff, 2305843009213693950
  %i.ha = icmp ugt i64 %.sroa.0.0.i6.i.i23, 2305843009213693950
  %or.cond = or i1 %i.gz, %i.ha
  br i1 %or.cond, label %.invoke245, label %bb.bh

bb.bg:                                            ; preds = %_RNvMsa_NtCs454tfXuUxcf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i22
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #19
          to label %bb.av unwind label %bb.as

bb.bh:                                            ; preds = %bb.bf
  %.neg.i.i = xor i64 %i.ff, -1
  %.neg63.i.i = shl i64 %.neg.i.i, 3
  %i.hb = getelementptr inbounds i8, ptr %i.ew, i64 %.neg63.i.i
  %.neg64.i.i = xor i64 %.sroa.0.0.i6.i.i23, -1
  %.neg65.i.i = shl i64 %.neg64.i.i, 3
  %i.hc = getelementptr inbounds i8, ptr %i.ep, i64 %.neg65.i.i
  %i.hd = load i64, ptr %i.hb, align 1
  store i64 %i.hd, ptr %i.hc, align 8
  %i.he = icmp eq i64 %i.fn, 0
  br i1 %i.he, label %._crit_edge115, label %.preheader

.invoke245:                                       ; preds = %bb.bf
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #19
          to label %.cont246 unwind label %bb.as

.cont246:                                         ; preds = %.invoke245
  unreachable

bb.bi:                                            ; preds = %bb.as
  %i.hf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvMsa_NtCs454tfXuUxcf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %_RINvMsa_NtCs454tfXuUxcf_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECs4tP8yUXWbFU_18libsignal_protocol.exit.thread, %_RINvNtCsgxBkk5gSRhY_4core10intrinsics25typed_swap_nonoverlappingNtNtCs454tfXuUxcf_9hashbrown3raw13RawTableInnerECs4tP8yUXWbFU_18libsignal_protocol.exit, %bb.c, %_RNvMsa_NtCs454tfXuUxcf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit
  %.sroa.4.0.i = phi i64 [ %i.m, %bb.c ], [ undef, %_RNvMsa_NtCs454tfXuUxcf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %.sroa.12.045, %_RINvMsa_NtCs454tfXuUxcf_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECs4tP8yUXWbFU_18libsignal_protocol.exit.thread ], [ undef, %_RINvNtCsgxBkk5gSRhY_4core10intrinsics25typed_swap_nonoverlappingNtNtCs454tfXuUxcf_9hashbrown3raw13RawTableInnerECs4tP8yUXWbFU_18libsignal_protocol.exit ]
  %.sroa.0.0.i = phi i64 [ %i.l, %bb.c ], [ -1, %_RNvMsa_NtCs454tfXuUxcf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %.sroa.7.046, %_RINvMsa_NtCs454tfXuUxcf_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECs4tP8yUXWbFU_18libsignal_protocol.exit.thread ], [ -1, %_RINvNtCsgxBkk5gSRhY_4core10intrinsics25typed_swap_nonoverlappingNtNtCs454tfXuUxcf_9hashbrown3raw13RawTableInnerECs4tP8yUXWbFU_18libsignal_protocol.exit ]
  %i.hg = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.hh = insertvalue { i64, i64 } %i.hg, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.hh
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs6_NtCs454tfXuUxcf_9hashbrown3rawINtB6_8RawTablejE6insertNCINvNtCsbPnb37KEv9e_8indexmap5inner8get_hashNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientE0EB2B_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val6 = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.a
  %.pn.i = phi i64 [ %1, %bb.a ], [ %i.t, %bb.h ]
  %i.b = phi i64 [ 0, %bb.a ], [ %i.s, %bb.h ]    ; 2 uses
  %.sroa.0.0.i = and i64 %.pn.i, %.val6           ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.c, align 1, !noalias !59
  %i.d = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.e = bitcast <16 x i1> %i.d to i16            ; 2 uses
  %.not.i.i = icmp eq i16 %i.e, 0
  br i1 %.not.i.i, label %bb.g, label %bb.c, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.f = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.e, i1 true)
  %i.g = zext nneg i16 %i.f to i64
  %i.h = add i64 %.sroa.0.0.i, %i.g               ; 2 uses
  %i.i = icmp ult i64 %i.h, %.sroa.0.0.i
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #17
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = and i64 %i.h, %.val6                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noundef !4  ; 2 uses
  %i.m = icmp sgt i8 %i.l, -1
  br i1 %i.m, label %bb.f, label %_RNvMsa_NtCs454tfXuUxcf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !5

bb.f:                                             ; preds = %bb.e
  %.val2.i.i = load <16 x i8>, ptr %.val, align 16
  %i.n = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not.i7.i = icmp ne i16 %i.o, 0
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.o, i1 true)
  %i.q = zext nneg i16 %i.p to i64                ; 2 uses
  tail call void @llvm.assume(i1 %.not.i7.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val, i64 %i.q
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %_RNvMsa_NtCs454tfXuUxcf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

bb.g:                                             ; preds = %bb.b
  %i.r = icmp eq i64 %i.b, -16
  br i1 %i.r, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = add i64 %i.b, 16                         ; 2 uses
  %i.t = add i64 %i.s, %.sroa.0.0.i               ; 2 uses
  %i.u = icmp ult i64 %i.t, %.sroa.0.0.i
  br i1 %i.u, label %bb.j, label %bb.b

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #17
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #17
  unreachable

_RNvMsa_NtCs454tfXuUxcf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.e, %bb.f
  %i.v = phi i8 [ %.pre, %bb.f ], [ %i.l, %bb.e ] ; 2 uses
  %.sroa.0.0.i6.i = phi i64 [ %i.q, %bb.f ], [ %i.j, %bb.e ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !noundef !4 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  %i.z = trunc i8 %i.v to i1
  %or.cond = and i1 %i.y, %i.z
  br i1 %or.cond, label %_RINvMs6_NtCs454tfXuUxcf_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbPnb37KEv9e_8indexmap5inner8get_hashNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientE0EB2C_.exit, label %bb.k, !prof !60

_RINvMs6_NtCs454tfXuUxcf_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbPnb37KEv9e_8indexmap5inner8get_hashNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientE0EB2C_.exit: ; preds = %_RNvMsa_NtCs454tfXuUxcf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %i.aa = tail call { i64, i64 } @_RINvMs6_NtCs454tfXuUxcf_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCsbPnb37KEv9e_8indexmap5inner8get_hashNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientE0EB2K_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef %4, i1 noundef zeroext true) ; 0 uses
  %.val7 = load ptr, ptr %0, align 8
  %.val8 = load i64, ptr %i.a, align 8, !noundef !4
  %i.ab = tail call fastcc noundef i64 @_RNvMsa_NtCs454tfXuUxcf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index(ptr %.val7, i64 %.val8, i64 noundef %1) ; 2 uses
  %.pre17 = load ptr, ptr %0, align 8, !alias.scope !61 ; 2 uses
  %.phi.trans.insert18 = getelementptr inbounds nuw i8, ptr %.pre17, i64 %i.ab
  %.pre19 = load i8, ptr %.phi.trans.insert18, align 1, !noalias !61
  %.pre20 = load i64, ptr %i.w, align 8, !alias.scope !62
  br label %bb.k

bb.k:                                             ; preds = %_RNvMsa_NtCs454tfXuUxcf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, %_RINvMs6_NtCs454tfXuUxcf_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbPnb37KEv9e_8indexmap5inner8get_hashNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientE0EB2C_.exit
  %i.ac = phi i64 [ %.pre20, %_RINvMs6_NtCs454tfXuUxcf_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbPnb37KEv9e_8indexmap5inner8get_hashNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientE0EB2C_.exit ], [ %i.x, %_RNvMsa_NtCs454tfXuUxcf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %i.ad = phi i8 [ %.pre19, %_RINvMs6_NtCs454tfXuUxcf_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbPnb37KEv9e_8indexmap5inner8get_hashNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientE0EB2C_.exit ], [ %i.v, %_RNvMsa_NtCs454tfXuUxcf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %i.ae = phi ptr [ %.pre17, %_RINvMs6_NtCs454tfXuUxcf_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbPnb37KEv9e_8indexmap5inner8get_hashNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientE0EB2C_.exit ], [ %.val, %_RNvMsa_NtCs454tfXuUxcf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 3 uses
  %.sroa.0.0 = phi i64 [ %i.ab, %_RINvMs6_NtCs454tfXuUxcf_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbPnb37KEv9e_8indexmap5inner8get_hashNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientE0EB2C_.exit ], [ %.sroa.0.0.i6.i, %_RNvMsa_NtCs454tfXuUxcf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 3 uses
  %i.af = lshr i64 %1, 57
  %i.ag = trunc nuw nsw i64 %i.af to i8           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.sroa.0.0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %i.ai = and i8 %i.ad, 1
  %i.aj = zext nneg i8 %i.ai to i64               ; 2 uses
  %i.ak = icmp ult i64 %i.ac, %i.aj
  br i1 %i.ak, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = sub nuw i64 %i.ac, %i.aj
  store i64 %i.al, ptr %i.w, align 8, !alias.scope !62
  %i.am = add i64 %.sroa.0.0, -16
  %i.an = load i64, ptr %i.a, align 8, !alias.scope !62, !noundef !4
  %i.ao = and i64 %i.an, %i.am                    ; 2 uses
  %i.ap = icmp ugt i64 %i.ao, -17
  br i1 %i.ap, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #17, !noalias !62
  unreachable

bb.n:                                             ; preds = %bb.l
  store i8 %i.ag, ptr %i.ah, align 1, !noalias !62
  %i.aq = getelementptr i8, ptr %i.ae, i64 %i.ao
  %i.ar = getelementptr i8, ptr %i.aq, i64 16
  store i8 %i.ag, ptr %i.ar, align 1, !noalias !62
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !62, !noundef !4 ; 2 uses
  %i.au = icmp eq i64 %i.at, -1
  br i1 %i.au, label %bb.p, label %_RNvMs6_NtCs454tfXuUxcf_9hashbrown3rawINtB5_8RawTablejE22insert_tagged_at_indexCs4tP8yUXWbFU_18libsignal_protocol.exit

bb.o:                                             ; preds = %bb.l
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #17, !noalias !62
  unreachable

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #17, !noalias !62
  unreachable

_RNvMs6_NtCs454tfXuUxcf_9hashbrown3rawINtB5_8RawTablejE22insert_tagged_at_indexCs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.n
  %i.av = add nuw i64 %i.at, 1
  store i64 %i.av, ptr %i.as, align 8, !alias.scope !62
  %i.aw = sub nsw i64 0, %.sroa.0.0
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.aw ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -8
  store i64 %2, ptr %i.ay, align 8, !noalias !61
  ret ptr %i.ax
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_8RawTableTNtNtCsbwPL7qM37dJ_14libsignal_core7address15ProtocolAddressNtNtCs4tP8yUXWbFU_18libsignal_protocol12identity_key11IdentityKeyEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1N_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0EB1R_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 11 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !85)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !85, !noalias !86, !noundef !4 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !85, !noalias !86, !noundef !4 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8
  %i.l = add i64 %i.j, 1
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.o
  br i1 %.not.i, label %bb.d, label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.p = call { i64, i64 } @_RNvMNtCsfBDUjroi3FF_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !87 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0
  %i.r = extractvalue { i64, i64 } %i.p, 1
  br label %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6i54tJFfzR_5alloc5alloc6GlobalECs4tP8yUXWbFU_18libsignal_protocol.exit

bb.d:                                             ; preds = %bb.b
  %i.s = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i9 = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.s, i64 range(i64 1, 0) %i.g) ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !89
  %i.t = icmp ult i64 %.sroa.0.0.i9, 15
  br i1 %i.t, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp ugt i64 %.sroa.0.0.i9, 2305843009213693951
  br i1 %i.u, label %bb.j, label %bb.f, !prof !5

.thread:                                          ; preds = %bb.d
  %i.v = icmp samesign ult i64 %.sroa.0.0.i9, 4
  %i.w = and i64 %.sroa.0.0.i9, 8
  %..i.i = add nuw nsw i64 %i.w, 8
  %.sroa.03.0.i.i = select i1 %i.v, i64 4, i64 %..i.i
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = shl nuw i64 %.sroa.0.0.i9, 3
  %i.y = udiv i64 %i.x, 7
  %i.z = add nsw i64 %i.y, -1
  %i.aa = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.z, i1 true)
  %i.ab = lshr i64 -1, %i.aa                      ; 2 uses
  %i.ac = add nuw nsw i64 %i.ab, 1
  %i.ad = icmp ugt i64 %i.ab, 288230376151711742
  br i1 %i.ad, label %bb.h, label %bb.g, !prof !9

bb.g:                                             ; preds = %.thread, %bb.f
  %.sroa.4.0.i.ph.i56 = phi i64 [ %.sroa.03.0.i.i, %.thread ], [ %i.ac, %bb.f ] ; 5 uses
  %i.ae = shl nuw i64 %.sroa.4.0.i.ph.i56, 6      ; 3 uses
  %i.af = add nuw nsw i64 %.sroa.4.0.i.ph.i56, 16 ; 2 uses
  %i.ag = add i64 %i.af, %i.ae                    ; 4 uses
  %i.ah = icmp ult i64 %i.ag, %i.ae
  %i.ai = icmp ugt i64 %i.ag, 9223372036854775792
  %or.cond.i.i = or i1 %i.ah, %i.ai
  br i1 %or.cond.i.i, label %bb.h, label %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator8allocate.exit.i.i, !prof !8

_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.g
  call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !90
  %i.aj = call noundef align 16 ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 16) #21, !noalias !90 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.i, label %bb.m

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.al = call { i64, i64 } @_RNvMNtCsfBDUjroi3FF_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !90
  br label %bb.k

bb.i:                                             ; preds = %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator8allocate.exit.i.i
  %i.am = call { i64, i64 } @_RNvMNtCsfBDUjroi3FF_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.ag), !noalias !90
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.an = call { i64, i64 } @_RNvMNtCsfBDUjroi3FF_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !91
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %.pn = phi { i64, i64 } [ %i.an, %bb.j ], [ %i.am, %bb.i ], [ %i.al, %bb.h ] ; 2 uses
  %.sroa.7.0.ph = extractvalue { i64, i64 } %.pn, 0
  %.sroa.12.0.ph = extractvalue { i64, i64 } %.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !89
  br label %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6i54tJFfzR_5alloc5alloc6GlobalECs4tP8yUXWbFU_18libsignal_protocol.exit

bb.l:                                             ; preds = %._crit_edge
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsfBDUjroi3FF_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs6i54tJFfzR_5alloc5alloc6GlobalE0EECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a) #18, !noalias !92
  resume { ptr, i32 } %i.ao

bb.m:                                             ; preds = %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator8allocate.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ae ; 3 uses
  %i.aq = add nsw i64 %.sroa.4.0.i.ph.i56, -1     ; 2 uses
  %i.ar = icmp samesign ult i64 %.sroa.4.0.i.ph.i56, 9
  %i.as = lshr i64 %.sroa.4.0.i.ph.i56, 3
  %i.at = mul nuw nsw i64 %i.as, 7
end_hunk_0
begin_hunk_1_@_RNvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTNtNtCsbwPL7qM37dJ_14libsignal_core7address15ProtocolAddressNtNtCs4tP8yUXWbFU_18libsignal_protocol12identity_key11IdentityKeyEE5clearB1Q_:bb.a
_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtCsbwPL7qM37dJ_14libsignal_core7address15ProtocolAddressNtNtCs4tP8yUXWbFU_18libsignal_protocol12identity_key11IdentityKeyEEB1D_.exit.i: ; preds = %_RINvMsi_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbwPL7qM37dJ_14libsignal_core7address15ProtocolAddressNtNtCs4tP8yUXWbFU_18libsignal_protocol12identity_key11IdentityKeyEE9next_implKb0_EB1W_.exit.i
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.q)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtCsbwPL7qM37dJ_14libsignal_core7address15ProtocolAddressNtNtCs4tP8yUXWbFU_18libsignal_protocol12identity_key11IdentityKeyEEB1D_.exit.i
  %i.t = add i16 %.lcssa.i.i, -1
  %i.u = and i16 %i.t, %.lcssa.i.i
  %i.v = add i64 %.sroa.107.014.i, -1             ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbwPL7qM37dJ_14libsignal_core7address15ProtocolAddressNtNtCs4tP8yUXWbFU_18libsignal_protocol12identity_key11IdentityKeyEEB2b_.exit, label %bb.c

bb.f:                                             ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsfBDUjroi3FF_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtCsbwPL7qM37dJ_14libsignal_core7address15ProtocolAddressNtNtCs4tP8yUXWbFU_18libsignal_protocol12identity_key11IdentityKeyEENCNvMs6_B1w_B1t_5clear0EEB2Q_.exit5
  ret void

bb.g:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtCsbwPL7qM37dJ_14libsignal_core7address15ProtocolAddressNtNtCs4tP8yUXWbFU_18libsignal_protocol12identity_key11IdentityKeyEEB1D_.exit.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.x, %bb.g ], [ %i.r, %bb.d ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i64, ptr %i.y, align 8, !noundef !4 ; 5 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.body
  %i.ab = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.ac = add i64 %i.z, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ab, i8 -1, i64 %i.ac, i1 false)
  %i.ad = icmp ult i64 %i.z, 8
  %i.ae = add i64 %i.z, 1
  %i.af = lshr i64 %i.ae, 3
  %i.ag = mul nuw i64 %i.af, 7
  %spec.select.i.i.i = select i1 %i.ad, i64 %i.z, i64 %i.ag
  br label %bb.j

_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbwPL7qM37dJ_14libsignal_core7address15ProtocolAddressNtNtCs4tP8yUXWbFU_18libsignal_protocol12identity_key11IdentityKeyEEB2b_.exit: ; preds = %.noexc
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !4 ; 5 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsfBDUjroi3FF_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtCsbwPL7qM37dJ_14libsignal_core7address15ProtocolAddressNtNtCs4tP8yUXWbFU_18libsignal_protocol12identity_key11IdentityKeyEENCNvMs6_B1w_B1t_5clear0EEB2Q_.exit5, label %bb.i

bb.i:                                             ; preds = %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbwPL7qM37dJ_14libsignal_core7address15ProtocolAddressNtNtCs4tP8yUXWbFU_18libsignal_protocol12identity_key11IdentityKeyEEB2b_.exit
  %i.ak = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.al = add i64 %i.ai, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ak, i8 -1, i64 %i.al, i1 false)
  %i.am = icmp ult i64 %i.ai, 8
  %i.an = add i64 %i.ai, 1
  %i.ao = lshr i64 %i.an, 3
  %i.ap = mul nuw i64 %i.ao, 7
  %spec.select.i.i.i4 = select i1 %i.am, i64 %i.ai, i64 %i.ap
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsfBDUjroi3FF_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtCsbwPL7qM37dJ_14libsignal_core7address15ProtocolAddressNtNtCs4tP8yUXWbFU_18libsignal_protocol12identity_key11IdentityKeyEENCNvMs6_B1w_B1t_5clear0EEB2Q_.exit5

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsfBDUjroi3FF_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtCsbwPL7qM37dJ_14libsignal_core7address15ProtocolAddressNtNtCs4tP8yUXWbFU_18libsignal_protocol12identity_key11IdentityKeyEENCNvMs6_B1w_B1t_5clear0EEB2Q_.exit5: ; preds = %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbwPL7qM37dJ_14libsignal_core7address15ProtocolAddressNtNtCs4tP8yUXWbFU_18libsignal_protocol12identity_key11IdentityKeyEEB2b_.exit, %bb.i
  %i.aq = phi i64 [ %spec.select.i.i.i4, %bb.i ], [ 0, %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbwPL7qM37dJ_14libsignal_core7address15ProtocolAddressNtNtCs4tP8yUXWbFU_18libsignal_protocol12identity_key11IdentityKeyEEB2b_.exit ]
  store i64 0, ptr %i.a, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.aq, ptr %i.ar, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h, %.body
  %i.as = phi i64 [ %spec.select.i.i.i, %bb.h ], [ 0, %.body ]
  store i64 0, ptr %i.a, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.as, ptr %i.at, align 8
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RNvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTTNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5state12kyber_prekey13KyberPreKeyIdNtNtBU_13signed_prekey14SignedPreKeyIdEINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtCsbwPL7qM37dJ_14libsignal_core5curve9PublicKeyEEE14insert_no_growBW_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load i64, ptr %i.a, align 8, !noundef !4 ; 4 uses
  %.sroa.0.07.i = and i64 %.val3, %1              ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.b, align 1, !noalias !478
  %i.c = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.d = bitcast <16 x i1> %i.c to i16            ; 2 uses
  %.not.i9.i = icmp eq i16 %i.d, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !11

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.a ], [ %.sroa.0.0.i, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.d, %bb.a ], [ %i.u, %.lr.ph.i ]
  %i.e = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.f = zext nneg i16 %i.e to i64
  %i.g = add i64 %.sroa.0.0.lcssa.i, %i.f
  %i.h = and i64 %i.g, %.val3                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !noundef !4  ; 2 uses
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %bb.b, label %_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !5

bb.b:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %.val, align 16
  %i.l = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.m = bitcast <16 x i1> %i.l to i16            ; 2 uses
  %.not.i6.i = icmp ne i16 %i.m, 0
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.m, i1 true)
  %i.o = zext nneg i16 %i.n to i64                ; 2 uses
  tail call void @llvm.assume(i1 %.not.i6.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val, i64 %i.o
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.a ]
  %i.p = phi i64 [ %i.q, %.lr.ph.i ], [ 0, %bb.a ]
  %i.q = add i64 %i.p, 16                         ; 2 uses
  %i.r = add i64 %i.q, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.r, %.val3             ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.s, align 1, !noalias !478
  %i.t = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.u = bitcast <16 x i1> %i.t to i16            ; 2 uses
  %.not.i.i = icmp eq i16 %i.u, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !12

_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.b, %._crit_edge.i
  %i.v = phi i8 [ %.pre, %bb.b ], [ %i.j, %._crit_edge.i ]
  %.sroa.0.0.i5.i = phi i64 [ %i.o, %bb.b ], [ %i.h, %._crit_edge.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i
  %i.x = lshr i64 %1, 57
  %i.y = trunc nuw nsw i64 %i.x to i8             ; 2 uses
  %i.z = add i64 %.sroa.0.0.i5.i, -16
  %i.aa = and i64 %i.z, %.val3
  store i8 %i.y, ptr %i.w, align 1
  %i.ab = getelementptr i8, ptr %.val, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  store i8 %i.y, ptr %i.ac, align 1
  %i.ad = sub nsw i64 0, %.sroa.0.0.i5.i
  %i.ae = getelementptr inbounds [32 x i8], ptr %.val, i64 %i.ad ; 2 uses
  %i.af = and i8 %i.v, 1
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.aj = load <2 x i64>, ptr %i.ah, align 8
  %i.ak = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ag, i64 0
  %i.al = sub <2 x i64> %i.aj, %i.ak
  store <2 x i64> %i.al, ptr %i.ah, align 8
  ret ptr %i.ae
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i64 @_RNvMsa_NtCs454tfXuUxcf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index(ptr nofree readonly captures(none) %.0.val, i64 %.8.val, i64 noundef %0) unnamed_addr #3 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.a
  %.pn = phi i64 [ %0, %bb.a ], [ %i.s, %bb.h ]
  %i.a = phi i64 [ 0, %bb.a ], [ %i.r, %bb.h ]    ; 2 uses
  %.sroa.0.0 = and i64 %.pn, %.8.val              ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.sroa.0.0
  %.sroa.0.0.copyload.i6 = load <16 x i8>, ptr %i.b, align 1, !noalias !481
  %i.c = icmp slt <16 x i8> %.sroa.0.0.copyload.i6, zeroinitializer
  %i.d = bitcast <16 x i1> %i.c to i16            ; 2 uses
  %.not.i = icmp eq i16 %i.d, 0
  br i1 %.not.i, label %bb.g, label %bb.c, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.e = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.d, i1 true)
  %i.f = zext nneg i16 %i.e to i64
  %i.g = add i64 %.sroa.0.0, %i.f                 ; 2 uses
  %i.h = icmp ult i64 %i.g, %.sroa.0.0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #17
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = and i64 %i.g, %.8.val                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !noundef !4
  %i.l = icmp sgt i8 %i.k, -1
  br i1 %i.l, label %bb.f, label %_RNvMsa_NtCs454tfXuUxcf_9hashbrown3rawNtB5_13RawTableInner16fix_insert_index.exit, !prof !5

bb.f:                                             ; preds = %bb.e
  %.val2.i = load <16 x i8>, ptr %.0.val, align 16
  %i.m = icmp slt <16 x i8> %.val2.i, zeroinitializer
  %i.n = bitcast <16 x i1> %i.m to i16            ; 2 uses
  %.not.i7 = icmp ne i16 %i.n, 0
  %i.o = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.n, i1 true)
  %i.p = zext nneg i16 %i.o to i64
  tail call void @llvm.assume(i1 %.not.i7)
  br label %_RNvMsa_NtCs454tfXuUxcf_9hashbrown3rawNtB5_13RawTableInner16fix_insert_index.exit

_RNvMsa_NtCs454tfXuUxcf_9hashbrown3rawNtB5_13RawTableInner16fix_insert_index.exit: ; preds = %bb.e, %bb.f
  %.sroa.0.0.i6 = phi i64 [ %i.p, %bb.f ], [ %i.i, %bb.e ]
  ret i64 %.sroa.0.0.i6

bb.g:                                             ; preds = %bb.b
  %i.q = icmp eq i64 %i.a, -16
  br i1 %i.q, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = add i64 %i.a, 16                         ; 2 uses
  %i.s = add i64 %i.r, %.sroa.0.0                 ; 2 uses
  %i.t = icmp ult i64 %i.s, %.sroa.0.0
  br i1 %i.t, label %bb.j, label %bb.b

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #17
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #17
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr nofree readonly captures(none) %.40.val, i64 noundef range(i64 32, 401) %2, ptr noundef %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.val15 = load ptr, ptr %0, align 8             ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val16 = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.c = add i64 %.val16, 1                       ; 6 uses
  %.not6.i = icmp eq i64 %i.c, 0
  br i1 %.not6.i, label %_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, label %.lr.ph.i

_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val15) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.val15, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 1 %.val15, i64 %i.c, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = lshr i64 %i.c, 4
  %i.f = and i64 %i.c, 15
  %.not10.i.i.i = icmp ne i64 %i.f, 0
  %i.g = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.e, %i.g  ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val15) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.h = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.b

._crit_edge.i.unr-lcssa:                          ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.sroa.0.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.r, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod38 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod38)
  %i.i = getelementptr inbounds nuw i8, ptr %.val15, i64 %.sroa.0.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.i, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.j = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.k = or <2 x i64> %i.j, splat (i64 -9187201950435737472)
  store <2 x i64> %i.k, ptr %i.i, align 16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %. = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16)
  %.27 = tail call i64 @llvm.umin.i64(i64 %i.c, i64 16)
  %i.n = getelementptr inbounds nuw i8, ptr %.val15, i64 %.
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %.val15, i64 %.27, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %3, ptr %i.l, align 8
  store i64 %2, ptr %i.m, align 8
  store ptr %0, ptr %i.a, align 8
  br label %.lr.ph

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.sroa.0.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.r, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %.val15, i64 %.sroa.0.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.o, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.p = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.q = or <2 x i64> %i.p, splat (i64 -9187201950435737472)
  store <2 x i64> %i.q, ptr %i.o, align 16
  %i.r = add i64 %.sroa.0.08.i, 32                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val15, i64 %.sroa.0.08.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.t, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.u = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.v = or <2 x i64> %i.u, splat (i64 -9187201950435737472)
  store <2 x i64> %i.v, ptr %i.t, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre = load i64, ptr %i.b, align 8             ; 2 uses
  %.pre13 = add i64 %.pre, 1
  %i.w = lshr i64 %.pre13, 3
  %i.x = mul nuw i64 %i.w, 7
  br label %._crit_edge

._crit_edge:                                      ; preds = %_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %i.x, %._crit_edge.loopexit ], [ 0, %_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ]
  %i.y = phi i64 [ %.pre, %._crit_edge.loopexit ], [ -1, %_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ] ; 2 uses
  %i.z = icmp ult i64 %i.y, 8
  %.sroa.04.0 = select i1 %i.z, i64 %i.y, i64 %.pre-phi
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = sub i64 %.sroa.04.0, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.l
  %.sroa.0.06 = phi i64 [ %i.ae, %bb.l ], [ 0, %._crit_edge.i ] ; 10 uses
  %i.ae = add nuw i64 %.sroa.0.06, 1
  %i.af = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.0.06
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !4
  %.not = icmp eq i8 %i.ah, -128
  br i1 %.not, label %bb.c, label %bb.l

bb.c:                                             ; preds = %.lr.ph
  %.neg = xor i64 %.sroa.0.06, -1
  %.neg11 = mul i64 %2, %.neg
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 %.neg11 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.c
  %i.aj = invoke noundef i64 %.40.val(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.06)
          to label %bb.f unwind label %bb.e       ; 3 uses

bb.e:                                             ; preds = %bb.k, %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsfBDUjroi3FF_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #18
          to label %bb.n unwind label %bb.m

bb.f:                                             ; preds = %bb.d
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %.val14 = load i64, ptr %i.b, align 8, !noundef !4 ; 6 uses
  %.sroa.0.07.i = and i64 %.val14, %i.aj          ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.al, align 1, !noalias !484
  %i.am = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.an = bitcast <16 x i1> %i.am to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.an, 0
  br i1 %.not.i9.i, label %.lr.ph.i18, label %._crit_edge.i17, !prof !11

._crit_edge.i17:                                  ; preds = %.lr.ph.i18, %bb.f
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.f ], [ %.sroa.0.0.i, %.lr.ph.i18 ]
  %.lcssa.i = phi i16 [ %i.an, %bb.f ], [ %i.be, %.lr.ph.i18 ]
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = add i64 %.sroa.0.0.lcssa.i, %i.ap
  %i.ar = and i64 %i.aq, %.val14                  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noundef !4
  %i.au = icmp sgt i8 %i.at, -1
  br i1 %i.au, label %bb.g, label %_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !5

bb.g:                                             ; preds = %._crit_edge.i17
  %.val2.i.i = load <16 x i8>, ptr %.val, align 16
  %i.av = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.aw = bitcast <16 x i1> %i.av to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.aw, 0
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aw, i1 true)
  %i.ay = zext nneg i16 %i.ax to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i18:                                       ; preds = %bb.f, %.lr.ph.i18
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i18 ], [ %.sroa.0.07.i, %bb.f ]
  %i.az = phi i64 [ %i.ba, %.lr.ph.i18 ], [ 0, %bb.f ]
  %i.ba = add i64 %i.az, 16                       ; 2 uses
  %i.bb = add i64 %i.ba, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.bb, %.val14           ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bc, align 1, !noalias !484
  %i.bd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.be, 0
  br i1 %.not.i.i, label %.lr.ph.i18, label %._crit_edge.i17, !prof !12

_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.g, %._crit_edge.i17
  %.sroa.0.0.i5.i = phi i64 [ %i.ay, %bb.g ], [ %i.ar, %._crit_edge.i17 ] ; 4 uses
  %i.bf = sub i64 %.sroa.0.06, %.sroa.0.07.i
  %i.bg = sub i64 %.sroa.0.0.i5.i, %.sroa.0.07.i
  %i.bh = xor i64 %i.bg, %i.bf
  %.unshifted = and i64 %i.bh, %.val14
  %i.bi = icmp ult i64 %.unshifted, 16
  br i1 %i.bi, label %bb.i, label %bb.h, !prof !6

bb.h:                                             ; preds = %_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.neg12 = xor i64 %.sroa.0.0.i5.i, -1
  %.neg13 = mul i64 %2, %.neg12
  %i.bj = getelementptr inbounds i8, ptr %.val, i64 %.neg13 ; 2 uses
end_hunk_1
