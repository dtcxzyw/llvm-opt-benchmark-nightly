Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/proj_json_streaming_writer?download=true
inline.NumInlined: 320
inline.NumDeleted: 102
begin_hunk_0_@_ZN5osgeo4proj22CPLJSonStreamingWriter17EmitCommaIfNeededEv:bb.a
  br i1 %.not.i38, label %bb.q, label %bb.p

bb.p:                                             ; preds = %._crit_edge.i.i34
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !24
  invoke void %i.bo(ptr noundef nonnull %i.bk, ptr noundef %i.bq)
          to label %_ZN5osgeo4proj22CPLJSonStreamingWriter5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit43 unwind label %bb.v, !inline_history !37

bb.q:                                             ; preds = %._crit_edge.i.i34
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !14
  %i.bt = icmp eq i64 %i.bs, 4611686018427387903
  br i1 %i.bt, label %bb.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i39

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #16
          to label %.noexc41 unwind label %bb.v

.noexc41:                                         ; preds = %bb.r
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i39: ; preds = %bb.q
  %i.bu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(153) %0, ptr noundef nonnull %i.bk, i64 noundef 1)
          to label %_ZN5osgeo4proj22CPLJSonStreamingWriter5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit43 unwind label %bb.v ; 0 uses

_ZN5osgeo4proj22CPLJSonStreamingWriter5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit43: ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i39
  %i.bv = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.bk
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %_ZN5osgeo4proj22CPLJSonStreamingWriter5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit43
  %i.bx = load i64, ptr %i.bk, align 8, !tbaa !15
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %_ZN5osgeo4proj22CPLJSonStreamingWriter5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ca = load ptr, ptr %i.bn, align 8, !tbaa !23 ; 2 uses
  %.not.i47 = icmp eq ptr %i.ca, null
  br i1 %.not.i47, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !30
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !24
  call void %i.ca(ptr noundef %i.cb, ptr noundef %i.cd), !inline_history !37
  br label %_ZN5osgeo4proj22CPLJSonStreamingWriter5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit49

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !14 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !14
  %i.ci = sub i64 4611686018427387903, %i.ch
  %i.cj = icmp ult i64 %i.ci, %i.cf
  br i1 %i.cj, label %bb.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i48

bb.u:                                             ; preds = %bb.t
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #16
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i48: ; preds = %bb.t
  %i.ck = load ptr, ptr %i.bz, align 8, !tbaa !30
  %i.cl = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(153) %0, ptr noundef %i.ck, i64 noundef %i.cf) ; 0 uses
  br label %_ZN5osgeo4proj22CPLJSonStreamingWriter5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit49

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i39, %bb.r, %bb.p
  %i.cm = landingpad { ptr, i32 }
          cleanup
  %i.cn = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.bk
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.v
  %i.cp = load i64, ptr %i.bk, align 8, !tbaa !15
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.x

_ZN5osgeo4proj22CPLJSonStreamingWriter5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i48, %bb.s, %bb.o, %bb.n
  %i.cr = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -1
  store i8 0, ptr %i.cs, align 1, !tbaa !36
  br label %bb.w

