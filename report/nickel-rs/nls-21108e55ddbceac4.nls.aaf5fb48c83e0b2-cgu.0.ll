Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nls-21108e55ddbceac4.nls.aaf5fb48c83e0b2-cgu.0?download=true
inline.NumInlined: 33046
inline.NumDeleted: 15305
loop-unroll.NumCompletelyUnrolled: 64
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 157
begin_hunk_0_@"_ZN99_$LT$$RF$mut$u20$csv..serializer..SeHeader$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h08c8c02d7abfabfcE":bb.a
  br i1 %.not6.i.peel, label %.loopexit61, label %bb.i, !prof !81

bb.i:                                             ; preds = %bb.h
  %i.al = load ptr, ptr %i.p, align 8, !alias.scope !117380, !nonnull !46, !noundef !46 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !117381)
  %i.am = load i64, ptr %i.v, align 8, !alias.scope !117382, !noundef !46 ; 4 uses
  %i.an = icmp sgt i64 %i.am, -1
  call void @llvm.assume(i1 %i.an)
  %i.ao = sub nsw i64 %i.aj, %i.am
  %i.ap = icmp ult i64 %i.ai, %i.ao
  br i1 %i.ap, label %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h5f36e86ea5562edaE.exit.thread.i.peel", label %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h5f36e86ea5562edaE.exit.i.peel", !prof !48

"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h5f36e86ea5562edaE.exit.i.peel": ; preds = %bb.i
  %i.aq = call fastcc noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h49b38a2378cf49e3E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.u, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.al, i64 noundef %i.ai) ; 2 uses
  store i8 0, ptr %i.t, align 1, !alias.scope !117380
  %.not7.i.peel = icmp eq ptr %i.aq, null
  br i1 %.not7.i.peel, label %.peel.next, label %.loopexit62

"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h5f36e86ea5562edaE.exit.thread.i.peel": ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !117383)
  %i.ar = load ptr, ptr %i.w, align 8, !alias.scope !117384, !nonnull !46, !noundef !46
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.as, ptr nonnull readonly align 1 %i.al, i64 range(i64 0, -1) %i.ai, i1 false), !noalias !117384
  %i.at = add i64 %i.am, %i.ai
  store i64 %i.at, ptr %i.v, align 8, !alias.scope !117384
  store i8 0, ptr %i.t, align 1, !alias.scope !117380
  br label %.peel.next

.peel.next:                                       ; preds = %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h5f36e86ea5562edaE.exit.i.peel", %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h5f36e86ea5562edaE.exit.thread.i.peel"
  store i64 0, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !117379
  %i.au = load i64, ptr %i.l, align 8, !alias.scope !117378, !noundef !46
  %i.av = load ptr, ptr %i.p, align 8, !alias.scope !117378, !nonnull !46, !noundef !46
  call void @_ZN8csv_core6writer6Writer5field17h9c154826982314cbE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(288) %i.q, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ag, i64 noundef %i.af, ptr noalias noundef nonnull align 1 %i.av, i64 noundef %i.au)
  %i.aw = load i8, ptr %i.r, align 8, !range !47, !noalias !117379, !noundef !46
  %i.ax = load i64, ptr %i.a, align 8, !noalias !117379, !noundef !46 ; 3 uses
  %i.ay = load i64, ptr %i.s, align 8, !noalias !117379, !noundef !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !117379
  %i.az = icmp ugt i64 %i.ax, %i.af
  br i1 %i.az, label %.loopexit, label %.lr.ph116, !prof !121

._crit_edge:                                      ; preds = %bb.e
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.m, i64 noundef %i.n, i64 noundef %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @828) #75
  unreachable

.lr.ph116:                                        ; preds = %.peel.next, %"_ZN3csv6writer15Writer$LT$W$GT$9flush_buf17h9010023628b57dfcE.exit"
  %i.ba = phi i64 [ %i.bx, %"_ZN3csv6writer15Writer$LT$W$GT$9flush_buf17h9010023628b57dfcE.exit" ], [ %i.ay, %.peel.next ]
  %i.bb = phi i64 [ %i.bw, %"_ZN3csv6writer15Writer$LT$W$GT$9flush_buf17h9010023628b57dfcE.exit" ], [ %i.ax, %.peel.next ] ; 2 uses
  %i.bc = phi i8 [ %i.bv, %"_ZN3csv6writer15Writer$LT$W$GT$9flush_buf17h9010023628b57dfcE.exit" ], [ %i.aw, %.peel.next ]
  %.sroa.6.0.i36115 = phi i64 [ %i.be, %"_ZN3csv6writer15Writer$LT$W$GT$9flush_buf17h9010023628b57dfcE.exit" ], [ %i.af, %.peel.next ]
  %.sroa.04.0.i37114 = phi ptr [ %i.bf, %"_ZN3csv6writer15Writer$LT$W$GT$9flush_buf17h9010023628b57dfcE.exit" ], [ %i.ag, %.peel.next ]
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = sub nuw nsw i64 %.sroa.6.0.i36115, %i.bb ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i37114, i64 %i.bb ; 2 uses
  %i.bg = load i64, ptr %i.k, align 8, !alias.scope !117378, !noundef !46
  %i.bh = add i64 %i.bg, %i.ba                    ; 7 uses
  store i64 %i.bh, ptr %i.k, align 8, !alias.scope !117378
  br i1 %i.bd, label %bb.j, label %.loopexit59

