Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal_core-ba0671c8f10fcf8e.opendal_core.455f99aaf940afe2-cgu.14?download=true
inline.NumInlined: 513
inline.NumDeleted: 231
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNCNvXs_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list14hierarchy_listINtB6_15HierarchyListerNtNtNtNtBe_8services6memory6lister12MemoryListerENtNtB8_3api4List4next0Be_:bb.a
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22, !noalias !1288
  unreachable

bb.ah:                                            ; preds = %bb.ai, %.thread15.i, %bb.aa, %bb.i, %bb.h
  %.pn11.pn.i = phi { ptr, i32 } [ %.pn1114.i, %bb.ai ], [ %.pn7.pn.pn.i, %bb.aa ], [ %i.ai, %bb.i ], [ %i.ah, %bb.h ], [ %eh.lpad-body30.i, %.thread15.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1288
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q) #24
          to label %.body35.i unwind label %bb.ag, !noalias !1288

bb.ai:                                            ; preds = %bb.aa, %.thread.i
  %.pn1114.i = phi { ptr, i32 } [ %i.aj, %.thread.i ], [ %.pn7.pn.pn.i, %bb.aa ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata15MetadataBuilderEBH_(ptr noalias nofree noundef align 8 dereferenceable(256) %i.p) #24
          to label %bb.ah unwind label %bb.ag, !noalias !1288

bb.aj:                                            ; preds = %bb.e
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #25
          to label %.noexc unwind label %bb.al

.noexc:                                           ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.e
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #25
          to label %.noexc13 unwind label %bb.al

.noexc13:                                         ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.body

common.ret:                                       ; preds = %bb.am, %bb.cd, %.loopexit69
  %.sroa.565.1 = phi i64 [ 1, %bb.cd ], [ 1, %.loopexit69 ], [ 0, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  store i64 -1, ptr %0, align 8
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.565.1, ptr %.sroa.565.0..sroa_idx, align 8
  %.sroa.966.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.966.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.966, i64 40, i1 false)
  store i8 1, ptr %i.s, align 8
  ret void

bb.am:                                            ; preds = %_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  store i8 1, ptr %i.w, align 8, !noalias !1288
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.54.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.853)
  br label %common.ret

bb.an:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit38.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1294)
  call void @llvm.experimental.noalias.scope.decl(metadata !1295)
  %i.bq = invoke { ptr, i64 } @_RNvMs0_NtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entryNtB5_5Entry4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.r)
          to label %.noexc18 unwind label %.loopexit.split-lp ; 2 uses

.noexc18:                                         ; preds = %bb.an
  %i.br = extractvalue { ptr, i64 } %i.bq, 0
  %i.bs = extractvalue { ptr, i64 } %i.bq, 1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !1294, !noalias !1295, !nonnull !5, !noundef !5
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 72 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !1294, !noalias !1295, !noundef !5
  %i.bx = invoke noundef zeroext i1 @_RNvMNtCsgxBkk5gSRhY_4core5sliceSh11starts_withCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.br, i64 noundef %i.bs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bu, i64 noundef %i.bw)
          to label %.noexc19 unwind label %.loopexit.split-lp

.noexc19:                                         ; preds = %.noexc18
  br i1 %i.bx, label %bb.ao, label %_RNvMNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list14hierarchy_listINtB2_15HierarchyListerNtNtNtNtBa_8services6memory6lister12MemoryListerE10keep_entryBa_.exit

bb.ao:                                            ; preds = %.noexc19
  %i.by = invoke { ptr, i64 } @_RNvMs0_NtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entryNtB5_5Entry4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.r)
          to label %.noexc20 unwind label %.loopexit.split-lp ; 2 uses