bb.w:                                             ; preds = %bb.c, %_ZN5osgeo4proj22CPLJSonStreamingWriter5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit49, %bb.b
  ret void

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %.pn9.pn = phi { ptr, i32 } [ %i.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ], [ %i.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30 ]
  resume { ptr, i32 } %.pn9.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5osgeo4proj22CPLJSonStreamingWriter8StartObjEv(ptr noundef nonnull align 8 dereferenceable(153) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  tail call void @_ZN5osgeo4proj22CPLJSonStreamingWriter17EmitCommaIfNeededEv(ptr noundef nonnull align 8 dereferenceable(153) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !11
  store i8 123, ptr %i.a, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 0, ptr %i.c, align 1, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23   ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24
  invoke void %i.e(ptr noundef nonnull %i.a, ptr noundef %i.g)
          to label %_ZN5osgeo4proj22CPLJSonStreamingWriter5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.j, !inline_history !37

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !14
  %i.j = icmp eq i64 %i.i, 4611686018427387903
  br i1 %i.j, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #16
          to label %.noexc5 unwind label %bb.j

.noexc5:                                          ; preds = %bb.c
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i: ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(153) %0, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZN5osgeo4proj22CPLJSonStreamingWriter5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.j ; 0 uses

_ZN5osgeo4proj22CPLJSonStreamingWriter5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i
  %i.l = load ptr, ptr %1, align 8, !tbaa !30     ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.a
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5osgeo4proj22CPLJSonStreamingWriter5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.n = load i64, ptr %i.a, align 8, !tbaa !15
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5osgeo4proj22CPLJSonStreamingWriter5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !26
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 8, !tbaa !26
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load i8, ptr %i.s, align 8, !tbaa !25, !range !31, !noundef !32
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.d, label %_ZN5osgeo4proj22CPLJSonStreamingWriter9IncIndentEv.exit

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = load i64, ptr %i.v, align 8, !tbaa !14   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.y = load i64, ptr %i.x, align 8, !tbaa !14
  %i.z = sub i64 4611686018427387903, %i.y
  %i.aa = icmp ult i64 %i.z, %i.w
  br i1 %i.aa, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i7

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #16
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i7: ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !30
  %i.ae = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef %i.ad, i64 noundef %i.w) ; 0 uses
  br label %_ZN5osgeo4proj22CPLJSonStreamingWriter9IncIndentEv.exit

_ZN5osgeo4proj22CPLJSonStreamingWriter9IncIndentEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i7
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !38 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !29
  %.not.i8 = icmp eq ptr %i.ah, %i.aj
  br i1 %.not.i8, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN5osgeo4proj22CPLJSonStreamingWriter9IncIndentEv.exit
  store i16 257, ptr %i.ah, align 1
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !38
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !38
  br label %_ZNSt6vectorIN5osgeo4proj22CPLJSonStreamingWriter5StateESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

bb.g:                                             ; preds = %_ZN5osgeo4proj22CPLJSonStreamingWriter9IncIndentEv.exit
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !28 ; 9 uses
  %i.an = ptrtoint ptr %i.ah to i64
  %i.ao = ptrtoint ptr %i.am to i64               ; 3 uses
  %i.ap = sub i64 %i.an, %i.ao                    ; 4 uses
  %i.aq = icmp eq i64 %i.ap, 9223372036854775806
  br i1 %i.aq, label %bb.h, label %_ZNKSt6vectorIN5osgeo4proj22CPLJSonStreamingWriter5StateESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #16
  unreachable

_ZNKSt6vectorIN5osgeo4proj22CPLJSonStreamingWriter5StateESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ar = ashr exact i64 %i.ap, 1                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.as = add i64 %.sroa.speculated.i.i.i, %i.ar  ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  %i.au = call i64 @llvm.umin.i64(i64 %i.as, i64 4611686018427387903)
  %i.av = select i1 %i.at, i64 4611686018427387903, i64 %i.au ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.av, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.aw = shl nuw nsw i64 %i.av, 1
  %i.ax = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #19 ; 10 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ap
  store i16 257, ptr %i.ay, align 1
  %.not10.i.i.i.i.i = icmp eq ptr %i.am, %i.ah
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN5osgeo4proj22CPLJSonStreamingWriter5StateESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %iter.check

iter.check:                                       ; preds = %_ZNKSt6vectorIN5osgeo4proj22CPLJSonStreamingWriter5StateESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.az = ptrtoaddr ptr %i.ax to i64
  %i.ba = add i64 %i.ap, -2                       ; 3 uses
  %i.bb = lshr i64 %i.ba, 1
  %i.bc = add nuw i64 %i.bb, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.ba, 6
  %i.bd = sub i64 %i.ao, %i.az
  %diff.check = icmp ugt i64 %i.bd, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check30 = icmp ult i64 %i.ba, 30
  br i1 %min.iters.check30, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.be = and i64 %i.bc, 12
  %n.vec = and i64 %i.bc, -16                     ; 4 uses
  %i.bf = shl i64 %n.vec, 1                       ; 2 uses
  %i.bg = getelementptr i8, ptr %i.ax, i64 %i.bf  ; 2 uses
  %i.bh = getelementptr i8, ptr %i.am, i64 %i.bf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bi = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ax, i64 %i.bi ; 2 uses
  %next.gep31 = getelementptr i8, ptr %i.am, i64 %i.bi ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50)
  call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.bj = getelementptr i8, ptr %next.gep31, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep31, align 1, !alias.scope !51, !noalias !50
  %wide.load32 = load <8 x i16>, ptr %i.bj, align 1, !alias.scope !51, !noalias !50
  %i.bk = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 1, !alias.scope !50, !noalias !51
  store <8 x i16> %wide.load32, ptr %i.bk, align 1, !alias.scope !50, !noalias !51
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bc, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN5osgeo4proj22CPLJSonStreamingWriter5StateESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.be, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !42

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec34 = and i64 %i.bc, -4                    ; 3 uses
  %i.bm = shl i64 %n.vec34, 1                     ; 2 uses
  %i.bn = getelementptr i8, ptr %i.ax, i64 %i.bm  ; 2 uses
  %i.bo = getelementptr i8, ptr %i.am, i64 %i.bm
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index35 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next39, %vec.epilog.vector.body ] ; 2 uses
  %i.bp = shl i64 %index35, 1                     ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.ax, i64 %i.bp
  %next.gep37 = getelementptr i8, ptr %i.am, i64 %i.bp
  call void @llvm.experimental.noalias.scope.decl(metadata !50)
  call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %wide.load38 = load <4 x i16>, ptr %next.gep37, align 1, !alias.scope !51, !noalias !50
  store <4 x i16> %wide.load38, ptr %next.gep36, align 1, !alias.scope !50, !noalias !51
  %index.next39 = add nuw i64 %index35, 4         ; 2 uses
  %i.bq = icmp eq i64 %index.next39, %n.vec34
  br i1 %i.bq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !48

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n40 = icmp eq i64 %i.bc, %n.vec34
  br i1 %cmp.n40, label %_ZNSt6vectorIN5osgeo4proj22CPLJSonStreamingWriter5StateESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ax, %iter.check ], [ %i.bg, %vec.epilog.iter.check ], [ %i.bn, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.am, %iter.check ], [ %i.bh, %vec.epilog.iter.check ], [ %i.bo, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50)
  call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.br = load i16, ptr %.0911.i.i.i.i.i, align 1, !alias.scope !51, !noalias !50
  store i16 %i.br, ptr %.012.i.i.i.i.i, align 1, !alias.scope !50, !noalias !51
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 2 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 2 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bs, %i.ah
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN5osgeo4proj22CPLJSonStreamingWriter5StateESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !49