.loopexit:                                        ; preds = %"_ZN3csv6writer15Writer$LT$W$GT$9flush_buf17h9010023628b57dfcE.exit", %.peel.next, %.lr.ph
  %.sroa.6.0.i36.lcssa = phi i64 [ %1, %.lr.ph ], [ %i.af, %.peel.next ], [ %i.be, %"_ZN3csv6writer15Writer$LT$W$GT$9flush_buf17h9010023628b57dfcE.exit" ] ; 2 uses
  %.lcssa39 = phi i64 [ %i.ab, %.lr.ph ], [ %i.ax, %.peel.next ], [ %i.bw, %"_ZN3csv6writer15Writer$LT$W$GT$9flush_buf17h9010023628b57dfcE.exit" ]
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.lcssa39, i64 noundef %.sroa.6.0.i36.lcssa, i64 noundef %.sroa.6.0.i36.lcssa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @829) #75
  unreachable

bb.j:                                             ; preds = %.lr.ph116
  call void @llvm.experimental.noalias.scope.decl(metadata !117385)
  store i8 1, ptr %i.t, align 1, !alias.scope !117385
  %i.bi = load i64, ptr %i.u, align 8, !range !72, !alias.scope !117385, !noundef !46 ; 2 uses
  %.not.i14 = icmp eq i64 %i.bi, -9223372036854775808
  br i1 %.not.i14, label %.loopexit60, label %bb.k, !prof !51

bb.k:                                             ; preds = %bb.j
  %i.bj = load i64, ptr %i.l, align 8, !alias.scope !117385, !noundef !46 ; 2 uses
  %.not6.i = icmp ugt i64 %i.bh, %i.bj
  br i1 %.not6.i, label %.loopexit61, label %bb.l, !prof !81

.loopexit60:                                      ; preds = %bb.j, %bb.g
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @832) #75, !noalias !117385
  unreachable

.loopexit61:                                      ; preds = %bb.k, %bb.h
  %.lcssa55 = phi i64 [ %i.ak, %bb.h ], [ %i.bj, %bb.k ]
  %.lcssa52 = phi i64 [ %i.ai, %bb.h ], [ %i.bh, %bb.k ]
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.lcssa52, i64 noundef %.lcssa55, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @833) #75, !noalias !117385
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.bk = load ptr, ptr %i.p, align 8, !alias.scope !117385, !nonnull !46, !noundef !46 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !117386)
  %i.bl = load i64, ptr %i.v, align 8, !alias.scope !117387, !noundef !46 ; 4 uses
  %i.bm = icmp sgt i64 %i.bl, -1
  call void @llvm.assume(i1 %i.bm)
  %i.bn = sub nsw i64 %i.bi, %i.bl
  %i.bo = icmp ult i64 %i.bh, %i.bn
  br i1 %i.bo, label %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h5f36e86ea5562edaE.exit.thread.i", label %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h5f36e86ea5562edaE.exit.i", !prof !48

"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h5f36e86ea5562edaE.exit.thread.i": ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !117388)
  %i.bp = load ptr, ptr %i.w, align 8, !alias.scope !117389, !nonnull !46, !noundef !46
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bl
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bq, ptr nonnull readonly align 1 %i.bk, i64 range(i64 0, -1) %i.bh, i1 false), !noalias !117389
  %i.br = add i64 %i.bl, %i.bh
  store i64 %i.br, ptr %i.v, align 8, !alias.scope !117389
  store i8 0, ptr %i.t, align 1, !alias.scope !117385
  br label %"_ZN3csv6writer15Writer$LT$W$GT$9flush_buf17h9010023628b57dfcE.exit"

"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h5f36e86ea5562edaE.exit.i": ; preds = %bb.l
  %i.bs = call fastcc noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h49b38a2378cf49e3E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.u, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bk, i64 noundef %i.bh) ; 2 uses
  store i8 0, ptr %i.t, align 1, !alias.scope !117385
  %.not7.i = icmp eq ptr %i.bs, null
  br i1 %.not7.i, label %"_ZN3csv6writer15Writer$LT$W$GT$9flush_buf17h9010023628b57dfcE.exit", label %.loopexit62

