inline.NumInlined: 8588
inline.NumDeleted: 2636
loop-unroll.NumCompletelyUnrolled: 202
loop-unroll.NumRuntimeUnrolled: 102
loop-unroll.NumUnrolled: 307
begin_hunk_0_@_Z18test_capacity_0_ndI8value_ndEvv:bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cm unwind label %bb.cn

bb.o:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cm unwind label %bb.cn

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
  %.pn56 = phi { ptr, i32 } [ %i.y, %bb.q ], [ %i.x, %bb.p ] ; 2 uses
  %.3 = extractvalue { ptr, i32 } %.pn56, 0
  %.334 = extractvalue { ptr, i32 } %.pn56, 1
  %i.z = icmp eq i32 %.334, %i.o
  %i.aa = tail call ptr @__cxa_begin_catch(ptr %.3) #25 ; 0 uses
  br i1 %i.z, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.ab = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split unwind label %bb.y ; 0 uses

.sink.split:                                      ; preds = %bb.s, %bb.w
  tail call void @__cxa_end_catch()
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %bb.l
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !783, !noalias !785 ; 3 uses
  %.not.i.i90 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i90, label %bb.u, label %bb.v, !prof !24

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc92 unwind label %bb.z

.noexc92:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.ad = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ac
  store i32 0, ptr %i.ad, align 4, !tbaa !18, !noalias !788
  %i.ae = add i64 %i.ac, 1
  store i64 %i.ae, ptr %i.b, align 8, !tbaa !783, !noalias !788
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 428, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI8value_ndEvv)
          to label %bb.ad unwind label %bb.aa

bb.w:                                             ; preds = %bb.r
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 427, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI8value_ndEvv)
          to label %.sink.split unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cm unwind label %bb.cn

bb.y:                                             ; preds = %bb.s
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cm unwind label %bb.cn

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
  %.pn60 = phi { ptr, i32 } [ %i.ai, %bb.aa ], [ %i.ah, %bb.z ] ; 2 uses
  %.5 = extractvalue { ptr, i32 } %.pn60, 0
  %.536 = extractvalue { ptr, i32 } %.pn60, 1
  %i.aj = icmp eq i32 %.536, %i.o
  %i.ak = tail call ptr @__cxa_begin_catch(ptr %.5) #25 ; 0 uses
  br i1 %i.aj, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.al = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split189 unwind label %bb.ai ; 0 uses

.sink.split189:                                   ; preds = %bb.ac, %bb.ag
  tail call void @__cxa_end_catch()
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split189, %bb.v
  %i.am = load i64, ptr %i.b, align 8, !tbaa !783, !noalias !793 ; 3 uses
  %i.an = load i64, ptr %i.a, align 8, !tbaa !228, !noalias !796 ; 4 uses
  %i.ao = sub i64 0, %i.am
  %.not.i.i93 = icmp ugt i64 %i.an, %i.ao
  br i1 %.not.i.i93, label %bb.af, label %bb.ae, !prof !24

bb.ae:                                            ; preds = %bb.ad
  %.not13.i.i.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not13.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.ae
  %i.ap = getelementptr [4 x i8], ptr %1, i64 %i.am
  %i.aq = shl nuw i64 %i.an, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ap, ptr nonnull align 8 %0, i64 %i.aq, i1 false), !tbaa !18, !noalias !799
  br label %.loopexit

bb.af:                                            ; preds = %bb.ad
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc94 unwind label %bb.aj

.noexc94:                                         ; preds = %bb.af
  unreachable

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %bb.ae
  %i.ar = add i64 %i.am, %i.an
  store i64 %i.ar, ptr %i.b, align 8, !tbaa !780, !noalias !806
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 429, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI8value_ndEvv)
          to label %bb.an unwind label %bb.ak

bb.ag:                                            ; preds = %bb.ab
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 428, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI8value_ndEvv)
          to label %.sink.split189 unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cm unwind label %bb.cn

bb.ai:                                            ; preds = %bb.ac
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cm unwind label %bb.cn

bb.aj:                                            ; preds = %bb.af
  %i.au = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.al

bb.ak:                                            ; preds = %.loopexit
  %i.av = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn64 = phi { ptr, i32 } [ %i.av, %bb.ak ], [ %i.au, %bb.aj ] ; 2 uses
  %.7 = extractvalue { ptr, i32 } %.pn64, 0
  %.738 = extractvalue { ptr, i32 } %.pn64, 1
  %i.aw = icmp eq i32 %.738, %i.o
  %i.ax = tail call ptr @__cxa_begin_catch(ptr %.7) #25 ; 0 uses
  br i1 %i.aw, label %bb.am, label %bb.as

bb.am:                                            ; preds = %bb.al
  %i.ay = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split190 unwind label %bb.au ; 0 uses

.sink.split190:                                   ; preds = %bb.am, %bb.as
  tail call void @__cxa_end_catch()
  br label %bb.an

bb.an:                                            ; preds = %.sink.split190, %.loopexit
  %i.az = load i64, ptr %i.a, align 8, !tbaa !228, !noalias !807 ; 2 uses
  %.idx = shl i64 %i.az, 2                        ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %0, i64 %.idx ; 2 uses
  %i.bb = load i64, ptr %i.b, align 8, !tbaa !783, !noalias !810
  %.fr = freeze i64 %i.bb                         ; 5 uses
  %.idx.i = shl i64 %.fr, 2                       ; 2 uses
  %i.bc = getelementptr i8, ptr %1, i64 %.idx.i   ; 2 uses
  %i.bd = icmp ne i64 %i.az, 0
  %i.be = icmp ne i64 %.fr, 0
  %or.cond12.i = and i1 %i.bd, %i.be
  br i1 %or.cond12.i, label %.lr.ph.i.preheader, label %.critedge.i

.lr.ph.i.preheader:                               ; preds = %bb.an
  %i.bf = add i64 %.idx.i, -4
  %i.bg = lshr exact i64 %i.bf, 2
  %i.bh = add i64 %.idx, -4
  %i.bi = lshr exact i64 %i.bh, 2
  %umin = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 %i.bi)
  %i.bj = shl nuw i64 %umin, 2
  %i.bk = add i64 %i.bj, 4                        ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %1, ptr nonnull align 8 %0, i64 %i.bk, i1 false), !tbaa !18
  %scevgep = getelementptr i8, ptr %1, i64 %i.bk
  %scevgep173 = getelementptr i8, ptr %0, i64 %i.bk
  br label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.i.preheader, %bb.an
  %.sroa.07.0.lcssa.i = phi ptr [ %1, %bb.an ], [ %scevgep, %.lr.ph.i.preheader ]
  %.lcssa11.i = phi ptr [ %0, %bb.an ], [ %scevgep173, %.lr.ph.i.preheader ] ; 3 uses
  %i.bl = icmp eq ptr %.lcssa11.i, %i.ba
  br i1 %i.bl, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.critedge.i
  %i.bm = ptrtoint ptr %i.bc to i64
  %i.bn = ptrtoint ptr %.sroa.07.0.lcssa.i to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = ashr exact i64 %i.bo, 2
  %i.bq = sub i64 %.fr, %i.bp
  br label %bb.ar

bb.ap:                                            ; preds = %.critedge.i
  %i.br = ptrtoint ptr %i.ba to i64
  %i.bs = ptrtoint ptr %.lcssa11.i to i64
  %i.bt = sub i64 %i.br, %i.bs                    ; 2 uses
  %i.bu = ashr exact i64 %i.bt, 2                 ; 2 uses
  %i.bv = sub i64 0, %.fr
  %.not.i.i.i95 = icmp ugt i64 %i.bu, %i.bv
  br i1 %.not.i.i.i95, label %bb.aq, label %.lr.ph.i.i.i.i.i.i.i96.preheader, !prof !24

.lr.ph.i.i.i.i.i.i.i96.preheader:                 ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bc, ptr align 4 %.lcssa11.i, i64 %i.bt, i1 false), !tbaa !18, !noalias !813
  %i.bw = add i64 %i.bu, %.fr
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc100 unwind label %bb.av

.noexc100:                                        ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i96.preheader, %bb.ao
  %storemerge.i = phi i64 [ %i.bw, %.lr.ph.i.i.i.i.i.i.i96.preheader ], [ %i.bq, %bb.ao ]
  store i64 %storemerge.i, ptr %i.b, align 8, !tbaa !780
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 430, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI8value_ndEvv)
          to label %bb.ax unwind label %bb.av

bb.as:                                            ; preds = %bb.al
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 429, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI8value_ndEvv)
          to label %.sink.split190 unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cm unwind label %bb.cn

bb.au:                                            ; preds = %bb.am
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cm unwind label %bb.cn

bb.av:                                            ; preds = %bb.aq, %bb.ar
  %i.bz = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  %i.cb = extractvalue { ptr, i32 } %i.bz, 1
  %i.cc = icmp eq i32 %i.cb, %i.o
  %i.cd = call ptr @__cxa_begin_catch(ptr %i.ca) #25 ; 0 uses
  br i1 %i.cc, label %bb.aw, label %bb.bb

bb.aw:                                            ; preds = %bb.av
  %i.ce = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split191 unwind label %bb.bd ; 0 uses

.sink.split191:                                   ; preds = %bb.aw, %bb.bb
  call void @__cxa_end_catch()
  br label %bb.ax