_ZNSt6vectorIN5osgeo4proj22CPLJSonStreamingWriter5StateESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNKSt6vectorIN5osgeo4proj22CPLJSonStreamingWriter5StateESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ax, %_ZNKSt6vectorIN5osgeo4proj22CPLJSonStreamingWriter5StateESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bn, %vec.epilog.middle.block ], [ %i.bg, %middle.block ], [ %i.bt, %.lr.ph.i.i.i.i.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 2
  %.not.i23.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN5osgeo4proj22CPLJSonStreamingWriter5StateESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN5osgeo4proj22CPLJSonStreamingWriter5StateESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  %i.bv = load ptr, ptr %i.ai, align 8, !tbaa !29
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = sub i64 %i.bw, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.bx) #15
  br label %_ZNSt6vectorIN5osgeo4proj22CPLJSonStreamingWriter5StateESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN5osgeo4proj22CPLJSonStreamingWriter5StateESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIN5osgeo4proj22CPLJSonStreamingWriter5StateESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.ax, ptr %i.af, align 8, !tbaa !28
  store ptr %i.bu, ptr %i.ag, align 8, !tbaa !38
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.av
  store ptr %i.by, ptr %i.ai, align 8, !tbaa !29
  br label %_ZNSt6vectorIN5osgeo4proj22CPLJSonStreamingWriter5StateESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

_ZNSt6vectorIN5osgeo4proj22CPLJSonStreamingWriter5StateESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit: ; preds = %bb.f, %_ZNSt6vectorIN5osgeo4proj22CPLJSonStreamingWriter5StateESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  ret void

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i, %bb.c, %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = load ptr, ptr %1, align 8, !tbaa !30    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.a
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.j
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !15
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  resume { ptr, i32 } %i.bz
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5osgeo4proj22CPLJSonStreamingWriter6EndObjEv(ptr noundef nonnull align 8 dereferenceable(153) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26
  %i.c = add nsw i32 %i.b, -1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !25, !range !31, !noundef !32
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZN5osgeo4proj22CPLJSonStreamingWriter9DecIndentEv.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load i64, ptr %i.h, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load i64, ptr %i.j, align 8, !tbaa !14
  %i.l = sub i64 %i.i, %i.k
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef %i.l, i8 noundef signext 0)
  br label %_ZN5osgeo4proj22CPLJSonStreamingWriter9DecIndentEv.exit

