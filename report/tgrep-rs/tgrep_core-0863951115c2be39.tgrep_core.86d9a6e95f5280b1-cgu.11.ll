Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep_core-0863951115c2be39.tgrep_core.86d9a6e95f5280b1-cgu.11?download=true
inline.NumInlined: 561
inline.NumDeleted: 278
begin_hunk_0_@_RNvNtCsbzNSmZPCnTx_10tgrep_core7builder28write_index_v2_from_postings:bb.a
  %i.be = icmp samesign ugt i64 %i.ba, 65535
  call void @llvm.assume(i1 %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !773
  store i64 %i.ba, ptr %i.h, align 8, !noalias !773
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.bd, ptr %i.bf, align 8, !noalias !773
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %i.bg, align 8, !noalias !773
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !773
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !773
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 49152, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.t unwind label %bb.s, !noalias !771

.body.i:                                          ; preds = %bb.ak, %.loopexit.split-lp.i, %bb.s
  %.pn.i = phi { ptr, i32 } [ %lpad.phi.i, %.loopexit.split-lp.i ], [ %i.bh, %bb.s ], [ %i.bz, %bb.ak ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #22
          to label %.body61.i unwind label %bb.bd, !noalias !774

bb.s:                                             ; preds = %bb.al, %bb.af, %bb.u, %bb.r
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.t:                                             ; preds = %bb.r
  %i.bi = load i64, ptr %i.b, align 8, !range !10, !noalias !773, !noundef !5
  %i.bj = trunc nuw i64 %i.bi to i1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !range !16, !noalias !773, !noundef !5 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.bj, label %bb.u, label %bb.v, !prof !14

bb.u:                                             ; preds = %bb.t
  %i.bn = load i64, ptr %i.bm, align 8, !noalias !773
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.bl, i64 %i.bn) #27
          to label %bb.ao unwind label %bb.s, !noalias !771

bb.v:                                             ; preds = %bb.t
  %i.bo = load ptr, ptr %i.bm, align 8, !noalias !773, !nonnull !5, !noundef !5
  %i.bp = icmp samesign ugt i64 %i.bl, 49151
  call void @llvm.assume(i1 %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !773
  store i64 %i.bl, ptr %i.g, align 8, !noalias !773
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.bo, ptr %i.bq, align 8, !noalias !773
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 7 uses
  store i64 0, ptr %i.br, align 8, !noalias !773
  %.not99.i = icmp eq i64 %8, 0
  br i1 %.not99.i, label %._crit_edge.i, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %bb.v
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.bu = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  br label %bb.an

._crit_edge.i:                                    ; preds = %bb.ay, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !773
  invoke void @_RINvNtCsbzNSmZPCnTx_10tgrep_core6ondisk20flush_lookup_entriesINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriter9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileEEB4_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !771

.loopexit.i:                                      ; preds = %bb.av, %bb.au, %.lr.ph.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.aw
  %lpad.loopexit81.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %._crit_edge
  %lpad.loopexit84.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.ae, %bb.ab, %bb.y, %._crit_edge.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit81.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit84.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #22
          to label %.body.i unwind label %bb.bd, !noalias !774

bb.w:                                             ; preds = %._crit_edge.i
  %i.bw = load i64, ptr %i.d, align 8, !range !7, !noalias !773, !noundef !5
  %.not46.i = icmp eq i64 %i.bw, -1
  br i1 %.not46.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !772
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !773
  br label %bb.aj

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !773
  %i.bx = invoke noundef ptr @_RNvXs4_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileENtNtNtCsf3Ta7LF998c_4core2io5write5Write5flushCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !771 ; 2 uses

bb.z:                                             ; preds = %bb.y
  %.not47.i = icmp eq ptr %i.bx, null
  br i1 %.not47.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i64 0, ptr %i.p, align 8, !alias.scope !769, !noalias !772
  %.sroa.440.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.bx, ptr %.sroa.440.0..sroa_idx.i, align 8, !alias.scope !769, !noalias !772
  br label %bb.aj

bb.ab:                                            ; preds = %bb.z
  %i.by = invoke noundef ptr @_RNvXs4_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileENtNtNtCsf3Ta7LF998c_4core2io5write5Write5flushCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !771 ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %.not48.i = icmp eq ptr %i.by, null
  br i1 %.not48.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i64 0, ptr %i.p, align 8, !alias.scope !769, !noalias !772
  %.sroa.443.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.by, ptr %.sroa.443.0..sroa_idx.i, align 8, !alias.scope !769, !noalias !772
  br label %bb.aj

bb.ae:                                            ; preds = %bb.ac
  invoke fastcc void @_RINvNtCsbzNSmZPCnTx_10tgrep_core7builder20write_files_and_metaINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterTmNtNtCsgCecv3eZDcN_5alloc6string6StringEENCNvB2_28write_index_v2_from_postingss_0EEB4_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, i64 noundef %i.af, ptr noundef nonnull readonly %5, ptr noundef nonnull readnone %i.ag, i64 noundef %i.ah)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

bb.af:                                            ; preds = %bb.ae
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g)
          to label %bb.ag unwind label %bb.s, !noalias !774

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !773
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h)
          to label %bb.ah unwind label %bb.o, !noalias !774

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !773
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriter9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.k)
          to label %bb.ai unwind label %bb.i, !noalias !774

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !773
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriter9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.n), !noalias !774
  br label %_RINvNtCsbzNSmZPCnTx_10tgrep_core7builder31write_index_files_from_postingsINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1i_5slice4iter4IterTmNtNtCsgCecv3eZDcN_5alloc6string6StringEENCNvB2_28write_index_v2_from_postingss_0EEB4_.exit