"_ZN3csv6writer15Writer$LT$W$GT$9flush_buf17h9010023628b57dfcE.exit": ; preds = %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h5f36e86ea5562edaE.exit.thread.i", %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h5f36e86ea5562edaE.exit.i"
  store i64 0, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !117379
  %i.bt = load i64, ptr %i.l, align 8, !alias.scope !117378, !noundef !46
  %i.bu = load ptr, ptr %i.p, align 8, !alias.scope !117378, !nonnull !46, !noundef !46
  call void @_ZN8csv_core6writer6Writer5field17h9c154826982314cbE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(288) %i.q, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bf, i64 noundef %i.be, ptr noalias noundef nonnull align 1 %i.bu, i64 noundef %i.bt)
  %i.bv = load i8, ptr %i.r, align 8, !range !47, !noalias !117379, !noundef !46
  %i.bw = load i64, ptr %i.a, align 8, !noalias !117379, !noundef !46 ; 3 uses
  %i.bx = load i64, ptr %i.s, align 8, !noalias !117379, !noundef !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !117379
  %i.by = icmp ugt i64 %i.bw, %i.be
  br i1 %i.by, label %.loopexit, label %.lr.ph116, !prof !123

.loopexit62:                                      ; preds = %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h5f36e86ea5562edaE.exit.i", %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h5f36e86ea5562edaE.exit.i.peel"
  %.lcssa = phi ptr [ %i.aq, %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h5f36e86ea5562edaE.exit.i.peel" ], [ %i.bs, %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h5f36e86ea5562edaE.exit.i" ]
  %i.bz = call noundef nonnull align 8 ptr @"_ZN86_$LT$csv..error..Error$u20$as$u20$core..convert..From$LT$std..io..error..Error$GT$$GT$4from17h671bfbbd9d77da05E"(ptr noundef nonnull %.lcssa)
  br label %"_ZN3csv6writer15Writer$LT$W$GT$16write_field_impl17h21381a520d7a9052E.exit.thread"

.loopexit59:                                      ; preds = %.lr.ph116, %bb.f
  %i.ca = load i64, ptr %i.h, align 8, !alias.scope !117378, !noundef !46
  %i.cb = add i64 %i.ca, 1
  store i64 %i.cb, ptr %i.h, align 8, !alias.scope !117378
  %i.cc = load i64, ptr %.0.val, align 8, !range !94, !alias.scope !117390, !noundef !46
  %i.cd = icmp eq i64 %i.cc, 1
  br i1 %i.cd, label %bb.m, label %"_ZN4core3ptr49drop_in_place$LT$csv..serializer..HeaderState$GT$17hca18c019c53d75eeE.exit"

bb.m:                                             ; preds = %.loopexit59
  invoke void @"_ZN4core3ptr38drop_in_place$LT$csv..error..Error$GT$17h6e3c872a3eb55888E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.c)
          to label %"_ZN4core3ptr49drop_in_place$LT$csv..serializer..HeaderState$GT$17hca18c019c53d75eeE.exit" unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

"_ZN4core3ptr49drop_in_place$LT$csv..serializer..HeaderState$GT$17hca18c019c53d75eeE.exit": ; preds = %.loopexit59, %bb.m
  store i64 3, ptr %.0.val, align 8
  %i.cf = trunc nuw i64 %.0.val1 to i1
  br i1 %i.cf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %"_ZN4core3ptr49drop_in_place$LT$csv..serializer..HeaderState$GT$17hca18c019c53d75eeE.exit"
  %i.cg = call fastcc noundef align 8 ptr @"_ZN3csv10serializer17SeHeader$LT$W$GT$13handle_scalar17hfa6106c79b477ba1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2442, i64 noundef 7)
  br label %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17h416957aecfe09539E.exit"

bb.p:                                             ; preds = %"_ZN4core3ptr49drop_in_place$LT$csv..serializer..HeaderState$GT$17hca18c019c53d75eeE.exit"
  %i.ch = call fastcc noundef align 8 ptr @"_ZN3csv10serializer17SeHeader$LT$W$GT$13handle_scalar17hfa6106c79b477ba1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1606, i64 noundef 4)
  br label %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17h416957aecfe09539E.exit"

"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17h416957aecfe09539E.exit": ; preds = %bb.o, %bb.p
  %.sroa.0.0.i15 = phi ptr [ %i.cg, %bb.o ], [ %i.ch, %bb.p ] ; 2 uses
  %.not10 = icmp eq ptr %.sroa.0.0.i15, null
  br i1 %.not10, label %bb.q, label %"_ZN3csv6writer15Writer$LT$W$GT$16write_field_impl17h21381a520d7a9052E.exit.thread"

bb.q:                                             ; preds = %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17h416957aecfe09539E.exit"
  %i.ci = load i64, ptr %.0.val, align 8, !range !94, !alias.scope !117391, !noundef !46
  %i.cj = icmp eq i64 %i.ci, 1
  br i1 %i.cj, label %bb.r, label %"_ZN4core3ptr49drop_in_place$LT$csv..serializer..HeaderState$GT$17hca18c019c53d75eeE.exit17"

bb.r:                                             ; preds = %bb.q
  invoke void @"_ZN4core3ptr38drop_in_place$LT$csv..error..Error$GT$17h6e3c872a3eb55888E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.c)
          to label %"_ZN4core3ptr49drop_in_place$LT$csv..serializer..HeaderState$GT$17hca18c019c53d75eeE.exit17" unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

