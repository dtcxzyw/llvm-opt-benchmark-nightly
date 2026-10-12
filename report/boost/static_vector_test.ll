Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/static_vector_test?download=true
inline.NumInlined: 8588
inline.NumDeleted: 2636
loop-unroll.NumCompletelyUnrolled: 207
loop-unroll.NumRuntimeUnrolled: 103
loop-unroll.NumUnrolled: 313
begin_hunk_0_@_Z18test_capacity_0_ndIiEvv:bb.a

bb.m:                                             ; preds = %bb.h
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 426, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIiEvv)
          to label %bb.j unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cq unwind label %bb.cr

bb.o:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cq unwind label %bb.cr

bb.p:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.r

bb.q:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn55 = phi { ptr, i32 } [ %i.y, %bb.q ], [ %i.x, %bb.p ] ; 2 uses
  %.3 = extractvalue { ptr, i32 } %.pn55, 1
  %.334 = extractvalue { ptr, i32 } %.pn55, 0
  %i.z = icmp eq i32 %.3, %i.o
  %i.aa = tail call ptr @__cxa_begin_catch(ptr %.334) #25 ; 0 uses
  br i1 %i.z, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.ab = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split unwind label %bb.y ; 0 uses

.sink.split:                                      ; preds = %bb.s, %bb.w
  tail call void @__cxa_end_catch()
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %bb.l
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !835, !noalias !836 ; 3 uses
  %.not.i.i88 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i88, label %bb.u, label %bb.v, !prof !42

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc90 unwind label %bb.z

.noexc90:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.ad = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ac
  store i32 0, ptr %i.ad, align 4, !tbaa !41, !noalias !837
  %i.ae = add i64 %i.ac, 1
  store i64 %i.ae, ptr %i.b, align 8, !tbaa !835, !noalias !837
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 428, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIiEvv)
          to label %bb.ad unwind label %bb.aa

bb.w:                                             ; preds = %bb.r
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 427, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIiEvv)
          to label %.sink.split unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cq unwind label %bb.cr

bb.y:                                             ; preds = %bb.s
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cq unwind label %bb.cr

bb.z:                                             ; preds = %bb.u
  %i.ah = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.ab

bb.aa:                                            ; preds = %bb.v
  %i.ai = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn59 = phi { ptr, i32 } [ %i.ai, %bb.aa ], [ %i.ah, %bb.z ] ; 2 uses
  %.5 = extractvalue { ptr, i32 } %.pn59, 1
  %.536 = extractvalue { ptr, i32 } %.pn59, 0
  %i.aj = icmp eq i32 %.5, %i.o
  %i.ak = tail call ptr @__cxa_begin_catch(ptr %.536) #25 ; 0 uses
  br i1 %i.aj, label %bb.ac, label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  %i.al = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split184 unwind label %bb.ak ; 0 uses

.sink.split184:                                   ; preds = %bb.ac, %bb.ai
  tail call void @__cxa_end_catch()
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split184, %bb.v
  %i.am = load i64, ptr %i.b, align 8, !tbaa !835, !noalias !838 ; 3 uses
  %i.an = getelementptr inbounds [4 x i8], ptr %1, i64 %i.am
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !95, !noalias !839 ; 4 uses
  %.idx = shl nsw i64 %i.ao, 2
  %i.ap = sub i64 0, %i.am
  %.not.i.i91 = icmp ugt i64 %i.ao, %i.ap
  br i1 %.not.i.i91, label %bb.ag, label %bb.ae, !prof !42

bb.ae:                                            ; preds = %bb.ad
  %.not.i.i.i.i.i.i.i.not = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i.i.i.i.i.i.not, label %bb.ah, label %bb.af, !prof !150

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.an, ptr nonnull align 8 %0, i64 %.idx, i1 false), !noalias !840
  %.pre = load i64, ptr %i.b, align 8, !tbaa !833, !noalias !841
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ad
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc93 unwind label %bb.al

.noexc93:                                         ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.af, %bb.ae
  %i.aq = phi i64 [ %.pre, %bb.af ], [ %i.am, %bb.ae ]
  %i.ar = add i64 %i.aq, %i.ao
  store i64 %i.ar, ptr %i.b, align 8, !tbaa !833, !noalias !841
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 429, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIiEvv)
          to label %bb.ap unwind label %bb.am

bb.ai:                                            ; preds = %bb.ab
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 428, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIiEvv)
          to label %.sink.split184 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cq unwind label %bb.cr