bb.ax:                                            ; preds = %.sink.split191, %bb.ar
  %i.cf = load i64, ptr %i.b, align 8, !tbaa !783, !noalias !820 ; 5 uses
  %.idx.i.i = shl i64 %i.cf, 2                    ; 3 uses
  %i.cg = getelementptr i8, ptr %1, i64 %.idx.i.i
  %.not = icmp eq i64 %i.cf, 0
  br i1 %.not, label %.critedge.i.i.thread, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.ax
  %i.ch = add i64 %.idx.i.i, -4                   ; 2 uses
  %i.ci = lshr exact i64 %i.ch, 2
  %umin174 = call i64 @llvm.umin.i64(i64 %i.ci, i64 4) ; 2 uses
  %i.cj = shl nuw nsw i64 %umin174, 2
  %i.ck = add nuw nsw i64 %i.cj, 4                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %1, i8 0, i64 %i.ck, i1 false), !tbaa !18
  %i.cl = sub nuw nsw i64 4, %umin174
  %i.cm = icmp ugt i64 %i.ch, 12
  br i1 %i.cm, label %bb.ay, label %.critedge.i.i.thread

bb.ay:                                            ; preds = %.lr.ph.i.i.preheader
  %gepdiff = sub i64 %.idx.i.i, %i.ck
  %i.cn = ashr exact i64 %gepdiff, 2
  %i.co = sub i64 %i.cf, %i.cn
  br label %bb.ba

.critedge.i.i.thread:                             ; preds = %bb.ax, %.lr.ph.i.i.preheader
  %.sroa.3.0.lcssa.i.i156 = phi i64 [ %i.cl, %.lr.ph.i.i.preheader ], [ 5, %bb.ax ] ; 3 uses
  %i.cp = sub i64 0, %i.cf
  %.not.i.i.i.i101 = icmp ugt i64 %.sroa.3.0.lcssa.i.i156, %i.cp
  br i1 %.not.i.i.i.i101, label %bb.az, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, !prof !24

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.critedge.i.i.thread
  %i.cq = shl nuw nsw i64 %.sroa.3.0.lcssa.i.i156, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.cg, i8 0, i64 %i.cq, i1 false), !tbaa !18, !noalias !823
  %i.cr = add i64 %.sroa.3.0.lcssa.i.i156, %i.cf
  br label %bb.ba

bb.az:                                            ; preds = %.critedge.i.i.thread
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc103 unwind label %bb.be

.noexc103:                                        ; preds = %bb.az
  unreachable

bb.ba:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %bb.ay
  %storemerge.i.i = phi i64 [ %i.cr, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.co, %bb.ay ]
  store i64 %storemerge.i.i, ptr %i.b, align 8, !tbaa !780
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 431, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI8value_ndEvv)
          to label %bb.bi unwind label %bb.bf

bb.bb:                                            ; preds = %bb.av
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 430, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI8value_ndEvv)
          to label %.sink.split191 unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cm unwind label %bb.cn

bb.bd:                                            ; preds = %bb.aw
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cm unwind label %bb.cn

bb.be:                                            ; preds = %bb.az
  %i.cu = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.bg

bb.bf:                                            ; preds = %bb.ba
  %i.cv = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.pn70 = phi { ptr, i32 } [ %i.cv, %bb.bf ], [ %i.cu, %bb.be ] ; 2 uses
  %.10 = extractvalue { ptr, i32 } %.pn70, 0
  %.1041 = extractvalue { ptr, i32 } %.pn70, 1
  %i.cw = icmp eq i32 %.1041, %i.o
  %i.cx = call ptr @__cxa_begin_catch(ptr %.10) #25 ; 0 uses
  br i1 %i.cw, label %bb.bh, label %bb.bm

bb.bh:                                            ; preds = %bb.bg
  %i.cy = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split192 unwind label %bb.bo ; 0 uses

.sink.split192:                                   ; preds = %bb.bh, %bb.bm
  call void @__cxa_end_catch()
  br label %bb.bi

bb.bi:                                            ; preds = %.sink.split192, %bb.ba
  %i.cz = load i64, ptr %i.b, align 8, !tbaa !783, !noalias !828 ; 5 uses
  %.idx.i.i104 = shl i64 %i.cz, 2                 ; 3 uses
  %i.da = getelementptr i8, ptr %1, i64 %.idx.i.i104
  %.not160 = icmp eq i64 %i.cz, 0
  br i1 %.not160, label %.critedge.i.i105.thread, label %.lr.ph.i.i119.preheader

.lr.ph.i.i119.preheader:                          ; preds = %bb.bi
  %i.db = add i64 %.idx.i.i104, -4                ; 2 uses
  %i.dc = lshr exact i64 %i.db, 2
  %umin177 = call i64 @llvm.umin.i64(i64 %i.dc, i64 4) ; 2 uses
  %i.dd = shl nuw nsw i64 %umin177, 2
  %i.de = add nuw nsw i64 %i.dd, 4                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %1, i8 0, i64 %i.de, i1 false), !tbaa !18
  %i.df = sub nuw nsw i64 4, %umin177
  %i.dg = icmp ugt i64 %i.db, 12
  br i1 %i.dg, label %bb.bj, label %.critedge.i.i105.thread

bb.bj:                                            ; preds = %.lr.ph.i.i119.preheader
  %gepdiff188 = sub i64 %.idx.i.i104, %i.de
  %i.dh = ashr exact i64 %gepdiff188, 2
  %i.di = sub i64 %i.cz, %i.dh
  br label %bb.bl

.critedge.i.i105.thread:                          ; preds = %bb.bi, %.lr.ph.i.i119.preheader
  %.sroa.3.0.lcssa.i.i107159 = phi i64 [ %i.df, %.lr.ph.i.i119.preheader ], [ 5, %bb.bi ] ; 3 uses
  %i.dj = sub i64 0, %i.cz
  %.not.i.i.i.i108 = icmp ugt i64 %.sroa.3.0.lcssa.i.i107159, %i.dj
  br i1 %.not.i.i.i.i108, label %bb.bk, label %.lr.ph.i.i.i.i.i.i.i.i111.preheader, !prof !24

.lr.ph.i.i.i.i.i.i.i.i111.preheader:              ; preds = %.critedge.i.i105.thread
  %i.dk = shl nuw nsw i64 %.sroa.3.0.lcssa.i.i107159, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.da, i8 0, i64 %i.dk, i1 false), !tbaa !18, !noalias !831
  %i.dl = add i64 %.sroa.3.0.lcssa.i.i107159, %i.cz
  br label %bb.bl

bb.bk:                                            ; preds = %.critedge.i.i105.thread
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc123 unwind label %bb.bp

.noexc123:                                        ; preds = %bb.bk
  unreachable

bb.bl:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i111.preheader, %bb.bj
  %storemerge.i.i116 = phi i64 [ %i.dl, %.lr.ph.i.i.i.i.i.i.i.i111.preheader ], [ %i.di, %bb.bj ]
  store i64 %storemerge.i.i116, ptr %i.b, align 8, !tbaa !780
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 432, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI8value_ndEvv)
          to label %bb.bt unwind label %bb.bq

bb.bm:                                            ; preds = %bb.bg
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 431, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI8value_ndEvv)
          to label %.sink.split192 unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
end_hunk_0
begin_hunk_1_@_Z18test_capacity_0_ndIN5boost9container4test24movable_and_copyable_intEEvv:_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2EmRKS3_.exit
  br i1 %i.an, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.ap = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.ac unwind label %bb.aj     ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  invoke void @__cxa_end_catch()
          to label %bb.ad unwind label %bb.ak

bb.ad:                                            ; preds = %bb.ac, %bb.ah, %bb.s
  %i.aq = load i64, ptr %i.d, align 8, !tbaa !908, !noalias !910 ; 3 uses
  %i.ar = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.as = add i32 %i.ar, 1                        ; 2 uses
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %.not.i.i90 = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i90, label %bb.ae, label %bb.af, !prof !24

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc92 unwind label %bb.al

.noexc92:                                         ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.at = getelementptr inbounds [4 x i8], ptr %1, i64 %i.aq
  store i32 0, ptr %i.at, align 4, !tbaa !78, !noalias !913
  %i.au = add i64 %i.aq, 1
  store i64 %i.au, ptr %i.d, align 8, !tbaa !908, !noalias !913
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 428, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIN5boost9container4test24movable_and_copyable_intEEvv)
          to label %bb.aq unwind label %bb.am

bb.ag:                                            ; preds = %bb.aa
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 427, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIN5boost9container4test24movable_and_copyable_intEEvv)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  invoke void @__cxa_end_catch()
          to label %bb.ad unwind label %bb.d

bb.ai:                                            ; preds = %bb.ag
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ds unwind label %bb.dt

bb.aj:                                            ; preds = %bb.ab
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ds unwind label %bb.dt

bb.ak:                                            ; preds = %bb.ac
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.al:                                            ; preds = %bb.ae
  %i.ay = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  %i.az = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.ba = add i32 %i.az, -1
  store i32 %i.ba, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  br label %bb.an

bb.am:                                            ; preds = %bb.af
  %i.bb = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pn60 = phi { ptr, i32 } [ %i.bb, %bb.am ], [ %i.ay, %bb.al ] ; 2 uses
  %.5 = extractvalue { ptr, i32 } %.pn60, 0
  %.536 = extractvalue { ptr, i32 } %.pn60, 1
  %i.bc = icmp eq i32 %.536, %i.x
  %i.bd = tail call ptr @__cxa_begin_catch(ptr %.5) #25 ; 0 uses
  br i1 %i.bc, label %bb.ao, label %bb.au

bb.ao:                                            ; preds = %bb.an
  %i.be = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.ap unwind label %bb.ax     ; 0 uses

bb.ap:                                            ; preds = %bb.ao
  invoke void @__cxa_end_catch()
          to label %bb.aq unwind label %bb.ay

bb.aq:                                            ; preds = %bb.ap, %bb.av, %bb.af
  %i.bf = load i64, ptr %i.d, align 8, !tbaa !908, !noalias !918 ; 3 uses
  %i.bg = load i64, ptr %i.b, align 8, !tbaa !300, !noalias !921 ; 5 uses
  %i.bh = sub i64 0, %i.bf
  %.not.i.i93 = icmp ugt i64 %i.bg, %i.bh
  br i1 %.not.i.i93, label %bb.as, label %bb.ar, !prof !24