bb.aj:                                            ; preds = %_RINvNtCsbzNSmZPCnTx_10tgrep_core7builder26write_flat_posting_entriesINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriter9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileEEB4_.exit.i, %bb.ar, %bb.ad, %bb.aa, %bb.x
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.al unwind label %bb.ak, !noalias !771

bb.ak:                                            ; preds = %bb.aj
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body.i unwind label %bb.am, !noalias !771

bb.al:                                            ; preds = %bb.aj
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit.i unwind label %bb.s, !noalias !771

bb.am:                                            ; preds = %bb.ak
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23, !noalias !771
  unreachable

bb.an:                                            ; preds = %bb.ay, %.lr.ph.i8
  %.sroa.07.098.i = phi i64 [ 0, %.lr.ph.i8 ], [ %i.dz, %bb.ay ] ; 2 uses
  %.sroa.010.097.i = phi i64 [ 0, %.lr.ph.i8 ], [ %.sroa.018.0.lcssa.i, %bb.ay ] ; 5 uses
  %i.cb = getelementptr inbounds nuw [12 x i8], ptr %7, i64 %.sroa.010.097.i ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load i32, ptr %i.cc, align 4, !alias.scope !770, !noalias !775, !noundef !5 ; 2 uses
  %i.ce = add nuw nsw i64 %.sroa.010.097.i, 1
  %umax.i = call i64 @llvm.umax.i64(i64 range(i64 0, 768614336404564651) %8, i64 %i.ce) ; 3 uses
  %i.cf = add nsw i64 %umax.i, -1                 ; 2 uses
  %exitcond.not.i17 = icmp eq i64 %.sroa.010.097.i, %i.cf
  br i1 %exitcond.not.i17, label %._crit_edge, label %.lr.ph

bb.ao:                                            ; preds = %bb.u, %bb.q
  unreachable

bb.ap:                                            ; preds = %.lr.ph
  %exitcond.not.i = icmp eq i64 %.sroa.018.0.i, %i.cf
  br i1 %exitcond.not.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.ap, %.lr.ph, %bb.an
  %.sroa.018.0.lcssa.i = phi i64 [ %umax.i, %bb.an ], [ %umax.i, %bb.ap ], [ %.sroa.018.0.i, %.lr.ph ] ; 3 uses
  %i.cg = sub nuw nsw i64 %.sroa.018.0.lcssa.i, %.sroa.010.097.i ; 3 uses
  %i.ch = trunc i64 %i.cg to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !773
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !773
  store i32 %i.cd, ptr %i.bs, align 8, !noalias !773
  store i64 %.sroa.07.098.i, ptr %i.e, align 8, !noalias !773
  store i32 %i.ch, ptr %i.bt, align 4, !noalias !773
  invoke void @_RINvNtCsbzNSmZPCnTx_10tgrep_core6ondisk18write_lookup_entryINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriter9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileEEB4_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !771