bb.ak:                                            ; preds = %bb.ac
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cq unwind label %bb.cr

bb.al:                                            ; preds = %bb.ag
  %i.au = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.an

bb.am:                                            ; preds = %bb.ah
  %i.av = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pn63 = phi { ptr, i32 } [ %i.av, %bb.am ], [ %i.au, %bb.al ] ; 2 uses
  %.7 = extractvalue { ptr, i32 } %.pn63, 1
  %.738 = extractvalue { ptr, i32 } %.pn63, 0
  %i.aw = icmp eq i32 %.7, %i.o
  %i.ax = tail call ptr @__cxa_begin_catch(ptr %.738) #25 ; 0 uses
  br i1 %i.aw, label %bb.ao, label %bb.aw

bb.ao:                                            ; preds = %bb.an
  %i.ay = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split185 unwind label %bb.ay ; 0 uses

.sink.split185:                                   ; preds = %bb.ao, %bb.aw
  tail call void @__cxa_end_catch()
  br label %bb.ap

bb.ap:                                            ; preds = %.sink.split185, %bb.ah
  %i.az = load i64, ptr %i.a, align 8, !tbaa !95, !noalias !842 ; 2 uses
  %.idx153 = shl i64 %i.az, 2                     ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %0, i64 %.idx153 ; 5 uses
  %i.bb = load i64, ptr %i.b, align 8, !tbaa !835, !noalias !843
  %.fr = freeze i64 %i.bb                         ; 5 uses
  %.idx.i = shl i64 %.fr, 2                       ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %1, i64 %.idx.i ; 3 uses
  %i.bd = icmp ne i64 %i.az, 0                    ; 2 uses
  %i.be = icmp ne i64 %.fr, 0
  %or.cond13.i = and i1 %i.bd, %i.be
  br i1 %or.cond13.i, label %iter.check, label %.critedge.i

iter.check:                                       ; preds = %bb.ap
  %i.bf = add i64 %.idx.i, -4
  %i.bg = lshr exact i64 %i.bf, 2                 ; 2 uses
  %i.bh = add i64 %.idx153, -4
  %i.bi = lshr exact i64 %i.bh, 2                 ; 2 uses
  %umin = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 %i.bi)
  %i.bj = shl nuw i64 %umin, 2
  %i.bk = add i64 %i.bj, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %1, ptr nonnull align 8 %0, i64 %i.bk, i1 false), !tbaa !41
  %umin192 = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 %i.bi) ; 3 uses
  %i.bl = add nuw nsw i64 %umin192, 1             ; 5 uses
  %min.iters.check = icmp samesign ult i64 %umin192, 3
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check193 = icmp samesign ult i64 %umin192, 31
  br i1 %min.iters.check193, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bm = and i64 %i.bl, 28
  %n.vec = and i64 %i.bl, 9223372036854775776     ; 4 uses
  %i.bn = shl i64 %n.vec, 2                       ; 2 uses
  %i.bo = getelementptr i8, ptr %0, i64 %i.bn     ; 3 uses
  %i.bp = getelementptr i8, ptr %1, i64 %i.bn     ; 2 uses
  %broadcast.splatinsert = insertelement <16 x ptr> poison, ptr %i.ba, i64 0
  %broadcast.splat = shufflevector <16 x ptr> %broadcast.splatinsert, <16 x ptr> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %0, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 128
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !806