bb.ar:                                            ; preds = %bb.aq
  %.not13.i.i.i.i.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not13.i.i.i.i.i.i, label %bb.at, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.ar
  %i.bi = getelementptr [4 x i8], ptr %1, i64 %i.bf
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18, !noalias !924
  %i.bj = shl nuw i64 %i.bg, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bi, ptr nonnull align 8 %0, i64 %i.bj, i1 false), !tbaa !78, !noalias !924
  %i.bk = trunc i64 %i.bg to i32
  %i.bl = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %i.bk
  store i32 %i.bl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18, !noalias !924
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc94 unwind label %bb.az

.noexc94:                                         ; preds = %bb.as
  unreachable

bb.at:                                            ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %bb.ar
  %i.bm = add i64 %i.bg, %i.bf
  store i64 %i.bm, ptr %i.d, align 8, !tbaa !905, !noalias !931
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 429, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIN5boost9container4test24movable_and_copyable_intEEvv)
          to label %bb.be unwind label %bb.ba

bb.au:                                            ; preds = %bb.an
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 428, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIN5boost9container4test24movable_and_copyable_intEEvv)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %bb.au
  invoke void @__cxa_end_catch()
          to label %bb.aq unwind label %bb.d

bb.aw:                                            ; preds = %bb.au
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ds unwind label %bb.dt

bb.ax:                                            ; preds = %bb.ao
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ds unwind label %bb.dt

bb.ay:                                            ; preds = %bb.ap
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.az:                                            ; preds = %bb.as
  %i.bq = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.bb

bb.ba:                                            ; preds = %bb.at
  %i.br = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.pn64 = phi { ptr, i32 } [ %i.br, %bb.ba ], [ %i.bq, %bb.az ] ; 2 uses
  %.7 = extractvalue { ptr, i32 } %.pn64, 0
  %.738 = extractvalue { ptr, i32 } %.pn64, 1
  %i.bs = icmp eq i32 %.738, %i.x
  %i.bt = tail call ptr @__cxa_begin_catch(ptr %.7) #25 ; 0 uses
  br i1 %i.bs, label %bb.bc, label %bb.bj

bb.bc:                                            ; preds = %bb.bb
  %i.bu = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.bd unwind label %bb.bm     ; 0 uses

bb.bd:                                            ; preds = %bb.bc
  invoke void @__cxa_end_catch()
          to label %bb.be unwind label %bb.bn

bb.be:                                            ; preds = %bb.bd, %bb.bk, %bb.at
  %i.bv = load i64, ptr %i.b, align 8, !tbaa !300, !noalias !932 ; 2 uses
  %.idx = shl i64 %i.bv, 2                        ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %0, i64 %.idx ; 2 uses
  %i.bx = load i64, ptr %i.d, align 8, !tbaa !908, !noalias !935
  %.fr = freeze i64 %i.bx                         ; 5 uses
  %.idx.i = shl i64 %.fr, 2                       ; 2 uses
  %i.by = getelementptr i8, ptr %1, i64 %.idx.i   ; 4 uses
  %i.bz = icmp ne i64 %i.bv, 0
  %i.ca = icmp ne i64 %.fr, 0
  %or.cond12.i = and i1 %i.bz, %i.ca
  br i1 %or.cond12.i, label %.lr.ph.i.preheader, label %.critedge.i

.lr.ph.i.preheader:                               ; preds = %bb.be
  %i.cb = add i64 %.idx.i, -4
  %i.cc = lshr exact i64 %i.cb, 2
  %i.cd = add i64 %.idx, -4
  %i.ce = lshr exact i64 %i.cd, 2
  %umin = tail call i64 @llvm.umin.i64(i64 %i.cc, i64 %i.ce)
  %i.cf = shl nuw i64 %umin, 2
  %i.cg = add i64 %i.cf, 4                        ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %1, ptr nonnull align 8 %0, i64 %i.cg, i1 false), !tbaa !78
  %scevgep = getelementptr i8, ptr %1, i64 %i.cg
  %scevgep260 = getelementptr i8, ptr %0, i64 %i.cg
  br label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.i.preheader, %bb.be
  %.sroa.07.0.lcssa.i = phi ptr [ %1, %bb.be ], [ %scevgep, %.lr.ph.i.preheader ] ; 2 uses
  %.lcssa11.i = phi ptr [ %0, %bb.be ], [ %scevgep260, %.lr.ph.i.preheader ] ; 3 uses
  %i.ch = icmp eq ptr %.lcssa11.i, %i.bw
  br i1 %i.ch, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.critedge.i
  %i.ci = ptrtoint ptr %i.by to i64
  %i.cj = ptrtoint ptr %.sroa.07.0.lcssa.i to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = ashr exact i64 %i.ck, 2                 ; 8 uses
  %.not3.i.i.i = icmp eq ptr %i.by, %.sroa.07.0.lcssa.i
  br i1 %.not3.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.bf
  %i.cm = sub nsw i64 0, %i.cl
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.cm ; 3 uses
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted237 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %min.iters.check286 = icmp ult i64 %i.cl, 8
  br i1 %min.iters.check286, label %.lr.ph.i.i.i99.preheader, label %vector.ph287

vector.ph287:                                     ; preds = %.lr.ph.i.preheader.i.i
  %n.vec288 = and i64 %i.cl, -8                   ; 3 uses
  %i.co = and i64 %i.cl, 7
  %i.cp = shl nsw i64 %n.vec288, 2
  %i.cq = getelementptr i8, ptr %i.cn, i64 %i.cp
  br label %vector.body289

vector.body289:                                   ; preds = %vector.body289, %vector.ph287
  %index290 = phi i64 [ 0, %vector.ph287 ], [ %index.next291, %vector.body289 ] ; 2 uses
  %i.cr = shl i64 %index290, 2
  %next.gep = getelementptr i8, ptr %i.cn, i64 %i.cr ; 2 uses
  %i.cs = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep, align 4, !tbaa !78
  store <4 x i32> splat (i32 -2147483648), ptr %i.cs, align 4, !tbaa !78
  %index.next291 = add nuw i64 %index290, 8       ; 2 uses
  %i.ct = icmp eq i64 %index.next291, %n.vec288
  br i1 %i.ct, label %middle.block292, label %vector.body289, !llvm.loop !938

middle.block292:                                  ; preds = %vector.body289
  %cmp.n293 = icmp eq i64 %i.cl, %n.vec288
  br i1 %cmp.n293, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.loopexit, label %.lr.ph.i.i.i99.preheader

.lr.ph.i.i.i99.preheader:                         ; preds = %.lr.ph.i.preheader.i.i, %middle.block292
  %.05.i.i.i.ph = phi i64 [ %i.cl, %.lr.ph.i.preheader.i.i ], [ %i.co, %middle.block292 ]
  %storemerge4.i.i.i.ph = phi ptr [ %i.cn, %.lr.ph.i.preheader.i.i ], [ %i.cq, %middle.block292 ]
  br label %.lr.ph.i.i.i99

.lr.ph.i.i.i99:                                   ; preds = %.lr.ph.i.i.i99.preheader, %.lr.ph.i.i.i99
  %.05.i.i.i = phi i64 [ %i.cu, %.lr.ph.i.i.i99 ], [ %.05.i.i.i.ph, %.lr.ph.i.i.i99.preheader ]
  %storemerge4.i.i.i = phi ptr [ %i.cv, %.lr.ph.i.i.i99 ], [ %storemerge4.i.i.i.ph, %.lr.ph.i.i.i99.preheader ] ; 2 uses
  %i.cu = add i64 %.05.i.i.i, -1                  ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i, align 4, !tbaa !78
  %i.cv = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 4
  %.not.i.i.i100 = icmp eq i64 %i.cu, 0
  br i1 %.not.i.i.i100, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.loopexit, label %.lr.ph.i.i.i99, !llvm.loop !939

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.loopexit: ; preds = %.lr.ph.i.i.i99, %middle.block292
  %i.cw = trunc i64 %i.cl to i32
  %i.cx = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted237, %i.cw
  store i32 %i.cx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i: ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.loopexit, %bb.bf
  %i.cy = sub i64 %.fr, %i.cl
  br label %bb.bi

bb.bg:                                            ; preds = %.critedge.i
  %i.cz = ptrtoint ptr %i.bw to i64
  %i.da = ptrtoint ptr %.lcssa11.i to i64
  %i.db = sub i64 %i.cz, %i.da                    ; 2 uses
  %i.dc = ashr exact i64 %i.db, 2                 ; 7 uses
  %i.dd = sub i64 0, %.fr
  %.not.i.i2.i = icmp ugt i64 %i.dc, %i.dd
  br i1 %.not.i.i2.i, label %bb.bh, label %.lr.ph.i.i.i.i.i.i.i95.preheader, !prof !24

.lr.ph.i.i.i.i.i.i.i95.preheader:                 ; preds = %bb.bg
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted236 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18, !noalias !940 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.by, ptr align 4 %.lcssa11.i, i64 %i.db, i1 false), !tbaa !78, !noalias !940
  %min.iters.check = icmp ult i64 %i.dc, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i95.preheader368, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i95.preheader
  %n.vec = and i64 %i.dc, -8                      ; 2 uses
  %i.de = and i64 %i.dc, 7
  %i.df = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted236, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %i.df, %vector.ph ], [ %i.dg, %vector.body ]
  %vec.phi283 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dh, %vector.body ]
  %i.dg = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.dh = add <4 x i32> %vec.phi283, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !947

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.dh, %i.dg
  %i.dj = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.dc, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS3_Lb0EEEEESB_NS9_ISA_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENS4_17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESL_E4typeE.exit.i, label %.lr.ph.i.i.i.i.i.i.i95.preheader368