"_ZN4core3ptr49drop_in_place$LT$csv..serializer..HeaderState$GT$17hca18c019c53d75eeE.exit17": ; preds = %bb.q, %bb.r
  store i64 2, ptr %.0.val, align 8
  br label %"_ZN3csv6writer15Writer$LT$W$GT$16write_field_impl17h21381a520d7a9052E.exit.thread"

"_ZN3csv6writer15Writer$LT$W$GT$16write_field_impl17h21381a520d7a9052E.exit.thread": ; preds = %.loopexit62, %bb.d, %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17h416957aecfe09539E.exit", %bb.b, %"_ZN4core3ptr49drop_in_place$LT$csv..serializer..HeaderState$GT$17hca18c019c53d75eeE.exit17"
  %.sroa.0.1 = phi ptr [ null, %"_ZN4core3ptr49drop_in_place$LT$csv..serializer..HeaderState$GT$17hca18c019c53d75eeE.exit17" ], [ %i.d, %bb.b ], [ %.sroa.0.0.i15, %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17h416957aecfe09539E.exit" ], [ %i.bz, %.loopexit62 ], [ %i.j, %bb.d ]
  ret ptr %.sroa.0.1

bb.t:                                             ; preds = %bb.s, %bb.n
  %storemerge = phi i64 [ 3, %bb.n ], [ 2, %bb.s ]
  %.pn = phi { ptr, i32 } [ %i.ce, %bb.n ], [ %i.ck, %bb.s ]
  store i64 %storemerge, ptr %.0.val, align 8
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN99_$LT$$RF$mut$u20$csv..serializer..SeRecord$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17he7dea4064d6a2887E"(ptr nofree readonly captures(none) %.0.val, i64 %.0.val1, i64 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality !guid !117423 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 14 uses
  %i.b = alloca [24 x i8], align 8                ; 14 uses
  %i.c = alloca [40 x i8], align 2                ; 14 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val2 = load ptr, ptr %.0.val, align 8         ; 22 uses
  %i.d = trunc nuw i64 %.0.val1 to i1
  br i1 %i.d, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117424)
  %i.e = icmp ugt i64 %.8.val, 9999
  br i1 %i.e, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %._crit_edge.i.i.i.i.i.a, %.lr.ph.i.i.i.i.i.a, %.lr.ph.i.i.i.i.i.3, %bb.b
  %.sroa.09.0.lcssa.i.i.i.i.i = phi i64 [ 20, %bb.b ], [ 16, %.lr.ph.i.i.i.i.i ], [ 12, %._crit_edge.i.i.i.i.i.a ], [ 8, %.lr.ph.i.i.i.i.i.a ], [ 4, %.lr.ph.i.i.i.i.i.3 ] ; 2 uses
  %.sroa.0.1.lcssa.i.i.i.i.i = phi i64 [ %.8.val, %bb.b ], [ %2, %.lr.ph.i.i.i.i.i ], [ %17, %._crit_edge.i.i.i.i.i.a ], [ %i.h, %.lr.ph.i.i.i.i.i.a ], [ %31, %.lr.ph.i.i.i.i.i.3 ] ; 3 uses
  %0 = icmp samesign ugt i64 %.sroa.0.1.lcssa.i.i.i.i.i, 99
  br i1 %0, label %bb.c, label %bb.d

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b
  %1 = urem i64 %.8.val, 10000
  %2 = udiv i64 %.8.val, 10000                    ; 2 uses
  %.lhs.trunc.i.i.i.i.i = trunc nuw nsw i64 %1 to i16 ; 2 uses
  %3 = udiv i16 %.lhs.trunc.i.i.i.i.i, 100
  %4 = shl nuw nsw i16 %3, 1
  %5 = zext nneg i16 %4 to i64
  %6 = urem i16 %.lhs.trunc.i.i.i.i.i, 100
  %7 = shl nuw nsw i16 %6, 1
  %8 = zext nneg i16 %7 to i64
  %9 = getelementptr inbounds nuw i8, ptr @1355, i64 %5
  %10 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %11 = load i16, ptr %9, align 1, !noalias !117424
  store i16 %11, ptr %10, align 2, !alias.scope !117424
  %12 = getelementptr inbounds nuw i8, ptr @1355, i64 %8
  %13 = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  %14 = load i16, ptr %12, align 1, !noalias !117424
  store i16 %14, ptr %13, align 2, !alias.scope !117424
  %15 = icmp ugt i64 %.8.val, 99999999
  br i1 %15, label %._crit_edge.i.i.i.i.i.a, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i.a:                          ; preds = %.lr.ph.i.i.i.i.i
  %16 = urem i64 %2, 10000
  %17 = udiv i64 %.8.val, 100000000               ; 2 uses
  %.lhs.trunc.i.i.i.i.i.1 = trunc nuw nsw i64 %16 to i16 ; 2 uses
  %18 = udiv i16 %.lhs.trunc.i.i.i.i.i.1, 100
  %19 = shl nuw nsw i16 %18, 1
  %20 = zext nneg i16 %19 to i64
  %21 = urem i16 %.lhs.trunc.i.i.i.i.i.1, 100
  %22 = shl nuw nsw i16 %21, 1
  %23 = zext nneg i16 %22 to i64
  %24 = getelementptr inbounds nuw i8, ptr @1355, i64 %20
  %25 = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %26 = load i16, ptr %24, align 1, !noalias !117424
  store i16 %26, ptr %25, align 2, !alias.scope !117424
  %27 = getelementptr inbounds nuw i8, ptr @1355, i64 %23
  %28 = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  %29 = load i16, ptr %27, align 1, !noalias !117424
  store i16 %29, ptr %28, align 2, !alias.scope !117424
  %i.f = icmp ugt i64 %.8.val, 999999999999
  br i1 %i.f, label %.lr.ph.i.i.i.i.i.a, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i.a:                               ; preds = %._crit_edge.i.i.i.i.i.a
  %i.g = urem i64 %17, 10000
  %i.h = udiv i64 %.8.val, 1000000000000          ; 2 uses
  %.lhs.trunc.i.i.i.i.i.a = trunc nuw nsw i64 %i.g to i16 ; 2 uses
  %i.i = udiv i16 %.lhs.trunc.i.i.i.i.i.a, 100
  %i.j = shl nuw nsw i16 %i.i, 1
  %i.k = zext nneg i16 %i.j to i64
  %i.l = urem i16 %.lhs.trunc.i.i.i.i.i.a, 100
  %i.m = shl nuw nsw i16 %i.l, 1
  %i.n = zext nneg i16 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @1355, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = load i16, ptr %i.o, align 1, !noalias !117424
  store i16 %i.q, ptr %i.p, align 2, !alias.scope !117424
  %i.r = getelementptr inbounds nuw i8, ptr @1355, i64 %i.n
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.t = load i16, ptr %i.r, align 1, !noalias !117424
  store i16 %i.t, ptr %i.s, align 2, !alias.scope !117424
  %i.u = icmp ugt i64 %.8.val, 9999999999999999
  br i1 %i.u, label %.lr.ph.i.i.i.i.i.3, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i.3:                               ; preds = %.lr.ph.i.i.i.i.i.a
  %30 = urem i64 %i.h, 10000
  %31 = udiv i64 %.8.val, 10000000000000000
  %.lhs.trunc.i.i.i.i.i.3 = trunc nuw nsw i64 %30 to i16 ; 2 uses
  %32 = udiv i16 %.lhs.trunc.i.i.i.i.i.3, 100
  %33 = shl nuw nsw i16 %32, 1
  %34 = zext nneg i16 %33 to i64
  %35 = urem i16 %.lhs.trunc.i.i.i.i.i.3, 100
  %36 = shl nuw nsw i16 %35, 1
  %37 = zext nneg i16 %36 to i64
  %38 = getelementptr inbounds nuw i8, ptr @1355, i64 %34
  %39 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %40 = load i16, ptr %38, align 1, !noalias !117424
  store i16 %40, ptr %39, align 2, !alias.scope !117424
  %41 = getelementptr inbounds nuw i8, ptr @1355, i64 %37
  %42 = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %43 = load i16, ptr %41, align 1, !noalias !117424
  store i16 %43, ptr %42, align 2, !alias.scope !117424
  br label %._crit_edge.i.i.i.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  %.lhs.trunc24.i.i.i.i.i = trunc nuw i64 %.sroa.0.1.lcssa.i.i.i.i.i to i16 ; 2 uses
  %i.v = urem i16 %.lhs.trunc24.i.i.i.i.i, 100
  %i.w = shl nuw nsw i16 %i.v, 1
  %i.x = zext nneg i16 %i.w to i64
  %i.y = udiv i16 %.lhs.trunc24.i.i.i.i.i, 100
  %.zext27.i.i.i.i.i = zext nneg i16 %i.y to i64
  %i.z = add i64 %.sroa.09.0.lcssa.i.i.i.i.i, -2  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr @1355, i64 %i.x
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.z
  %i.ac = load i16, ptr %i.aa, align 1, !noalias !117424
  store i16 %i.ac, ptr %i.ab, align 1, !alias.scope !117424
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i.i
  %.sroa.09.1.i.i.i.i.i = phi i64 [ %i.z, %bb.c ], [ %.sroa.09.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %.sroa.0.2.i.i.i.i.i = phi i64 [ %.zext27.i.i.i.i.i, %bb.c ], [ %.sroa.0.1.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.ad = icmp samesign ult i64 %.sroa.0.2.i.i.i.i.i, 10
  br i1 %i.ad, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = shl nuw nsw i64 %.sroa.0.2.i.i.i.i.i, 1
  %i.af = add i64 %.sroa.09.1.i.i.i.i.i, -2       ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr @1355, i64 %i.ae
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.af
  %i.ai = load i16, ptr %i.ag, align 1, !noalias !117424
  store i16 %i.ai, ptr %i.ah, align 1, !alias.scope !117424
  br label %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$u64$GT$5write17h47e48a1441d56637E.exit.i.i.i.i"

bb.f:                                             ; preds = %bb.d
  %i.aj = add i64 %.sroa.09.1.i.i.i.i.i, -1       ; 2 uses
  %i.ak = trunc nuw nsw i64 %.sroa.0.2.i.i.i.i.i to i8
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aj
  %i.am = or disjoint i8 %i.ak, 48
  store i8 %i.am, ptr %i.al, align 1, !alias.scope !117424
  br label %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$u64$GT$5write17h47e48a1441d56637E.exit.i.i.i.i"

"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$u64$GT$5write17h47e48a1441d56637E.exit.i.i.i.i": ; preds = %bb.f, %bb.e
  %.sroa.09.2.i.i.i.i.i = phi i64 [ %i.aj, %bb.f ], [ %i.af, %bb.e ] ; 2 uses
  %i.an = sub i64 20, %.sroa.09.2.i.i.i.i.i       ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.09.2.i.i.i.i.i ; 2 uses
  %i.ap = icmp ult i64 %i.an, 21
  tail call void @llvm.assume(i1 %i.ap)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117425)
  %i.aq = getelementptr inbounds nuw i8, ptr %.val2, i64 16 ; 3 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !117425, !noundef !46
  %.not.i.i.i.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$u64$GT$5write17h47e48a1441d56637E.exit.i.i.i.i"
  %i.as = tail call fastcc noundef align 8 ptr @"_ZN3csv6writer15Writer$LT$W$GT$15write_delimiter17hb2739916160d51adE"(ptr noalias noundef nonnull align 8 dereferenceable(384) %.val2) ; 2 uses
  %.not16.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not16.i.i.i.i.i, label %bb.h, label %"_ZN94_$LT$$RF$mut$u20$csv..serializer..SeRecord$LT$W$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17h5ad2b352615276b2E.exit.i"

bb.h:                                             ; preds = %bb.g, %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$u64$GT$5write17h47e48a1441d56637E.exit.i.i.i.i"
  %i.at = getelementptr inbounds nuw i8, ptr %.val2, i64 56 ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val2, i64 48 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !117426
  %i.av = load i64, ptr %i.at, align 8, !alias.scope !117425, !noundef !46 ; 4 uses
  %i.aw = load i64, ptr %i.au, align 8, !alias.scope !117425, !noundef !46 ; 4 uses
  %i.ax = icmp ugt i64 %i.av, %i.aw
  br i1 %i.ax, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !prof !121

.lr.ph.i.i.i.i:                                   ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %.val2, i64 40 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.val2, i64 96 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val2, i64 25 ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.val2, i64 64 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.val2, i64 80 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.val2, i64 72 ; 2 uses
  %i.bg = load ptr, ptr %i.ay, align 8, !alias.scope !117425, !nonnull !46, !noundef !46
  %i.bh = sub nuw i64 %i.aw, %i.av
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.av
  call void @_ZN8csv_core6writer6Writer5field17h9c154826982314cbE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(288) %i.az, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ao, i64 noundef %i.an, ptr noalias noundef nonnull align 1 %i.bi, i64 noundef %i.bh)
  %i.bj = load i8, ptr %i.ba, align 8, !range !47, !noalias !117426, !noundef !46
  %i.bk = load i64, ptr %i.b, align 8, !noalias !117426, !noundef !46 ; 4 uses
  %i.bl = load i64, ptr %i.bb, align 8, !noalias !117426, !noundef !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !117426
  %i.bm = icmp ugt i64 %i.bk, %i.an
  br i1 %i.bm, label %.loopexit.i.i.i.i, label %bb.i, !prof !51

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bn = trunc nuw i8 %i.bj to i1
  %i.bo = sub nuw nsw i64 %i.an, %i.bk            ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bk ; 2 uses
  %i.bq = load i64, ptr %i.at, align 8, !alias.scope !117425, !noundef !46
  %i.br = add i64 %i.bq, %i.bl                    ; 7 uses
  store i64 %i.br, ptr %i.at, align 8, !alias.scope !117425
  br i1 %i.bn, label %bb.j, label %.loopexit59.i.i.i.i

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !117427)
  store i8 1, ptr %i.bc, align 1, !alias.scope !117427
  %i.bs = load i64, ptr %i.bd, align 8, !range !72, !alias.scope !117427, !noundef !46 ; 2 uses
  %.not.i2.peel.i.i.i.i = icmp eq i64 %i.bs, -9223372036854775808
  br i1 %.not.i2.peel.i.i.i.i, label %.loopexit60.i.i.i.i, label %bb.k, !prof !51