middle.block:                                     ; preds = %vector.body
  %vector.gep = getelementptr i8, ptr %pointer.phi, <16 x i64> <i64 0, i64 4, i64 8, i64 12, i64 16, i64 20, i64 24, i64 28, i64 32, i64 36, i64 40, i64 44, i64 48, i64 52, i64 56, i64 60>
  %wide.gep = getelementptr i8, <16 x ptr> %vector.gep, i64 68
  %i.br = icmp ne <16 x ptr> %wide.gep, %broadcast.splat
  %i.bs = extractelement <16 x i1> %i.br, i64 15
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %.critedge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bm, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !151

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi ptr [ %i.bo, %vec.epilog.iter.check ], [ %0, %vector.main.loop.iter.check ]
  %n.vec195 = and i64 %i.bl, 9223372036854775804  ; 3 uses
  %i.bt = shl i64 %n.vec195, 2                    ; 2 uses
  %i.bu = getelementptr i8, ptr %0, i64 %i.bt     ; 2 uses
  %i.bv = getelementptr i8, ptr %1, i64 %i.bt     ; 2 uses
  %broadcast.splatinsert196 = insertelement <4 x ptr> poison, ptr %i.ba, i64 0
  %broadcast.splat197 = shufflevector <4 x ptr> %broadcast.splatinsert196, <4 x ptr> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index198 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next201, %vec.epilog.vector.body ]
  %pointer.phi199 = phi ptr [ %bc.resume.val, %vec.epilog.ph ], [ %ptr.ind202, %vec.epilog.vector.body ] ; 2 uses
  %index.next201 = add nuw i64 %index198, 4       ; 2 uses
  %ptr.ind202 = getelementptr i8, ptr %pointer.phi199, i64 16
  %i.bw = icmp eq i64 %index.next201, %n.vec195
  br i1 %i.bw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !807

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %vector.gep200 = getelementptr i8, ptr %pointer.phi199, <4 x i64> <i64 0, i64 4, i64 8, i64 12>
  %wide.gep203 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep200, i64 4
  %i.bx = icmp ne <4 x ptr> %wide.gep203, %broadcast.splat197
  %i.by = extractelement <4 x i1> %i.bx, i64 3
  %cmp.n204 = icmp eq i64 %i.bl, %n.vec195
  br i1 %cmp.n204, label %.critedge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi ptr [ %0, %iter.check ], [ %i.bo, %vec.epilog.iter.check ], [ %i.bu, %vec.epilog.middle.block ]
  %.sroa.07.014.i.ph = phi ptr [ %1, %iter.check ], [ %i.bp, %vec.epilog.iter.check ], [ %i.bv, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.bz = phi ptr [ %i.cb, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader ]
  %.sroa.07.014.i = phi ptr [ %i.ca, %.lr.ph.i ], [ %.sroa.07.014.i.ph, %.lr.ph.i.preheader ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.07.014.i, i64 4 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 4 ; 3 uses
  %i.cc = icmp ne ptr %i.cb, %i.ba                ; 2 uses
  %i.cd = icmp ne ptr %i.ca, %i.bc
  %or.cond.i = select i1 %i.cc, i1 %i.cd, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %.critedge.i, !llvm.loop !808

.critedge.i:                                      ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.ap
  %.sroa.07.0.lcssa.i = phi ptr [ %1, %bb.ap ], [ %i.bv, %vec.epilog.middle.block ], [ %i.bp, %middle.block ], [ %i.ca, %.lr.ph.i ]
  %.lcssa12.i = phi ptr [ %0, %bb.ap ], [ %i.bu, %vec.epilog.middle.block ], [ %i.bo, %middle.block ], [ %i.cb, %.lr.ph.i ] ; 3 uses
  %.lcssa.i = phi i1 [ %i.bd, %bb.ap ], [ %i.by, %vec.epilog.middle.block ], [ %i.bs, %middle.block ], [ %i.cc, %.lr.ph.i ]
  %i.ce = icmp eq ptr %.lcssa12.i, %i.ba
  br i1 %i.ce, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.critedge.i
  %i.cf = ptrtoint ptr %i.bc to i64
  %i.cg = ptrtoint ptr %.sroa.07.0.lcssa.i to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = ashr exact i64 %i.ch, 2
  %i.cj = sub i64 %.fr, %i.ci
  br label %bb.av

bb.ar:                                            ; preds = %.critedge.i
  %i.ck = ptrtoint ptr %i.ba to i64
  %i.cl = ptrtoint ptr %.lcssa12.i to i64
  %i.cm = sub i64 %i.ck, %i.cl                    ; 2 uses
  %i.cn = ashr exact i64 %i.cm, 2                 ; 2 uses
  %i.co = sub i64 0, %.fr
  %.not.i.i.i94 = icmp ugt i64 %i.cn, %i.co
  br i1 %.not.i.i.i94, label %bb.au, label %bb.as, !prof !42

bb.as:                                            ; preds = %bb.ar
  br i1 %.lcssa.i, label %bb.at, label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm0ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPiLb0EEEEES9_NS7_IS8_Lb1EEET_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS2_17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESJ_E4typeE.exit.i, !prof !152

bb.at:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bc, ptr nonnull align 1 %.lcssa12.i, i64 %i.cm, i1 false), !noalias !844
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !833, !noalias !845
  br label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm0ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPiLb0EEEEES9_NS7_IS8_Lb1EEET_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS2_17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESJ_E4typeE.exit.i

bb.au:                                            ; preds = %bb.ar
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc95 unwind label %bb.az

.noexc95:                                         ; preds = %bb.au
  unreachable

_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm0ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPiLb0EEEEES9_NS7_IS8_Lb1EEET_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS2_17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESJ_E4typeE.exit.i: ; preds = %bb.at, %bb.as
  %i.cp = phi i64 [ %.fr, %bb.as ], [ %.pre.i, %bb.at ]
  %i.cq = add i64 %i.cp, %i.cn
  br label %bb.av

bb.av:                                            ; preds = %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm0ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPiLb0EEEEES9_NS7_IS8_Lb1EEET_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS2_17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESJ_E4typeE.exit.i, %bb.aq
  %storemerge.i = phi i64 [ %i.cq, %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm0ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPiLb0EEEEES9_NS7_IS8_Lb1EEET_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS2_17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESJ_E4typeE.exit.i ], [ %i.cj, %bb.aq ]
  store i64 %storemerge.i, ptr %i.b, align 8, !tbaa !833
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 430, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIiEvv)
          to label %bb.bb unwind label %bb.az