.lr.ph.i.i.i.i.i.i.i95.preheader368:              ; preds = %.lr.ph.i.i.i.i.i.i.i95.preheader, %middle.block
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted236, %.lr.ph.i.i.i.i.i.i.i95.preheader ], [ %i.dj, %middle.block ]
  %.015.i.i.i.i.i.i.i96.ph = phi i64 [ %i.dc, %.lr.ph.i.i.i.i.i.i.i95.preheader ], [ %i.de, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i95

.lr.ph.i.i.i.i.i.i.i95:                           ; preds = %.lr.ph.i.i.i.i.i.i.i95.preheader368, %.lr.ph.i.i.i.i.i.i.i95
  %i.dk = phi i32 [ %i.dl, %.lr.ph.i.i.i.i.i.i.i95 ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i95.preheader368 ]
  %.015.i.i.i.i.i.i.i96 = phi i64 [ %i.dm, %.lr.ph.i.i.i.i.i.i.i95 ], [ %.015.i.i.i.i.i.i.i96.ph, %.lr.ph.i.i.i.i.i.i.i95.preheader368 ]
  %i.dl = add i32 %i.dk, 1                        ; 2 uses
  %i.dm = add i64 %.015.i.i.i.i.i.i.i96, -1       ; 2 uses
  %.not.i.i.i.i.i.i.i98 = icmp eq i64 %i.dm, 0
  br i1 %.not.i.i.i.i.i.i.i98, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS3_Lb0EEEEESB_NS9_ISA_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENS4_17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESL_E4typeE.exit.i, label %.lr.ph.i.i.i.i.i.i.i95, !llvm.loop !948

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc101 unwind label %bb.bo

.noexc101:                                        ; preds = %bb.bh
  unreachable

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS3_Lb0EEEEESB_NS9_ISA_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENS4_17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESL_E4typeE.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i95, %middle.block
  %.lcssa = phi i32 [ %i.dj, %middle.block ], [ %i.dl, %.lr.ph.i.i.i.i.i.i.i95 ]
  store i32 %.lcssa, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18, !noalias !940
  %i.dn = add i64 %i.dc, %.fr
  br label %bb.bi

bb.bi:                                            ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS3_Lb0EEEEESB_NS9_ISA_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENS4_17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESL_E4typeE.exit.i, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i
  %storemerge.i = phi i64 [ %i.dn, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS3_Lb0EEEEESB_NS9_ISA_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENS4_17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESL_E4typeE.exit.i ], [ %i.cy, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i ]
  store i64 %storemerge.i, ptr %i.d, align 8, !tbaa !905
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 430, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIN5boost9container4test24movable_and_copyable_intEEvv)
          to label %bb.br unwind label %bb.bo

bb.bj:                                            ; preds = %bb.bb
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 429, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIN5boost9container4test24movable_and_copyable_intEEvv)
          to label %bb.bk unwind label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  invoke void @__cxa_end_catch()
          to label %bb.be unwind label %bb.d

bb.bl:                                            ; preds = %bb.bj
  %i.do = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ds unwind label %bb.dt

bb.bm:                                            ; preds = %bb.bc
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ds unwind label %bb.dt

bb.bn:                                            ; preds = %bb.bd
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.bo:                                            ; preds = %bb.bh, %bb.bi
  %i.dr = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  %i.dt = extractvalue { ptr, i32 } %i.dr, 1
  %i.du = icmp eq i32 %i.dt, %i.x
  %i.dv = call ptr @__cxa_begin_catch(ptr %i.ds) #25 ; 0 uses
  br i1 %i.du, label %bb.bp, label %bb.bv

bb.bp:                                            ; preds = %bb.bo
  %i.dw = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.bq unwind label %bb.by     ; 0 uses

bb.bq:                                            ; preds = %bb.bp
  invoke void @__cxa_end_catch()
          to label %bb.br unwind label %bb.bz

bb.br:                                            ; preds = %bb.bq, %bb.bw, %bb.bi
  %i.dx = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.dy = add i32 %i.dx, 1                        ; 4 uses
  store i32 %i.dy, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.dz = load i64, ptr %i.d, align 8, !tbaa !908, !noalias !949 ; 5 uses
  %.idx.i.i = shl i64 %i.dz, 2                    ; 4 uses
  %i.ea = getelementptr i8, ptr %1, i64 %.idx.i.i ; 2 uses
  %.not = icmp eq i64 %i.dz, 0
  br i1 %.not, label %.critedge.i.i.thread, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.br
  %i.eb = add i64 %.idx.i.i, -4                   ; 2 uses
  %i.ec = lshr exact i64 %i.eb, 2
  %umin261 = call i64 @llvm.umin.i64(i64 %i.ec, i64 4) ; 2 uses
  %i.ed = shl nuw nsw i64 %umin261, 2
  %i.ee = add nuw nsw i64 %i.ed, 4                ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %1, i8 0, i64 %i.ee, i1 false), !tbaa !78
  %i.ef = sub nuw nsw i64 4, %umin261
  %i.eg = icmp ugt i64 %i.eb, 12
  br i1 %i.eg, label %bb.bs, label %.critedge.i.i.thread

bb.bs:                                            ; preds = %.lr.ph.i.i.preheader
  %gepdiff = sub i64 %.idx.i.i, %i.ee
  %i.eh = ashr exact i64 %gepdiff, 2              ; 8 uses
  %.not3.i.i.i.i = icmp eq i64 %.idx.i.i, %i.ee
  br i1 %.not3.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.bs
  %i.ei = sub nsw i64 0, %i.eh
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %i.ei ; 3 uses
  %min.iters.check297 = icmp ult i64 %i.eh, 8
  br i1 %min.iters.check297, label %.lr.ph.i.i.i.i102.preheader, label %vector.ph298

vector.ph298:                                     ; preds = %.lr.ph.i.preheader.i.i.i
  %n.vec299 = and i64 %i.eh, -8                   ; 3 uses
  %i.ek = and i64 %i.eh, 7
  %i.el = shl nsw i64 %n.vec299, 2
  %i.em = getelementptr i8, ptr %i.ej, i64 %i.el
  br label %vector.body300

vector.body300:                                   ; preds = %vector.body300, %vector.ph298
  %index301 = phi i64 [ 0, %vector.ph298 ], [ %index.next303, %vector.body300 ] ; 2 uses
  %i.en = shl i64 %index301, 2
  %next.gep302 = getelementptr i8, ptr %i.ej, i64 %i.en ; 2 uses
  %i.eo = getelementptr i8, ptr %next.gep302, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep302, align 4, !tbaa !78
  store <4 x i32> splat (i32 -2147483648), ptr %i.eo, align 4, !tbaa !78
  %index.next303 = add nuw i64 %index301, 8       ; 2 uses
  %i.ep = icmp eq i64 %index.next303, %n.vec299
  br i1 %i.ep, label %middle.block304, label %vector.body300, !llvm.loop !952

middle.block304:                                  ; preds = %vector.body300
  %cmp.n305 = icmp eq i64 %i.eh, %n.vec299
  br i1 %cmp.n305, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i.loopexit, label %.lr.ph.i.i.i.i102.preheader

.lr.ph.i.i.i.i102.preheader:                      ; preds = %.lr.ph.i.preheader.i.i.i, %middle.block304
  %.05.i.i.i.i.ph = phi i64 [ %i.eh, %.lr.ph.i.preheader.i.i.i ], [ %i.ek, %middle.block304 ]
  %storemerge4.i.i.i.i.ph = phi ptr [ %i.ej, %.lr.ph.i.preheader.i.i.i ], [ %i.em, %middle.block304 ]
  br label %.lr.ph.i.i.i.i102

.lr.ph.i.i.i.i102:                                ; preds = %.lr.ph.i.i.i.i102.preheader, %.lr.ph.i.i.i.i102
  %.05.i.i.i.i = phi i64 [ %i.eq, %.lr.ph.i.i.i.i102 ], [ %.05.i.i.i.i.ph, %.lr.ph.i.i.i.i102.preheader ]
  %storemerge4.i.i.i.i = phi ptr [ %i.er, %.lr.ph.i.i.i.i102 ], [ %storemerge4.i.i.i.i.ph, %.lr.ph.i.i.i.i102.preheader ] ; 2 uses
  %i.eq = add i64 %.05.i.i.i.i, -1                ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i, align 4, !tbaa !78
  %i.er = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 4
  %.not.i.i.i.i103 = icmp eq i64 %i.eq, 0
  br i1 %.not.i.i.i.i103, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i.loopexit, label %.lr.ph.i.i.i.i102, !llvm.loop !953

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i.loopexit: ; preds = %.lr.ph.i.i.i.i102, %middle.block304
  %i.es = trunc i64 %i.eh to i32
  %i.et = sub i32 %i.dy, %i.es                    ; 2 uses
  store i32 %i.et, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i: ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i.loopexit, %bb.bs
  %i.eu = phi i32 [ %i.et, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i.loopexit ], [ %i.dy, %bb.bs ]
  %i.ev = sub i64 %i.dz, %i.eh
  br label %bb.bu

.critedge.i.i.thread:                             ; preds = %bb.br, %.lr.ph.i.i.preheader
  %.sroa.3.0.lcssa.i.i222 = phi i64 [ %i.ef, %.lr.ph.i.i.preheader ], [ 5, %bb.br ] ; 4 uses
  %i.ew = sub i64 0, %i.dz
  %.not.i.i2.i.i = icmp ugt i64 %.sroa.3.0.lcssa.i.i222, %i.ew
  br i1 %.not.i.i2.i.i, label %bb.bt, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, !prof !24

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.critedge.i.i.thread
  %i.ex = shl nuw nsw i64 %.sroa.3.0.lcssa.i.i222, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ea, i8 0, i64 %i.ex, i1 false), !tbaa !78, !noalias !954
  %i.ey = trunc nuw nsw i64 %.sroa.3.0.lcssa.i.i222 to i32
  %i.ez = add i32 %i.dy, %i.ey                    ; 2 uses
  store i32 %i.ez, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18, !noalias !954
  %i.fa = add i64 %.sroa.3.0.lcssa.i.i222, %i.dz
  br label %bb.bu