.lr.ph:                                           ; preds = %bb.an, %bb.ap
  %.sroa.018.0.in.i18 = phi i64 [ %.sroa.018.0.i, %bb.ap ], [ %.sroa.010.097.i, %bb.an ]
  %.sroa.018.0.i = add nuw nsw i64 %.sroa.018.0.in.i18, 1 ; 4 uses
  %i.ci = getelementptr inbounds nuw [12 x i8], ptr %7, i64 %.sroa.018.0.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load i32, ptr %i.cj, align 4, !alias.scope !770, !noalias !775, !noundef !5
  %i.cl = icmp eq i32 %i.ck, %i.cd
  br i1 %i.cl, label %bb.ap, label %._crit_edge

bb.aq:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !773
  %i.cm = load i64, ptr %i.f, align 8, !range !7, !noalias !773, !noundef !5
  %.not49.i = icmp eq i64 %i.cm, -1
  br i1 %.not49.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !772
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !773
  br label %bb.aj

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !773
  call void @llvm.experimental.noalias.scope.decl(metadata !776)
  call void @llvm.experimental.noalias.scope.decl(metadata !777)
  call void @llvm.experimental.noalias.scope.decl(metadata !778)
  br label %bb.at

bb.at:                                            ; preds = %_RNvXs4_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileENtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCsbzNSmZPCnTx_10tgrep_core.exit.i.i, %bb.as
  %.sroa.5.0.i.i = phi i64 [ %i.cg, %bb.as ], [ %i.cq, %_RNvXs4_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileENtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCsbzNSmZPCnTx_10tgrep_core.exit.i.i ] ; 3 uses
  %.sroa.0.0.i.i = phi ptr [ %i.cb, %bb.as ], [ %i.cp, %_RNvXs4_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileENtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCsbzNSmZPCnTx_10tgrep_core.exit.i.i ] ; 2 uses
  %i.cn = icmp eq i64 %.sroa.5.0.i.i, 0
  br i1 %i.cn, label %bb.ay, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.at
  %i.co = call i64 @llvm.umin.i64(i64 %.sroa.5.0.i.i, i64 8192) ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.co, 12
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %.idx.i.i ; 2 uses
  %i.cq = sub nuw nsw i64 %.sroa.5.0.i.i, %i.co
  store i64 0, ptr %i.br, align 8, !alias.scope !778, !noalias !779
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit13.i.i, %.lr.ph.preheader.i.i
  %.sroa.06.015.i.i = phi ptr [ %i.cr, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit13.i.i ], [ %.sroa.0.0.i.i, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.06.015.i.i, i64 12 ; 2 uses
  %i.cs = load i32, ptr %.sroa.06.015.i.i, align 4, !alias.scope !780, !noalias !781, !noundef !5
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.06.015.i.i, i64 4
  %i.cu = load i8, ptr %i.ct, align 4, !alias.scope !780, !noalias !781, !noundef !5
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.06.015.i.i, i64 5
  %i.cw = load i8, ptr %i.cv, align 1, !alias.scope !780, !noalias !781, !noundef !5
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 4)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !771

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %i.cx = load i64, ptr %i.br, align 8, !alias.scope !782, !noalias !779, !noundef !5 ; 2 uses
  %i.cy = icmp sgt i64 %i.cx, -1
  call void @llvm.assume(i1 %i.cy)
  %i.cz = load ptr, ptr %i.bq, align 8, !alias.scope !782, !noalias !779, !nonnull !5, !noundef !5
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cx
  store i32 %i.cs, ptr %i.da, align 1, !noalias !783
  %.pre.i.i.i = load i64, ptr %i.br, align 8, !alias.scope !782, !noalias !779 ; 3 uses
  %i.db = add i64 %.pre.i.i.i, 4                  ; 3 uses
  store i64 %i.db, ptr %i.br, align 8, !alias.scope !782, !noalias !779
  %i.dc = load i64, ptr %i.g, align 8, !range !17, !alias.scope !784, !noalias !779, !noundef !5
  %i.dd = icmp eq i64 %i.db, %i.dc
  br i1 %i.dd, label %bb.au, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit.i.i

