Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_html-eed424199d03c1aa.typst_html.6be6ebf0611e0a90-cgu.0?download=true
inline.NumInlined: 8941
inline.NumDeleted: 4345
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RNvXsG_NtCs9gmjTwvRRSu_10typst_html3domNtB5_9HtmlAttrsNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast9IntoValue10into_value:bb.a
  %i.cx = icmp ult i64 %i.cm, %i.cf
  br i1 %i.cx, label %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !20379
  %.val12.i.i.i.i.i.i.i.i = load ptr, ptr %i.cd, align 8, !alias.scope !20380, !noalias !20367
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.m, i64 %i.cg, ptr %.val12.i.i.i.i.i.i.i.i, i64 noundef %..i.i.i.i.i.i.i, i64 noundef 8, i64 noundef range(i64 40, 57) 56), !noalias !20381
  %i.cy = load i64, ptr %i.m, align 8, !range !65, !noalias !20379, !noundef !57
  %i.cz = trunc nuw i64 %i.cy to i1
  br i1 %i.cz, label %bb.r, label %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !20379
  br label %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i

_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i: ; preds = %bb.q
  %i.da = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !noalias !20379, !nonnull !57, !noundef !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !20379
  br label %_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB12_5value5ValueE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.thread

_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB12_5value5ValueE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.thread: ; preds = %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i, %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i
  %storemerge = phi ptr [ %i.cw, %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i ], [ %i.db, %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i ]
  %..i.sink.i.i.i.i.i.i = phi i64 [ %i.cp, %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i ], [ %..i.i.i.i.i.i.i, %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i ]
  store ptr %storemerge, ptr %i.cd, align 8, !alias.scope !20370, !noalias !20367
  store i64 %..i.sink.i.i.i.i.i.i, ptr %i.p, align 8, !alias.scope !20370, !noalias !20367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !20382
  store ptr %1, ptr %i.l, align 8, !noalias !20353
  %.sroa.64.0..sroa_idx7121 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %2, ptr %.sroa.64.0..sroa_idx7121, align 8, !noalias !20353
  %.sroa.79.0..sroa_idx12122 = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.79.0..sroa_idx12122, align 8, !noalias !20353
  %.sroa.814.0..sroa_idx17123 = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %2, ptr %.sroa.814.0..sroa_idx17123, align 8, !noalias !20353
  %.sroa.9.0..sroa_idx21124 = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i8 %.sroa.02.0.i.i.i, ptr %.sroa.9.0..sroa_idx21124, align 8, !noalias !20353
  br label %.lr.ph.i.i.i.i.i.i.i

_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB12_5value5ValueE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i: ; preds = %_RINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtNtCsjFU9swAW47b_8indexmap3map4core8get_hashNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1R_5value5ValueE0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !20383
  store ptr %1, ptr %i.l, align 8, !noalias !20353
  %.sroa.64.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %2, ptr %.sroa.64.0..sroa_idx7, align 8, !noalias !20353
  %.sroa.79.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.79.0..sroa_idx12, align 8, !noalias !20353
  %.sroa.814.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %2, ptr %.sroa.814.0..sroa_idx17, align 8, !noalias !20353
  %.sroa.9.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i8 %.sroa.02.0.i.i.i, ptr %.sroa.9.0..sroa_idx21, align 8, !noalias !20353
  call void @llvm.experimental.noalias.scope.decl(metadata !20384)
  call void @llvm.experimental.noalias.scope.decl(metadata !20385)
  call void @llvm.experimental.noalias.scope.decl(metadata !20386)
  call void @llvm.experimental.noalias.scope.decl(metadata !20387)
  br i1 %i.w, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtCsakL8LGkl72C_4ecow3vec8IntoIterTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB12_6string9EcoStringEENCNvXsG_B1B_NtB1B_9HtmlAttrsNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast9IntoValue10into_value0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4o_8for_each4callTNtNtB3d_3str3StrNtNtB3d_5value5ValueENCINvXsb_NtCsjFU9swAW47b_8indexmap3mapINtB6c_8IndexMapB5s_B5I_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEINtNtB4s_7collect6ExtendB5r_E6extendBN_E0E0EB1D_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB12_5value5ValueE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.thread, %_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB12_5value5ValueE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i
  %.sroa.79.0..sroa_idx12125 = phi ptr [ %.sroa.79.0..sroa_idx12122, %_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB12_5value5ValueE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.thread ], [ %.sroa.79.0..sroa_idx12, %_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB12_5value5ValueE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i ] ; 10 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 6 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.j, i64 15
  %i.dd = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.dg = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.7.8..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %.sroa.615.0..sroa_idx16.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %.sroa.618.0..sroa_idx19.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 55 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.dm = trunc nuw i8 %.sroa.02.0.i.i.i to i1
  br label %bb.s