.noexc20:                                         ; preds = %bb.ao
  %i.bz = extractvalue { ptr, i64 } %i.by, 0
  %i.ca = extractvalue { ptr, i64 } %i.by, 1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bk, i64 80 ; 5 uses
  %i.cc = invoke noundef zeroext i1 @_RINvMs1_NtCsfBDUjroi3FF_9hashbrown3mapINtB6_7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringuNtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE12contains_keyeECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bz, i64 noundef %i.ca)
          to label %.noexc21 unwind label %.loopexit.split-lp

.noexc21:                                         ; preds = %.noexc20
  br i1 %i.cc, label %_RNvMNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list14hierarchy_listINtB2_15HierarchyListerNtNtNtNtBa_8services6memory6lister12MemoryListerE10keep_entryBa_.exit, label %bb.ap

bb.ap:                                            ; preds = %.noexc21
  %i.cd = load i64, ptr %i.bv, align 8, !alias.scope !1294, !noalias !1295, !noundef !5 ; 11 uses
  %i.ce = icmp sgt i64 %i.cd, -1
  call void @llvm.assume(i1 %i.ce)
  %i.cf = invoke { ptr, i64 } @_RNvMs0_NtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entryNtB5_5Entry4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.r)
          to label %.noexc22 unwind label %.loopexit.split-lp ; 2 uses

.noexc22:                                         ; preds = %bb.ap
  %i.cg = extractvalue { ptr, i64 } %i.cf, 0      ; 7 uses
  %i.ch = extractvalue { ptr, i64 } %i.cf, 1      ; 9 uses
  %i.ci = icmp eq i64 %i.cd, 0
  br i1 %i.ci, label %_RNvXs9_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i, label %bb.aq

bb.aq:                                            ; preds = %.noexc22
  %.not.i.i = icmp ult i64 %i.cd, %i.ch
  br i1 %.not.i.i, label %bb.ar, label %.split.i.i

.split.i.i:                                       ; preds = %bb.aq
  %i.cj = icmp ne i64 %i.cd, %i.ch
  %.not.i15 = icmp eq ptr %i.cg, null
  %or.cond90.i = select i1 %i.cj, i1 true, i1 %.not.i15, !prof !1296
  br i1 %or.cond90.i, label %_RNvXs9_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.invoke, label %.lr.ph.split.i.i.preheader.i, !prof !1296

bb.ar:                                            ; preds = %bb.aq
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cd
  %i.cl = load i8, ptr %i.ck, align 1, !alias.scope !1297, !noundef !5
  %i.cm = icmp sgt i8 %i.cl, -65
  br i1 %i.cm, label %.lr.ph.split.i.i.preheader.i, label %_RNvXs9_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.invoke

_RNvXs9_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i: ; preds = %.noexc22
  %.not.old.i = icmp eq ptr %i.cg, null
  br i1 %.not.old.i, label %_RNvXs9_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.invoke, label %.lr.ph.split.i.i.preheader.i, !prof !1298

.lr.ph.split.i.i.preheader.i:                     ; preds = %bb.ar, %_RNvXs9_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i, %.split.i.i
  %i.cn = sub nuw i64 %i.ch, %i.cd                ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cd ; 2 uses
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.split.i.i.i.backedge, %.lr.ph.split.i.i.preheader.i
  %i.cp = phi i64 [ 0, %.lr.ph.split.i.i.preheader.i ], [ %i.de, %.lr.ph.split.i.i.i.backedge ] ; 4 uses
  %i.cq = sub nuw i64 %i.cn, %i.cp                ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cp ; 2 uses
  %i.cs = icmp samesign ult i64 %i.cq, 16
  br i1 %i.cs, label %.preheader.i.i.i.i, label %bb.as

.preheader.i.i.i.i:                               ; preds = %.lr.ph.split.i.i.i
  %.not.i.i.i.i = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.as:                                            ; preds = %.lr.ph.split.i.i.i
  %i.ct = invoke { i64, i64 } @_RNvNtNtCsgxBkk5gSRhY_4core5slice6memchr14memchr_aligned(i8 noundef 47, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cr, i64 noundef range(i64 0, -9223372036854775808) %i.cq)
          to label %_RNvNtNtCsgxBkk5gSRhY_4core5slice6memchr6memchr.exit.i.i.i unwind label %.loopexit

