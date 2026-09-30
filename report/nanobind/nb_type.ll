Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/nb_type?download=true
inline.NumInlined: 874
inline.NumDeleted: 423
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN8nanobind6detail11nb_type_putEPNS0_12nb_internalsEPKSt9type_infoS5_PvNS_9rv_policyEPNS0_12cleanup_listEPb:bb.a

bb.ab:                                            ; preds = %.loopexit146
  %.not.i55 = icmp eq ptr %5, null
  br i1 %.not.i55, label %"_ZZN8nanobind6detail11nb_type_putEPNS0_12nb_internalsEPKSt9type_infoS5_PvNS_9rv_policyEPNS0_12cleanup_listEPbENK3$_0clEv.exit54", label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  %.not58.i = icmp eq ptr %i.by, null
  br i1 %.not58.i, label %"_ZZN8nanobind6detail11nb_type_putEPNS0_12nb_internalsEPKSt9type_infoS5_PvNS_9rv_policyEPNS0_12cleanup_listEPbENK3$_0clEv.exit54", label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.loopexit146
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 4 ; 4 uses
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = and i32 %i.ca, 256
  %.not59.i = icmp eq i32 %i.cb, 0                ; 2 uses
  br i1 %.not59.i, label %bb.ae, label %.thread85.i

bb.ae:                                            ; preds = %bb.ad
  %.off.i = add i8 %4, -3
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %.thread81.i, label %.thread85.i

.thread81.i:                                      ; preds = %bb.ae
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = invoke noundef ptr @_ZN8nanobind6detail12inst_new_intEP11_typeobjectP7_objectS4_(ptr noundef %i.cd, ptr poison, ptr poison)
          to label %bb.af unwind label %bb.bf

.thread85.i:                                      ; preds = %bb.ae, %bb.ad
  %.sroa.0.07987.i = phi i8 [ %4, %bb.ae ], [ 2, %bb.ad ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = invoke noundef ptr @_ZN8nanobind6detail12inst_new_extEP11_typeobjectPv(ptr noundef %i.cg, ptr noundef nonnull %3)
          to label %bb.af unwind label %bb.bf

bb.af:                                            ; preds = %.thread85.i, %.thread81.i
  %i.ci = phi i1 [ true, %.thread81.i ], [ false, %.thread85.i ] ; 2 uses
  %.sroa.0.08083.i = phi i8 [ %4, %.thread81.i ], [ %.sroa.0.07987.i, %.thread85.i ] ; 2 uses
  %.055.i = phi ptr [ %i.ce, %.thread81.i ], [ %i.ch, %.thread85.i ] ; 13 uses
  %.not60.i = icmp eq ptr %.055.i, null
  br i1 %.not60.i, label %"_ZZN8nanobind6detail11nb_type_putEPNS0_12nb_internalsEPKSt9type_infoS5_PvNS_9rv_policyEPNS0_12cleanup_listEPbENK3$_0clEv.exit54", label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cj = ptrtoint ptr %.055.i to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %.055.i, i64 16
  %i.cl = load i32, ptr %i.ck, align 8
  %i.cm = sext i32 %i.cl to i64
  %i.cn = add nsw i64 %i.cm, %i.cj
  %i.co = inttoptr i64 %i.cn to ptr               ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.055.i, i64 20 ; 5 uses
  %i.cq = load i8, ptr %i.cp, align 4
  %i.cr = and i8 %i.cq, 4
  %.not.i69.i = icmp eq i8 %i.cr, 0
  br i1 %.not.i69.i, label %bb.ah, label %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit.i

bb.ah:                                            ; preds = %bb.ag
  %i.cs = load ptr, ptr %i.co, align 8
  br label %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit.i

_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit.i: ; preds = %bb.ah, %bb.ag
  %i.ct = phi ptr [ %i.cs, %bb.ah ], [ %i.co, %bb.ag ] ; 5 uses
  switch i8 %.sroa.0.08083.i, label %.thread88.i [
    i8 4, label %bb.ai
    i8 3, label %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit..thread91_crit_edge.i
  ]

_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit..thread91_crit_edge.i: ; preds = %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit.i
  %.pre.i = load i32, ptr %i.bz, align 4
  br label %.thread91.i

bb.ai:                                            ; preds = %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit.i
  %i.cu = load i32, ptr %i.bz, align 4            ; 4 uses
  %i.cv = and i32 %i.cu, 4
  %.not61.i = icmp eq i32 %i.cv, 0
  br i1 %.not61.i, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cw = and i32 %i.cu, 32
  %.not63.i = icmp eq i32 %i.cw, 0
  br i1 %.not63.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bv, i64 80
  %i.cy = load ptr, ptr %i.cx, align 8
  tail call void %i.cy(ptr noundef %i.ct, ptr noundef nonnull %3) #30, !inline_history !65
  br label %.thread88.i

bb.al:                                            ; preds = %bb.aj
  %i.cz = load i32, ptr %i.bv, align 8
  %i.da = zext i32 %i.cz to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ct, ptr nonnull align 1 %3, i64 %i.da, i1 false)
  %i.db = load i32, ptr %i.bv, align 8
  %i.dc = zext i32 %i.db to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %3, i8 0, i64 %i.dc, i1 false)
  br label %.thread88.i