bb.s:                                             ; preds = %bb.bj, %.lr.ph.i.i.i.i.i.i.i
  %i.dn = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i ], [ %i.do, %bb.bj ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20388)
  %i.do = add nuw i64 %i.dn, 1                    ; 12 uses
  br i1 %i.dm, label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB7_6string9EcoStringEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBO_.exit.i.i.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dp = icmp ult i64 %i.dn, %2
  call void @llvm.assume(i1 %i.dp)
  %i.dq = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.dn ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20389)
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dq, align 8, !range !66, !alias.scope !20389, !noalias !20390, !noundef !57 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !20391)
  call void @llvm.experimental.noalias.scope.decl(metadata !20392)
  call void @llvm.experimental.noalias.scope.decl(metadata !20393)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 23
  %i.dt = load i8, ptr %i.ds, align 1, !alias.scope !20394, !noalias !20395, !noundef !57
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i8 %i.dt, -1
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.dr, align 8, !alias.scope !20396, !noalias !20397 ; 5 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.du, align 8, !alias.scope !20396, !noalias !20397 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.u, label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB7_6string9EcoStringEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.t
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB7_6string9EcoStringEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread.i.i.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dv = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 -16
  %i.dw = atomicrmw add ptr %i.dv, i64 1 monotonic, align 8, !noalias !20398
  %i.dx = icmp slt i64 %i.dw, 0
  br i1 %i.dx, label %bb.w, label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB7_6string9EcoStringEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread.i.i.i.i.i.i.i, !prof !60

bb.w:                                             ; preds = %bb.v
  store i64 %i.do, ptr %.sroa.79.0..sroa_idx12125, align 8, !alias.scope !20399, !noalias !20400
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs9gmjTwvRRSu_10typst_html(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i.i.i.i) #54
          to label %.noexc.i.i.i.i.i.i.i unwind label %.loopexit.split-lp21.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.w
  unreachable

.loopexit20.i.i.i.i.i.i.i:                        ; preds = %bb.bi, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit22.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %i.do, ptr %.sroa.79.0..sroa_idx12125, align 8, !alias.scope !20399, !noalias !20400
  br label %.body.i.i.i.i.i.i.i

.loopexit.split-lp21.i.i.i.i.i.i.i:               ; preds = %bb.w, %.noexc.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp23.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i:                              ; preds = %bb.bh, %bb.be, %bb.ba, %bb.x, %.loopexit.split-lp21.i.i.i.i.i.i.i, %.loopexit20.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.kg, %bb.ba ], [ %i.dz, %bb.x ], [ %i.ki, %bb.be ], [ %lpad.phi.i.i.i.i.i.i.i, %bb.bh ], [ %lpad.loopexit22.i.i.i.i.i.i.i, %.loopexit20.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp23.i.i.i.i.i.i.i, %.loopexit.split-lp21.i.i.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtBG_6string9EcoStringEEEB1h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.l) #49
          to label %.body8.i.i.i unwind label %bb.bk, !noalias !20401