bb.k:                                             ; preds = %bb.j
  %i.bt = load i64, ptr %i.au, align 8, !alias.scope !117427, !noundef !46 ; 2 uses
  %.not6.i.peel.i.i.i.i = icmp ugt i64 %i.br, %i.bt
  br i1 %.not6.i.peel.i.i.i.i, label %.loopexit61.i.i.i.i, label %bb.l, !prof !81

bb.l:                                             ; preds = %bb.k
  %i.bu = load ptr, ptr %i.ay, align 8, !alias.scope !117427, !nonnull !46, !noundef !46 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !117428)
  %i.bv = load i64, ptr %i.be, align 8, !alias.scope !117429, !noundef !46 ; 4 uses
  %i.bw = icmp sgt i64 %i.bv, -1
  call void @llvm.assume(i1 %i.bw)
  %i.bx = sub nsw i64 %i.bs, %i.bv
  %i.by = icmp ult i64 %i.br, %i.bx
  br i1 %i.by, label %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h5f36e86ea5562edaE.exit.thread.i.peel.i.i.i.i", label %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h5f36e86ea5562edaE.exit.i.peel.i.i.i.i", !prof !48

"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h5f36e86ea5562edaE.exit.i.peel.i.i.i.i": ; preds = %bb.l
  %i.bz = call fastcc noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h49b38a2378cf49e3E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bu, i64 noundef %i.br) ; 2 uses
  store i8 0, ptr %i.bc, align 1, !alias.scope !117427
  %.not7.i.peel.i.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not7.i.peel.i.i.i.i, label %.peel.next.i.i.i.i, label %.loopexit62.i.i.i.i