._crit_edge.i.i.i.i:                              ; preds = %bb.at, %.lr.ph.i.i.i.i, %.preheader.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ %.sroa.01.05.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.cq, %bb.at ]
  %.sroa.0.1.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i ], [ 0, %bb.at ]
  %i.cu = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i, 0
  %i.cv = insertvalue { i64, i64 } %i.cu, i64 %.sroa.01.0.lcssa.i.i.i.i, 1
  br label %_RNvNtNtCsgxBkk5gSRhY_4core5slice6memchr6memchr.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.at
  %.sroa.01.05.i.i.i.i = phi i64 [ %i.cz, %bb.at ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.sroa.01.05.i.i.i.i
  %i.cx = load i8, ptr %i.cw, align 1, !alias.scope !1299, !noalias !1300, !noundef !5
  %i.cy = icmp eq i8 %i.cx, 47
  br i1 %i.cy, label %._crit_edge.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i.i
  %i.cz = add nuw nsw i64 %.sroa.01.05.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.cz, %i.cq
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

_RNvNtNtCsgxBkk5gSRhY_4core5slice6memchr6memchr.exit.i.i.i: ; preds = %bb.as, %._crit_edge.i.i.i.i
  %.merged.i.i.i.i = phi { i64, i64 } [ %i.cv, %._crit_edge.i.i.i.i ], [ %i.ct, %bb.as ] ; 2 uses
  %i.da = extractvalue { i64, i64 } %.merged.i.i.i.i, 0
  %i.db = trunc nuw i64 %i.da to i1
  br i1 %i.db, label %bb.au, label %.loopexit69

bb.au:                                            ; preds = %_RNvNtNtCsgxBkk5gSRhY_4core5slice6memchr6memchr.exit.i.i.i
  %i.dc = extractvalue { i64, i64 } %.merged.i.i.i.i, 1 ; 2 uses
  %i.dd = add i64 %i.cp, 1
  %i.de = add i64 %i.dd, %i.dc                    ; 2 uses
  %.not12.i.i.i = icmp ugt i64 %i.de, %i.cn       ; 2 uses
  %i.df = add i64 %i.dc, %i.cp                    ; 3 uses
  %or.cond.i.not.i.i = icmp ult i64 %i.df, %i.cn
  br i1 %or.cond.i.not.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  br i1 %.not12.i.i.i, label %.loopexit69, label %.lr.ph.split.i.i.i.backedge

bb.aw:                                            ; preds = %bb.au
  %i.dg = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.df
  %lhsc.i.i = load i8, ptr %i.dg, align 1, !alias.scope !1301
  %i.dh = icmp eq i8 %lhsc.i.i, 47                ; 2 uses
  %brmerge.i.i = or i1 %.not12.i.i.i, %i.dh
  br i1 %brmerge.i.i, label %_RINvMNtCsgxBkk5gSRhY_4core3stre4findcECs5XgW7KoffLW_12opendal_core.exit.i, label %.lr.ph.split.i.i.i.backedge

.lr.ph.split.i.i.i.backedge:                      ; preds = %bb.aw, %bb.av
  br label %.lr.ph.split.i.i.i

_RINvMNtCsgxBkk5gSRhY_4core3stre4findcECs5XgW7KoffLW_12opendal_core.exit.i: ; preds = %bb.aw
  br i1 %i.dh, label %bb.ax, label %.loopexit69

_RNvXs9_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.invoke: ; preds = %.split.i38.i, %bb.be, %_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit40.i, %.split.i35.i, %bb.ba, %_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i, %.split.i.i, %bb.ar, %_RNvXs9_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i
  %i.di = phi ptr [ %i.dt, %.split.i35.i ], [ %i.cg, %.split.i.i ], [ %i.cg, %_RNvXs9_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i ], [ %i.cg, %bb.ar ], [ %i.dt, %_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i ], [ %i.dt, %bb.ba ], [ %i.ed, %_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit40.i ], [ %i.ed, %bb.be ], [ %i.ed, %.split.i38.i ]
  %i.dj = phi i64 [ %i.du, %.split.i35.i ], [ %i.ch, %.split.i.i ], [ %i.ch, %_RNvXs9_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i ], [ %i.ch, %bb.ar ], [ %i.du, %_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i ], [ %i.du, %bb.ba ], [ %i.ee, %_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit40.i ], [ %i.ee, %bb.be ], [ %i.ee, %.split.i38.i ]
  %i.dk = phi i64 [ 0, %.split.i35.i ], [ %i.cd, %.split.i.i ], [ %i.cd, %_RNvXs9_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i ], [ %i.cd, %bb.ar ], [ 0, %_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i ], [ 0, %bb.ba ], [ 0, %_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit40.i ], [ 0, %bb.be ], [ 0, %.split.i38.i ]
  %i.dl = phi i64 [ %i.do, %.split.i35.i ], [ %i.ch, %.split.i.i ], [ %i.ch, %_RNvXs9_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i ], [ %i.ch, %bb.ar ], [ %i.do, %_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i ], [ %i.do, %bb.ba ], [ %i.do, %_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit40.i ], [ %i.do, %bb.be ], [ %i.do, %.split.i38.i ]
  %i.dm = phi ptr [ @28, %.split.i35.i ], [ @27, %.split.i.i ], [ @27, %_RNvXs9_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i ], [ @27, %bb.ar ], [ @28, %_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i ], [ @28, %bb.ba ], [ @29, %_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit40.i ], [ @29, %bb.be ], [ @29, %.split.i38.i ]
  invoke void @_RNvNtCsgxBkk5gSRhY_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.di, i64 noundef %i.dj, i64 noundef %i.dk, i64 noundef %i.dl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dm) #25
          to label %_RNvXs9_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.cont unwind label %.loopexit.split-lp