_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB7_6string9EcoStringEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBO_.exit.i.i.i.i.i.i.i: ; preds = %bb.s
  %i.dy = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.dn ; 3 uses
  %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dy, align 8, !noalias !20402 ; 2 uses
  %.sroa.5.0..sroa_idx2.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %.sroa.5.0.copyload3.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx2.i.i.i.i.i.i.i.i.i, align 8, !noalias !20402
  %.sroa.6.0..sroa_idx4.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %.sroa.6.0.copyload5.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx4.i.i.i.i.i.i.i.i.i, align 8, !noalias !20402
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvYINtNtCsakL8LGkl72C_4ecow3vec8IntoIterTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB8_6string9EcoStringEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters3map8map_foldBE_TNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB3u_5value5ValueEuNCNvXsG_BH_NtBH_9HtmlAttrsNtNtB3u_4cast9IntoValue10into_value0NCINvNvB1M_8for_each4callB3p_NCINvXsb_NtCsjFU9swAW47b_8indexmap3mapINtB6i_8IndexMapB3q_B4k_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEINtNtB1Q_7collect6ExtendB3p_E6extendINtB2S_3MapB3_B4G_EE0E0E0EBJ_.exit.loopexit.i.i.i.i.i.i, label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB7_6string9EcoStringEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread.i.i.i.i.i.i.i

_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB7_6string9EcoStringEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread.i.i.i.i.i.i.i: ; preds = %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB7_6string9EcoStringEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBO_.exit.i.i.i.i.i.i.i, %bb.v, %bb.u, %bb.t
  %.sroa.06.014.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB7_6string9EcoStringEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBO_.exit.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i.i.i.i.i.i, %bb.v ], [ %.val.i.i.i.i.i.i.i.i.i.i.i, %bb.u ], [ %.val.i.i.i.i.i.i.i.i.i.i.i, %bb.t ] ; 2 uses
  %.sroa.7.013.i.i.i.i6.i.i.i = phi ptr [ %.sroa.5.0.copyload3.i.i.i.i.i.i.i.i.i, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB7_6string9EcoStringEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBO_.exit.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.v ], [ inttoptr (i64 16 to ptr), %bb.u ], [ %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.t ]
  %.sroa.8.012.i.i.i.i.i.i.i = phi i64 [ %.sroa.6.0.copyload5.i.i.i.i.i.i.i.i.i, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB7_6string9EcoStringEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBO_.exit.i.i.i.i.i.i.i ], [ %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.v ], [ %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.u ], [ %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !20403
  store i64 %.sroa.06.014.i.i.i.i.i.i.i, ptr %i.k, align 8, !noalias !20403
  store ptr %.sroa.7.013.i.i.i.i6.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !20403
  store i64 %.sroa.8.012.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !20403
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !20404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !20405
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !20405
  invoke void @_RNvMNtCs6xpQEr8gLsQ_11typst_utils4picoNtB2_7PicoStr7resolve(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, i64 noundef range(i64 1, 0) %.sroa.06.014.i.i.i.i.i.i.i)
          to label %_RNvMsc_NtCs9gmjTwvRRSu_10typst_html3domNtB5_8HtmlAttr7resolve.exit.i.i.i.i.i.i.i.i.i unwind label %bb.x, !noalias !20406

bb.x:                                             ; preds = %bb.y, %_RNvMsc_NtCs9gmjTwvRRSu_10typst_html3domNtB5_8HtmlAttr7resolve.exit.i.i.i.i.i.i.i.i.i, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB7_6string9EcoStringEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread.i.i.i.i.i.i.i
  %i.dz = landingpad { ptr, i32 }
          cleanup
  store i64 %i.do, ptr %.sroa.79.0..sroa_idx12125, align 8, !alias.scope !20399, !noalias !20400
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i) #49
          to label %.body.i.i.i.i.i.i.i unwind label %bb.z, !noalias !20407

_RNvMsc_NtCs9gmjTwvRRSu_10typst_html3domNtB5_8HtmlAttr7resolve.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB7_6string9EcoStringEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread.i.i.i.i.i.i.i
  %i.ea = invoke { ptr, i64 } @_RNvMs0_NtCs6xpQEr8gLsQ_11typst_utils4picoNtB5_15ResolvedPicoStr6as_str(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.y unwind label %bb.x, !noalias !20406 ; 2 uses

bb.y:                                             ; preds = %_RNvMsc_NtCs9gmjTwvRRSu_10typst_html3domNtB5_8HtmlAttr7resolve.exit.i.i.i.i.i.i.i.i.i
  %i.eb = extractvalue { ptr, i64 } %i.ea, 0
  %i.ec = extractvalue { ptr, i64 } %i.ea, 1
  invoke void @_RNvXsb_NtNtCsdaEETE4DqmE_13typst_library11foundations3strNtB5_3StrINtNtCs3oUPovFnLWP_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eb, i64 noundef %i.ec)
          to label %_RNCNvXsG_NtCs9gmjTwvRRSu_10typst_html3domNtB7_9HtmlAttrsNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast9IntoValue10into_value0B9_.exit.i.i.i.i.i.i.i.i unwind label %bb.x, !noalias !20406