bb.aw:                                            ; preds = %bb.an
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 429, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIiEvv)
          to label %.sink.split185 unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cq unwind label %bb.cr

bb.ay:                                            ; preds = %bb.ao
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cq unwind label %bb.cr

bb.az:                                            ; preds = %bb.au, %bb.av
  %i.ct = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %i.cu = extractvalue { ptr, i32 } %i.ct, 0
  %i.cv = extractvalue { ptr, i32 } %i.ct, 1
  %i.cw = icmp eq i32 %i.cv, %i.o
  %i.cx = call ptr @__cxa_begin_catch(ptr %i.cu) #25 ; 0 uses
  br i1 %i.cw, label %bb.ba, label %bb.bf

bb.ba:                                            ; preds = %bb.az
  %i.cy = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split186 unwind label %bb.bh ; 0 uses

.sink.split186:                                   ; preds = %bb.ba, %bb.bf
  call void @__cxa_end_catch()
  br label %bb.bb

bb.bb:                                            ; preds = %.sink.split186, %bb.av
  %i.cz = load i64, ptr %i.b, align 8, !tbaa !835, !noalias !846 ; 5 uses
  %.idx.i.i = shl i64 %i.cz, 2                    ; 3 uses
  %i.da = getelementptr i8, ptr %1, i64 %.idx.i.i
  %.not = icmp eq i64 %i.cz, 0
  br i1 %.not, label %.critedge.i.i.thread, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.bb
  %i.db = add i64 %.idx.i.i, -4                   ; 2 uses
  %i.dc = lshr exact i64 %i.db, 2
  %umin168 = call i64 @llvm.umin.i64(i64 %i.dc, i64 4) ; 2 uses
  %i.dd = shl nuw nsw i64 %umin168, 2
  %i.de = add nuw nsw i64 %i.dd, 4                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %1, i8 0, i64 %i.de, i1 false), !tbaa !41
  %i.df = sub nuw nsw i64 4, %umin168
  %i.dg = icmp ugt i64 %i.db, 12
  br i1 %i.dg, label %bb.bc, label %.critedge.i.i.thread

bb.bc:                                            ; preds = %.lr.ph.i.i.preheader
  %gepdiff = sub i64 %.idx.i.i, %i.de
  %i.dh = ashr exact i64 %gepdiff, 2
  %i.di = sub i64 %i.cz, %i.dh
  br label %bb.be

.critedge.i.i.thread:                             ; preds = %bb.bb, %.lr.ph.i.i.preheader
  %.sroa.3.0.lcssa.i.i148 = phi i64 [ %i.df, %.lr.ph.i.i.preheader ], [ 5, %bb.bb ] ; 3 uses
  %i.dj = sub i64 0, %i.cz
  %.not.i.i.i.i96 = icmp ugt i64 %.sroa.3.0.lcssa.i.i148, %i.dj
  br i1 %.not.i.i.i.i96, label %bb.bd, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.critedge.i.i.thread
  %i.dk = shl nuw nsw i64 %.sroa.3.0.lcssa.i.i148, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.da, i8 0, i64 %i.dk, i1 false), !tbaa !41, !noalias !847
  %i.dl = add i64 %.sroa.3.0.lcssa.i.i148, %i.cz
  br label %bb.be

bb.bd:                                            ; preds = %.critedge.i.i.thread
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc98 unwind label %bb.bi

.noexc98:                                         ; preds = %bb.bd
  unreachable
end_hunk_0
begin_hunk_1_@_Z18test_exceptions_ndIiLm10EEvv:_ZN5boost9container13static_vectorIiLm10EvEC2EmRKi.exit