_ZN5osgeo4proj22CPLJSonStreamingWriter9DecIndentEv.exit: ; preds = %bb.a, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !34
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !36, !range !31, !noundef !32
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZN5osgeo4proj22CPLJSonStreamingWriter5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit14, label %bb.c

bb.c:                                             ; preds = %_ZN5osgeo4proj22CPLJSonStreamingWriter9DecIndentEv.exit
  %i.r = load i8, ptr %i.d, align 8, !tbaa !25, !range !31, !noundef !32
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %_ZN5osgeo4proj22CPLJSonStreamingWriter5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit14

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.u = load i8, ptr %i.t, align 4, !tbaa !27, !range !31, !noundef !32
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %._crit_edge.i.i, label %_ZN5osgeo4proj22CPLJSonStreamingWriter5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit14

._crit_edge.i.i:                                  ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  store ptr %i.w, ptr %1, align 8, !tbaa !11
  store i8 10, ptr %i.w, align 8, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 1, ptr %i.x, align 8, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 0, ptr %i.y, align 1, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !23  ; 2 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !24
  invoke void %i.aa(ptr noundef nonnull %i.w, ptr noundef %i.ac)
          to label %_ZN5osgeo4proj22CPLJSonStreamingWriter5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.k, !inline_history !37

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !14
  %i.af = icmp eq i64 %i.ae, 4611686018427387903
  br i1 %i.af, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #16
          to label %.noexc10 unwind label %bb.k

.noexc10:                                         ; preds = %bb.g
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i: ; preds = %bb.f
  %i.ag = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(153) %0, ptr noundef nonnull %i.w, i64 noundef 1)
          to label %_ZN5osgeo4proj22CPLJSonStreamingWriter5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.k ; 0 uses

_ZN5osgeo4proj22CPLJSonStreamingWriter5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i
  %i.ah = load ptr, ptr %1, align 8, !tbaa !30    ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5osgeo4proj22CPLJSonStreamingWriter6EndObjEv:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i13: ; preds = %bb.i
  %i.aw = load ptr, ptr %i.al, align 8, !tbaa !30
  %i.ax = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(153) %0, ptr noundef %i.aw, i64 noundef %i.ar) ; 0 uses
  br label %_ZN5osgeo4proj22CPLJSonStreamingWriter5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit14

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i, %bb.g, %bb.e
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load ptr, ptr %1, align 8, !tbaa !30    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.w
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.k
  %i.bb = load i64, ptr %i.w, align 8, !tbaa !15
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.p

_ZN5osgeo4proj22CPLJSonStreamingWriter5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i13, %bb.h, %bb.c, %bb.d, %_ZN5osgeo4proj22CPLJSonStreamingWriter9DecIndentEv.exit
  %i.bd = load ptr, ptr %i.m, align 8, !tbaa !38
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -2
  store ptr %i.be, ptr %i.m, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.bf, ptr %2, align 8, !tbaa !11
  store i8 125, ptr %i.bf, align 8, !tbaa !15
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 1, ptr %i.bg, align 8, !tbaa !14
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 0, ptr %i.bh, align 1, !tbaa !15
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !23 ; 2 uses
  %.not.i22 = icmp eq ptr %i.bj, null
  br i1 %.not.i22, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5osgeo4proj22CPLJSonStreamingWriter5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit14
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !24
  invoke void %i.bj(ptr noundef nonnull %i.bf, ptr noundef %i.bl)
          to label %_ZN5osgeo4proj22CPLJSonStreamingWriter5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit27 unwind label %bb.o, !inline_history !37

bb.m:                                             ; preds = %_ZN5osgeo4proj22CPLJSonStreamingWriter5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit14
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !14
  %i.bo = icmp eq i64 %i.bn, 4611686018427387903
  br i1 %i.bo, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i23

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #16
          to label %.noexc25 unwind label %bb.o

