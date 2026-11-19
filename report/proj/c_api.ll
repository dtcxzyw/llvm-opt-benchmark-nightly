Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/c_api?download=true
inline.NumInlined: 4392
inline.NumDeleted: 1779
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@proj_get_codes_from_database:bb.a
  %.pn27.pn = phi { ptr, i32 } [ %.pn27, %bb.au ], [ %.pn.pn, %bb.an ] ; 3 uses
  %.3 = extractvalue { ptr, i32 } %.pn27.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.br = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #33
  %i.bs = icmp eq i32 %.3, %i.br
  br i1 %i.bs, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  %.318 = extractvalue { ptr, i32 } %.pn27.pn, 0
  %i.bt = call ptr @__cxa_begin_catch(ptr %.318) #33 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !106
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = call noundef ptr %i.bw(ptr noundef nonnull align 8 dereferenceable(8) %i.bt) #33
  invoke fastcc void @_ZL14proj_log_errorP6pj_ctxPKcS2_(ptr noundef nonnull %.022, ptr noundef nonnull @__FUNCTION__.proj_get_codes_from_database, ptr noundef %i.bx)
          to label %bb.bd unwind label %bb.be

bb.bd:                                            ; preds = %bb.bc
  call void @__cxa_end_catch()
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bg unwind label %bb.bh

bb.bf:                                            ; preds = %bb.bd, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io16AuthorityFactoryEEED2Ev.exit, %bb.d
  %.121 = phi ptr [ %.020, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io16AuthorityFactoryEEED2Ev.exit ], [ null, %bb.bd ], [ null, %bb.d ]
  ret ptr %.121

bb.bg:                                            ; preds = %bb.be, %bb.bb
  %.merged = phi { ptr, i32 } [ %.pn27.pn, %bb.bb ], [ %i.by, %bb.be ]
  resume { ptr, i32 } %.merged

bb.bh:                                            ; preds = %bb.be
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #39
  unreachable
}