"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h5f36e86ea5562edaE.exit.thread.i.peel.i.i.i.i": ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !117430)
  %i.ca = load ptr, ptr %i.bf, align 8, !alias.scope !117431, !nonnull !46, !noundef !46
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bv
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cb, ptr nonnull readonly align 1 %i.bu, i64 range(i64 0, -1) %i.br, i1 false), !noalias !117431
  %i.cc = add i64 %i.bv, %i.br
  store i64 %i.cc, ptr %i.be, align 8, !alias.scope !117431
  store i8 0, ptr %i.bc, align 1, !alias.scope !117427
  br label %.peel.next.i.i.i.i

.peel.next.i.i.i.i:                               ; preds = %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h5f36e86ea5562edaE.exit.thread.i.peel.i.i.i.i", %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h5f36e86ea5562edaE.exit.i.peel.i.i.i.i"
  store i64 0, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !117426
  %i.cd = load i64, ptr %i.au, align 8, !alias.scope !117425, !noundef !46
  %i.ce = load ptr, ptr %i.ay, align 8, !alias.scope !117425, !nonnull !46, !noundef !46
  call void @_ZN8csv_core6writer6Writer5field17h9c154826982314cbE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(288) %i.az, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bp, i64 noundef %i.bo, ptr noalias noundef nonnull align 1 %i.ce, i64 noundef %i.cd)
  %i.cf = load i8, ptr %i.ba, align 8, !range !47, !noalias !117426, !noundef !46
  %i.cg = load i64, ptr %i.b, align 8, !noalias !117426, !noundef !46 ; 3 uses
  %i.ch = load i64, ptr %i.bb, align 8, !noalias !117426, !noundef !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !117426
  %i.ci = icmp ugt i64 %i.cg, %i.bo
  br i1 %i.ci, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i, !prof !121