bb.p:                                             ; preds = %bb.k
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 445, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIiLm10EEvv)
          to label %.sink.split unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ch unwind label %bb.ci

bb.r:                                             ; preds = %bb.l
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ch unwind label %bb.ci

bb.s:                                             ; preds = %bb.n
  %i.w = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.u

bb.t:                                             ; preds = %bb.o
  %i.x = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn54 = phi { ptr, i32 } [ %i.x, %bb.t ], [ %i.w, %bb.s ] ; 2 uses
  %.4 = extractvalue { ptr, i32 } %.pn54, 1
  %.432 = extractvalue { ptr, i32 } %.pn54, 0
  %i.y = icmp eq i32 %.4, %i.d
  %i.z = tail call ptr @__cxa_begin_catch(ptr %.432) #25 ; 0 uses
  br i1 %i.y, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.aa = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split172 unwind label %bb.aa ; 0 uses

.sink.split172:                                   ; preds = %bb.v, %bb.y
  tail call void @__cxa_end_catch()
  br label %bb.w

bb.w:                                             ; preds = %.sink.split172, %bb.o
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !157, !noalias !1100 ; 3 uses
  %.not.i.i90 = icmp eq i64 %i.ab, 5
  br i1 %.not.i.i90, label %bb.x, label %.lr.ph.i.i.i.i.i.i, !prof !42

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.w
  %i.ac = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ab
  store i32 0, ptr %i.ac, align 4, !tbaa !41, !noalias !1101
  %i.ad = add i64 %i.ab, 1
  store i64 %i.ad, ptr %i.b, align 8, !tbaa !155, !noalias !1101
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 447, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIiLm10EEvv)
          to label %bb.af unwind label %bb.ac

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc91 unwind label %bb.ab

.noexc91:                                         ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.u
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 446, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIiLm10EEvv)
          to label %.sink.split172 unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ch unwind label %bb.ci

bb.aa:                                            ; preds = %bb.v
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ch unwind label %bb.ci

bb.ab:                                            ; preds = %bb.x
  %i.ag = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.ad

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ah = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn58 = phi { ptr, i32 } [ %i.ah, %bb.ac ], [ %i.ag, %bb.ab ] ; 2 uses
  %.6 = extractvalue { ptr, i32 } %.pn58, 1
  %.634 = extractvalue { ptr, i32 } %.pn58, 0
  %i.ai = icmp eq i32 %.6, %i.d
  %i.aj = tail call ptr @__cxa_begin_catch(ptr %.634) #25 ; 0 uses
  br i1 %i.ai, label %bb.ae, label %bb.ak

bb.ae:                                            ; preds = %bb.ad
  %i.ak = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split173 unwind label %bb.am ; 0 uses

.sink.split173:                                   ; preds = %bb.ae, %bb.ak
  tail call void @__cxa_end_catch()
  br label %bb.af

bb.af:                                            ; preds = %.sink.split173, %.lr.ph.i.i.i.i.i.i
  %i.al = load i64, ptr %i.b, align 8, !tbaa !157, !noalias !1102 ; 3 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %1, i64 %i.al
  %i.an = load i64, ptr %i.a, align 8, !tbaa !95, !noalias !1103 ; 4 uses
  %.idx = shl nsw i64 %i.an, 2
  %i.ao = sub i64 5, %i.al
  %.not.i.i92 = icmp ugt i64 %i.an, %i.ao
  br i1 %.not.i.i92, label %bb.ai, label %bb.ag, !prof !42

bb.ag:                                            ; preds = %bb.af
  %.not.i.i.i.i.i.i.i.not = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.i.i.i.i.not, label %bb.aj, label %bb.ah, !prof !150

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.am, ptr nonnull align 8 %0, i64 %.idx, i1 false), !noalias !1104
  %.pre = load i64, ptr %i.b, align 8, !tbaa !155, !noalias !1105
  br label %bb.aj

bb.ai:                                            ; preds = %bb.af
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc96 unwind label %bb.an

.noexc96:                                         ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ah, %bb.ag
  %i.ap = phi i64 [ %.pre, %bb.ah ], [ %i.al, %bb.ag ]
  %i.aq = add i64 %i.ap, %i.an
  store i64 %i.aq, ptr %i.b, align 8, !tbaa !155, !noalias !1105
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 448, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIiLm10EEvv)
          to label %bb.ar unwind label %bb.ao