bb.bt:                                            ; preds = %.critedge.i.i.thread
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc105 unwind label %bb.ca

.noexc105:                                        ; preds = %bb.bt
end_hunk_1
begin_hunk_2_@_Z18test_exceptions_ndI8value_ndLm10EEvv:_ZN5boost9container13static_vectorI8value_ndLm10EvEC2EmRKS2_.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cd unwind label %bb.ce

bb.r:                                             ; preds = %bb.l
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cd unwind label %bb.ce

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
  %.pn55 = phi { ptr, i32 } [ %i.x, %bb.t ], [ %i.w, %bb.s ] ; 2 uses
  %.4 = extractvalue { ptr, i32 } %.pn55, 0
  %.432 = extractvalue { ptr, i32 } %.pn55, 1
  %i.y = icmp eq i32 %.432, %i.d
  %i.z = tail call ptr @__cxa_begin_catch(ptr %.4) #25 ; 0 uses
  br i1 %i.y, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.aa = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split186 unwind label %bb.aa ; 0 uses

.sink.split186:                                   ; preds = %bb.v, %bb.y
  tail call void @__cxa_end_catch()
  br label %bb.w

bb.w:                                             ; preds = %.sink.split186, %bb.o
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !1051, !noalias !1061 ; 3 uses
  %.not.i.i92 = icmp eq i64 %i.ab, 5
  br i1 %.not.i.i92, label %bb.x, label %.lr.ph.i.i.i.i.i.i.preheader, !prof !24

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.w
  %i.ac = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ab
  store i32 0, ptr %i.ac, align 4, !tbaa !18, !noalias !1064
  %i.ad = add i64 %i.ab, 1
  store i64 %i.ad, ptr %i.b, align 8, !tbaa !1048, !noalias !1064
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 447, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI8value_ndLm10EEvv)
          to label %bb.af unwind label %bb.ac

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc95 unwind label %bb.ab

.noexc95:                                         ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.u
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 446, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI8value_ndLm10EEvv)
          to label %.sink.split186 unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cd unwind label %bb.ce

bb.aa:                                            ; preds = %bb.v
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cd unwind label %bb.ce

bb.ab:                                            ; preds = %bb.x
  %i.ag = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.ad

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.ah = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn59 = phi { ptr, i32 } [ %i.ah, %bb.ac ], [ %i.ag, %bb.ab ] ; 2 uses
  %.6 = extractvalue { ptr, i32 } %.pn59, 0
  %.634 = extractvalue { ptr, i32 } %.pn59, 1
  %i.ai = icmp eq i32 %.634, %i.d
  %i.aj = tail call ptr @__cxa_begin_catch(ptr %.6) #25 ; 0 uses
  br i1 %i.ai, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.ak = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split187 unwind label %bb.ak ; 0 uses

.sink.split187:                                   ; preds = %bb.ae, %bb.ai
  tail call void @__cxa_end_catch()
  br label %bb.af

bb.af:                                            ; preds = %.sink.split187, %.lr.ph.i.i.i.i.i.i.preheader
  %i.al = load i64, ptr %i.b, align 8, !tbaa !1051, !noalias !1069 ; 3 uses
  %i.am = load i64, ptr %i.a, align 8, !tbaa !228, !noalias !1072 ; 4 uses
  %i.an = sub i64 5, %i.al
  %.not.i.i96 = icmp ugt i64 %i.am, %i.an
  br i1 %.not.i.i96, label %bb.ah, label %bb.ag, !prof !24

bb.ag:                                            ; preds = %bb.af
  %.not13.i.i.i.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not13.i.i.i.i.i.i, label %.loopexit162, label %.lr.ph.i.i.i.i.i.i111.preheader

.lr.ph.i.i.i.i.i.i111.preheader:                  ; preds = %bb.ag
  %i.ao = getelementptr [4 x i8], ptr %1, i64 %i.al
  %i.ap = shl nuw i64 %i.am, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ao, ptr nonnull align 8 %0, i64 %i.ap, i1 false), !tbaa !18, !noalias !1075
  br label %.loopexit162

bb.ah:                                            ; preds = %bb.af
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc113 unwind label %bb.al

.noexc113:                                        ; preds = %bb.ah
  unreachable

.loopexit162:                                     ; preds = %.lr.ph.i.i.i.i.i.i111.preheader, %bb.ag
  %i.aq = add i64 %i.al, %i.am
  store i64 %i.aq, ptr %i.b, align 8, !tbaa !1048, !noalias !1082
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 448, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI8value_ndLm10EEvv)
          to label %bb.ap unwind label %bb.am

bb.ai:                                            ; preds = %bb.ad
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 447, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI8value_ndLm10EEvv)
          to label %.sink.split187 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cd unwind label %bb.ce

bb.ak:                                            ; preds = %bb.ae
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cd unwind label %bb.ce

bb.al:                                            ; preds = %bb.ah
  %i.at = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.an

bb.am:                                            ; preds = %.loopexit162
  %i.au = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pn63 = phi { ptr, i32 } [ %i.au, %bb.am ], [ %i.at, %bb.al ] ; 2 uses
  %.8 = extractvalue { ptr, i32 } %.pn63, 0
  %.836 = extractvalue { ptr, i32 } %.pn63, 1
  %i.av = icmp eq i32 %.836, %i.d
  %i.aw = tail call ptr @__cxa_begin_catch(ptr %.8) #25 ; 0 uses
  br i1 %i.av, label %bb.ao, label %bb.au

bb.ao:                                            ; preds = %bb.an
  %i.ax = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split188 unwind label %bb.aw ; 0 uses

.sink.split188:                                   ; preds = %bb.ao, %bb.au
  tail call void @__cxa_end_catch()
  br label %bb.ap

bb.ap:                                            ; preds = %.sink.split188, %.loopexit162
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !228, !noalias !1083 ; 2 uses
  %.idx = shl i64 %i.ay, 2                        ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %0, i64 %.idx ; 2 uses
  %i.ba = load i64, ptr %i.b, align 8, !tbaa !1051, !noalias !1086
  %.fr = freeze i64 %i.ba                         ; 5 uses
  %.idx.i = shl i64 %.fr, 2                       ; 2 uses
  %i.bb = getelementptr i8, ptr %1, i64 %.idx.i   ; 2 uses
  %i.bc = icmp ne i64 %i.ay, 0
  %i.bd = icmp ne i64 %.fr, 0
  %or.cond12.i = and i1 %i.bc, %i.bd
  br i1 %or.cond12.i, label %.lr.ph.i.preheader, label %.critedge.i

.lr.ph.i.preheader:                               ; preds = %bb.ap
  %i.be = add i64 %.idx.i, -4
  %i.bf = lshr exact i64 %i.be, 2
  %i.bg = add i64 %.idx, -4
  %i.bh = lshr exact i64 %i.bg, 2
  %umin = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 %i.bh)
  %i.bi = shl nuw i64 %umin, 2
  %i.bj = add i64 %i.bi, 4                        ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %1, ptr nonnull align 8 %0, i64 %i.bj, i1 false), !tbaa !18
  %scevgep = getelementptr i8, ptr %1, i64 %i.bj
  %scevgep170 = getelementptr i8, ptr %0, i64 %i.bj
  br label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.i.preheader, %bb.ap
  %.sroa.07.0.lcssa.i = phi ptr [ %1, %bb.ap ], [ %scevgep, %.lr.ph.i.preheader ]
  %.lcssa11.i = phi ptr [ %0, %bb.ap ], [ %scevgep170, %.lr.ph.i.preheader ] ; 3 uses
  %i.bk = icmp eq ptr %.lcssa11.i, %i.az
  br i1 %i.bk, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.critedge.i
  %i.bl = ptrtoint ptr %i.bb to i64
  %i.bm = ptrtoint ptr %.sroa.07.0.lcssa.i to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = ashr exact i64 %i.bn, 2
  %i.bp = sub i64 %.fr, %i.bo
  br label %bb.at

bb.ar:                                            ; preds = %.critedge.i
  %i.bq = ptrtoint ptr %i.az to i64
  %i.br = ptrtoint ptr %.lcssa11.i to i64
  %i.bs = sub i64 %i.bq, %i.br                    ; 2 uses
  %i.bt = ashr exact i64 %i.bs, 2                 ; 2 uses
  %i.bu = sub i64 5, %.fr
  %.not.i.i.i114 = icmp ugt i64 %i.bt, %i.bu
  br i1 %.not.i.i.i114, label %bb.as, label %.lr.ph.i.i.i.i.i.i.i115.preheader, !prof !24

.lr.ph.i.i.i.i.i.i.i115.preheader:                ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bb, ptr align 4 %.lcssa11.i, i64 %i.bs, i1 false), !tbaa !18, !noalias !1089
  %i.bv = add i64 %i.bt, %.fr
  br label %bb.at

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc119 unwind label %bb.ax

.noexc119:                                        ; preds = %bb.as
  unreachable

bb.at:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i115.preheader, %bb.aq
  %storemerge.i = phi i64 [ %i.bv, %.lr.ph.i.i.i.i.i.i.i115.preheader ], [ %i.bp, %bb.aq ]
  store i64 %storemerge.i, ptr %i.b, align 8, !tbaa !1048
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 449, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI8value_ndLm10EEvv)
          to label %bb.az unwind label %bb.ax

bb.au:                                            ; preds = %bb.an
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 448, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI8value_ndLm10EEvv)
          to label %.sink.split188 unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cd unwind label %bb.ce

bb.aw:                                            ; preds = %bb.ao
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cd unwind label %bb.ce