declare void @_ZNK5osgeo4proj2io16AuthorityFactory17getAuthorityCodesB5cxx11ERKNS2_10ObjectTypeEb(ptr dead_on_unwind writable sret(%"class.std::set") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef ptr @proj_get_celestial_body_list_from_database(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.dropbox::oxygen::nn.191", align 8 ; 7 uses
  %4 = alloca %"class.dropbox::oxygen::nn", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::list.487", align 8 ; 12 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_Z18pj_get_default_ctxv()
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.047 = phi ptr [ %i.c, %bb.b ], [ %0, %bb.a ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  invoke fastcc void @_ZL12getDBcontextP6pj_ctx(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef %.047)
          to label %bb.d unwind label %bb.p

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %.not = icmp eq ptr %1, null
  %i.d = select i1 %.not, ptr @.str.13, ptr %1    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.e, ptr %5, align 8, !tbaa !118
  %i.f = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #33 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 %i.f, ptr %i.a, align 8, !tbaa !119
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.d
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.q     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.h, ptr %5, align 8, !tbaa !91
  %i.i = load i64, ptr %i.a, align 8, !tbaa !119
  store i64 %i.i, ptr %i.e, align 8, !tbaa !92
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.d
  %i.j = phi ptr [ %i.h, %.noexc ], [ %i.e, %bb.d ] ; 2 uses
  switch i64 %i.f, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !92
  store i8 %i.k, ptr %i.j, align 1, !tbaa !92
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !119  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !120
  %i.n = load ptr, ptr %5, align 8, !tbaa !91
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  invoke void @_ZN5osgeo4proj2io16AuthorityFactory6createERKN7dropbox6oxygen2nnISt10shared_ptrINS1_15DatabaseContextEEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.191") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.h unwind label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.p = load ptr, ptr %5, align 8, !tbaa !91     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.e
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.r = load i64, ptr %i.e, align 8, !tbaa !92
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !101  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.v, align 8, !tbaa !103
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !104
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !106
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #33, !inline_history !7
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !106
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #33, !inline_history !7
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !92
  %.not.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !107
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i = phi i32 [ %i.y, %bb.l ], [ %i.ai, %bb.m ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.n, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit, !prof !108

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #33
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.ak = load ptr, ptr %3, align 8, !tbaa !231
  invoke void @_ZNK5osgeo4proj2io16AuthorityFactory20getCelestialBodyListB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::list.487") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.ak)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !534
  %i.an = add i64 %i.am, 1                        ; 2 uses
  %i.ao = icmp ugt i64 %i.an, 2305843009213693951
  %i.ap = shl i64 %i.an, 3
  %i.aq = select i1 %i.ao, i64 -1, i64 %i.ap
  %i.ar = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aq) #36
          to label %.preheader unwind label %bb.u ; 4 uses

.preheader:                                       ; preds = %bb.o
  %.sroa.067.073 = load ptr, ptr %6, align 8, !tbaa !219 ; 2 uses
  %.not7174 = icmp eq ptr %.sroa.067.073, %6
  br i1 %.not7174, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.x
  %7 = trunc nuw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.039.lcssa = phi i32 [ 0, %.preheader ], [ %7, %._crit_edge.loopexit ] ; 2 uses
  %i.as = zext nneg i32 %.039.lcssa to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.as
  store ptr null, ptr %i.at, align 8, !tbaa !150
  %.not53 = icmp eq ptr %2, null
  br i1 %.not53, label %bb.aa, label %bb.z

bb.p:                                             ; preds = %bb.c
  %i.au = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.s

bb.q:                                             ; preds = %.noexc.i
  %i.av = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

bb.r:                                             ; preds = %bb.g
  %i.aw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.ax = load ptr, ptr %5, align 8, !tbaa !91    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.e
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.r
  %i.az = load i64, ptr %i.e, align 8, !tbaa !92
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60, %bb.q
  %.pn = phi { ptr, i32 } [ %i.av, %bb.q ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60 ], [ %i.aw, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ], [ %i.au, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.aj

bb.t:                                             ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.ai

bb.u:                                             ; preds = %bb.o
  %i.bc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.ah

.lr.ph:                                           ; preds = %.preheader, %bb.x
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.x ], [ 0, %.preheader ] ; 3 uses
  %.sroa.067.076 = phi ptr [ %.sroa.067.0, %bb.x ], [ %.sroa.067.073, %.preheader ] ; 3 uses
  %i.bd = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #36
          to label %bb.v unwind label %bb.y       ; 3 uses

bb.v:                                             ; preds = %.lr.ph
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.067.076, i64 16
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv
  store ptr %i.bd, ptr %i.bf, align 8, !tbaa !150
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !91
  %i.bh = invoke noundef ptr @_Z9pj_strdupPKc(ptr noundef %i.bg)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  store ptr %i.bh, ptr %i.bd, align 8, !tbaa !311
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.067.076, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !91
  %i.bk = invoke noundef ptr @_Z9pj_strdupPKc(ptr noundef %i.bj)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !312
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.sroa.067.0 = load ptr, ptr %.sroa.067.076, align 8, !tbaa !219 ; 2 uses
  %.not71 = icmp eq ptr %.sroa.067.0, %6
  br i1 %.not71, label %._crit_edge.loopexit, label %.lr.ph

bb.y:                                             ; preds = %bb.w, %bb.v, %.lr.ph
  %i.bm = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %8 = add nuw i64 %indvars.iv, 1
  %9 = and i64 %8, 4294967295
  br label %bb.ah

bb.z:                                             ; preds = %._crit_edge
  store i32 %.039.lcssa, ptr %2, align 4, !tbaa !107
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge
  %i.bn = load ptr, ptr %6, align 8, !tbaa !219   ; 2 uses
  %.not8.i.i = icmp eq ptr %i.bn, %6
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseIN5osgeo4proj2io16AuthorityFactory17CelestialBodyInfoESaIS5_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.aa, %_ZN5osgeo4proj2io16AuthorityFactory17CelestialBodyInfoD2Ev.exit.i.i
  %.09.i.i = phi ptr [ %i.bo, %_ZN5osgeo4proj2io16AuthorityFactory17CelestialBodyInfoD2Ev.exit.i.i ], [ %i.bn, %bb.aa ] ; 6 uses
  %i.bo = load ptr, ptr %.09.i.i, align 8, !tbaa !219 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 48
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !91 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 64 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !92
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.bw = load ptr, ptr %i.bp, align 8, !tbaa !91 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 32 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZN5osgeo4proj2io16AuthorityFactory17CelestialBodyInfoD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !92
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #34
  br label %_ZN5osgeo4proj2io16AuthorityFactory17CelestialBodyInfoD2Ev.exit.i.i

_ZN5osgeo4proj2io16AuthorityFactory17CelestialBodyInfoD2Ev.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 80) #34
  %.not.i.i = icmp eq ptr %i.bo, %6
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseIN5osgeo4proj2io16AuthorityFactory17CelestialBodyInfoESaIS5_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !35

_ZNSt7__cxx1110_List_baseIN5osgeo4proj2io16AuthorityFactory17CelestialBodyInfoESaIS5_EED2Ev.exit: ; preds = %_ZN5osgeo4proj2io16AuthorityFactory17CelestialBodyInfoD2Ev.exit.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !101 ; 8 uses
  %.not.i.i.i63 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i63, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io16AuthorityFactoryEEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1110_List_baseIN5osgeo4proj2io16AuthorityFactory17CelestialBodyInfoESaIS5_EED2Ev.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 4 uses
  %i.ce = load atomic i64, ptr %i.cd acquire, align 8 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 4294967297
  %i.cg = trunc i64 %i.ce to i32                  ; 2 uses
  br i1 %i.cf, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.cd, align 8, !tbaa !103
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store i32 0, ptr %i.ch, align 4, !tbaa !104
  %i.ci = load ptr, ptr %i.cc, align 8, !tbaa !106
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #33, !inline_history !13
  %i.cl = load ptr, ptr %i.cc, align 8, !tbaa !106
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #33, !inline_history !13
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io16AuthorityFactoryEEED2Ev.exit

bb.ad:                                            ; preds = %bb.ab
  %i.co = load i8, ptr @__libc_single_threaded, align 1, !tbaa !92
  %.not.i.i.i.i64 = icmp eq i8 %i.co, 0
  br i1 %.not.i.i.i.i64, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cp = add nsw i32 %i.cg, -1
  store i32 %i.cp, ptr %i.cd, align 8, !tbaa !107
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i65

bb.af:                                            ; preds = %bb.ad
  %i.cq = atomicrmw volatile add ptr %i.cd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i65

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i65: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i.i66 = phi i32 [ %i.cg, %bb.ae ], [ %i.cq, %bb.af ]
  %i.cr = icmp eq i32 %.0.i.i.i.i.i66, 1
  br i1 %i.cr, label %bb.ag, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io16AuthorityFactoryEEED2Ev.exit, !prof !108

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i65
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #33
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io16AuthorityFactoryEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io16AuthorityFactoryEEED2Ev.exit: ; preds = %_ZNSt7__cxx1110_List_baseIN5osgeo4proj2io16AuthorityFactory17CelestialBodyInfoESaIS5_EED2Ev.exit, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i65, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.ar

bb.ah:                                            ; preds = %bb.y, %bb.u
  %.043 = phi ptr [ %i.ar, %bb.y ], [ null, %bb.u ]
  %.140 = phi i64 [ %9, %bb.y ], [ 1, %bb.u ]
  %.pn54 = phi { ptr, i32 } [ %i.bm, %bb.y ], [ %i.bc, %bb.u ]
  call void @_ZNSt7__cxx1110_List_baseIN5osgeo4proj2io16AuthorityFactory17CelestialBodyInfoESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #33
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.t
  %.144 = phi ptr [ %.043, %bb.ah ], [ null, %bb.t ]
  %.241 = phi i64 [ %.140, %bb.ah ], [ 1, %bb.t ]
  %.pn54.pn = phi { ptr, i32 } [ %.pn54, %bb.ah ], [ %i.bb, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io16AuthorityFactoryEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #33
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.s
  %.245 = phi ptr [ %.144, %bb.ai ], [ null, %bb.s ] ; 3 uses
  %.342 = phi i64 [ %.241, %bb.ai ], [ 1, %bb.s ]
  %.pn54.pn.pn = phi { ptr, i32 } [ %.pn54.pn, %bb.ai ], [ %.pn.pn, %bb.s ] ; 3 uses
  %.4 = extractvalue { ptr, i32 } %.pn54.pn.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.cs = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #33
  %i.ct = icmp eq i32 %.4, %i.cs
  br i1 %i.ct, label %bb.ak, label %bb.as

bb.ak:                                            ; preds = %bb.aj
  %.437 = extractvalue { ptr, i32 } %.pn54.pn.pn, 0
  %i.cu = call ptr @__cxa_begin_catch(ptr %.437) #33 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !106
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = call noundef ptr %i.cx(ptr noundef nonnull align 8 dereferenceable(8) %i.cu) #33
  invoke fastcc void @_ZL14proj_log_errorP6pj_ctxPKcS2_(ptr noundef %.047, ptr noundef nonnull @__FUNCTION__.proj_get_celestial_body_list_from_database, ptr noundef %i.cy)
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  %.not58 = icmp eq ptr %.245, null
  br i1 %.not58, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.245, i64 %.342
  store ptr null, ptr %i.cz, align 8, !tbaa !150
  call void @proj_celestial_body_list_destroy(ptr noundef nonnull %.245)
  br label %bb.ao

bb.an:                                            ; preds = %bb.ak
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.as unwind label %bb.at

bb.ao:                                            ; preds = %bb.am, %bb.al
  %.not59 = icmp eq ptr %2, null
  br i1 %.not59, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %2, align 4, !tbaa !107
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  call void @__cxa_end_catch()
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io16AuthorityFactoryEEED2Ev.exit
  %.046 = phi ptr [ null, %bb.aq ], [ %i.ar, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io16AuthorityFactoryEEED2Ev.exit ]
  ret ptr %.046

bb.as:                                            ; preds = %bb.an, %bb.aj
  %.merged = phi { ptr, i32 } [ %.pn54.pn.pn, %bb.aj ], [ %i.da, %bb.an ]
  resume { ptr, i32 } %.merged

bb.at:                                            ; preds = %bb.an
  %i.db = landingpad { ptr, i32 }
          catch ptr null
  %i.dc = extractvalue { ptr, i32 } %i.db, 0
  call void @__clang_call_terminate(ptr %i.dc) #39
  unreachable
}

declare void @_ZNK5osgeo4proj2io16AuthorityFactory20getCelestialBodyListB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::list.487") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare noundef ptr @_Z9pj_strdupPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseIN5osgeo4proj2io16AuthorityFactory17CelestialBodyInfoESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !219    ; 2 uses
  %.not8.i = icmp eq ptr %i.a, %0
  br i1 %.not8.i, label %_ZNSt7__cxx1110_List_baseIN5osgeo4proj2io16AuthorityFactory17CelestialBodyInfoESaIS5_EE8_M_clearEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN5osgeo4proj2io16AuthorityFactory17CelestialBodyInfoD2Ev.exit.i
  %.09.i = phi ptr [ %i.b, %_ZN5osgeo4proj2io16AuthorityFactory17CelestialBodyInfoD2Ev.exit.i ], [ %i.a, %bb.a ] ; 6 uses
  %i.b = load ptr, ptr %.09.i, align 8, !tbaa !219 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.09.i, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %.09.i, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !91   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.09.i, i64 64 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !92
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !91   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.09.i, i64 32 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN5osgeo4proj2io16AuthorityFactory17CelestialBodyInfoD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !92
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #34
  br label %_ZN5osgeo4proj2io16AuthorityFactory17CelestialBodyInfoD2Ev.exit.i

_ZN5osgeo4proj2io16AuthorityFactory17CelestialBodyInfoD2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i, i64 noundef 80) #34
  %.not.i = icmp eq ptr %i.b, %0
  br i1 %.not.i, label %_ZNSt7__cxx1110_List_baseIN5osgeo4proj2io16AuthorityFactory17CelestialBodyInfoESaIS5_EE8_M_clearEv.exit, label %.lr.ph.i, !llvm.loop !35

_ZNSt7__cxx1110_List_baseIN5osgeo4proj2io16AuthorityFactory17CelestialBodyInfoESaIS5_EE8_M_clearEv.exit: ; preds = %_ZN5osgeo4proj2io16AuthorityFactory17CelestialBodyInfoD2Ev.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @proj_celestial_body_list_destroy(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !150    ; 2 uses
  %.not1314 = icmp eq ptr %i.a, null
  br i1 %.not1314, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %.preheader ] ; 2 uses
  %i.b = phi ptr [ %i.k, %bb.c ], [ %i.a, %.preheader ]
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !311
  tail call void @free(ptr noundef %i.d) #33
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !150
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !312
  tail call void @free(ptr noundef %i.g) #33
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !150  ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 16) #34
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !150  ; 2 uses
  %.not13 = icmp eq ptr %i.k, null
  br i1 %.not13, label %._crit_edge, label %.lr.ph, !llvm.loop !535