bb.au:                                            ; preds = %.noexc.i
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #25
          to label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit.i.i unwind label %.loopexit.i, !noalias !771

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit.i.i: ; preds = %bb.au, %.noexc.i
  %i.de = load ptr, ptr %i.bq, align 8, !alias.scope !784, !noalias !779, !nonnull !5, !noundef !5
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.db
  store i8 %i.cu, ptr %i.df, align 1, !noalias !783
  %i.dg = add i64 %.pre.i.i.i, 5                  ; 3 uses
  store i64 %i.dg, ptr %i.br, align 8, !alias.scope !784, !noalias !779
  %i.dh = load i64, ptr %i.g, align 8, !range !17, !alias.scope !785, !noalias !779, !noundef !5
  %i.di = icmp eq i64 %i.dg, %i.dh
  br i1 %i.di, label %bb.av, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit13.i.i

bb.av:                                            ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit.i.i
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #25
          to label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit13.i.i unwind label %.loopexit.i, !noalias !771

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit13.i.i: ; preds = %bb.av, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit.i.i
  %i.dj = load ptr, ptr %i.bq, align 8, !alias.scope !785, !noalias !779, !nonnull !5, !noundef !5
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dg
  store i8 %i.cw, ptr %i.dk, align 1, !noalias !783
  %i.dl = add i64 %.pre.i.i.i, 6                  ; 5 uses
  store i64 %i.dl, ptr %i.br, align 8, !alias.scope !778, !noalias !779
  %i.dm = icmp eq ptr %i.cr, %i.cp
  br i1 %i.dm, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit13.i.i
  %i.dn = load ptr, ptr %i.bq, align 8, !alias.scope !778, !noalias !779, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !786)
  %i.do = load i64, ptr %i.n, align 8, !range !17, !alias.scope !787, !noalias !788, !noundef !5
  %i.dp = load i64, ptr %i.bu, align 8, !alias.scope !787, !noalias !788, !noundef !5 ; 4 uses
  %i.dq = icmp sgt i64 %i.dp, -1
  call void @llvm.assume(i1 %i.dq)
  %i.dr = sub nsw i64 %i.do, %i.dp
  %i.ds = icmp ult i64 %i.dl, %i.dr
  br i1 %i.ds, label %bb.ax, label %bb.aw, !prof !13

bb.aw:                                            ; preds = %._crit_edge.i.i
  %i.dt = invoke noundef ptr @_RNvMs_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileE14write_all_coldCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dn, i64 noundef range(i64 0, -9223372036854775808) %i.dl) #25
          to label %_RNvXs4_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileENtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCsbzNSmZPCnTx_10tgrep_core.exit.i.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !771

bb.ax:                                            ; preds = %._crit_edge.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !789)
  %i.du = load ptr, ptr %i.bv, align 8, !alias.scope !790, !noalias !791, !nonnull !5, !noundef !5
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dp
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dv, ptr nonnull readonly align 1 %i.dn, i64 range(i64 0, -9223372036854775808) %i.dl, i1 false), !noalias !792
  %i.dw = add nuw i64 %i.dp, %i.dl
  store i64 %i.dw, ptr %i.bu, align 8, !alias.scope !790, !noalias !791
  br label %_RNvXs4_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileENtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCsbzNSmZPCnTx_10tgrep_core.exit.i.i

_RNvXs4_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileENtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCsbzNSmZPCnTx_10tgrep_core.exit.i.i: ; preds = %bb.ax, %bb.aw
  %.sroa.0.0.i.i.i = phi ptr [ null, %bb.ax ], [ %i.dt, %bb.aw ] ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.0.0.i.i.i, null
  br i1 %.not.i.i, label %bb.at, label %_RINvNtCsbzNSmZPCnTx_10tgrep_core7builder26write_flat_posting_entriesINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriter9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileEEB4_.exit.i