bb.ax:                                            ; preds = %bb.as, %bb.at
  %i.by = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  %i.ca = extractvalue { ptr, i32 } %i.by, 1
  %i.cb = icmp eq i32 %i.ca, %i.d
  %i.cc = call ptr @__cxa_begin_catch(ptr %i.bz) #25 ; 0 uses
  br i1 %i.cb, label %bb.ay, label %bb.bd

bb.ay:                                            ; preds = %bb.ax
  %i.cd = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split189 unwind label %bb.bf ; 0 uses

.sink.split189:                                   ; preds = %bb.ay, %bb.bd
  call void @__cxa_end_catch()
  br label %bb.az

bb.az:                                            ; preds = %.sink.split189, %bb.at
  %i.ce = load i64, ptr %i.b, align 8, !tbaa !1051, !noalias !1096 ; 5 uses
  %.idx.i.i = shl i64 %i.ce, 2                    ; 3 uses
  %i.cf = getelementptr i8, ptr %1, i64 %.idx.i.i
  %.not = icmp eq i64 %i.ce, 0
  br i1 %.not, label %.critedge.i.i.thread, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.az
  %i.cg = add i64 %.idx.i.i, -4                   ; 2 uses
  %i.ch = lshr exact i64 %i.cg, 2
  %umin171 = call i64 @llvm.umin.i64(i64 %i.ch, i64 9) ; 2 uses
  %i.ci = shl nuw nsw i64 %umin171, 2
  %i.cj = add nuw nsw i64 %i.ci, 4                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %1, i8 0, i64 %i.cj, i1 false), !tbaa !18
  %i.ck = sub nuw nsw i64 9, %umin171
  %i.cl = icmp ugt i64 %i.cg, 32
  br i1 %i.cl, label %bb.ba, label %.critedge.i.i.thread

bb.ba:                                            ; preds = %.lr.ph.i.i.preheader
  %gepdiff = sub i64 %.idx.i.i, %i.cj
  %i.cm = ashr exact i64 %gepdiff, 2
  %i.cn = sub i64 %i.ce, %i.cm
  br label %bb.bc

.critedge.i.i.thread:                             ; preds = %bb.az, %.lr.ph.i.i.preheader
  %.sroa.3.0.lcssa.i.i160 = phi i64 [ %i.ck, %.lr.ph.i.i.preheader ], [ 10, %bb.az ] ; 3 uses
  %i.co = sub i64 5, %i.ce
  %.not.i.i.i.i120 = icmp ugt i64 %.sroa.3.0.lcssa.i.i160, %i.co
  br i1 %.not.i.i.i.i120, label %bb.bb, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, !prof !24

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.critedge.i.i.thread
  %i.cp = shl nuw nsw i64 %.sroa.3.0.lcssa.i.i160, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.cf, i8 0, i64 %i.cp, i1 false), !tbaa !18, !noalias !1099
  %i.cq = add i64 %.sroa.3.0.lcssa.i.i160, %i.ce
  br label %bb.bc

bb.bb:                                            ; preds = %.critedge.i.i.thread
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc122 unwind label %bb.bg

.noexc122:                                        ; preds = %bb.bb
  unreachable

bb.bc:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %bb.ba
  %storemerge.i.i = phi i64 [ %i.cq, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.cn, %bb.ba ]
  store i64 %storemerge.i.i, ptr %i.b, align 8, !tbaa !1048
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 450, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI8value_ndLm10EEvv)
          to label %bb.bk unwind label %bb.bh

bb.bd:                                            ; preds = %bb.ax
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 449, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI8value_ndLm10EEvv)
          to label %.sink.split189 unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cd unwind label %bb.ce

bb.bf:                                            ; preds = %bb.ay
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cd unwind label %bb.ce

bb.bg:                                            ; preds = %bb.bb
  %i.ct = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bc
  %i.cu = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.pn69 = phi { ptr, i32 } [ %i.cu, %bb.bh ], [ %i.ct, %bb.bg ] ; 2 uses
  %.11 = extractvalue { ptr, i32 } %.pn69, 0
  %.1139 = extractvalue { ptr, i32 } %.pn69, 1
  %i.cv = icmp eq i32 %.1139, %i.d
  %i.cw = call ptr @__cxa_begin_catch(ptr %.11) #25 ; 0 uses
  br i1 %i.cv, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  %i.cx = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split190 unwind label %bb.bo ; 0 uses

.sink.split190:                                   ; preds = %bb.bj, %bb.bm
  call void @__cxa_end_catch()
  br label %bb.bk

bb.bk:                                            ; preds = %.sink.split190, %bb.bc
  %i.cy = load i64, ptr %i.a, align 8, !tbaa !228, !noalias !1104
  %i.cz = icmp ult i64 %i.cy, 6
  br i1 %i.cz, label %.loopexit, label %bb.bl, !prof !1047

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc124 unwind label %bb.bp

.noexc124:                                        ; preds = %bb.bl
  unreachable

.loopexit:                                        ; preds = %bb.bk
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 451, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI8value_ndLm10EEvv)
          to label %bb.bt unwind label %bb.bq

bb.bm:                                            ; preds = %bb.bi
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 450, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI8value_ndLm10EEvv)
          to label %.sink.split190 unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cd unwind label %bb.ce

bb.bo:                                            ; preds = %bb.bj
  %i.db = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cd unwind label %bb.ce

bb.bp:                                            ; preds = %bb.bl
  %i.dc = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.br

bb.bq:                                            ; preds = %.loopexit
  %i.dd = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.pn73 = phi { ptr, i32 } [ %i.dd, %bb.bq ], [ %i.dc, %bb.bp ] ; 2 uses
  %.13 = extractvalue { ptr, i32 } %.pn73, 0
  %.1341 = extractvalue { ptr, i32 } %.pn73, 1
  %i.de = icmp eq i32 %.1341, %i.d
  %i.df = call ptr @__cxa_begin_catch(ptr %.13) #25 ; 0 uses
  br i1 %i.de, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %bb.br
  %i.dg = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split191 unwind label %bb.bw ; 0 uses

.sink.split191:                                   ; preds = %bb.bs, %bb.bu
end_hunk_2
begin_hunk_3_@_Z18test_exceptions_ndIN5boost9container4test24movable_and_copyable_intELm10EEvv:_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2EmRKS3_.exit
  br i1 %i.an, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.ap = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.ad unwind label %bb.aj     ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  invoke void @__cxa_end_catch()
          to label %bb.ae unwind label %bb.ak

bb.ae:                                            ; preds = %bb.ad, %bb.ah, %bb.t
  %i.aq = load i64, ptr %i.c, align 8, !tbaa !1183, !noalias !1193 ; 3 uses
  %i.ar = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.as = add i32 %i.ar, 1                        ; 2 uses
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %.not.i.i92 = icmp eq i64 %i.aq, 5
  br i1 %.not.i.i92, label %bb.af, label %.lr.ph.i.i.i.i.i.i.preheader, !prof !24

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.ae
  %i.at = getelementptr inbounds [4 x i8], ptr %1, i64 %i.aq
  store i32 0, ptr %i.at, align 4, !tbaa !78, !noalias !1196
  %i.au = add i64 %i.aq, 1
  store i64 %i.au, ptr %i.c, align 8, !tbaa !1180, !noalias !1196
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 447, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIN5boost9container4test24movable_and_copyable_intELm10EEvv)
          to label %bb.aq unwind label %bb.am

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc93 unwind label %bb.al

.noexc93:                                         ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.ab
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 446, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIN5boost9container4test24movable_and_copyable_intELm10EEvv)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  invoke void @__cxa_end_catch()
          to label %bb.ae unwind label %bb.j

bb.ai:                                            ; preds = %bb.ag
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.di unwind label %bb.dj

bb.aj:                                            ; preds = %bb.ac
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.di unwind label %bb.dj

bb.ak:                                            ; preds = %bb.ad
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.al:                                            ; preds = %bb.af
  %i.ay = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  %i.az = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.ba = add i32 %i.az, -1
  store i32 %i.ba, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  br label %bb.an

bb.am:                                            ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.bb = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pn59 = phi { ptr, i32 } [ %i.bb, %bb.am ], [ %i.ay, %bb.al ] ; 2 uses
  %.6 = extractvalue { ptr, i32 } %.pn59, 0
  %.634 = extractvalue { ptr, i32 } %.pn59, 1
  %i.bc = icmp eq i32 %.634, %i.h
  %i.bd = tail call ptr @__cxa_begin_catch(ptr %.6) #25 ; 0 uses
  br i1 %i.bc, label %bb.ao, label %bb.au

bb.ao:                                            ; preds = %bb.an
  %i.be = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.ap unwind label %bb.ax     ; 0 uses

bb.ap:                                            ; preds = %bb.ao
  invoke void @__cxa_end_catch()
          to label %bb.aq unwind label %bb.ay

bb.aq:                                            ; preds = %bb.ap, %bb.av, %.lr.ph.i.i.i.i.i.i.preheader
  %i.bf = load i64, ptr %i.c, align 8, !tbaa !1183, !noalias !1201 ; 3 uses
  %i.bg = load i64, ptr %i.b, align 8, !tbaa !300, !noalias !1204 ; 5 uses
  %i.bh = sub i64 5, %i.bf
  %.not.i.i94 = icmp ugt i64 %i.bg, %i.bh
  br i1 %.not.i.i94, label %bb.as, label %bb.ar, !prof !24

bb.ar:                                            ; preds = %bb.aq
  %.not13.i.i.i.i.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not13.i.i.i.i.i.i, label %bb.at, label %.lr.ph.i.i.i.i.i.i110.preheader

.lr.ph.i.i.i.i.i.i110.preheader:                  ; preds = %bb.ar
  %i.bi = getelementptr [4 x i8], ptr %1, i64 %i.bf
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted233 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18, !noalias !1207
  %i.bj = shl nuw i64 %i.bg, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bi, ptr nonnull align 8 %0, i64 %i.bj, i1 false), !tbaa !78, !noalias !1207
  %i.bk = trunc i64 %i.bg to i32
  %i.bl = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted233, %i.bk
  store i32 %i.bl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18, !noalias !1207
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc112 unwind label %bb.az