bb.am:                                            ; preds = %bb.ai
  %i.dd = and i32 %i.cu, 2
  %.not62.i = icmp eq i32 %i.dd, 0
  br i1 %.not62.i, label %bb.an, label %.thread91.i, !prof !8

bb.an:                                            ; preds = %bb.am
  tail call void @_ZN8nanobind6detail16fail_unspecifiedEv() #31
  unreachable

.thread91.i:                                      ; preds = %bb.am, %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit..thread91_crit_edge.i
  %i.de = phi i32 [ %.pre.i, %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit..thread91_crit_edge.i ], [ %i.cu, %bb.am ] ; 2 uses
  %i.df = and i32 %i.de, 2
  %.not64.i = icmp eq i32 %i.df, 0
  br i1 %.not64.i, label %bb.ao, label %bb.ap, !prof !8

bb.ao:                                            ; preds = %.thread91.i
  tail call void @_ZN8nanobind6detail16fail_unspecifiedEv() #31
  unreachable

bb.ap:                                            ; preds = %.thread91.i
  %i.dg = and i32 %i.de, 16
  %.not65.i = icmp eq i32 %i.dg, 0
  br i1 %.not65.i, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bv, i64 72
  %i.di = load ptr, ptr %i.dh, align 8
  invoke void %i.di(ptr noundef %i.ct, ptr noundef nonnull %3)
          to label %.thread88.i unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  %i.dl = tail call ptr @__cxa_begin_catch(ptr %i.dk) #30 ; 0 uses
  %i.dm = load i64, ptr %.055.i, align 8          ; 2 uses
  %i.dn = and i64 %i.dm, 2147483648
  %.not105.i = icmp eq i64 %i.dn, 0
  br i1 %.not105.i, label %bb.as, label %_ZL9Py_DECREFP7_object.exit.i

bb.as:                                            ; preds = %bb.ar
  %i.do = add nsw i64 %i.dm, -1                   ; 2 uses
  store i64 %i.do, ptr %.055.i, align 8
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %bb.at, label %_ZL9Py_DECREFP7_object.exit.i

bb.at:                                            ; preds = %bb.as
  invoke void @_Py_Dealloc(ptr noundef nonnull %.055.i)
          to label %_ZL9Py_DECREFP7_object.exit.i unwind label %bb.bf

_ZL9Py_DECREFP7_object.exit.i:                    ; preds = %bb.at, %bb.as, %bb.ar
  invoke void @__cxa_end_catch()
          to label %"_ZZN8nanobind6detail11nb_type_putEPNS0_12nb_internalsEPKSt9type_infoS5_PvNS_9rv_policyEPNS0_12cleanup_listEPbENK3$_0clEv.exit54" unwind label %bb.bf

bb.au:                                            ; preds = %bb.ap
  %i.dq = load i32, ptr %i.bv, align 8
  %i.dr = zext i32 %i.dq to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ct, ptr nonnull align 1 %3, i64 %i.dr, i1 false)
  br label %.thread88.i