bb.z:                                             ; preds = %bb.x
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !20406
  unreachable

_RNCNvXsG_NtCs9gmjTwvRRSu_10typst_html3domNtB7_9HtmlAttrsNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast9IntoValue10into_value0B9_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !20403
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !noalias !20404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !20405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !20405
  store i64 17, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !20404
  call void @llvm.experimental.noalias.scope.decl(metadata !20408)
  call void @llvm.experimental.noalias.scope.decl(metadata !20409)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !20410
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !20411)
  call void @llvm.experimental.noalias.scope.decl(metadata !20412)
  %i.ee = load i8, ptr %i.dc, align 1, !alias.scope !20413, !noalias !20414, !noundef !57 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i8 %i.ee, -1 ; 2 uses
  %i.ef = and i8 %i.ee, 127
  %i.eg = zext nneg i8 %i.ef to i64
  %i.eh = load ptr, ptr %i.j, align 8, !alias.scope !20413, !noalias !20414 ; 10 uses
  %i.ei = load i64, ptr %i.dd, align 8, !alias.scope !20413, !noalias !20414 ; 4 uses
  %.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ei, i64 %i.eg ; 10 uses
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.eh, ptr %i.j ; 9 uses
  %i.ej = icmp samesign ult i64 %.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 17
  %i.ek = lshr i64 %i.ei, 56                      ; 2 uses
  %i.el = trunc nuw i64 %i.ek to i8               ; 4 uses
  br i1 %i.ej, label %bb.aa, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit70.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.new

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit70.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.new: ; preds = %_RNCNvXsG_NtCs9gmjTwvRRSu_10typst_html3domNtB7_9HtmlAttrsNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast9IntoValue10into_value0B9_.exit.i.i.i.i.i.i.i.i
  %3 = add nsw i64 %.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -16 ; 2 uses
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit70.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.aa:                                            ; preds = %_RNCNvXsG_NtCs9gmjTwvRRSu_10typst_html3domNtB7_9HtmlAttrsNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast9IntoValue10into_value0B9_.exit.i.i.i.i.i.i.i.i
  %i.em = icmp samesign ugt i64 %.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 7
  br i1 %i.em, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ab

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit70.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit70.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit70.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.new
  %.sroa.06.097.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.a = phi i64 [ %.sroa.018.096.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.a, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit70.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 2611923443488327891, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit70.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.new ]
  %.sroa.018.096.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.a = phi i64 [ %i.ex, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit70.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 1376283091369227076, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit70.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.new ] ; 2 uses
  %niter = phi i64 [ %i.en, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit70.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit70.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.new ] ; 2 uses
  %i.en = add nuw nsw i64 %niter, 16              ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %niter ; 2 uses
  %.sroa.034.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.eo, align 1, !alias.scope !20415, !noalias !20416
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %.sroa.036.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.ep, align 1, !alias.scope !20415, !noalias !20416
  %i.eq = xor i64 %.sroa.034.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, %.sroa.06.097.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.a
  %i.er = xor i64 %.sroa.036.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, -6626703657320631856
  %i.es = zext i64 %i.eq to i128
  %i.et = zext i64 %i.er to i128
  %i.eu = mul nuw i128 %i.et, %i.es               ; 2 uses
  %i.ev = lshr i128 %i.eu, 64
  %i.ew = xor i128 %i.ev, %i.eu
  %i.ex = trunc i128 %i.ew to i64                 ; 2 uses
  %4 = icmp samesign ult i64 %i.en, %3
  br i1 %4, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit70.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit72.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit72.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit70.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %3 ; 2 uses
  %.sroa.038.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ey, align 1, !alias.scope !20415, !noalias !20416
  %i.ez = xor i64 %.sroa.038.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.018.096.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.a
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %.sroa.040.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.fa, align 1, !alias.scope !20415, !noalias !20416
  %i.fb = xor i64 %.sroa.040.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ex
  br label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.fc = icmp samesign ugt i64 %.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  br i1 %i.fc, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ac

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.aa
  %.sroa.028.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !20415, !noalias !20416
  %i.fd = xor i64 %.sroa.028.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2611923443488327891
  %i.fe = getelementptr i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ff = getelementptr i8, ptr %i.fe, i64 -8
  %.sroa.030.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ff, align 1, !alias.scope !20415, !noalias !20416
  %i.fg = xor i64 %.sroa.030.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1376283091369227076
  br label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %.not63.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not63.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ae, label %bb.ad

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ab
  %i.fh = getelementptr i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fi = getelementptr i8, ptr %i.fh, i64 -4
  %.sroa.033.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.fi, align 1, !alias.scope !20415, !noalias !20416
  %.sroa.032.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !20415, !noalias !20416
  %i.fj = zext i32 %.sroa.032.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.fk = xor i64 %i.fj, 2611923443488327891
  %i.fl = zext i32 %.sroa.033.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.fm = xor i64 %i.fl, 1376283091369227076
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fn = load i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !20415, !noalias !20416, !noundef !57
  %i.fo = lshr i64 %.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !alias.scope !20415, !noalias !20416, !noundef !57
  %i.fr = getelementptr i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fs = getelementptr i8, ptr %i.fr, i64 -1
  %i.ft = load i8, ptr %i.fs, align 1, !alias.scope !20415, !noalias !20416, !noundef !57
  %i.fu = zext i8 %i.fn to i64
  %i.fv = xor i64 %i.fu, 2611923443488327891
  %i.fw = zext i8 %i.ft to i64
  %i.fx = shl nuw nsw i64 %i.fw, 8
  %i.fy = zext i8 %i.fq to i64
  %i.fz = or disjoint i64 %i.fx, %i.fy
  %i.ga = xor i64 %i.fz, 1376283091369227076
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ac, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit72.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.06.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fg, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fm, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ga, %bb.ad ], [ 1376283091369227076, %bb.ac ], [ %i.fb, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit72.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fd, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fk, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fv, %bb.ad ], [ 2611923443488327891, %bb.ac ], [ %i.ez, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit72.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.gb = zext i64 %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i128
  %i.gc = zext i64 %.sroa.06.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i128
  %i.gd = mul nuw i128 %i.gb, %i.gc               ; 2 uses
  %i.ge = lshr i128 %i.gd, 64
  %i.gf = xor i128 %i.ge, %i.gd
  %i.gg = trunc i128 %i.gf to i64
  %i.gh = xor i64 %.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.gg
  %i.gi = mul i64 %i.gh, 1452335207727870361
  %i.gj = add i64 %i.gi, 4919460506697669435      ; 2 uses
  %i.gk = call noundef i64 @llvm.fshl.i64(i64 %i.gj, i64 %i.gj, i64 26) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !20417
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !20404
  call void @llvm.experimental.noalias.scope.decl(metadata !20418)
  %i.gl = load ptr, ptr %i.cd, align 8, !alias.scope !20419, !noalias !20420, !nonnull !57, !noundef !57 ; 2 uses
  %i.gm = load i64, ptr %i.cc, align 8, !alias.scope !20419, !noalias !20420, !noundef !57 ; 3 uses
  %i.gn = load i64, ptr %i.cb, align 8, !alias.scope !20421, !noalias !20422, !noundef !57
  %i.go = icmp eq i64 %i.gn, 0
  br i1 %i.go, label %bb.af, label %_RINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtNtCsjFU9swAW47b_8indexmap3map4core8get_hashNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1R_5value5ValueE0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !60

bb.af:                                            ; preds = %bb.ae
  %i.gp = invoke { i64, i64 } @_RINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtNtCsjFU9swAW47b_8indexmap3map4core8get_hashNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1Z_5value5ValueE0EB21_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.de, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.gl, i64 noundef %i.gm, i1 noundef zeroext true) #55
          to label %_RINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtNtCsjFU9swAW47b_8indexmap3map4core8get_hashNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1R_5value5ValueE0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i.i, !noalias !20420 ; 0 uses

_RINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtNtCsjFU9swAW47b_8indexmap3map4core8get_hashNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1R_5value5ValueE0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.af, %bb.ae
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.de, align 8, !alias.scope !20423, !noalias !20424, !nonnull !57, !noundef !57 ; 8 uses
  %.val5.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.df, align 8, !alias.scope !20423, !noalias !20424, !noundef !57 ; 4 uses
  %i.gq = lshr i64 %i.gk, 57
  %i.gr = trunc nuw nsw i64 %i.gq to i8           ; 3 uses
  %i.gs = insertelement <16 x i8> poison, i8 %i.gr, i64 0
  %i.gt = shufflevector <16 x i8> %i.gs, <16 x i8> poison, <16 x i32> zeroinitializer
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i64 %i.ei, -1 ; 3 uses
  %i.gu = and i64 %i.ek, 127
  %.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ei, i64 %i.gu ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.eh, ptr %i.j
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ak, %_RINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtNtCsjFU9swAW47b_8indexmap3map4core8get_hashNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1R_5value5ValueE0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gk, %_RINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtNtCsjFU9swAW47b_8indexmap3map4core8get_hashNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1R_5value5ValueE0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ie, %bb.ak ]
  %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ undef, %_RINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtNtCsjFU9swAW47b_8indexmap3map4core8get_hashNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1R_5value5ValueE0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.120.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ak ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_RINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtNtCsjFU9swAW47b_8indexmap3map4core8get_hashNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1R_5value5ValueE0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.01.122.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ak ]
  %i.gv = phi i64 [ 0, %_RINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtNtCsjFU9swAW47b_8indexmap3map4core8get_hashNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1R_5value5ValueE0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.id, %bb.ak ]
  %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.val5.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.gw, align 1, !noalias !20425 ; 3 uses
  %i.gx = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.gt
  %i.gy = bitcast <16 x i1> %i.gx to i16          ; 2 uses
  %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.gy, 0
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.ag, %_RNCINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtNtCsjFU9swAW47b_8indexmap3map4core10equivalentNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB2f_5value5ValueB2b_E0NCINvB1p_8get_hashB2b_B35_E0E0Cs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.05.029.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.ht, %_RNCINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtNtCsjFU9swAW47b_8indexmap3map4core10equivalentNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB2f_5value5ValueB2b_E0NCINvB1p_8get_hashB2b_B35_E0E0Cs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gy, %bb.ag ] ; 3 uses
  %i.gz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.029.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.ha = zext nneg i16 %i.gz to i64
  %i.hb = add i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ha
  %i.hc = and i64 %i.hb, %.val5.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hd = sub nsw i64 0, %i.hc
  %i.he = getelementptr inbounds [8 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.hd
  %i.hf = getelementptr inbounds i8, ptr %i.he, i64 -8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.hf, align 8, !noalias !20426, !noundef !57 ; 6 uses
  %i.hg = icmp ult i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.gm
  br i1 %i.hg, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hh = getelementptr inbounds nuw [56 x i8], ptr %i.gl, i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 55
  %i.hj = load i8, ptr %i.hi, align 1, !alias.scope !20427, !noalias !20428, !noundef !57 ; 2 uses
  %.not.i1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i8 %i.hj, -1 ; 2 uses
  %i.hk = and i8 %i.hj, 127
  %i.hl = zext nneg i8 %i.hk to i64
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 48
  %i.hn = load i64, ptr %i.hm, align 8, !alias.scope !20427, !noalias !20428
  %.sroa.3.0.i2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.hn, i64 %i.hl
  %i.ho = icmp eq i64 %.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.3.0.i2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ho, label %_RNCINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtNtCsjFU9swAW47b_8indexmap3map4core10equivalentNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB2f_5value5ValueB2b_E0NCINvB1p_8get_hashB2b_B35_E0E0Cs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtNtCsjFU9swAW47b_8indexmap3map4core10equivalentNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB2f_5value5ValueB2b_E0NCINvB1p_8get_hashB2b_B35_E0E0Cs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !146

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store i64 %i.do, ptr %.sroa.79.0..sroa_idx12125, align 8, !alias.scope !20399, !noalias !20400
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.gm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @114) #51
          to label %.noexc9.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i, !noalias !20420