_RNvXs9_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.cont: ; preds = %_RNvXs9_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.invoke
  unreachable

bb.ax:                                            ; preds = %_RINvMNtCsgxBkk5gSRhY_4core3stre4findcECs5XgW7KoffLW_12opendal_core.exit.i
  %i.dn = add nuw i64 %i.cd, 1
  %i.do = add i64 %i.dn, %i.df                    ; 19 uses
  %i.dp = invoke { ptr, i64 } @_RNvMs0_NtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entryNtB5_5Entry4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.r)
          to label %.noexc25 unwind label %.loopexit.split-lp

.noexc25:                                         ; preds = %bb.ax
  %i.dq = invoke { ptr, i64 } @_RNvMs0_NtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entryNtB5_5Entry4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.r)
          to label %.noexc26 unwind label %.loopexit.split-lp ; 2 uses

.noexc26:                                         ; preds = %.noexc25
  %i.dr = extractvalue { ptr, i64 } %i.dp, 1
  %i.ds = icmp eq i64 %i.do, %i.dr
  %i.dt = extractvalue { ptr, i64 } %i.dq, 0      ; 8 uses
  %i.du = extractvalue { ptr, i64 } %i.dq, 1      ; 6 uses
  br i1 %i.ds, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %.noexc26
  %i.dv = icmp eq i64 %i.do, 0                    ; 3 uses
  br i1 %i.dv, label %_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.not.i34.i = icmp ult i64 %i.do, %i.du
  br i1 %.not.i34.i, label %bb.ba, label %.split.i35.i

.split.i35.i:                                     ; preds = %bb.az
  %i.dw = icmp ne i64 %i.do, %i.du
  %.not27.i = icmp eq ptr %i.dt, null
  %or.cond.i = select i1 %i.dw, i1 true, i1 %.not27.i, !prof !1296
  br i1 %or.cond.i, label %_RNvXs9_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.invoke, label %_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread50.i, !prof !1296