.noexc25:                                         ; preds = %bb.n
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i23: ; preds = %bb.m
  %i.bp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(153) %0, ptr noundef nonnull %i.bf, i64 noundef 1)
          to label %_ZN5osgeo4proj22CPLJSonStreamingWriter5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit27 unwind label %bb.o ; 0 uses

_ZN5osgeo4proj22CPLJSonStreamingWriter5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit27: ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i23
  %i.bq = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.bf
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZN5osgeo4proj22CPLJSonStreamingWriter5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit27
  %i.bs = load i64, ptr %i.bf, align 8, !tbaa !15
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZN5osgeo4proj22CPLJSonStreamingWriter5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i23, %bb.n, %bb.l
  %i.bu = landingpad { ptr, i32 }
          cleanup
  %i.bv = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.bf
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.o
  %i.bx = load i64, ptr %i.bf, align 8, !tbaa !15
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %.pn6.pn = phi { ptr, i32 } [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ]
  resume { ptr, i32 } %.pn6.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5osgeo4proj22CPLJSonStreamingWriter10StartArrayEv(ptr noundef nonnull align 8 dereferenceable(153) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  tail call void @_ZN5osgeo4proj22CPLJSonStreamingWriter17EmitCommaIfNeededEv(ptr noundef nonnull align 8 dereferenceable(153) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !11
  store i8 91, ptr %i.a, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 0, ptr %i.c, align 1, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23   ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24
  invoke void %i.e(ptr noundef nonnull %i.a, ptr noundef %i.g)
          to label %_ZN5osgeo4proj22CPLJSonStreamingWriter5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.j, !inline_history !37

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !14
  %i.j = icmp eq i64 %i.i, 4611686018427387903
  br i1 %i.j, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #16
          to label %.noexc5 unwind label %bb.j

.noexc5:                                          ; preds = %bb.c
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i: ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(153) %0, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZN5osgeo4proj22CPLJSonStreamingWriter5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.j ; 0 uses

_ZN5osgeo4proj22CPLJSonStreamingWriter5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i
  %i.l = load ptr, ptr %1, align 8, !tbaa !30     ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.a
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5osgeo4proj22CPLJSonStreamingWriter5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.n = load i64, ptr %i.a, align 8, !tbaa !15
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5osgeo4proj22CPLJSonStreamingWriter5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !26
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 8, !tbaa !26
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load i8, ptr %i.s, align 8, !tbaa !25, !range !31, !noundef !32
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.d, label %_ZN5osgeo4proj22CPLJSonStreamingWriter9IncIndentEv.exit

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = load i64, ptr %i.v, align 8, !tbaa !14   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.y = load i64, ptr %i.x, align 8, !tbaa !14
  %i.z = sub i64 4611686018427387903, %i.y
  %i.aa = icmp ult i64 %i.z, %i.w
  br i1 %i.aa, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i7

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #16
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i7: ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !30
  %i.ae = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef %i.ad, i64 noundef %i.w) ; 0 uses
  br label %_ZN5osgeo4proj22CPLJSonStreamingWriter9IncIndentEv.exit

_ZN5osgeo4proj22CPLJSonStreamingWriter9IncIndentEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i7
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !38 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !29
  %.not.i8 = icmp eq ptr %i.ah, %i.aj
  br i1 %.not.i8, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN5osgeo4proj22CPLJSonStreamingWriter9IncIndentEv.exit
  store i16 256, ptr %i.ah, align 1
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !38
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !38
  br label %_ZNSt6vectorIN5osgeo4proj22CPLJSonStreamingWriter5StateESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

bb.g:                                             ; preds = %_ZN5osgeo4proj22CPLJSonStreamingWriter9IncIndentEv.exit
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !28 ; 9 uses
  %i.an = ptrtoint ptr %i.ah to i64
  %i.ao = ptrtoint ptr %i.am to i64               ; 3 uses
  %i.ap = sub i64 %i.an, %i.ao                    ; 4 uses
  %i.aq = icmp eq i64 %i.ap, 9223372036854775806
  br i1 %i.aq, label %bb.h, label %_ZNKSt6vectorIN5osgeo4proj22CPLJSonStreamingWriter5StateESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #16
  unreachable

_ZNKSt6vectorIN5osgeo4proj22CPLJSonStreamingWriter5StateESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ar = ashr exact i64 %i.ap, 1                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.as = add i64 %.sroa.speculated.i.i.i, %i.ar  ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  %i.au = call i64 @llvm.umin.i64(i64 %i.as, i64 4611686018427387903)
  %i.av = select i1 %i.at, i64 4611686018427387903, i64 %i.au ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.av, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.aw = shl nuw nsw i64 %i.av, 1
  %i.ax = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #19 ; 10 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ap
  store i16 256, ptr %i.ay, align 1
  %.not10.i.i.i.i.i = icmp eq ptr %i.am, %i.ah
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN5osgeo4proj22CPLJSonStreamingWriter5StateESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %iter.check

iter.check:                                       ; preds = %_ZNKSt6vectorIN5osgeo4proj22CPLJSonStreamingWriter5StateESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.az = ptrtoaddr ptr %i.ax to i64
  %i.ba = add i64 %i.ap, -2                       ; 3 uses
  %i.bb = lshr i64 %i.ba, 1
  %i.bc = add nuw i64 %i.bb, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.ba, 6
  %i.bd = sub i64 %i.ao, %i.az
  %diff.check = icmp ugt i64 %i.bd, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check30 = icmp ult i64 %i.ba, 30
  br i1 %min.iters.check30, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.be = and i64 %i.bc, 12
  %n.vec = and i64 %i.bc, -16                     ; 4 uses
  %i.bf = shl i64 %n.vec, 1                       ; 2 uses
  %i.bg = getelementptr i8, ptr %i.ax, i64 %i.bf  ; 2 uses
  %i.bh = getelementptr i8, ptr %i.am, i64 %i.bf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bi = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ax, i64 %i.bi ; 2 uses
  %next.gep31 = getelementptr i8, ptr %i.am, i64 %i.bi ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !58)
  call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.bj = getelementptr i8, ptr %next.gep31, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep31, align 1, !alias.scope !59, !noalias !58
  %wide.load32 = load <8 x i16>, ptr %i.bj, align 1, !alias.scope !59, !noalias !58
  %i.bk = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 1, !alias.scope !58, !noalias !59
  store <8 x i16> %wide.load32, ptr %i.bk, align 1, !alias.scope !58, !noalias !59
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !55

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bc, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN5osgeo4proj22CPLJSonStreamingWriter5StateESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.be, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !42

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec34 = and i64 %i.bc, -4                    ; 3 uses
  %i.bm = shl i64 %n.vec34, 1                     ; 2 uses
  %i.bn = getelementptr i8, ptr %i.ax, i64 %i.bm  ; 2 uses
  %i.bo = getelementptr i8, ptr %i.am, i64 %i.bm
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index35 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next39, %vec.epilog.vector.body ] ; 2 uses
  %i.bp = shl i64 %index35, 1                     ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.ax, i64 %i.bp
  %next.gep37 = getelementptr i8, ptr %i.am, i64 %i.bp
  call void @llvm.experimental.noalias.scope.decl(metadata !58)
  call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %wide.load38 = load <4 x i16>, ptr %next.gep37, align 1, !alias.scope !59, !noalias !58
  store <4 x i16> %wide.load38, ptr %next.gep36, align 1, !alias.scope !58, !noalias !59
  %index.next39 = add nuw i64 %index35, 4         ; 2 uses
  %i.bq = icmp eq i64 %index.next39, %n.vec34
  br i1 %i.bq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !56

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n40 = icmp eq i64 %i.bc, %n.vec34
  br i1 %cmp.n40, label %_ZNSt6vectorIN5osgeo4proj22CPLJSonStreamingWriter5StateESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ax, %iter.check ], [ %i.bg, %vec.epilog.iter.check ], [ %i.bn, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.am, %iter.check ], [ %i.bh, %vec.epilog.iter.check ], [ %i.bo, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !58)
  call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.br = load i16, ptr %.0911.i.i.i.i.i, align 1, !alias.scope !59, !noalias !58
  store i16 %i.br, ptr %.012.i.i.i.i.i, align 1, !alias.scope !58, !noalias !59
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 2 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 2 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bs, %i.ah
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN5osgeo4proj22CPLJSonStreamingWriter5StateESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !57