.noexc9.i.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.ai
  unreachable

_RNCINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtNtCsjFU9swAW47b_8indexmap3map4core10equivalentNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB2f_5value5ValueB2b_E0NCINvB1p_8get_hashB2b_B35_E0E0Cs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ah
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hh, i64 40 ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !alias.scope !20427, !noalias !20428, !nonnull !57
  %.sroa.0.0.i3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.hq, ptr %i.hp
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr nonnull %.sroa.0.0.i3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i), !noalias !20429
  %i.hr = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.hr, label %bb.an, label %_RNCINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtNtCsjFU9swAW47b_8indexmap3map4core10equivalentNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB2f_5value5ValueB2b_E0NCINvB1p_8get_hashB2b_B35_E0E0Cs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !94

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %_RNCINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtNtCsjFU9swAW47b_8indexmap3map4core10equivalentNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB2f_5value5ValueB2b_E0NCINvB1p_8get_hashB2b_B35_E0E0Cs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ag
  %.not11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %.not11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.aj, !prof !60

_RNCINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtNtCsjFU9swAW47b_8indexmap3map4core10equivalentNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB2f_5value5ValueB2b_E0NCINvB1p_8get_hashB2b_B35_E0E0Cs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNCINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtNtCsjFU9swAW47b_8indexmap3map4core10equivalentNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB2f_5value5ValueB2b_E0NCINvB1p_8get_hashB2b_B35_E0E0Cs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ah
  %i.hs = add i16 %.sroa.05.029.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.ht = and i16 %i.hs, %.sroa.05.029.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i.i.i2.i.i.i.i.i.i.i = icmp eq i16 %i.ht, 0
  br i1 %.not.i.i.i.i.i.i.i.i2.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.aj:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hu = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.hv = bitcast <16 x i1> %i.hu to i16          ; 2 uses
  %.not.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.hv, 0
  br i1 %.not.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i, label %bb.ak, label %.thread24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !60