bb.ba:                                            ; preds = %bb.az
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.do
  %i.dy = load i8, ptr %i.dx, align 1, !alias.scope !1302, !noundef !5
  %i.dz = icmp sgt i8 %i.dy, -65
  br i1 %i.dz, label %_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread50.i, label %_RNvXs9_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.invoke

_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i: ; preds = %bb.ay
  %.not27.old.i = icmp eq ptr %i.dt, null
  br i1 %.not27.old.i, label %_RNvXs9_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.invoke, label %_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread50.i, !prof !1298

bb.bb:                                            ; preds = %.noexc26
  %i.ea = invoke noundef zeroext i1 @_RINvMs1_NtCsfBDUjroi3FF_9hashbrown3mapINtB6_7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringuNtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE12contains_keyeECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dt, i64 noundef %i.du)
          to label %.noexc27 unwind label %.loopexit.split-lp

.noexc27:                                         ; preds = %bb.bb
  br i1 %i.ea, label %.loopexit69, label %bb.by

_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread50.i: ; preds = %_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i, %bb.ba, %.split.i35.i
  %i.eb = invoke noundef zeroext i1 @_RINvMs1_NtCsfBDUjroi3FF_9hashbrown3mapINtB6_7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringuNtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE12contains_keyeECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dt, i64 noundef %i.do)
          to label %.noexc28 unwind label %.loopexit.split-lp

.noexc28:                                         ; preds = %_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread50.i
  br i1 %i.eb, label %_RNvMNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list14hierarchy_listINtB2_15HierarchyListerNtNtNtNtBa_8services6memory6lister12MemoryListerE10keep_entryBa_.exit, label %bb.bc

bb.bc:                                            ; preds = %.noexc28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1303
  %i.ec = invoke { ptr, i64 } @_RNvMs0_NtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entryNtB5_5Entry4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.r)
          to label %.noexc30 unwind label %.loopexit.split-lp ; 2 uses

.noexc30:                                         ; preds = %bb.bc
  %i.ed = extractvalue { ptr, i64 } %i.ec, 0      ; 7 uses
  %i.ee = extractvalue { ptr, i64 } %i.ec, 1      ; 5 uses
  br i1 %i.dv, label %_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit40.i, label %bb.bd

bb.bd:                                            ; preds = %.noexc30
  %.not.i37.i = icmp ult i64 %i.do, %i.ee
  br i1 %.not.i37.i, label %bb.be, label %.split.i38.i

.split.i38.i:                                     ; preds = %bb.bd
  %i.ef = icmp ne i64 %i.do, %i.ee
  %.not28.i = icmp eq ptr %i.ed, null
  %or.cond73.i = select i1 %i.ef, i1 true, i1 %.not28.i, !prof !1296
  br i1 %or.cond73.i, label %_RNvXs9_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.invoke, label %_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit40.thread54.i, !prof !1296

bb.be:                                            ; preds = %bb.bd
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.do
  %i.eh = load i8, ptr %i.eg, align 1, !alias.scope !1304, !noundef !5
  %i.ei = icmp sgt i8 %i.eh, -65
  br i1 %i.ei, label %_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit40.thread54.i, label %_RNvXs9_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.invoke

_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit40.i: ; preds = %.noexc30
  %.not28.old.i = icmp eq ptr %i.ed, null
  br i1 %.not28.old.i, label %_RNvXs9_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.invoke, label %_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit40.thread54.i, !prof !1298

_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit40.thread54.i: ; preds = %_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit40.i, %bb.be, %.split.i38.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1303
  invoke void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.do, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc31 unwind label %.loopexit.split-lp