.thread88.i:                                      ; preds = %bb.au, %bb.aq, %bb.al, %bb.ak, %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit.i
  %.sroa.0.190.i = phi i8 [ %.sroa.0.08083.i, %_ZN8nanobind6detail8inst_ptrEPNS0_7nb_instE.exit.i ], [ 3, %bb.au ], [ 3, %bb.aq ], [ 4, %bb.al ], [ 4, %bb.ak ]
  %.sroa.0.190.fr.i = freeze i8 %.sroa.0.190.i    ; 3 uses
  %i.ds = load i32, ptr %i.bz, align 4
  %i.dt = and i32 %i.ds, 512
  %i.du = icmp eq i32 %i.dt, 0
  %or.cond.i = or i1 %i.ci, %i.du
  br i1 %or.cond.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.thread88.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bv, i64 112
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = tail call noundef zeroext i1 %i.dw(ptr noundef nonnull %.055.i) #30, !inline_history !65
  br i1 %i.dx, label %..thread103_crit_edge.i, label %bb.aw

..thread103_crit_edge.i:                          ; preds = %bb.av
  %.pre106.i = load i8, ptr %i.cp, align 4
  br label %.thread103.i

bb.aw:                                            ; preds = %bb.av, %.thread88.i
  %.not66.i = icmp eq ptr %6, null
  br i1 %.not66.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store i8 1, ptr %6, align 1
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.not67.i = icmp eq i8 %.sroa.0.190.fr.i, 5
  %.pre107.i = load i8, ptr %i.cp, align 4        ; 2 uses
  br i1 %.not67.i, label %.thread103.i, label %bb.az

.thread103.i:                                     ; preds = %bb.ay, %..thread103_crit_edge.i
  %i.dy = phi i8 [ %.pre106.i, %..thread103_crit_edge.i ], [ %.pre107.i, %bb.ay ]
  %i.dz = and i8 %i.dy, -52
  %i.ea = or disjoint i8 %i.dz, 2
  store i8 %i.ea, ptr %i.cp, align 4
  br label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %.not68.i = icmp eq i8 %.sroa.0.190.fr.i, 6     ; 2 uses
  %i.eb = and i8 %.pre107.i, -52
  %i.ec = icmp eq i8 %.sroa.0.190.fr.i, 2
  %spec.select.i = select i1 %.not68.i, i8 2, i8 18
  %i.ed = select i1 %i.ec, i8 50, i8 %spec.select.i
  %i.ee = or disjoint i8 %i.eb, %i.ed
  store i8 %i.ee, ptr %i.cp, align 4
  br i1 %.not68.i, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8
  invoke void @_ZN8nanobind6detail13keep_alive_pyEPNS0_12nb_internalsEP7_objectS4_(ptr noundef %i.eg, ptr noundef nonnull %.055.i, ptr noundef %i.ei)
          to label %bb.bb unwind label %bb.bf

bb.bb:                                            ; preds = %bb.ba, %bb.az, %.thread103.i
  br i1 %.not59.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bv, i64 104
  %i.ek = load ptr, ptr %i.ej, align 8
  tail call void %i.ek(ptr noundef %i.ct, ptr noundef nonnull %.055.i) #30, !inline_history !65
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  br i1 %i.ci, label %"_ZZN8nanobind6detail11nb_type_putEPNS0_12nb_internalsEPKSt9type_infoS5_PvNS_9rv_policyEPNS0_12cleanup_listEPbENK3$_0clEv.exit54", label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.el = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.em = load ptr, ptr %i.el, align 8
  tail call fastcc void @_ZN8nanobind6detailL13inst_registerEPNS0_12nb_internalsEP7_objectPv(ptr noundef %i.em, ptr noundef %.055.i, ptr noundef nonnull %3) #30
  br label %"_ZZN8nanobind6detail11nb_type_putEPNS0_12nb_internalsEPKSt9type_infoS5_PvNS_9rv_policyEPNS0_12cleanup_listEPbENK3$_0clEv.exit54"