._crit_edge:                                      ; preds = %bb.c, %.preheader
  tail call void @_ZdaPv(ptr noundef nonnull %0) #34
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: mustprogress nounwind uwtable
define void @proj_string_list_destroy(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !122    ; 2 uses
  %.not89 = icmp eq ptr %i.a, null
  br i1 %.not89, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.b = phi ptr [ %i.e, %.lr.ph ], [ %i.a, %.preheader ]
  %.010 = phi i64 [ %i.c, %.lr.ph ], [ 0, %.preheader ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #34
  %i.c = add i64 %.010, 1                         ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !122  ; 2 uses
  %.not8 = icmp eq ptr %i.e, null
  br i1 %.not8, label %._crit_edge, label %.lr.ph, !llvm.loop !536

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  tail call void @_ZdaPv(ptr noundef nonnull %0) #34
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

end_hunk_0
begin_hunk_1_@proj_get_units_from_database:bb.a
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !92
  store i8 %i.k, ptr %i.j, align 1, !tbaa !92
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !119  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !120
  %i.n = load ptr, ptr %7, align 8, !tbaa !91
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  invoke void @_ZN5osgeo4proj2io16AuthorityFactory6createERKN7dropbox6oxygen2nnISt10shared_ptrINS1_15DatabaseContextEEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.191") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.h unwind label %bb.af

bb.h:                                             ; preds = %bb.g
  %i.p = load ptr, ptr %7, align 8, !tbaa !91     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.e
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.r = load i64, ptr %i.e, align 8, !tbaa !92
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !101  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.v, align 8, !tbaa !103
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !104
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !106
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #33, !inline_history !7
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !106
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #33, !inline_history !7
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !92
  %.not.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !107
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i = phi i32 [ %i.y, %bb.l ], [ %i.ai, %bb.m ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.n, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit, !prof !108

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #33
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.ak = load ptr, ptr %5, align 8, !tbaa !231
  invoke void @_ZNK5osgeo4proj2io16AuthorityFactory11getUnitListB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::list.505") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.ak)
          to label %bb.o unwind label %bb.ah

bb.o:                                             ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !569
  %i.an = add i64 %i.am, 1                        ; 2 uses
  %i.ao = icmp ugt i64 %i.an, 2305843009213693951
  %i.ap = shl i64 %i.an, 3
  %i.aq = select i1 %i.ao, i64 -1, i64 %i.ap
  %i.ar = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aq) #36
          to label %.preheader unwind label %bb.ai ; 6 uses

.preheader:                                       ; preds = %bb.o
  %.sroa.092.0100 = load ptr, ptr %8, align 8, !tbaa !219 ; 4 uses
  %.not97101 = icmp eq ptr %.sroa.092.0100, %8
  br i1 %.not97101, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.not77 = icmp eq ptr %2, null
  %.not78 = icmp eq i32 %3, 0                     ; 2 uses
  br i1 %.not77, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not78, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread96.us.us, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread96.us

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread96.us.us: ; preds = %.lr.ph.split.us, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.us.us
  %.sroa.092.0103.us.us = phi ptr [ %.sroa.092.0.us.us, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.us.us ], [ %.sroa.092.0100, %.lr.ph.split.us ] ; 9 uses
  %.060102.us.us = phi i32 [ %.161.us.us, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.us.us ], [ 0, %.lr.ph.split.us ] ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.092.0103.us.us, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.092.0103.us.us, i64 184 ; 2 uses
  %i.au = load i8, ptr %i.at, align 8, !tbaa !571, !range !153, !noundef !154
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.us.us, label %bb.p

bb.p:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread96.us.us
  %i.aw = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #36
          to label %bb.q unwind label %.split.us.split.us ; 8 uses

bb.q:                                             ; preds = %bb.p
  %i.ax = sext i32 %.060102.us.us to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.ax
  store ptr %i.aw, ptr %i.ay, align 8, !tbaa !150
  %i.az = load ptr, ptr %i.as, align 8, !tbaa !91
  %i.ba = invoke noundef ptr @_Z9pj_strdupPKc(ptr noundef %i.az)
          to label %bb.r unwind label %.split.us.split.us

bb.r:                                             ; preds = %bb.q
  store ptr %i.ba, ptr %i.aw, align 8, !tbaa !324
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.092.0103.us.us, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !91
  %i.bd = invoke noundef ptr @_Z9pj_strdupPKc(ptr noundef %i.bc)
          to label %bb.s unwind label %.split.us.split.us

bb.s:                                             ; preds = %bb.r
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !325
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.092.0103.us.us, i64 80
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !91
  %i.bh = invoke noundef ptr @_Z9pj_strdupPKc(ptr noundef %i.bg)
          to label %bb.t unwind label %.split.us.split.us

bb.t:                                             ; preds = %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !326
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.092.0103.us.us, i64 112
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !91
  %i.bl = invoke noundef ptr @_Z9pj_strdupPKc(ptr noundef %i.bk)
          to label %bb.u unwind label %.split.us.split.us

bb.u:                                             ; preds = %bb.t
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !327
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.092.0103.us.us, i64 144
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !572
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store double %i.bo, ptr %i.bp, align 8, !tbaa !573
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.092.0103.us.us, i64 160
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !120
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.092.0103.us.us, i64 152
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !91
  %i.bv = invoke noundef ptr @_Z9pj_strdupPKc(ptr noundef %i.bu)
          to label %bb.w unwind label %.split.us.split.us

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bw = phi ptr [ null, %bb.u ], [ %i.bv, %bb.v ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !328
  %i.by = load i8, ptr %i.at, align 8, !tbaa !571, !range !153, !noundef !154
  %i.bz = zext nneg i8 %i.by to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  store i32 %i.bz, ptr %i.ca, align 8, !tbaa !574
  %i.cb = add nsw i32 %.060102.us.us, 1
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.us.us

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.us.us: ; preds = %bb.w, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread96.us.us
  %.161.us.us = phi i32 [ %.060102.us.us, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread96.us.us ], [ %i.cb, %bb.w ] ; 2 uses
  %.sroa.092.0.us.us = load ptr, ptr %.sroa.092.0103.us.us, align 8, !tbaa !219 ; 2 uses
  %.not97.us.us = icmp eq ptr %.sroa.092.0.us.us, %8
  br i1 %.not97.us.us, label %._crit_edge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread96.us.us

.split.us.split.us:                               ; preds = %bb.v, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p
  %i.cc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.split.us

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread96.us: ; preds = %.lr.ph.split.us, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.us ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %.sroa.092.0103.us = phi ptr [ %.sroa.092.0.us, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.us ], [ %.sroa.092.0100, %.lr.ph.split.us ] ; 9 uses
  %i.cd = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #36
          to label %bb.x unwind label %.split.us.split ; 8 uses

bb.x:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread96.us
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.092.0103.us, i64 16
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv
  store ptr %i.cd, ptr %i.cf, align 8, !tbaa !150
  %i.cg = load ptr, ptr %i.ce, align 8, !tbaa !91
  %i.ch = invoke noundef ptr @_Z9pj_strdupPKc(ptr noundef %i.cg)
          to label %bb.y unwind label %.split.us.split

bb.y:                                             ; preds = %bb.x
  store ptr %i.ch, ptr %i.cd, align 8, !tbaa !324
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.092.0103.us, i64 48
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !91
  %i.ck = invoke noundef ptr @_Z9pj_strdupPKc(ptr noundef %i.cj)
          to label %bb.z unwind label %.split.us.split

bb.z:                                             ; preds = %bb.y
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !325
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.092.0103.us, i64 80
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !91
  %i.co = invoke noundef ptr @_Z9pj_strdupPKc(ptr noundef %i.cn)
          to label %bb.aa unwind label %.split.us.split

bb.aa:                                            ; preds = %bb.z
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !326
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.092.0103.us, i64 112
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !91
  %i.cs = invoke noundef ptr @_Z9pj_strdupPKc(ptr noundef %i.cr)
          to label %bb.ab unwind label %.split.us.split

bb.ab:                                            ; preds = %bb.aa
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !327
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.092.0103.us, i64 144
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !572
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  store double %i.cv, ptr %i.cw, align 8, !tbaa !573
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.092.0103.us, i64 160
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !120
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.us, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.092.0103.us, i64 152
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !91
  %i.dc = invoke noundef ptr @_Z9pj_strdupPKc(ptr noundef %i.db)
          to label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.us unwind label %.split.us.split

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.us: ; preds = %bb.ac, %bb.ab
  %i.dd = phi ptr [ null, %bb.ab ], [ %i.dc, %bb.ac ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !328
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.092.0103.us, i64 184
  %i.dg = load i8, ptr %i.df, align 8, !tbaa !571, !range !153, !noundef !154
  %i.dh = zext nneg i8 %i.dg to i32
  %i.di = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  store i32 %i.dh, ptr %i.di, align 8, !tbaa !574
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.sroa.092.0.us = load ptr, ptr %.sroa.092.0103.us, align 8, !tbaa !219 ; 2 uses
  %.not97.us = icmp eq ptr %.sroa.092.0.us, %8
  br i1 %.not97.us, label %._crit_edge.loopexit109, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread96.us

.split.us.split:                                  ; preds = %bb.ac, %bb.aa, %bb.z, %bb.y, %bb.x, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread96.us
  %i.dj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %9 = trunc nuw nsw i64 %indvars.iv to i32
  br label %.split.us

._crit_edge.loopexit109:                          ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.us
  %10 = trunc nuw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.us.us, %._crit_edge.loopexit109, %.preheader
  %.060.lcssa = phi i32 [ 0, %.preheader ], [ %.161.us.us, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.us.us ], [ %10, %._crit_edge.loopexit109 ], [ %.161, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 2 uses
  %i.dk = sext i32 %.060.lcssa to i64
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.dk
  store ptr null, ptr %i.dl, align 8, !tbaa !150
  %.not76 = icmp eq ptr %4, null
  br i1 %.not76, label %bb.au, label %bb.at

bb.ad:                                            ; preds = %bb.c
  %i.dm = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.ag

bb.ae:                                            ; preds = %.noexc.i
  %i.dn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

bb.af:                                            ; preds = %bb.g
  %i.do = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.dp = load ptr, ptr %7, align 8, !tbaa !91    ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.e
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.af
  %i.dr = load i64, ptr %i.e, align 8, !tbaa !92
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85, %bb.ae
  %.pn = phi { ptr, i32 } [ %i.dn, %bb.ae ], [ %i.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %i.do, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #33
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %bb.ad
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ], [ %i.dm, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %bb.bd

bb.ah:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit
  %i.dt = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.bc

bb.ai:                                            ; preds = %bb.o
  %i.du = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.bb

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.sroa.092.0103 = phi ptr [ %.sroa.092.0, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %.sroa.092.0100, %.lr.ph ] ; 11 uses
  %.060102 = phi i32 [ %.161, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ 0, %.lr.ph ] ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.092.0103, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.092.0103, i64 112 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.092.0103, i64 120
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !120 ; 3 uses
  %i.dz = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #33
  %i.ea = icmp eq i64 %i.dy, %i.dz
  br i1 %i.ea, label %bb.aj, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.aj:                                            ; preds = %.lr.ph.split
  %i.eb = icmp eq i64 %i.dy, 0
  br i1 %i.eb, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread96, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.aj
  %i.ec = load ptr, ptr %i.dw, align 8, !tbaa !91
  %bcmp.i.i = call i32 @bcmp(ptr %i.ec, ptr nonnull %2, i64 %i.dy)
  %.not98 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not98, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread96, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

.split:                                           ; preds = %bb.ar, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al
  %i.ed = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.split.us

.split.us:                                        ; preds = %.split.us.split, %.split.us.split.us, %.split
  %.us-phi = phi i32 [ %.060102, %.split ], [ %9, %.split.us.split ], [ %.060102.us.us, %.split.us.split.us ]
  %.us-phi104 = phi { ptr, i32 } [ %i.ed, %.split ], [ %i.dj, %.split.us.split ], [ %i.cc, %.split.us.split.us ]
  %i.ee = add nsw i32 %.us-phi, 1
  %i.ef = sext i32 %i.ee to i64
  br label %bb.bb

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread96: ; preds = %bb.aj, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  br i1 %.not78, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread96
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.092.0103, i64 184
  %i.eh = load i8, ptr %i.eg, align 8, !tbaa !571, !range !153, !noundef !154
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread96
  %i.ej = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #36
          to label %bb.am unwind label %.split    ; 8 uses

bb.am:                                            ; preds = %bb.al
  %i.ek = sext i32 %.060102 to i64
  %i.el = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.ek
  store ptr %i.ej, ptr %i.el, align 8, !tbaa !150
  %i.em = load ptr, ptr %i.dv, align 8, !tbaa !91
  %i.en = invoke noundef ptr @_Z9pj_strdupPKc(ptr noundef %i.em)
          to label %bb.an unwind label %.split

bb.an:                                            ; preds = %bb.am
  store ptr %i.en, ptr %i.ej, align 8, !tbaa !324
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.092.0103, i64 48
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !91
  %i.eq = invoke noundef ptr @_Z9pj_strdupPKc(ptr noundef %i.ep)
          to label %bb.ao unwind label %.split

bb.ao:                                            ; preds = %bb.an
  %i.er = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store ptr %i.eq, ptr %i.er, align 8, !tbaa !325
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.092.0103, i64 80
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !91
  %i.eu = invoke noundef ptr @_Z9pj_strdupPKc(ptr noundef %i.et)
          to label %bb.ap unwind label %.split

bb.ap:                                            ; preds = %bb.ao
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !326
  %i.ew = load ptr, ptr %i.dw, align 8, !tbaa !91
  %i.ex = invoke noundef ptr @_Z9pj_strdupPKc(ptr noundef %i.ew)
          to label %bb.aq unwind label %.split

bb.aq:                                            ; preds = %bb.ap
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !327
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.092.0103, i64 144
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !572
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  store double %i.fa, ptr %i.fb, align 8, !tbaa !573
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.092.0103, i64 160
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !120
  %i.fe = icmp eq i64 %i.fd, 0
  br i1 %i.fe, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.092.0103, i64 152
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !91
  %i.fh = invoke noundef ptr @_Z9pj_strdupPKc(ptr noundef %i.fg)
          to label %bb.as unwind label %.split

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.fi = phi ptr [ null, %bb.aq ], [ %i.fh, %bb.ar ]
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ej, i64 40
  store ptr %i.fi, ptr %i.fj, align 8, !tbaa !328
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.092.0103, i64 184
  %i.fl = load i8, ptr %i.fk, align 8, !tbaa !571, !range !153, !noundef !154
  %i.fm = zext nneg i8 %i.fl to i32
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ej, i64 48
  store i32 %i.fm, ptr %i.fn, align 8, !tbaa !574
  %i.fo = add nsw i32 %.060102, 1
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %.lr.ph.split, %bb.ak, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.as
  %.161 = phi i32 [ %.060102, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %i.fo, %bb.as ], [ %.060102, %bb.ak ], [ %.060102, %.lr.ph.split ] ; 2 uses
  %.sroa.092.0 = load ptr, ptr %.sroa.092.0103, align 8, !tbaa !219 ; 2 uses
  %.not97 = icmp eq ptr %.sroa.092.0, %8
  br i1 %.not97, label %._crit_edge, label %.lr.ph.split

bb.at:                                            ; preds = %._crit_edge
  store i32 %.060.lcssa, ptr %4, align 4, !tbaa !107
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %._crit_edge
  call void @_ZNSt7__cxx1110_List_baseIN5osgeo4proj2io16AuthorityFactory8UnitInfoESaIS5_EE8_M_clearEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  %i.fp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !101 ; 8 uses
  %.not.i.i.i88 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i88, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io16AuthorityFactoryEEED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 4 uses
  %i.fs = load atomic i64, ptr %i.fr acquire, align 8 ; 2 uses
  %i.ft = icmp eq i64 %i.fs, 4294967297
  %i.fu = trunc i64 %i.fs to i32                  ; 2 uses
  br i1 %i.ft, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 0, ptr %i.fr, align 8, !tbaa !103
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 12
  store i32 0, ptr %i.fv, align 4, !tbaa !104
  %i.fw = load ptr, ptr %i.fq, align 8, !tbaa !106
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8
  call void %i.fy(ptr noundef nonnull align 8 dereferenceable(16) %i.fq) #33, !inline_history !13
  %i.fz = load ptr, ptr %i.fq, align 8, !tbaa !106
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  %i.gb = load ptr, ptr %i.ga, align 8
  call void %i.gb(ptr noundef nonnull align 8 dereferenceable(16) %i.fq) #33, !inline_history !13
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io16AuthorityFactoryEEED2Ev.exit

bb.ax:                                            ; preds = %bb.av
  %i.gc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !92
  %.not.i.i.i.i89 = icmp eq i8 %i.gc, 0
  br i1 %.not.i.i.i.i89, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gd = add nsw i32 %i.fu, -1
  store i32 %i.gd, ptr %i.fr, align 8, !tbaa !107
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i90

bb.az:                                            ; preds = %bb.ax
  %i.ge = atomicrmw volatile add ptr %i.fr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i90

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i90: ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i.i91 = phi i32 [ %i.fu, %bb.ay ], [ %i.ge, %bb.az ]
  %i.gf = icmp eq i32 %.0.i.i.i.i.i91, 1
  br i1 %i.gf, label %bb.ba, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io16AuthorityFactoryEEED2Ev.exit, !prof !108

bb.ba:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i90
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fq) #33
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io16AuthorityFactoryEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io16AuthorityFactoryEEED2Ev.exit: ; preds = %bb.au, %bb.aw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i90, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %bb.bl

bb.bb:                                            ; preds = %.split.us, %bb.ai
  %.065 = phi ptr [ %i.ar, %.split.us ], [ null, %bb.ai ]
  %.262 = phi i64 [ %i.ef, %.split.us ], [ 1, %bb.ai ]
  %.pn79 = phi { ptr, i32 } [ %.us-phi104, %.split.us ], [ %i.du, %bb.ai ]
  call void @_ZNSt7__cxx1110_List_baseIN5osgeo4proj2io16AuthorityFactory8UnitInfoESaIS5_EE8_M_clearEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #33
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ah
  %.166 = phi ptr [ %.065, %bb.bb ], [ null, %bb.ah ]
  %.363 = phi i64 [ %.262, %bb.bb ], [ 1, %bb.ah ]
  %.pn79.pn = phi { ptr, i32 } [ %.pn79, %bb.bb ], [ %i.dt, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io16AuthorityFactoryEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #33
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.ag
  %.267 = phi ptr [ %.166, %bb.bc ], [ null, %bb.ag ] ; 3 uses
  %.464 = phi i64 [ %.363, %bb.bc ], [ 1, %bb.ag ]
  %.pn79.pn.pn = phi { ptr, i32 } [ %.pn79.pn, %bb.bc ], [ %.pn.pn, %bb.ag ] ; 3 uses
  %.4 = extractvalue { ptr, i32 } %.pn79.pn.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %i.gg = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #33
  %i.gh = icmp eq i32 %.4, %i.gg
  br i1 %i.gh, label %bb.be, label %bb.bm

bb.be:                                            ; preds = %bb.bd
  %.458 = extractvalue { ptr, i32 } %.pn79.pn.pn, 0
  %i.gi = call ptr @__cxa_begin_catch(ptr %.458) #33 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !106
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = call noundef ptr %i.gl(ptr noundef nonnull align 8 dereferenceable(8) %i.gi) #33
  invoke fastcc void @_ZL14proj_log_errorP6pj_ctxPKcS2_(ptr noundef %.069, ptr noundef nonnull @__FUNCTION__.proj_get_units_from_database, ptr noundef %i.gm)
          to label %bb.bf unwind label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %.not83 = icmp eq ptr %.267, null
  br i1 %.not83, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gn = getelementptr inbounds [8 x i8], ptr %.267, i64 %.464
  store ptr null, ptr %i.gn, align 8, !tbaa !150
  call void @proj_unit_list_destroy(ptr noundef nonnull %.267)
  br label %bb.bi

bb.bh:                                            ; preds = %bb.be
  %i.go = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bm unwind label %bb.bn

bb.bi:                                            ; preds = %bb.bg, %bb.bf
  %.not84 = icmp eq ptr %4, null
  br i1 %.not84, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
end_hunk_1