.noexc31:                                         ; preds = %_RNvXs8_NtNtCsgxBkk5gSRhY_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit40.thread54.i
  %i.ej = load i64, ptr %i.b, align 8, !range !8, !noalias !1303, !noundef !5
  %i.ek = trunc nuw i64 %i.ej to i1
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.em = load i64, ptr %i.el, align 8, !range !9, !noalias !1303, !noundef !5 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.ek, label %bb.bf, label %bb.bg, !prof !6

bb.bf:                                            ; preds = %.noexc31
  %i.eo = load i64, ptr %i.en, align 8, !noalias !1303
  br label %.invoke

.invoke:                                          ; preds = %bb.bz, %bb.bf
  %i.ep = phi i64 [ %i.em, %bb.bf ], [ %i.fy, %bb.bz ]
  %i.eq = phi i64 [ %i.eo, %bb.bf ], [ %i.ga, %bb.bz ]
  invoke void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.ep, i64 %i.eq) #21
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.bg:                                            ; preds = %.noexc31
  %i.er = load ptr, ptr %i.en, align 8, !noalias !1303, !nonnull !5, !noundef !5 ; 2 uses
  %i.es = icmp ule i64 %i.do, %i.em
  call void @llvm.assume(i1 %i.es)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1303
  br i1 %i.dv, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bi, %bb.bg
  store i64 %i.em, ptr %i.j, align 8, !noalias !1303
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.er, ptr %.sroa.420.0..sroa_idx.i, align 8, !noalias !1303
  %.sroa.621.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.do, ptr %.sroa.621.0..sroa_idx.i, align 8, !noalias !1303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.et = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.et, i64 24, i1 false), !noalias !1294
  %i.eu = load ptr, ptr %i.r, align 8, !alias.scope !1295, !noalias !1294, !noundef !5 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.not30.i = icmp eq ptr %i.eu, null
  br i1 %.not30.i, label %bb.bk, label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.er, ptr nonnull align 1 %i.ed, i64 %i.do, i1 false)
  br label %bb.bh

bb.bj:                                            ; preds = %bb.bh
  %i.ew = atomicrmw add ptr %i.eu, i64 1 monotonic, align 8
  %i.ex = icmp slt i64 %i.ew, 0
  br i1 %i.ex, label %bb.bm, label %bb.bl

bb.bk:                                            ; preds = %bb.bl, %bb.bh
  %.sroa.523.0.i = phi i64 [ %i.fb, %bb.bl ], [ undef, %bb.bh ]
  %.sroa.022.0.i = phi ptr [ %i.fa, %bb.bl ], [ null, %bb.bh ]
  %i.ey = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ey, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1303
  store ptr %.sroa.022.0.i, ptr %i.h, align 8, !noalias !1303
  %i.ez = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sroa.523.0.i, ptr %i.ez, align 8, !noalias !1303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvMs3_NtNtCs5XgW7KoffLW_12opendal_core5types8metadataNtB5_15MetadataBuilder13from_metadata(ptr noalias nofree noundef nonnull sret([256 x i8]) align 8 captures(none) dereferenceable(256) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.h)
          to label %bb.bn unwind label %.thread.i16

bb.bl:                                            ; preds = %bb.bj
  %i.fa = load ptr, ptr %i.r, align 8, !alias.scope !1295, !noalias !1294, !nonnull !5, !noundef !5
  %i.fb = load i64, ptr %i.ev, align 8, !alias.scope !1295, !noalias !1294, !noundef !5
  br label %bb.bk

bb.bm:                                            ; preds = %bb.bj
  call void @llvm.trap()
  unreachable

.thread.i16:                                      ; preds = %bb.bk
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %.thread70.i