_RINvNtCsbzNSmZPCnTx_10tgrep_core7builder26write_flat_posting_entriesINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriter9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileEEB4_.exit.i: ; preds = %_RNvXs4_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileENtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCsbzNSmZPCnTx_10tgrep_core.exit.i.i
  store i64 0, ptr %i.p, align 8, !alias.scope !769, !noalias !772
  %.sroa.475.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %.sroa.0.0.i.i.i, ptr %.sroa.475.0..sroa_idx.i, align 8, !alias.scope !769, !noalias !772
  br label %bb.aj

bb.ay:                                            ; preds = %bb.at
  %i.dx = and i64 %i.cg, 4294967295
  %i.dy = mul nuw nsw i64 %i.dx, 6
  %i.dz = add i64 %i.dy, %.sroa.07.098.i
  %i.ea = icmp ult i64 %.sroa.018.0.lcssa.i, %8
  br i1 %i.ea, label %bb.an, label %._crit_edge.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !773
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.ba unwind label %bb.az, !noalias !771

bb.az:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit.i
  %i.eb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body61.i unwind label %bb.bb, !noalias !771

bb.ba:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit63.i unwind label %bb.o, !noalias !771

bb.bb:                                            ; preds = %bb.az
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23, !noalias !771
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit63.i: ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !773
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriter9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.k)
          to label %bb.bc unwind label %bb.i, !noalias !771

bb.bc:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit63.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !773
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriter9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.n), !noalias !771
  br label %_RINvNtCsbzNSmZPCnTx_10tgrep_core7builder31write_index_files_from_postingsINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1i_5slice4iter4IterTmNtNtCsgCecv3eZDcN_5alloc6string6StringEENCNvB2_28write_index_v2_from_postingss_0EEB4_.exit

bb.bd:                                            ; preds = %.loopexit.split-lp.i, %.body.i, %.body61.i, %bb.h
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23, !noalias !774
  unreachable

bb.be:                                            ; preds = %bb.h
  resume { ptr, i32 } %.pn53.pn.i

_RINvNtCsbzNSmZPCnTx_10tgrep_core7builder31write_index_files_from_postingsINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1i_5slice4iter4IterTmNtNtCsgCecv3eZDcN_5alloc6string6StringEENCNvB2_28write_index_v2_from_postingss_0EEB4_.exit: ; preds = %bb.f, %bb.bc, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !773
  %.pr = load i64, ptr %i.p, align 8
  %.not = icmp eq i64 %.pr, -1
  br i1 %.not, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %_RINvNtCsbzNSmZPCnTx_10tgrep_core7builder31write_index_files_from_postingsINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1i_5slice4iter4IterTmNtNtCsgCecv3eZDcN_5alloc6string6StringEENCNvB2_28write_index_v2_from_postingss_0EEB4_.exit.thread, %_RINvNtCsbzNSmZPCnTx_10tgrep_core7builder31write_index_files_from_postingsINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1i_5slice4iter4IterTmNtNtCsgCecv3eZDcN_5alloc6string6StringEENCNvB2_28write_index_v2_from_postingss_0EEB4_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.bh