._crit_edge.i.i.i.i:                              ; preds = %bb.h
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.av, i64 noundef %i.aw, i64 noundef %i.aw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @828) #75
  unreachable

.lr.ph.i.i.i:                                     ; preds = %.peel.next.i.i.i.i, %"_ZN3csv6writer15Writer$LT$W$GT$9flush_buf17h9010023628b57dfcE.exit.i.i.i.i"
  %i.cj = phi i64 [ %i.dg, %"_ZN3csv6writer15Writer$LT$W$GT$9flush_buf17h9010023628b57dfcE.exit.i.i.i.i" ], [ %i.ch, %.peel.next.i.i.i.i ]
  %i.ck = phi i64 [ %i.df, %"_ZN3csv6writer15Writer$LT$W$GT$9flush_buf17h9010023628b57dfcE.exit.i.i.i.i" ], [ %i.cg, %.peel.next.i.i.i.i ] ; 2 uses
  %i.cl = phi i8 [ %i.de, %"_ZN3csv6writer15Writer$LT$W$GT$9flush_buf17h9010023628b57dfcE.exit.i.i.i.i" ], [ %i.cf, %.peel.next.i.i.i.i ]
  %.sroa.6.0.i34.i21.i.i.i = phi i64 [ %i.cn, %"_ZN3csv6writer15Writer$LT$W$GT$9flush_buf17h9010023628b57dfcE.exit.i.i.i.i" ], [ %i.bo, %.peel.next.i.i.i.i ]
  %.sroa.04.0.i35.i20.i.i.i = phi ptr [ %i.co, %"_ZN3csv6writer15Writer$LT$W$GT$9flush_buf17h9010023628b57dfcE.exit.i.i.i.i" ], [ %i.bp, %.peel.next.i.i.i.i ]
  %i.cm = trunc nuw i8 %i.cl to i1
  %i.cn = sub nuw nsw i64 %.sroa.6.0.i34.i21.i.i.i, %i.ck ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i35.i20.i.i.i, i64 %i.ck ; 2 uses
  %i.cp = load i64, ptr %i.at, align 8, !alias.scope !117425, !noundef !46
  %i.cq = add i64 %i.cp, %i.cj                    ; 7 uses
  store i64 %i.cq, ptr %i.at, align 8, !alias.scope !117425
  br i1 %i.cm, label %bb.m, label %.loopexit59.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %"_ZN3csv6writer15Writer$LT$W$GT$9flush_buf17h9010023628b57dfcE.exit.i.i.i.i", %.peel.next.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.6.0.i34.lcssa.i.i.i.i = phi i64 [ %i.an, %.lr.ph.i.i.i.i ], [ %i.bo, %.peel.next.i.i.i.i ], [ %i.cn, %"_ZN3csv6writer15Writer$LT$W$GT$9flush_buf17h9010023628b57dfcE.exit.i.i.i.i" ] ; 2 uses
  %.lcssa37.i.i.i.i = phi i64 [ %i.bk, %.lr.ph.i.i.i.i ], [ %i.cg, %.peel.next.i.i.i.i ], [ %i.df, %"_ZN3csv6writer15Writer$LT$W$GT$9flush_buf17h9010023628b57dfcE.exit.i.i.i.i" ]
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.lcssa37.i.i.i.i, i64 noundef %.sroa.6.0.i34.lcssa.i.i.i.i, i64 noundef %.sroa.6.0.i34.lcssa.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @829) #75
  unreachable