_ZNSt6vectorIN5osgeo4proj22CPLJSonStreamingWriter5StateESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNKSt6vectorIN5osgeo4proj22CPLJSonStreamingWriter5StateESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ax, %_ZNKSt6vectorIN5osgeo4proj22CPLJSonStreamingWriter5StateESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bn, %vec.epilog.middle.block ], [ %i.bg, %middle.block ], [ %i.bt, %.lr.ph.i.i.i.i.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 2
  %.not.i23.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN5osgeo4proj22CPLJSonStreamingWriter5StateESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN5osgeo4proj22CPLJSonStreamingWriter5StateESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  %i.bv = load ptr, ptr %i.ai, align 8, !tbaa !29
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = sub i64 %i.bw, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.bx) #15
  br label %_ZNSt6vectorIN5osgeo4proj22CPLJSonStreamingWriter5StateESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN5osgeo4proj22CPLJSonStreamingWriter5StateESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIN5osgeo4proj22CPLJSonStreamingWriter5StateESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.ax, ptr %i.af, align 8, !tbaa !28
  store ptr %i.bu, ptr %i.ag, align 8, !tbaa !38
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.av
  store ptr %i.by, ptr %i.ai, align 8, !tbaa !29
  br label %_ZNSt6vectorIN5osgeo4proj22CPLJSonStreamingWriter5StateESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