.noexc112:                                        ; preds = %bb.as
  unreachable

bb.at:                                            ; preds = %.lr.ph.i.i.i.i.i.i110.preheader, %bb.ar
  %i.bm = add i64 %i.bg, %i.bf
  store i64 %i.bm, ptr %i.c, align 8, !tbaa !1180, !noalias !1214
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 448, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIN5boost9container4test24movable_and_copyable_intELm10EEvv)
          to label %bb.be unwind label %bb.ba

bb.au:                                            ; preds = %bb.an
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 447, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIN5boost9container4test24movable_and_copyable_intELm10EEvv)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %bb.au
  invoke void @__cxa_end_catch()
          to label %bb.aq unwind label %bb.j

bb.aw:                                            ; preds = %bb.au
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.di unwind label %bb.dj

bb.ax:                                            ; preds = %bb.ao
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.di unwind label %bb.dj

bb.ay:                                            ; preds = %bb.ap
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.az:                                            ; preds = %bb.as
  %i.bq = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.bb

bb.ba:                                            ; preds = %bb.at
  %i.br = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.pn63 = phi { ptr, i32 } [ %i.br, %bb.ba ], [ %i.bq, %bb.az ] ; 2 uses
  %.8 = extractvalue { ptr, i32 } %.pn63, 0
  %.836 = extractvalue { ptr, i32 } %.pn63, 1
  %i.bs = icmp eq i32 %.836, %i.h
  %i.bt = tail call ptr @__cxa_begin_catch(ptr %.8) #25 ; 0 uses
  br i1 %i.bs, label %bb.bc, label %bb.bj

bb.bc:                                            ; preds = %bb.bb
  %i.bu = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.bd unwind label %bb.bm     ; 0 uses

bb.bd:                                            ; preds = %bb.bc
  invoke void @__cxa_end_catch()
          to label %bb.be unwind label %bb.bn

bb.be:                                            ; preds = %bb.bd, %bb.bk, %bb.at
  %i.bv = load i64, ptr %i.b, align 8, !tbaa !300, !noalias !1215 ; 2 uses
  %.idx = shl i64 %i.bv, 2                        ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %0, i64 %.idx ; 2 uses
  %i.bx = load i64, ptr %i.c, align 8, !tbaa !1183, !noalias !1218
  %.fr = freeze i64 %i.bx                         ; 5 uses
  %.idx.i = shl i64 %.fr, 2                       ; 2 uses
  %i.by = getelementptr i8, ptr %1, i64 %.idx.i   ; 4 uses
  %i.bz = icmp ne i64 %i.bv, 0
  %i.ca = icmp ne i64 %.fr, 0
  %or.cond12.i = and i1 %i.bz, %i.ca
  br i1 %or.cond12.i, label %.lr.ph.i.preheader, label %.critedge.i

.lr.ph.i.preheader:                               ; preds = %bb.be
  %i.cb = add i64 %.idx.i, -4
  %i.cc = lshr exact i64 %i.cb, 2
  %i.cd = add i64 %.idx, -4
  %i.ce = lshr exact i64 %i.cd, 2
  %umin = tail call i64 @llvm.umin.i64(i64 %i.cc, i64 %i.ce)
  %i.cf = shl nuw i64 %umin, 2
  %i.cg = add i64 %i.cf, 4                        ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %1, ptr nonnull align 8 %0, i64 %i.cg, i1 false), !tbaa !78
  %scevgep = getelementptr i8, ptr %1, i64 %i.cg
  %scevgep257 = getelementptr i8, ptr %0, i64 %i.cg
  br label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.i.preheader, %bb.be
  %.sroa.07.0.lcssa.i = phi ptr [ %1, %bb.be ], [ %scevgep, %.lr.ph.i.preheader ] ; 2 uses
  %.lcssa11.i = phi ptr [ %0, %bb.be ], [ %scevgep257, %.lr.ph.i.preheader ] ; 3 uses
  %i.ch = icmp eq ptr %.lcssa11.i, %i.bw
  br i1 %i.ch, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.critedge.i
  %i.ci = ptrtoint ptr %i.by to i64
  %i.cj = ptrtoint ptr %.sroa.07.0.lcssa.i to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = ashr exact i64 %i.ck, 2                 ; 8 uses
  %.not3.i.i.i = icmp eq ptr %i.by, %.sroa.07.0.lcssa.i
  br i1 %.not3.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.bf
  %i.cm = sub nsw i64 0, %i.cl
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.cm ; 3 uses
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted236 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %min.iters.check279 = icmp ult i64 %i.cl, 8
  br i1 %min.iters.check279, label %.lr.ph.i.i.i117.preheader, label %vector.ph280

vector.ph280:                                     ; preds = %.lr.ph.i.preheader.i.i
  %n.vec281 = and i64 %i.cl, -8                   ; 3 uses
  %i.co = and i64 %i.cl, 7
  %i.cp = shl nsw i64 %n.vec281, 2
  %i.cq = getelementptr i8, ptr %i.cn, i64 %i.cp
  br label %vector.body282

vector.body282:                                   ; preds = %vector.body282, %vector.ph280
  %index283 = phi i64 [ 0, %vector.ph280 ], [ %index.next284, %vector.body282 ] ; 2 uses
  %i.cr = shl i64 %index283, 2
  %next.gep = getelementptr i8, ptr %i.cn, i64 %i.cr ; 2 uses
  %i.cs = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep, align 4, !tbaa !78
  store <4 x i32> splat (i32 -2147483648), ptr %i.cs, align 4, !tbaa !78
  %index.next284 = add nuw i64 %index283, 8       ; 2 uses
  %i.ct = icmp eq i64 %index.next284, %n.vec281
  br i1 %i.ct, label %middle.block285, label %vector.body282, !llvm.loop !1221

middle.block285:                                  ; preds = %vector.body282
  %cmp.n286 = icmp eq i64 %i.cl, %n.vec281
  br i1 %cmp.n286, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.loopexit, label %.lr.ph.i.i.i117.preheader

.lr.ph.i.i.i117.preheader:                        ; preds = %.lr.ph.i.preheader.i.i, %middle.block285
  %.05.i.i.i.ph = phi i64 [ %i.cl, %.lr.ph.i.preheader.i.i ], [ %i.co, %middle.block285 ]
  %storemerge4.i.i.i.ph = phi ptr [ %i.cn, %.lr.ph.i.preheader.i.i ], [ %i.cq, %middle.block285 ]
  br label %.lr.ph.i.i.i117

.lr.ph.i.i.i117:                                  ; preds = %.lr.ph.i.i.i117.preheader, %.lr.ph.i.i.i117
  %.05.i.i.i = phi i64 [ %i.cu, %.lr.ph.i.i.i117 ], [ %.05.i.i.i.ph, %.lr.ph.i.i.i117.preheader ]
  %storemerge4.i.i.i = phi ptr [ %i.cv, %.lr.ph.i.i.i117 ], [ %storemerge4.i.i.i.ph, %.lr.ph.i.i.i117.preheader ] ; 2 uses
  %i.cu = add i64 %.05.i.i.i, -1                  ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i, align 4, !tbaa !78
  %i.cv = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 4
  %.not.i.i.i118 = icmp eq i64 %i.cu, 0
  br i1 %.not.i.i.i118, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.loopexit, label %.lr.ph.i.i.i117, !llvm.loop !1222

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.loopexit: ; preds = %.lr.ph.i.i.i117, %middle.block285
  %i.cw = trunc i64 %i.cl to i32
  %i.cx = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted236, %i.cw
  store i32 %i.cx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i: ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.loopexit, %bb.bf
  %i.cy = sub i64 %.fr, %i.cl
  br label %bb.bi

bb.bg:                                            ; preds = %.critedge.i
  %i.cz = ptrtoint ptr %i.bw to i64
  %i.da = ptrtoint ptr %.lcssa11.i to i64
  %i.db = sub i64 %i.cz, %i.da                    ; 2 uses
  %i.dc = ashr exact i64 %i.db, 2                 ; 7 uses
  %i.dd = sub i64 5, %.fr
  %.not.i.i2.i = icmp ugt i64 %i.dc, %i.dd
  br i1 %.not.i.i2.i, label %bb.bh, label %.lr.ph.i.i.i.i.i.i.i113.preheader, !prof !24

.lr.ph.i.i.i.i.i.i.i113.preheader:                ; preds = %bb.bg
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted235 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18, !noalias !1223 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.by, ptr align 4 %.lcssa11.i, i64 %i.db, i1 false), !tbaa !78, !noalias !1223
  %min.iters.check = icmp ult i64 %i.dc, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i113.preheader373, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i113.preheader
  %n.vec = and i64 %i.dc, -8                      ; 2 uses
  %i.de = and i64 %i.dc, 7
  %i.df = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted235, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %i.df, %vector.ph ], [ %i.dg, %vector.body ]
  %vec.phi276 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dh, %vector.body ]
  %i.dg = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.dh = add <4 x i32> %vec.phi276, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !1230

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.dh, %i.dg
  %i.dj = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.dc, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS3_Lb0EEEEESB_NS9_ISA_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENS4_17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESL_E4typeE.exit.i, label %.lr.ph.i.i.i.i.i.i.i113.preheader373

