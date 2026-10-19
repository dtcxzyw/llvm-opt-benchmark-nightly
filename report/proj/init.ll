Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/init?download=true
inline.NumInlined: 92
inline.NumDeleted: 54
begin_hunk_0_@_ZL23pj_expand_init_internalP6pj_ctxP8ARG_listi:bb.a
  %i.ao = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.am, ptr noundef nonnull dereferenceable(1) %i.ai) #13 ; 0 uses
  %i.ap = call ptr @proj_destroy(ptr noundef nonnull %i.ah) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  br label %bb.bt

.thread.sink.split.i:                             ; preds = %.thread103.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.sink.split.i, %bb.f
  call void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %.074.i, i32 noundef 3, ptr noundef nonnull @.str.52, ptr noundef nonnull %.068.i)
  %i.aq = call noalias dereferenceable_or_null(1077) ptr @malloc(i64 noundef 1077) #15 ; 14 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZL8get_initP6pj_ctxPKci.exit.thread, label %bb.s

bb.s:                                             ; preds = %.thread.i
  %i.as = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %.068.i, ptr noundef nonnull dereferenceable(1) @.str.4) #12 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 5
  %.086.i.i = select i1 %i.at, ptr %.068.i, ptr %i.au ; 3 uses
  %i.av = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.086.i.i) #12 ; 2 uses
  %i.aw = icmp ugt i64 %i.av, 1076
  br i1 %i.aw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef nonnull %i.aq) #13
  br label %_ZL8get_initP6pj_ctxPKci.exit.thread

bb.u:                                             ; preds = %bb.s
  %i.ax = add nuw nsw i64 %i.av, 1
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aq, ptr noundef nonnull align 1 dereferenceable(1) %.086.i.i, i64 %i.ax, i1 false)
  %i.ay = call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.aq, i32 noundef 58) #12 ; 3 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %.074.i, i32 noundef 1, ptr noundef nonnull @.str.55)
  call void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef %.074.i, i32 noundef 1027)
  call void @free(ptr noundef nonnull %i.aq) #13
  br label %_ZL8get_initP6pj_ctxPKci.exit.thread

bb.w:                                             ; preds = %bb.u
  store i8 0, ptr %i.ay, align 1, !tbaa !8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 4 uses
  %i.bb = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ba) #12 ; 3 uses
  call void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %.074.i, i32 noundef 3, ptr noundef nonnull @.str.56, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @_ZN5osgeo4proj11FileManager18open_resource_fileEP6pj_ctxPKcPcm(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %3, ptr noundef %.074.i, ptr noundef nonnull %i.aq, ptr noundef null, i64 noundef 0)
  %i.bc = load ptr, ptr %3, align 8, !tbaa !51    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  invoke void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %.074.i, i32 noundef 1, ptr noundef nonnull @.str.57, ptr noundef nonnull %i.aq)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  invoke void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef %.074.i, i32 noundef 1027)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @free(ptr noundef nonnull %i.aq) #13
  br label %bb.br