bb.bf:                                            ; preds = %bb.ba, %_ZL9Py_DECREFP7_object.exit.i, %bb.at, %.thread85.i, %.thread81.i
  %i.en = landingpad { ptr, i32 }
          catch ptr null
  %i.eo = extractvalue { ptr, i32 } %i.en, 0
  tail call void @__clang_call_terminate(ptr %i.eo) #31
  unreachable

"_ZZN8nanobind6detail11nb_type_putEPNS0_12nb_internalsEPKSt9type_infoS5_PvNS_9rv_policyEPNS0_12cleanup_listEPbENK3$_0clEv.exit54": ; preds = %.noexc, %.noexc.us, %bb.w, %.split159.us, %bb.n, %.split155.us, %bb.x, %.noexc52, %bb.ab, %bb.ac, %bb.af, %_ZL9Py_DECREFP7_object.exit.i, %bb.bd, %bb.be, %bb.a
  %.5 = phi ptr [ @_Py_NoneStruct, %bb.a ], [ null, %.noexc52 ], [ %.055.i, %bb.bd ], [ null, %bb.ab ], [ null, %bb.ac ], [ null, %bb.af ], [ null, %_ZL9Py_DECREFP7_object.exit.i ], [ %.055.i, %bb.be ], [ %.us-phi, %bb.n ], [ %.us-phi160, %bb.w ], [ null, %bb.x ], [ %.us-phi, %.split155.us ], [ %.us-phi160, %.split159.us ], [ null, %.noexc.us ], [ null, %.noexc ]
  ret ptr %.5

.loopexit.split:                                  ; preds = %bb.q, %bb.t, %bb.o, %bb.p
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %bb.y, %bb.aa
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.split, %.loopexit.split.us, %.loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit.split ], [ %lpad.loopexit.us, %.loopexit.split.us ]
  %i.ep = extractvalue { ptr, i32 } %lpad.phi, 0
  tail call void @__clang_call_terminate(ptr %i.ep) #31
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @_ZN8nanobind6detail18nb_type_put_uniqueEPNS0_12nb_internalsEPKSt9type_infoS5_PvPNS0_12cleanup_listEb(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, i1 noundef zeroext %5) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = select i1 %5, i8 2, i8 7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i8 0, ptr %i.a, align 1
  %i.c = call noundef ptr @_ZN8nanobind6detail11nb_type_putEPNS0_12nb_internalsEPKSt9type_infoS5_PvNS_9rv_policyEPNS0_12cleanup_listEPb(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 %i.b, ptr noundef %4, ptr noundef nonnull %i.a) #30 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.a, align 1, !range !12, !noundef !13
  %i.e = trunc nuw i8 %i.d to i1                  ; 4 uses
  %.not.i = xor i1 %5, true
  %i.f = and i1 %.not.i, %i.e
  br i1 %i.f, label %bb.c, label %bb.d, !prof !8

bb.c:                                             ; preds = %bb.b
  call void @_ZN8nanobind6detail16fail_unspecifiedEv() #31
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 2 uses
  %i.h = load i8, ptr %i.g, align 4               ; 4 uses
  %i.i = and i8 %i.h, 3                           ; 2 uses
  br i1 %5, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.j = zext nneg i8 %i.i to i32
  %i.k = select i1 %i.e, i32 2, i32 1
  %i.l = icmp eq i32 %i.k, %i.j
  br i1 %i.l, label %bb.f, label %.critedge.i, !prof !10

bb.f:                                             ; preds = %bb.e
  %i.m = and i8 %i.h, 16
  %i.n = icmp eq i8 %i.m, 0
  %i.o = xor i1 %i.n, %i.e
  br i1 %i.o, label %bb.g, label %.critedge.i, !prof !10

bb.g:                                             ; preds = %bb.f
  %i.p = and i8 %i.h, 32
  %i.q = icmp ne i8 %i.p, 0
  %i.r = xor i1 %i.q, %i.e
  br i1 %i.r, label %.critedge.i, label %_ZN8nanobind6detailL27nb_type_put_unique_finalizeEP7_objectPKSt9type_infobb.exit, !prof !8