bb.bg:                                            ; preds = %_RINvNtCsbzNSmZPCnTx_10tgrep_core7builder31write_index_files_from_postingsINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1i_5slice4iter4IterTmNtNtCsgCecv3eZDcN_5alloc6string6StringEENCNvB2_28write_index_v2_from_postingss_0EEB4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  store i64 -1, ptr %0, align 8
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsbzNSmZPCnTx_10tgrep_core7builder39build_index_with_options_and_ignorecase(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly captures(address, read_provenance) %3, i64 %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %5, ptr noundef %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 5 uses
  %i.d = alloca [4 x i8], align 4                 ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [48 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [32 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 6 uses
  %i.r = alloca [32 x i8], align 1                ; 2 uses
  %.sroa.583 = alloca [39 x i8], align 1          ; 4 uses
  %.sroa.580 = alloca [39 x i8], align 1          ; 4 uses
  %i.s = alloca [120 x i8], align 8               ; 7 uses
  %.sroa.672 = alloca [32 x i8], align 8          ; 6 uses
  %i.t = alloca [120 x i8], align 8               ; 14 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 9 uses
  %i.w = alloca [48 x i8], align 8                ; 8 uses
  %i.x = alloca [48 x i8], align 8                ; 4 uses
  %i.y = alloca [48 x i8], align 8                ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [144 x i8], align 8              ; 13 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = alloca [56 x i8], align 8               ; 4 uses
  %i.ae = alloca [56 x i8], align 8               ; 6 uses
  %i.af = alloca [48 x i8], align 8               ; 9 uses
  %i.ag = alloca [32 x i8], align 8               ; 6 uses
  %i.ah = alloca [48 x i8], align 8               ; 9 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = alloca [32 x i8], align 8               ; 8 uses
  %i.ak = alloca [8 x i8], align 8                ; 5 uses
  %i.al = alloca [8 x i8], align 8                ; 5 uses
  %i.am = alloca [136 x i8], align 8              ; 5 uses
  %i.an = alloca [32 x i8], align 8               ; 6 uses
  %i.ao = alloca [24 x i8], align 8               ; 9 uses
  %i.ap = alloca [16 x i8], align 8               ; 5 uses
  %i.aq = alloca [8 x i8], align 8                ; 6 uses
  %i.ar = alloca [32 x i8], align 8               ; 5 uses
  %i.as = alloca [32 x i8], align 8               ; 6 uses
  %i.at = alloca [32 x i8], align 8               ; 6 uses
  %i.au = alloca [24 x i8], align 8               ; 4 uses
  %i.av = alloca [17 x i8], align 1               ; 3 uses
  %i.aw = alloca [16 x i8], align 1               ; 4 uses
  %i.ax = alloca [32 x i8], align 8               ; 7 uses
  %i.ay = alloca [24 x i8], align 8               ; 4 uses
  %i.az = alloca [80 x i8], align 8               ; 3 uses
  %.sroa.9 = alloca [152 x i8], align 8           ; 3 uses
  %i.ba = alloca [24 x i8], align 8               ; 11 uses
  %i.bb = alloca [160 x i8], align 8              ; 10 uses
  %i.bc = alloca [32 x i8], align 8               ; 10 uses
  %i.bd = alloca [32 x i8], align 8               ; 4 uses
  %i.be = alloca [72 x i8], align 8               ; 9 uses
  %i.bf = alloca [24 x i8], align 8               ; 7 uses
  %i.bg = alloca [8 x i8], align 8                ; 11 uses
  %i.bh = alloca [32 x i8], align 8               ; 10 uses
  %i.bi = alloca [24 x i8], align 8               ; 6 uses
  %i.bj = alloca [56 x i8], align 8               ; 10 uses
  %i.bk = alloca [48 x i8], align 8               ; 5 uses
  %i.bl = alloca [24 x i8], align 8               ; 9 uses
  %i.bm = alloca [24 x i8], align 8               ; 9 uses
  %i.bn = alloca [136 x i8], align 8              ; 4 uses
  %i.bo = alloca [136 x i8], align 8              ; 21 uses
  %i.bp = alloca [48 x i8], align 8               ; 10 uses
  %i.bq = alloca [48 x i8], align 8               ; 8 uses
  %i.br = alloca [24 x i8], align 8               ; 11 uses
  %i.bs = alloca [8 x i8], align 8                ; 6 uses
  %i.bt = alloca [8 x i8], align 8                ; 6 uses
  %i.bu = alloca [24 x i8], align 8               ; 11 uses
  %i.bv = alloca [24 x i8], align 8               ; 10 uses
  %i.bw = alloca [64 x i8], align 8               ; 11 uses
  %i.bx = alloca [8 x i8], align 8                ; 4 uses
  %i.by = alloca [240 x i8], align 8              ; 25 uses
  %i.bz = alloca [24 x i8], align 8               ; 4 uses
  %i.ca = alloca [240 x i8], align 16             ; 20 uses
  %i.cb = alloca [144 x i8], align 8              ; 26 uses
  %i.cc = alloca [16 x i8], align 8               ; 5 uses
  %i.cd = alloca [24 x i8], align 8               ; 6 uses
  %i.ce = alloca [24 x i8], align 8               ; 5 uses
  %i.cf = alloca [16 x i8], align 8               ; 5 uses
end_hunk_0