bb.aa:                                            ; preds = %bb.y, %bb.x
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.ab:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  store ptr %i.be, ptr %4, align 8, !tbaa !52
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  store i64 0, ptr %i.bf, align 8, !tbaa !53
  store i8 0, ptr %i.be, align 8, !tbaa !8
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.bi = add i64 %i.bb, 2
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ar, %bb.ab
  %i.bj = phi ptr [ %.pre.i.i, %bb.ar ], [ %i.bc, %bb.ab ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i8 0, ptr %i.b, align 1, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i8 0, ptr %i.c, align 1, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  invoke void @_ZN5osgeo4proj4File9read_lineB5cxx11EmRbS2_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(73) %i.bj, i64 noundef 1000, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.ad unwind label %bb.al

bb.ad:                                            ; preds = %bb.ac
  %i.bk = load ptr, ptr %4, align 8, !tbaa !55    ; 6 uses
  %i.bl = icmp eq ptr %i.bk, %i.be
  %i.bm = load ptr, ptr %5, align 8, !tbaa !55    ; 5 uses
  %i.bn = icmp eq ptr %i.bm, %i.bg                ; 2 uses
  br i1 %i.bl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ad
  br i1 %i.bn, label %bb.ae, label %.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.ad
  br i1 %i.bn, label %bb.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bo = load i64, ptr %i.bh, align 8, !tbaa !53 ; 3 uses
  %i.bp = icmp ult i64 %i.bo, 16
  call void @llvm.assume(i1 %i.bp)
  switch i64 %i.bo, label %bb.ag [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
    i64 1, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae
  %i.bq = load i8, ptr %i.bm, align 1, !tbaa !8
  store i8 %i.bq, ptr %i.bk, align 1, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bk, ptr align 1 %i.bm, i64 %i.bo, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i: ; preds = %bb.ag, %bb.af, %bb.ae
  %i.br = load i64, ptr %i.bh, align 8, !tbaa !53 ; 2 uses
  store i64 %i.br, ptr %i.bf, align 8, !tbaa !53
  %i.bs = load ptr, ptr %4, align 8, !tbaa !55
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.br
  store i8 0, ptr %i.bt, align 1, !tbaa !8
  %.pre.i.i.i = load ptr, ptr %5, align 8, !tbaa !55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i

.thread.i.i.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  store ptr %i.bm, ptr %4, align 8, !tbaa !55
  %i.bu = load <2 x i64>, ptr %i.bh, align 8, !tbaa !8
  store <2 x i64> %i.bu, ptr %i.bf, align 8, !tbaa !8
  br label %bb.ai

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.bv = load i64, ptr %i.be, align 8, !tbaa !8
  store ptr %i.bm, ptr %4, align 8, !tbaa !55
  %i.bw = load <2 x i64>, ptr %i.bh, align 8, !tbaa !8
  store <2 x i64> %i.bw, ptr %i.bf, align 8, !tbaa !8
  %.not.i114.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i114.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i
  store ptr %i.bk, ptr %5, align 8, !tbaa !55
  store i64 %i.bv, ptr %i.bg, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i, %.thread.i.i.i
  store ptr %i.bg, ptr %5, align 8, !tbaa !55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i: ; preds = %bb.ai, %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
  %i.bx = phi ptr [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ], [ %i.bk, %bb.ah ], [ %i.bg, %bb.ai ]
  store i64 0, ptr %i.bh, align 8, !tbaa !53
  store i8 0, ptr %i.bx, align 1, !tbaa !8
  %i.by = load ptr, ptr %5, align 8, !tbaa !55    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.bg
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i
  %i.ca = load i64, ptr %i.bg, align 8, !tbaa !8
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.cc = load i8, ptr %i.c, align 1, !tbaa !54, !range !38, !noundef !39
  %i.cd = trunc nuw i8 %i.cc to i1
  %i.ce = load i8, ptr %i.b, align 1, !range !38
  %i.cf = trunc nuw i8 %i.ce to i1
  %or.cond.i.i = select i1 %i.cd, i1 true, i1 %i.cf
  br i1 %or.cond.i.i, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  invoke void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %.074.i, i32 noundef 1, ptr noundef nonnull @.str.58, ptr noundef nonnull %i.aq)
          to label %bb.ak unwind label %.loopexit.split-lp.i.i.a

bb.ak:                                            ; preds = %bb.aj
  invoke void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef %.074.i, i32 noundef 1027)
          to label %.thread137.i.i unwind label %.loopexit.split-lp.i.i.a

.thread137.i.i:                                   ; preds = %bb.ak
  call void @free(ptr noundef nonnull %i.aq) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.bp

bb.al:                                            ; preds = %bb.ac
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.as

.loopexit.split-lp.i.i.a:                         ; preds = %bb.am, %bb.ak, %bb.aj
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.ch = load ptr, ptr %4, align 8, !tbaa !55
  %i.ci = invoke noundef ptr @_Z8pj_chompPc(ptr noundef nonnull %i.ch)
          to label %bb.an unwind label %.loopexit.split-lp.i.i.a ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.cj = load ptr, ptr %4, align 8, !tbaa !55    ; 5 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !8
  %.not.i.i = icmp eq i8 %i.ck, 60
  br i1 %.not.i.i, label %bb.ao, label %bb.ar, !llvm.loop !44

bb.ao:                                            ; preds = %bb.an
  %i.cl = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cj) #12
  %i.cm = icmp ult i64 %i.cl, %i.bi
  br i1 %i.cm, label %bb.ar, label %bb.ap, !llvm.loop !44

bb.ap:                                            ; preds = %bb.ao
  %i.cn = getelementptr i8, ptr %i.cj, i64 %i.bb
  %i.co = getelementptr i8, ptr %i.cn, i64 1
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !8
  %.not104.i.i = icmp eq i8 %i.cp, 62
  br i1 %.not104.i.i, label %bb.aq, label %bb.ar, !llvm.loop !44