.critedge.i:                                      ; preds = %bb.g, %bb.f, %bb.e
  call void @_ZN8nanobind6detail16fail_unspecifiedEv() #31
  unreachable

bb.h:                                             ; preds = %bb.d
  %.not14.i = icmp eq i8 %i.i, 1
  br i1 %.not14.i, label %_ZN8nanobind6detailL27nb_type_put_unique_finalizeEP7_objectPKSt9type_infobb.exit, label %bb.i, !prof !10

bb.i:                                             ; preds = %bb.h
  call void @_ZN8nanobind6detail16fail_unspecifiedEv() #31
  unreachable

_ZN8nanobind6detailL27nb_type_put_unique_finalizeEP7_objectPKSt9type_infobb.exit: ; preds = %bb.g, %bb.h
  %.sink.i = phi i8 [ -52, %bb.g ], [ -4, %bb.h ]
  %.sink2.i = phi i8 [ 50, %bb.g ], [ 2, %bb.h ]
  %i.s = and i8 %.sink.i, %i.h
  %i.t = or disjoint i8 %i.s, %.sink2.i
  store i8 %i.t, ptr %i.g, align 4
  br label %bb.j

bb.j:                                             ; preds = %_ZN8nanobind6detailL27nb_type_put_unique_finalizeEP7_objectPKSt9type_infobb.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN8nanobind6detail28nb_type_relinquish_ownershipEP7_objectb(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4               ; 4 uses
  %i.c = and i8 %i.b, 3
  %.not = icmp eq i8 %i.c, 2
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.d, align 8
  %i.e = tail call noundef ptr @_ZN8nanobind6detail12nb_type_nameEP7_object(ptr noundef %.val.i.i) #30 ; 4 uses
  %i.f = load ptr, ptr @PyExc_RuntimeWarning, align 8
  %i.g = invoke i32 (ptr, i64, ptr, ...) @PyErr_WarnFormat(ptr noundef %i.f, i64 noundef 1, ptr noundef nonnull @.str.37, ptr noundef %i.e, ptr noundef nonnull @.str.4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @PyErr_WriteUnraisable(ptr noundef nonnull %0)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = load i64, ptr %i.e, align 8              ; 2 uses
  %i.i = and i64 %i.h, 2147483648
  %.not5.i = icmp eq i64 %i.i, 0
  br i1 %.not5.i, label %bb.f, label %_ZN8nanobind6detailL22warn_relinquish_failedEPKcP7_object.exit

bb.f:                                             ; preds = %bb.e
  %i.j = add nsw i64 %i.h, -1                     ; 2 uses
  store i64 %i.j, ptr %i.e, align 8
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.g, label %_ZN8nanobind6detailL22warn_relinquish_failedEPKcP7_object.exit

bb.g:                                             ; preds = %bb.f
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.e)
          to label %_ZN8nanobind6detailL22warn_relinquish_failedEPKcP7_object.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d, %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #31
  unreachable

bb.i:                                             ; preds = %bb.a
  br i1 %1, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.n = and i8 %i.b, 56
  %or.cond14 = icmp eq i8 %i.n, 48
  br i1 %or.cond14, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = getelementptr i8, ptr %0, i64 8
  %.val.i.i15 = load ptr, ptr %i.o, align 8
  %i.p = tail call noundef ptr @_ZN8nanobind6detail12nb_type_nameEP7_object(ptr noundef %.val.i.i15) #30 ; 4 uses
  %i.q = load ptr, ptr @PyExc_RuntimeWarning, align 8
  %i.r = invoke i32 (ptr, i64, ptr, ...) @PyErr_WarnFormat(ptr noundef %i.q, i64 noundef 1, ptr noundef nonnull @.str.37, ptr noundef %i.p, ptr noundef nonnull @.str.5)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  %.not.i16 = icmp eq i32 %i.r, 0
  br i1 %.not.i16, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @PyErr_WriteUnraisable(ptr noundef nonnull %0)
          to label %bb.n unwind label %bb.q

end_hunk_0