bb.ak:                                            ; preds = %bb.ad
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 447, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIiLm10EEvv)
          to label %.sink.split173 unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ch unwind label %bb.ci

bb.am:                                            ; preds = %bb.ae
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ch unwind label %bb.ci

bb.an:                                            ; preds = %bb.ai
  %i.at = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.ap

bb.ao:                                            ; preds = %bb.aj
  %i.au = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.pn62 = phi { ptr, i32 } [ %i.au, %bb.ao ], [ %i.at, %bb.an ] ; 2 uses
  %.8 = extractvalue { ptr, i32 } %.pn62, 1
  %.836 = extractvalue { ptr, i32 } %.pn62, 0
  %i.av = icmp eq i32 %.8, %i.d
  %i.aw = tail call ptr @__cxa_begin_catch(ptr %.836) #25 ; 0 uses
  br i1 %i.av, label %bb.aq, label %bb.ay

bb.aq:                                            ; preds = %bb.ap
  %i.ax = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split174 unwind label %bb.ba ; 0 uses

.sink.split174:                                   ; preds = %bb.aq, %bb.ay
  tail call void @__cxa_end_catch()
  br label %bb.ar

bb.ar:                                            ; preds = %.sink.split174, %bb.aj
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !95, !noalias !1106 ; 2 uses
  %.idx147 = shl i64 %i.ay, 2                     ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %0, i64 %.idx147 ; 5 uses
  %i.ba = load i64, ptr %i.b, align 8, !tbaa !157, !noalias !1107
  %.fr = freeze i64 %i.ba                         ; 5 uses
  %.idx.i = shl i64 %.fr, 2                       ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %1, i64 %.idx.i ; 3 uses
  %i.bc = icmp ne i64 %i.ay, 0                    ; 2 uses
  %i.bd = icmp ne i64 %.fr, 0
  %or.cond13.i = and i1 %i.bc, %i.bd
  br i1 %or.cond13.i, label %iter.check, label %.critedge.i

iter.check:                                       ; preds = %bb.ar
  %i.be = add i64 %.idx.i, -4
  %i.bf = lshr exact i64 %i.be, 2                 ; 2 uses
  %i.bg = add i64 %.idx147, -4
  %i.bh = lshr exact i64 %i.bg, 2                 ; 2 uses
  %umin = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 %i.bh)
  %i.bi = shl nuw i64 %umin, 2
  %i.bj = add i64 %i.bi, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %1, ptr nonnull align 8 %0, i64 %i.bj, i1 false), !tbaa !41
  %umin179 = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 %i.bh) ; 3 uses
  %i.bk = add nuw nsw i64 %umin179, 1             ; 5 uses
  %min.iters.check = icmp samesign ult i64 %umin179, 3
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check180 = icmp samesign ult i64 %umin179, 31
  br i1 %min.iters.check180, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bl = and i64 %i.bk, 28
  %n.vec = and i64 %i.bk, 9223372036854775776     ; 4 uses
  %i.bm = shl i64 %n.vec, 2                       ; 2 uses
  %i.bn = getelementptr i8, ptr %0, i64 %i.bm     ; 3 uses
  %i.bo = getelementptr i8, ptr %1, i64 %i.bm     ; 2 uses
  %broadcast.splatinsert = insertelement <16 x ptr> poison, ptr %i.az, i64 0
  %broadcast.splat = shufflevector <16 x ptr> %broadcast.splatinsert, <16 x ptr> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %0, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 128
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !1079