_ZNSt6vectorIN5osgeo4proj22CPLJSonStreamingWriter5StateESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit: ; preds = %bb.f, %_ZNSt6vectorIN5osgeo4proj22CPLJSonStreamingWriter5StateESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  ret void

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i, %bb.c, %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = load ptr, ptr %1, align 8, !tbaa !30    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.a
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.j
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !15
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  resume { ptr, i32 } %i.bz
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5osgeo4proj22CPLJSonStreamingWriter8EndArrayEv(ptr noundef nonnull align 8 dereferenceable(153) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26
  %i.c = add nsw i32 %i.b, -1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !25, !range !31, !noundef !32
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZN5osgeo4proj22CPLJSonStreamingWriter9DecIndentEv.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load i64, ptr %i.h, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load i64, ptr %i.j, align 8, !tbaa !14
  %i.l = sub i64 %i.i, %i.k
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef %i.l, i8 noundef signext 0)
  br label %_ZN5osgeo4proj22CPLJSonStreamingWriter9DecIndentEv.exit

_ZN5osgeo4proj22CPLJSonStreamingWriter9DecIndentEv.exit: ; preds = %bb.a, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !34
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !36, !range !31, !noundef !32
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZN5osgeo4proj22CPLJSonStreamingWriter5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit14, label %bb.c

bb.c:                                             ; preds = %_ZN5osgeo4proj22CPLJSonStreamingWriter9DecIndentEv.exit
  %i.r = load i8, ptr %i.d, align 8, !tbaa !25, !range !31, !noundef !32
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %_ZN5osgeo4proj22CPLJSonStreamingWriter5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit14

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.u = load i8, ptr %i.t, align 4, !tbaa !27, !range !31, !noundef !32
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %._crit_edge.i.i, label %_ZN5osgeo4proj22CPLJSonStreamingWriter5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit14

._crit_edge.i.i:                                  ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  store ptr %i.w, ptr %1, align 8, !tbaa !11
  store i8 10, ptr %i.w, align 8, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 1, ptr %i.x, align 8, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 0, ptr %i.y, align 1, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !23  ; 2 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !24
  invoke void %i.aa(ptr noundef nonnull %i.w, ptr noundef %i.ac)
          to label %_ZN5osgeo4proj22CPLJSonStreamingWriter5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.k, !inline_history !37

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !14
  %i.af = icmp eq i64 %i.ae, 4611686018427387903
  br i1 %i.af, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #16
          to label %.noexc10 unwind label %bb.k

.noexc10:                                         ; preds = %bb.g
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i: ; preds = %bb.f
  %i.ag = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(153) %0, ptr noundef nonnull %i.w, i64 noundef 1)
          to label %_ZN5osgeo4proj22CPLJSonStreamingWriter5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.k ; 0 uses

_ZN5osgeo4proj22CPLJSonStreamingWriter5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i
  %i.ah = load ptr, ptr %1, align 8, !tbaa !30    ; 2 uses
end_hunk_1