.thread24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %bb.aj
  %i.hw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.hv, i1 true)
  %i.hx = zext nneg i16 %i.hw to i64
  %i.hy = add i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.hx
  %i.hz = and i64 %i.hy, %.val5.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %.thread24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.4.121.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hz, %.thread24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ia = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ib = bitcast <16 x i1> %i.ia to i16
  %i.ic = icmp eq i16 %i.ib, 0
  br i1 %i.ic, label %bb.ak, label %bb.al, !prof !60

bb.ak:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.aj
  %.sroa.01.122.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.aj ]
  %.sroa.4.120.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.121.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ undef, %bb.aj ]
  %i.id = add i64 %i.gv, 16                       ; 2 uses
  %i.ie = add i64 %i.id, %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br label %bb.ag

bb.al:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.if = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.4.121.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ig = load i8, ptr %i.if, align 1, !noalias !20430, !noundef !57 ; 2 uses
  %i.ih = icmp sgt i8 %i.ig, -1
  br i1 %i.ih, label %bb.am, label %bb.as, !prof !60

bb.am:                                            ; preds = %bb.al
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 16, !noalias !20430
  %i.ii = icmp slt <16 x i8> %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.ij = bitcast <16 x i1> %i.ii to i16          ; 2 uses
  %.not.i22.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ne i16 %i.ij, 0
  %i.ik = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ij, i1 true)
  %i.il = zext nneg i16 %i.ik to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i22.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.il
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !20431
  br label %bb.as

bb.an:                                            ; preds = %_RNCINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtNtCsjFU9swAW47b_8indexmap3map4core10equivalentNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB2f_5value5ValueB2b_E0NCINvB1p_8get_hashB2b_B35_E0E0Cs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.im = load i64, ptr %i.cc, align 8, !alias.scope !20419, !noalias !20420, !noundef !57 ; 2 uses
  %i.in = icmp ult i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.im
  br i1 %i.in, label %bb.ao, label %bb.aq
end_hunk_0