middle.block:                                     ; preds = %vector.body
  %vector.gep = getelementptr i8, ptr %pointer.phi, <16 x i64> <i64 0, i64 4, i64 8, i64 12, i64 16, i64 20, i64 24, i64 28, i64 32, i64 36, i64 40, i64 44, i64 48, i64 52, i64 56, i64 60>
  %wide.gep = getelementptr i8, <16 x ptr> %vector.gep, i64 68
  %i.bq = icmp ne <16 x ptr> %wide.gep, %broadcast.splat
  %i.br = extractelement <16 x i1> %i.bq, i64 15
  %cmp.n = icmp eq i64 %i.bk, %n.vec
  br i1 %cmp.n, label %.critedge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bl, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !151

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi ptr [ %i.bn, %vec.epilog.iter.check ], [ %0, %vector.main.loop.iter.check ]
  %n.vec182 = and i64 %i.bk, 9223372036854775804  ; 3 uses
  %i.bs = shl i64 %n.vec182, 2                    ; 2 uses
  %i.bt = getelementptr i8, ptr %0, i64 %i.bs     ; 2 uses
  %i.bu = getelementptr i8, ptr %1, i64 %i.bs     ; 2 uses
  %broadcast.splatinsert183 = insertelement <4 x ptr> poison, ptr %i.az, i64 0
  %broadcast.splat184 = shufflevector <4 x ptr> %broadcast.splatinsert183, <4 x ptr> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index185 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next188, %vec.epilog.vector.body ]
  %pointer.phi186 = phi ptr [ %bc.resume.val, %vec.epilog.ph ], [ %ptr.ind189, %vec.epilog.vector.body ] ; 2 uses
  %index.next188 = add nuw i64 %index185, 4       ; 2 uses
  %ptr.ind189 = getelementptr i8, ptr %pointer.phi186, i64 16
  %i.bv = icmp eq i64 %index.next188, %n.vec182
  br i1 %i.bv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1080

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %vector.gep187 = getelementptr i8, ptr %pointer.phi186, <4 x i64> <i64 0, i64 4, i64 8, i64 12>
  %wide.gep190 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep187, i64 4
  %i.bw = icmp ne <4 x ptr> %wide.gep190, %broadcast.splat184
  %i.bx = extractelement <4 x i1> %i.bw, i64 3
  %cmp.n191 = icmp eq i64 %i.bk, %n.vec182
  br i1 %cmp.n191, label %.critedge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi ptr [ %0, %iter.check ], [ %i.bn, %vec.epilog.iter.check ], [ %i.bt, %vec.epilog.middle.block ]
  %.sroa.07.014.i.ph = phi ptr [ %1, %iter.check ], [ %i.bo, %vec.epilog.iter.check ], [ %i.bu, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.by = phi ptr [ %i.ca, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader ]
  %.sroa.07.014.i = phi ptr [ %i.bz, %.lr.ph.i ], [ %.sroa.07.014.i.ph, %.lr.ph.i.preheader ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.07.014.i, i64 4 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 4 ; 3 uses
  %i.cb = icmp ne ptr %i.ca, %i.az                ; 2 uses
  %i.cc = icmp ne ptr %i.bz, %i.bb
  %or.cond.i = select i1 %i.cb, i1 %i.cc, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %.critedge.i, !llvm.loop !1081

.critedge.i:                                      ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.ar
  %.sroa.07.0.lcssa.i = phi ptr [ %1, %bb.ar ], [ %i.bu, %vec.epilog.middle.block ], [ %i.bo, %middle.block ], [ %i.bz, %.lr.ph.i ]
  %.lcssa12.i = phi ptr [ %0, %bb.ar ], [ %i.bt, %vec.epilog.middle.block ], [ %i.bn, %middle.block ], [ %i.ca, %.lr.ph.i ] ; 3 uses
  %.lcssa.i = phi i1 [ %i.bc, %bb.ar ], [ %i.bx, %vec.epilog.middle.block ], [ %i.br, %middle.block ], [ %i.cb, %.lr.ph.i ]
  %i.cd = icmp eq ptr %.lcssa12.i, %i.az
  br i1 %i.cd, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.critedge.i
  %i.ce = ptrtoint ptr %i.bb to i64
  %i.cf = ptrtoint ptr %.sroa.07.0.lcssa.i to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = ashr exact i64 %i.cg, 2
  %i.ci = sub i64 %.fr, %i.ch
  br label %bb.ax

bb.at:                                            ; preds = %.critedge.i
  %i.cj = ptrtoint ptr %i.az to i64
  %i.ck = ptrtoint ptr %.lcssa12.i to i64
  %i.cl = sub i64 %i.cj, %i.ck                    ; 2 uses
  %i.cm = ashr exact i64 %i.cl, 2                 ; 2 uses
  %i.cn = sub i64 5, %.fr
  %.not.i.i.i97 = icmp ugt i64 %i.cm, %i.cn
  br i1 %.not.i.i.i97, label %bb.aw, label %bb.au, !prof !42

bb.au:                                            ; preds = %bb.at
  br i1 %.lcssa.i, label %bb.av, label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPiLb0EEEEES9_NS7_IS8_Lb1EEET_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS2_17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESJ_E4typeE.exit.i, !prof !152

bb.av:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bb, ptr nonnull align 1 %.lcssa12.i, i64 %i.cl, i1 false), !noalias !1108
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !155, !noalias !1109
  br label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPiLb0EEEEES9_NS7_IS8_Lb1EEET_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS2_17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESJ_E4typeE.exit.i

bb.aw:                                            ; preds = %bb.at
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc98 unwind label %bb.bb

.noexc98:                                         ; preds = %bb.aw
  unreachable

_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPiLb0EEEEES9_NS7_IS8_Lb1EEET_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS2_17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESJ_E4typeE.exit.i: ; preds = %bb.av, %bb.au
  %i.co = phi i64 [ %.fr, %bb.au ], [ %.pre.i, %bb.av ]
  %i.cp = add i64 %i.co, %i.cm
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPiLb0EEEEES9_NS7_IS8_Lb1EEET_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS2_17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESJ_E4typeE.exit.i, %bb.as
  %storemerge.i = phi i64 [ %i.cp, %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPiLb0EEEEES9_NS7_IS8_Lb1EEET_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS2_17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESJ_E4typeE.exit.i ], [ %i.ci, %bb.as ]
  store i64 %storemerge.i, ptr %i.b, align 8, !tbaa !155
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 449, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIiLm10EEvv)
          to label %bb.bd unwind label %bb.bb