bb.m:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !117432)
  store i8 1, ptr %i.bc, align 1, !alias.scope !117432
  %i.cr = load i64, ptr %i.bd, align 8, !range !72, !alias.scope !117432, !noundef !46 ; 2 uses
  %.not.i2.i.i.i.i = icmp eq i64 %i.cr, -9223372036854775808
  br i1 %.not.i2.i.i.i.i, label %.loopexit60.i.i.i.i, label %bb.n, !prof !51

bb.n:                                             ; preds = %bb.m
  %i.cs = load i64, ptr %i.au, align 8, !alias.scope !117432, !noundef !46 ; 2 uses
  %.not6.i.i.i.i.i = icmp ugt i64 %i.cq, %i.cs
  br i1 %.not6.i.i.i.i.i, label %.loopexit61.i.i.i.i, label %bb.o, !prof !81

.loopexit60.i.i.i.i:                              ; preds = %bb.m, %bb.j
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @832) #75, !noalias !117432
  unreachable

.loopexit61.i.i.i.i:                              ; preds = %bb.n, %bb.k
  %.lcssa53.i.i.i.i = phi i64 [ %i.bt, %bb.k ], [ %i.cs, %bb.n ]
  %.lcssa50.i.i.i.i = phi i64 [ %i.br, %bb.k ], [ %i.cq, %bb.n ]
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.lcssa50.i.i.i.i, i64 noundef %.lcssa53.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @833) #75, !noalias !117432
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.ct = load ptr, ptr %i.ay, align 8, !alias.scope !117432, !nonnull !46, !noundef !46 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !117433)
  %i.cu = load i64, ptr %i.be, align 8, !alias.scope !117434, !noundef !46 ; 4 uses
  %i.cv = icmp sgt i64 %i.cu, -1
  call void @llvm.assume(i1 %i.cv)
  %i.cw = sub nsw i64 %i.cr, %i.cu
  %i.cx = icmp ult i64 %i.cq, %i.cw
  br i1 %i.cx, label %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h5f36e86ea5562edaE.exit.thread.i.i.i.i.i", label %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h5f36e86ea5562edaE.exit.i.i.i.i.i", !prof !48

"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h5f36e86ea5562edaE.exit.thread.i.i.i.i.i": ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !117435)
  %i.cy = load ptr, ptr %i.bf, align 8, !alias.scope !117436, !nonnull !46, !noundef !46
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cu
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cz, ptr nonnull readonly align 1 %i.ct, i64 range(i64 0, -1) %i.cq, i1 false), !noalias !117436
  %i.da = add i64 %i.cu, %i.cq
  store i64 %i.da, ptr %i.be, align 8, !alias.scope !117436
  store i8 0, ptr %i.bc, align 1, !alias.scope !117432
  br label %"_ZN3csv6writer15Writer$LT$W$GT$9flush_buf17h9010023628b57dfcE.exit.i.i.i.i"

"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h5f36e86ea5562edaE.exit.i.i.i.i.i": ; preds = %bb.o
  %i.db = call fastcc noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h49b38a2378cf49e3E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ct, i64 noundef %i.cq) ; 2 uses
  store i8 0, ptr %i.bc, align 1, !alias.scope !117432
  %.not7.i.i.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not7.i.i.i.i.i, label %"_ZN3csv6writer15Writer$LT$W$GT$9flush_buf17h9010023628b57dfcE.exit.i.i.i.i", label %.loopexit62.i.i.i.i

"_ZN3csv6writer15Writer$LT$W$GT$9flush_buf17h9010023628b57dfcE.exit.i.i.i.i": ; preds = %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h5f36e86ea5562edaE.exit.i.i.i.i.i", %"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h5f36e86ea5562edaE.exit.thread.i.i.i.i.i"
  store i64 0, ptr %i.at, align 8
end_hunk_0