.lr.ph.i.i.i.i.i.i.i113.preheader373:             ; preds = %.lr.ph.i.i.i.i.i.i.i113.preheader, %middle.block
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted235, %.lr.ph.i.i.i.i.i.i.i113.preheader ], [ %i.dj, %middle.block ]
  %.015.i.i.i.i.i.i.i114.ph = phi i64 [ %i.dc, %.lr.ph.i.i.i.i.i.i.i113.preheader ], [ %i.de, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i113

.lr.ph.i.i.i.i.i.i.i113:                          ; preds = %.lr.ph.i.i.i.i.i.i.i113.preheader373, %.lr.ph.i.i.i.i.i.i.i113
  %i.dk = phi i32 [ %i.dl, %.lr.ph.i.i.i.i.i.i.i113 ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i113.preheader373 ]
  %.015.i.i.i.i.i.i.i114 = phi i64 [ %i.dm, %.lr.ph.i.i.i.i.i.i.i113 ], [ %.015.i.i.i.i.i.i.i114.ph, %.lr.ph.i.i.i.i.i.i.i113.preheader373 ]
  %i.dl = add i32 %i.dk, 1                        ; 2 uses
  %i.dm = add i64 %.015.i.i.i.i.i.i.i114, -1      ; 2 uses
  %.not.i.i.i.i.i.i.i116 = icmp eq i64 %i.dm, 0
  br i1 %.not.i.i.i.i.i.i.i116, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS3_Lb0EEEEESB_NS9_ISA_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENS4_17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESL_E4typeE.exit.i, label %.lr.ph.i.i.i.i.i.i.i113, !llvm.loop !1231

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc119 unwind label %bb.bo

.noexc119:                                        ; preds = %bb.bh
  unreachable

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS3_Lb0EEEEESB_NS9_ISA_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENS4_17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESL_E4typeE.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i113, %middle.block
  %.lcssa = phi i32 [ %i.dj, %middle.block ], [ %i.dl, %.lr.ph.i.i.i.i.i.i.i113 ]
  store i32 %.lcssa, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18, !noalias !1223
  %i.dn = add i64 %i.dc, %.fr
  br label %bb.bi

bb.bi:                                            ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS3_Lb0EEEEESB_NS9_ISA_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENS4_17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESL_E4typeE.exit.i, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i
  %storemerge.i = phi i64 [ %i.dn, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS3_Lb0EEEEESB_NS9_ISA_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENS4_17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESL_E4typeE.exit.i ], [ %i.cy, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i ]
  store i64 %storemerge.i, ptr %i.c, align 8, !tbaa !1180
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 449, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIN5boost9container4test24movable_and_copyable_intELm10EEvv)
          to label %bb.br unwind label %bb.bo

bb.bj:                                            ; preds = %bb.bb
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 448, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIN5boost9container4test24movable_and_copyable_intELm10EEvv)
          to label %bb.bk unwind label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  invoke void @__cxa_end_catch()
          to label %bb.be unwind label %bb.j

bb.bl:                                            ; preds = %bb.bj
  %i.do = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.di unwind label %bb.dj

bb.bm:                                            ; preds = %bb.bc
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.di unwind label %bb.dj

bb.bn:                                            ; preds = %bb.bd
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.bo:                                            ; preds = %bb.bh, %bb.bi
  %i.dr = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  %i.dt = extractvalue { ptr, i32 } %i.dr, 1
  %i.du = icmp eq i32 %i.dt, %i.h
  %i.dv = call ptr @__cxa_begin_catch(ptr %i.ds) #25 ; 0 uses
  br i1 %i.du, label %bb.bp, label %bb.bv

bb.bp:                                            ; preds = %bb.bo
  %i.dw = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.bq unwind label %bb.by     ; 0 uses

bb.bq:                                            ; preds = %bb.bp
  invoke void @__cxa_end_catch()
          to label %bb.br unwind label %bb.bz

bb.br:                                            ; preds = %bb.bq, %bb.bw, %bb.bi
  %i.dx = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.dy = add i32 %i.dx, 1                        ; 4 uses
  store i32 %i.dy, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.dz = load i64, ptr %i.c, align 8, !tbaa !1183, !noalias !1232 ; 5 uses
  %.idx.i.i = shl i64 %i.dz, 2                    ; 4 uses
  %i.ea = getelementptr i8, ptr %1, i64 %.idx.i.i ; 2 uses
  %.not = icmp eq i64 %i.dz, 0
  br i1 %.not, label %.critedge.i.i.thread, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.br
  %i.eb = add i64 %.idx.i.i, -4                   ; 2 uses
  %i.ec = lshr exact i64 %i.eb, 2
  %umin258 = call i64 @llvm.umin.i64(i64 %i.ec, i64 9) ; 2 uses
  %i.ed = shl nuw nsw i64 %umin258, 2
  %i.ee = add nuw nsw i64 %i.ed, 4                ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %1, i8 0, i64 %i.ee, i1 false), !tbaa !78
  %i.ef = sub nuw nsw i64 9, %umin258
  %i.eg = icmp ugt i64 %i.eb, 32
  br i1 %i.eg, label %bb.bs, label %.critedge.i.i.thread

bb.bs:                                            ; preds = %.lr.ph.i.i.preheader
  %gepdiff = sub i64 %.idx.i.i, %i.ee
  %i.eh = ashr exact i64 %gepdiff, 2              ; 8 uses
  %.not3.i.i.i.i = icmp eq i64 %.idx.i.i, %i.ee
  br i1 %.not3.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.bs
  %i.ei = sub nsw i64 0, %i.eh
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %i.ei ; 3 uses
  %min.iters.check290 = icmp ult i64 %i.eh, 8
  br i1 %min.iters.check290, label %.lr.ph.i.i.i.i120.preheader, label %vector.ph291

vector.ph291:                                     ; preds = %.lr.ph.i.preheader.i.i.i
  %n.vec292 = and i64 %i.eh, -8                   ; 3 uses
  %i.ek = and i64 %i.eh, 7
  %i.el = shl nsw i64 %n.vec292, 2
  %i.em = getelementptr i8, ptr %i.ej, i64 %i.el
  br label %vector.body293

vector.body293:                                   ; preds = %vector.body293, %vector.ph291
  %index294 = phi i64 [ 0, %vector.ph291 ], [ %index.next296, %vector.body293 ] ; 2 uses
  %i.en = shl i64 %index294, 2
  %next.gep295 = getelementptr i8, ptr %i.ej, i64 %i.en ; 2 uses
  %i.eo = getelementptr i8, ptr %next.gep295, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep295, align 4, !tbaa !78
  store <4 x i32> splat (i32 -2147483648), ptr %i.eo, align 4, !tbaa !78
  %index.next296 = add nuw i64 %index294, 8       ; 2 uses
  %i.ep = icmp eq i64 %index.next296, %n.vec292
  br i1 %i.ep, label %middle.block297, label %vector.body293, !llvm.loop !1235

middle.block297:                                  ; preds = %vector.body293
  %cmp.n298 = icmp eq i64 %i.eh, %n.vec292
  br i1 %cmp.n298, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i.loopexit, label %.lr.ph.i.i.i.i120.preheader

.lr.ph.i.i.i.i120.preheader:                      ; preds = %.lr.ph.i.preheader.i.i.i, %middle.block297
  %.05.i.i.i.i.ph = phi i64 [ %i.eh, %.lr.ph.i.preheader.i.i.i ], [ %i.ek, %middle.block297 ]
  %storemerge4.i.i.i.i.ph = phi ptr [ %i.ej, %.lr.ph.i.preheader.i.i.i ], [ %i.em, %middle.block297 ]
  br label %.lr.ph.i.i.i.i120

.lr.ph.i.i.i.i120:                                ; preds = %.lr.ph.i.i.i.i120.preheader, %.lr.ph.i.i.i.i120
  %.05.i.i.i.i = phi i64 [ %i.eq, %.lr.ph.i.i.i.i120 ], [ %.05.i.i.i.i.ph, %.lr.ph.i.i.i.i120.preheader ]
  %storemerge4.i.i.i.i = phi ptr [ %i.er, %.lr.ph.i.i.i.i120 ], [ %storemerge4.i.i.i.i.ph, %.lr.ph.i.i.i.i120.preheader ] ; 2 uses
  %i.eq = add i64 %.05.i.i.i.i, -1                ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i, align 4, !tbaa !78
  %i.er = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 4
  %.not.i.i.i.i121 = icmp eq i64 %i.eq, 0
  br i1 %.not.i.i.i.i121, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i.loopexit, label %.lr.ph.i.i.i.i120, !llvm.loop !1236

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i.loopexit: ; preds = %.lr.ph.i.i.i.i120, %middle.block297
  %i.es = trunc i64 %i.eh to i32
  %i.et = sub i32 %i.dy, %i.es                    ; 2 uses
  store i32 %i.et, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i: ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i.loopexit, %bb.bs
  %i.eu = phi i32 [ %i.et, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i.loopexit ], [ %i.dy, %bb.bs ]
  %i.ev = sub i64 %i.dz, %i.eh
  br label %bb.bu

.critedge.i.i.thread:                             ; preds = %bb.br, %.lr.ph.i.i.preheader
  %.sroa.3.0.lcssa.i.i221 = phi i64 [ %i.ef, %.lr.ph.i.i.preheader ], [ 10, %bb.br ] ; 4 uses
  %i.ew = sub i64 5, %i.dz
  %.not.i.i2.i.i = icmp ugt i64 %.sroa.3.0.lcssa.i.i221, %i.ew
  br i1 %.not.i.i2.i.i, label %bb.bt, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, !prof !24

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.critedge.i.i.thread
  %i.ex = shl nuw nsw i64 %.sroa.3.0.lcssa.i.i221, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ea, i8 0, i64 %i.ex, i1 false), !tbaa !78, !noalias !1237
  %i.ey = trunc nuw nsw i64 %.sroa.3.0.lcssa.i.i221 to i32
  %i.ez = add i32 %i.dy, %i.ey                    ; 2 uses
  store i32 %i.ez, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18, !noalias !1237
  %i.fa = add i64 %.sroa.3.0.lcssa.i.i221, %i.dz
  br label %bb.bu

bb.bt:                                            ; preds = %.critedge.i.i.thread
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc123 unwind label %bb.ca

.noexc123:                                        ; preds = %bb.bt
end_hunk_3