bb.ay:                                            ; preds = %bb.ap
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 448, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIiLm10EEvv)
          to label %.sink.split174 unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ch unwind label %bb.ci

bb.ba:                                            ; preds = %bb.aq
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ch unwind label %bb.ci

bb.bb:                                            ; preds = %bb.aw, %bb.ax
  %i.cs = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %i.ct = extractvalue { ptr, i32 } %i.cs, 0
  %i.cu = extractvalue { ptr, i32 } %i.cs, 1
  %i.cv = icmp eq i32 %i.cu, %i.d
  %i.cw = call ptr @__cxa_begin_catch(ptr %i.ct) #25 ; 0 uses
  br i1 %i.cv, label %bb.bc, label %bb.bh

bb.bc:                                            ; preds = %bb.bb
  %i.cx = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split175 unwind label %bb.bj ; 0 uses

.sink.split175:                                   ; preds = %bb.bc, %bb.bh
  call void @__cxa_end_catch()
  br label %bb.bd

bb.bd:                                            ; preds = %.sink.split175, %bb.ax
  %i.cy = load i64, ptr %i.b, align 8, !tbaa !157, !noalias !1110 ; 5 uses
  %.idx.i.i = shl i64 %i.cy, 2                    ; 3 uses
  %i.cz = getelementptr i8, ptr %1, i64 %.idx.i.i
  %.not = icmp eq i64 %i.cy, 0
  br i1 %.not, label %.critedge.i.i.thread, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.bd
  %i.da = add i64 %.idx.i.i, -4                   ; 2 uses
  %i.db = lshr exact i64 %i.da, 2
  %umin157 = call i64 @llvm.umin.i64(i64 %i.db, i64 9) ; 2 uses
  %i.dc = shl nuw nsw i64 %umin157, 2
  %i.dd = add nuw nsw i64 %i.dc, 4                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %1, i8 0, i64 %i.dd, i1 false), !tbaa !41
  %i.de = sub nuw nsw i64 9, %umin157
  %i.df = icmp ugt i64 %i.da, 32
  br i1 %i.df, label %bb.be, label %.critedge.i.i.thread

bb.be:                                            ; preds = %.lr.ph.i.i.preheader
  %gepdiff = sub i64 %.idx.i.i, %i.dd
  %i.dg = ashr exact i64 %gepdiff, 2
  %i.dh = sub i64 %i.cy, %i.dg
  br label %bb.bg

.critedge.i.i.thread:                             ; preds = %bb.bd, %.lr.ph.i.i.preheader
  %.sroa.3.0.lcssa.i.i145 = phi i64 [ %i.de, %.lr.ph.i.i.preheader ], [ 10, %bb.bd ] ; 3 uses
  %i.di = sub i64 5, %i.cy
  %.not.i.i.i.i99 = icmp ugt i64 %.sroa.3.0.lcssa.i.i145, %i.di
  br i1 %.not.i.i.i.i99, label %bb.bf, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.critedge.i.i.thread
  %i.dj = shl nuw nsw i64 %.sroa.3.0.lcssa.i.i145, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.cz, i8 0, i64 %i.dj, i1 false), !tbaa !41, !noalias !1111
  %i.dk = add i64 %.sroa.3.0.lcssa.i.i145, %i.cy
  br label %bb.bg

bb.bf:                                            ; preds = %.critedge.i.i.thread
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc101 unwind label %bb.bk

.noexc101:                                        ; preds = %bb.bf
  unreachable
end_hunk_1