bb.aq:                                            ; preds = %bb.ap
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  %i.cr = call i32 @strncmp(ptr noundef nonnull %i.cq, ptr noundef nonnull %i.ba, i64 noundef %i.bb) #12
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %.pre.i.i = load ptr, ptr %3, align 8, !tbaa !51
  br label %bb.ac

bb.as:                                            ; preds = %.loopexit.split-lp.i.i.a, %bb.al
  %.pn.i.i = phi { ptr, i32 } [ %i.cg, %bb.al ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.bq

bb.at:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.ct = call noalias dereferenceable_or_null(5005) ptr @malloc(i64 noundef 5005) #15 ; 5 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call void @free(ptr noundef %i.aq) #13
  br label %bb.bp

bb.av:                                            ; preds = %bb.at
  %i.cv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ba) #12
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  %i.cy = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ct, ptr noundef nonnull dereferenceable(1) %i.cx) #13 ; 0 uses
  %i.cz = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ct, i32 noundef 60) #12 ; 2 uses
  %.not106166.i.i = icmp eq ptr %i.cz, null
  br i1 %.not106166.i.i, label %.lr.ph.i.i, label %.thread152.i.i

.lr.ph.i.i:                                       ; preds = %bb.av
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  br label %bb.aw

.thread152.i.i:                                   ; preds = %bb.bj, %bb.av
  %.082.lcssa.i.i = phi ptr [ %i.ct, %bb.av ], [ %.284.i.i, %bb.bj ]
  %.lcssa.i.i = phi ptr [ %i.cz, %bb.av ], [ %i.eq, %bb.bj ]
  store i8 0, ptr %.lcssa.i.i, align 1, !tbaa !8
  br label %bb.bm

bb.aw:                                            ; preds = %bb.bj, %.lr.ph.i.i
  %.082168.i.i = phi ptr [ %i.ct, %.lr.ph.i.i ], [ %.284.i.i, %bb.bj ] ; 6 uses
  %.087167.i.i = phi i64 [ 5005, %.lr.ph.i.i ], [ %.289.i.i, %bb.bj ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i8 0, ptr %i.d, align 1, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  store i8 0, ptr %i.e, align 1, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.dc = load ptr, ptr %3, align 8, !tbaa !51
  invoke void @_ZN5osgeo4proj4File9read_lineB5cxx11EmRbS2_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(73) %i.dc, i64 noundef 1000, ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
          to label %bb.ax unwind label %bb.bd

bb.ax:                                            ; preds = %bb.aw
  %i.dd = load ptr, ptr %4, align 8, !tbaa !55    ; 6 uses
  %i.de = icmp eq ptr %i.dd, %i.be
  %i.df = load ptr, ptr %6, align 8, !tbaa !55    ; 5 uses
  %i.dg = icmp eq ptr %i.df, %i.da                ; 2 uses
  br i1 %i.de, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i120.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i115.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i120.i.i: ; preds = %bb.ax
  br i1 %i.dg, label %bb.ay, label %.thread.i121.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i115.i.i: ; preds = %bb.ax
  br i1 %i.dg, label %bb.ay, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i116.i.i

bb.ay:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i115.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i120.i.i
  %i.dh = load i64, ptr %i.db, align 8, !tbaa !53 ; 3 uses
  %i.di = icmp ult i64 %i.dh, 16
  call void @llvm.assume(i1 %i.di)
  switch i64 %i.dh, label %bb.ba [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i118.i.i
    i64 1, label %bb.az
  ]

bb.az:                                            ; preds = %bb.ay
  %i.dj = load i8, ptr %i.df, align 1, !tbaa !8
  store i8 %i.dj, ptr %i.dd, align 1, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i118.i.i

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dd, ptr align 1 %i.df, i64 %i.dh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i118.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i118.i.i: ; preds = %bb.ba, %bb.az, %bb.ay
  %i.dk = load i64, ptr %i.db, align 8, !tbaa !53 ; 2 uses
  store i64 %i.dk, ptr %i.bf, align 8, !tbaa !53
  %i.dl = load ptr, ptr %4, align 8, !tbaa !55
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dk
  store i8 0, ptr %i.dm, align 1, !tbaa !8
  %.pre.i119.i.i = load ptr, ptr %6, align 8, !tbaa !55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit122.i.i

.thread.i121.i.i:                                 ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i120.i.i
  store ptr %i.df, ptr %4, align 8, !tbaa !55
  %i.dn = load <2 x i64>, ptr %i.db, align 8, !tbaa !8
  store <2 x i64> %i.dn, ptr %i.bf, align 8, !tbaa !8
  br label %bb.bc

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i116.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i115.i.i
  %i.do = load i64, ptr %i.be, align 8, !tbaa !8
  store ptr %i.df, ptr %4, align 8, !tbaa !55
  %i.dp = load <2 x i64>, ptr %i.db, align 8, !tbaa !8
  store <2 x i64> %i.dp, ptr %i.bf, align 8, !tbaa !8
  %.not.i117.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i117.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i116.i.i
  store ptr %i.dd, ptr %6, align 8, !tbaa !55
  store i64 %i.do, ptr %i.da, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit122.i.i

bb.bc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i116.i.i, %.thread.i121.i.i
  store ptr %i.da, ptr %6, align 8, !tbaa !55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit122.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit122.i.i: ; preds = %bb.bc, %bb.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i118.i.i
  %i.dq = phi ptr [ %.pre.i119.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i118.i.i ], [ %i.dd, %bb.bb ], [ %i.da, %bb.bc ]
  store i64 0, ptr %i.db, align 8, !tbaa !53
  store i8 0, ptr %i.dq, align 1, !tbaa !8
  %i.dr = load ptr, ptr %6, align 8, !tbaa !55    ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.da
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit122.i.i
  %i.dt = load i64, ptr %i.da, align 8, !tbaa !8
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.du) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit122.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %i.dv = load i8, ptr %i.e, align 1, !tbaa !54, !range !38, !noundef !39
  %i.dw = trunc nuw i8 %i.dv to i1
  %i.dx = load i8, ptr %i.d, align 1, !range !38
  %i.dy = trunc nuw i8 %i.dx to i1
  %or.cond3.i.i = select i1 %i.dw, i1 true, i1 %i.dy
  br i1 %or.cond3.i.i, label %bb.bl, label %bb.be