bb.bn:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1303
  %i.fd = getelementptr inbounds nuw i8, ptr %i.i, i64 216
  %i.fe = getelementptr inbounds nuw i8, ptr %i.i, i64 236 ; 2 uses
  %i.ff = load i16, ptr %i.fe, align 4, !noalias !1303, !noundef !5
  %i.fg = and i16 %i.ff, -4
  %i.fh = or disjoint i16 %i.fg, 2
  store i16 %i.fh, ptr %i.fe, align 4, !noalias !1303
  store i64 0, ptr %i.fd, align 8, !noalias !1303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1303
  invoke void @_RNvXs4_NtCs6i54tJFfzR_5alloc6stringNtB5_6StringNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %bb.bo unwind label %bb.bx

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1303
  invoke void @_RNvMs3_NtNtCs5XgW7KoffLW_12opendal_core5types8metadataNtB5_15MetadataBuilder5build(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(256) %i.i)
          to label %bb.bq unwind label %bb.bv

bb.bp:                                            ; preds = %bb.bq
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %.thread70.i

bb.bq:                                            ; preds = %bb.bo
  invoke void @_RNvMs0_NtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entryNtB5_5Entry4with(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.e)
          to label %bb.br unwind label %bb.bp

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1303
  call void @llvm.experimental.noalias.scope.decl(metadata !1305)
  call void @llvm.experimental.noalias.scope.decl(metadata !1306)
  call void @llvm.experimental.noalias.scope.decl(metadata !1307)
  call void @llvm.experimental.noalias.scope.decl(metadata !1308)
  %i.fj = load ptr, ptr %i.r, align 8, !alias.scope !1309, !noalias !1294, !noundef !5 ; 2 uses
  %i.fk = icmp eq ptr %i.fj, null
  br i1 %i.fk, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.fl = atomicrmw sub ptr %i.fj, i64 1 release, align 8, !noalias !1310
  %i.fm = icmp eq i64 %i.fl, 1
  br i1 %i.fm, label %bb.bt, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i

bb.bt:                                            ; preds = %bb.bs
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.r) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.fn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !noalias !1294
  br label %.thread70.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i: ; preds = %bb.bt, %bb.bs, %bb.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !noalias !1294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1303
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !1303
  %i.fo = invoke noundef zeroext i1 @_RNvMs1_NtCsfBDUjroi3FF_9hashbrown3mapINtB5_7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringuNtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE6insertCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.cb, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc34 unwind label %.loopexit.split-lp ; 0 uses

.noexc34:                                         ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1303
  br label %.loopexit69

bb.bv:                                            ; preds = %bb.bo
  %i.fp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #24
          to label %.thread70.i unwind label %bb.bw

bb.bw:                                            ; preds = %.thread70.i, %bb.bx, %bb.bv
  %i.fq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.bx:                                            ; preds = %bb.bn
  %i.fr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata15MetadataBuilderEBH_(ptr noalias nofree noundef align 8 dereferenceable(256) %i.i) #24
          to label %.thread70.i unwind label %bb.bw

.thread70.i:                                      ; preds = %bb.bx, %bb.bv, %bb.bu, %bb.bp, %.thread.i16
  %.pn.pn59.i = phi { ptr, i32 } [ %i.fc, %.thread.i16 ], [ %i.fr, %bb.bx ], [ %i.fi, %bb.bp ], [ %i.fp, %bb.bv ], [ %i.fn, %bb.bu ]
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j) #24
          to label %.body35 unwind label %bb.bw

bb.by:                                            ; preds = %.noexc27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1303
  %i.fs = invoke { ptr, i64 } @_RNvMs0_NtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entryNtB5_5Entry4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.r)
          to label %.noexc37 unwind label %.loopexit.split-lp ; 2 uses

.noexc37:                                         ; preds = %bb.by
  %i.ft = extractvalue { ptr, i64 } %i.fs, 0
  %i.fu = extractvalue { ptr, i64 } %i.fs, 1      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1303
  invoke void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.fu, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc38 unwind label %.loopexit.split-lp

.noexc38:                                         ; preds = %.noexc37
  %i.fv = load i64, ptr %i.c, align 8, !range !8, !noalias !1303, !noundef !5
  %i.fw = trunc nuw i64 %i.fv to i1
  %i.fx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
end_hunk_0