bb.bd:                                            ; preds = %bb.aw
  %i.dz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.bk

bb.be:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.i.i
  %i.ea = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.082168.i.i) #12 ; 2 uses
  %i.eb = load ptr, ptr %4, align 8, !tbaa !55
  %i.ec = invoke noundef ptr @_Z8pj_chompPc(ptr noundef nonnull %i.eb)
          to label %bb.bf unwind label %bb.bh     ; 0 uses

bb.bf:                                            ; preds = %bb.be
  %i.ed = load ptr, ptr %4, align 8, !tbaa !55
  %i.ee = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ed) #12
  %i.ef = add i64 %i.ea, 2
  %i.eg = add i64 %i.ef, %i.ee
  %i.eh = icmp ugt i64 %i.eg, %.087167.i.i
  br i1 %i.eh, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  %i.ei = shl i64 %.087167.i.i, 1                 ; 2 uses
  %i.ej = call noalias ptr @malloc(i64 noundef %i.ei) #15 ; 3 uses
  %.not109.i.i = icmp eq ptr %i.ej, null
  br i1 %.not109.i.i, label %.thread155.i.i, label %bb.bi

.thread155.i.i:                                   ; preds = %bb.bg
  call void @free(ptr noundef nonnull %.082168.i.i) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @free(ptr noundef %i.aq) #13
  br label %bb.bp

bb.bh:                                            ; preds = %bb.be
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bi:                                            ; preds = %bb.bg
  %i.el = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ej, ptr noundef nonnull dereferenceable(1) %.082168.i.i) #13 ; 0 uses
  call void @free(ptr noundef nonnull %.082168.i.i) #13
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bf
  %.289.i.i = phi i64 [ %i.ei, %bb.bi ], [ %.087167.i.i, %bb.bf ]
  %.284.i.i = phi ptr [ %i.ej, %bb.bi ], [ %.082168.i.i, %bb.bf ] ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.284.i.i, i64 %i.ea ; 2 uses
  store i8 32, ptr %i.em, align 1, !tbaa !8
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  %i.eo = load ptr, ptr %4, align 8, !tbaa !55
  %i.ep = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.en, ptr noundef nonnull dereferenceable(1) %i.eo) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  %i.eq = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %.284.i.i, i32 noundef 60) #12 ; 2 uses
  %.not106.i.i = icmp eq ptr %i.eq, null
  br i1 %.not106.i.i, label %bb.aw, label %.thread152.i.i

bb.bk:                                            ; preds = %bb.bh, %bb.bd
  %.pn107.i.i = phi { ptr, i32 } [ %i.ek, %bb.bh ], [ %i.dz, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br label %bb.bq

bb.bl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br label %bb.bm
end_hunk_0
