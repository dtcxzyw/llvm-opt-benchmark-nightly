Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/jsoncpp?download=true
inline.NumInlined: 3522
inline.NumDeleted: 846
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN4Json13valueToStringB5cxx11Edbj:bb.a
  %i.ch = getelementptr i8, ptr %i.b, i64 %n.vec107
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue133, %vec.epilog.ph
  %index108 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next134, %pred.store.continue133 ] ; 9 uses
  %next.gep109 = getelementptr i8, ptr %i.b, i64 %index108 ; 2 uses
  %i.ci = getelementptr i8, ptr %i.b, i64 %index108
  %next.gep110 = getelementptr i8, ptr %i.ci, i64 1
  %i.cj = getelementptr i8, ptr %i.b, i64 %index108
  %next.gep111 = getelementptr i8, ptr %i.cj, i64 2
  %i.ck = getelementptr i8, ptr %i.b, i64 %index108
  %next.gep112 = getelementptr i8, ptr %i.ck, i64 3
  %i.cl = getelementptr i8, ptr %i.b, i64 %index108
  %next.gep113 = getelementptr i8, ptr %i.cl, i64 4
  %i.cm = getelementptr i8, ptr %i.b, i64 %index108
  %next.gep114 = getelementptr i8, ptr %i.cm, i64 5
  %i.cn = getelementptr i8, ptr %i.b, i64 %index108
  %next.gep115 = getelementptr i8, ptr %i.cn, i64 6
  %i.co = getelementptr i8, ptr %i.b, i64 %index108
  %next.gep116 = getelementptr i8, ptr %i.co, i64 7
  %wide.load117 = load <8 x i8>, ptr %next.gep109, align 8, !tbaa !50
  %i.cp = icmp eq <8 x i8> %wide.load117, splat (i8 44) ; 8 uses
  %i.cq = extractelement <8 x i1> %i.cp, i64 0
  br i1 %i.cq, label %pred.store.if118, label %pred.store.continue119

pred.store.if118:                                 ; preds = %vec.epilog.vector.body
  store i8 46, ptr %next.gep109, align 8, !tbaa !50
  br label %pred.store.continue119

pred.store.continue119:                           ; preds = %pred.store.if118, %vec.epilog.vector.body
  %i.cr = extractelement <8 x i1> %i.cp, i64 1
  br i1 %i.cr, label %pred.store.if120, label %pred.store.continue121

pred.store.if120:                                 ; preds = %pred.store.continue119
  store i8 46, ptr %next.gep110, align 1, !tbaa !50
  br label %pred.store.continue121

pred.store.continue121:                           ; preds = %pred.store.if120, %pred.store.continue119
  %i.cs = extractelement <8 x i1> %i.cp, i64 2
  br i1 %i.cs, label %pred.store.if122, label %pred.store.continue123

pred.store.if122:                                 ; preds = %pred.store.continue121
  store i8 46, ptr %next.gep111, align 2, !tbaa !50
  br label %pred.store.continue123

pred.store.continue123:                           ; preds = %pred.store.if122, %pred.store.continue121
  %i.ct = extractelement <8 x i1> %i.cp, i64 3
  br i1 %i.ct, label %pred.store.if124, label %pred.store.continue125

pred.store.if124:                                 ; preds = %pred.store.continue123
  store i8 46, ptr %next.gep112, align 1, !tbaa !50
  br label %pred.store.continue125

pred.store.continue125:                           ; preds = %pred.store.if124, %pred.store.continue123
  %i.cu = extractelement <8 x i1> %i.cp, i64 4
  br i1 %i.cu, label %pred.store.if126, label %pred.store.continue127

pred.store.if126:                                 ; preds = %pred.store.continue125
  store i8 46, ptr %next.gep113, align 4, !tbaa !50
  br label %pred.store.continue127

pred.store.continue127:                           ; preds = %pred.store.if126, %pred.store.continue125
  %i.cv = extractelement <8 x i1> %i.cp, i64 5
  br i1 %i.cv, label %pred.store.if128, label %pred.store.continue129

pred.store.if128:                                 ; preds = %pred.store.continue127
  store i8 46, ptr %next.gep114, align 1, !tbaa !50
  br label %pred.store.continue129

pred.store.continue129:                           ; preds = %pred.store.if128, %pred.store.continue127
  %i.cw = extractelement <8 x i1> %i.cp, i64 6
  br i1 %i.cw, label %pred.store.if130, label %pred.store.continue131

pred.store.if130:                                 ; preds = %pred.store.continue129
  store i8 46, ptr %next.gep115, align 2, !tbaa !50
  br label %pred.store.continue131

pred.store.continue131:                           ; preds = %pred.store.if130, %pred.store.continue129
  %i.cx = extractelement <8 x i1> %i.cp, i64 7
  br i1 %i.cx, label %pred.store.if132, label %pred.store.continue133

pred.store.if132:                                 ; preds = %pred.store.continue131
  store i8 46, ptr %next.gep116, align 1, !tbaa !50
  br label %pred.store.continue133

pred.store.continue133:                           ; preds = %pred.store.if132, %pred.store.continue131
  %index.next134 = add nuw i64 %index108, 8       ; 2 uses
  %i.cy = icmp eq i64 %index.next134, %n.vec107
  br i1 %i.cy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !595

vec.epilog.middle.block:                          ; preds = %pred.store.continue133
  %cmp.n135 = icmp eq i64 %n.vec107, %i.p
  br i1 %cmp.n135, label %_ZN4JsonL16fixNumericLocaleEPcS0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.05.i.ph = phi ptr [ %i.b, %iter.check ], [ %i.s, %vec.epilog.iter.check ], [ %i.ch, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.j
  %.05.i = phi ptr [ %i.db, %bb.j ], [ %.05.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.cz = load i8, ptr %.05.i, align 1, !tbaa !50
  %i.da = icmp eq i8 %i.cz, 44
  br i1 %i.da, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i
  store i8 46, ptr %.05.i, align 1, !tbaa !50
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i
  %i.db = getelementptr inbounds nuw i8, ptr %.05.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.db, %i.q
  br i1 %exitcond.not.i, label %_ZN4JsonL16fixNumericLocaleEPcS0_.exit, label %.lr.ph.i, !llvm.loop !596

_ZN4JsonL16fixNumericLocaleEPcS0_.exit:           ; preds = %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.dc, ptr %0, align 8, !tbaa !46
  %i.dd = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 %i.dd, ptr %i.a, align 8, !tbaa !113
  %i.de = icmp ugt i64 %i.dd, 15
  br i1 %i.de, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZN4JsonL16fixNumericLocaleEPcS0_.exit
  %i.df = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.df, ptr %0, align 8, !tbaa !78
  %i.dg = load i64, ptr %i.a, align 8, !tbaa !113
  store i64 %i.dg, ptr %i.dc, align 8, !tbaa !50
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %_ZN4JsonL16fixNumericLocaleEPcS0_.exit
  %i.dh = phi ptr [ %i.df, %.noexc.i ], [ %i.dc, %_ZN4JsonL16fixNumericLocaleEPcS0_.exit ] ; 2 uses
  switch i64 %i.dd, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %bb.m
  ]

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.di = load i8, ptr %i.b, align 16, !tbaa !50
  store i8 %i.di, ptr %i.dh, align 1, !tbaa !50
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dh, ptr nonnull align 16 %i.b, i64 %i.dd, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %._crit_edge.i.i
  %i.dj = load i64, ptr %i.a, align 8, !tbaa !113 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !49
  %i.dl = load ptr, ptr %0, align 8, !tbaa !78
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dj
  store i8 0, ptr %i.dm, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN4Json13valueToStringB5cxx11Eb(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i1 noundef zeroext %1) local_unnamed_addr #10 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = select i1 %1, ptr @.str.45, ptr @.str.46
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !46
  %i.c = select i1 %1, i64 4, i64 5               ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(4) %i.a, i64 %i.c, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.d, align 8, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c
  store i8 0, ptr %i.e, align 1, !tbaa !50
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Json19valueToQuotedStringB5cxx11EPKc(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 23 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %._crit_edge.i.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !49
  store i8 0, ptr %i.b, align 8, !tbaa !50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit66

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @strpbrk(ptr noundef nonnull %1, ptr noundef nonnull @.str.84) #45
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.b, %.preheader
  %.0.i = phi ptr [ %i.g, %.preheader ], [ %1, %bb.b ] ; 2 uses
  %i.f = load i8, ptr %.0.i, align 1, !tbaa !50   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  %or.cond.not.i = icmp ugt i8 %i.f, 31
  br i1 %or.cond.not.i, label %.preheader, label %_ZN4JsonL24containsControlCharacterEPKc.exit, !llvm.loop !598

_ZN4JsonL24containsControlCharacterEPKc.exit:     ; preds = %.preheader
  %.not.i.not = icmp eq i8 %i.f, 0
  br i1 %.not.i.not, label %._crit_edge.i.i37, label %bb.j

._crit_edge.i.i37:                                ; preds = %_ZN4JsonL24containsControlCharacterEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !46
  store i8 34, ptr %i.h, align 8, !tbaa !50
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.i, align 8, !tbaa !49
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 0, ptr %i.j, align 1, !tbaa !50
  call void @llvm.experimental.noalias.scope.decl(metadata !608)
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #40, !noalias !608 ; 2 uses
  %i.l = icmp ugt i64 %i.k, 4611686018427387902
  br i1 %i.l, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i37
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.125) #44
          to label %.noexc41 unwind label %bb.h

.noexc41:                                         ; preds = %bb.c
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %._crit_edge.i.i37
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %1, i64 noundef %i.k)
          to label %.noexc42 unwind label %bb.h   ; 8 uses

.noexc42:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.n, ptr %2, align 8, !tbaa !46, !alias.scope !608
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !78   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 7 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %.thread, label %bb.d

.thread:                                          ; preds = %.noexc42
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !49   ; 3 uses
  %i.t = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.t)
  %i.u = add nuw nsw i64 %i.s, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.n, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.u, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.s, ptr %i.w, align 8, !tbaa !49, !alias.scope !608
  store ptr %i.p, ptr %i.m, align 8, !tbaa !78
  store i64 0, ptr %i.v, align 8, !tbaa !49
  store i8 0, ptr %i.p, align 8, !tbaa !50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i43

bb.d:                                             ; preds = %.noexc42
  store ptr %i.o, ptr %2, align 8, !tbaa !78, !alias.scope !608
  %i.x = load i64, ptr %i.p, align 8, !tbaa !50
  store i64 %i.x, ptr %i.n, align 8, !tbaa !50, !alias.scope !608
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !49 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.pre.i, ptr %i.z, align 8, !tbaa !49, !alias.scope !608
  store ptr %i.p, ptr %i.m, align 8, !tbaa !78
  store i64 0, ptr %i.y, align 8, !tbaa !49
  store i8 0, ptr %i.p, align 8, !tbaa !50
  %i.aa = icmp eq i64 %.pre.i, 4611686018427387903
  br i1 %i.aa, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i43

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.125) #44
          to label %.noexc47 unwind label %bb.i

.noexc47:                                         ; preds = %bb.e
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i43: ; preds = %.thread, %bb.d
  %i.ab = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.85, i64 noundef 1)
          to label %.noexc48 unwind label %bb.i   ; 6 uses

.noexc48:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i43
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ac, ptr %0, align 8, !tbaa !46, !alias.scope !609
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !78 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 5 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

bb.f:                                             ; preds = %.noexc48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !49 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16
  call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.ae, i64 %i.aj, i1 false)
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %.noexc48
  store ptr %i.ad, ptr %0, align 8, !tbaa !78, !alias.scope !609
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !50
  store i64 %i.ak, ptr %i.ac, align 8, !tbaa !50, !alias.scope !609
  %.phi.trans.insert.i45 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.pre.i46 = load i64, ptr %.phi.trans.insert.i45, align 8, !tbaa !49
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44, %bb.f
  %i.al = phi i64 [ %i.ah, %bb.f ], [ %.pre.i46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.al, ptr %i.an, align 8, !tbaa !49, !alias.scope !609
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !78
  store i64 0, ptr %i.am, align 8, !tbaa !49
  store i8 0, ptr %i.ae, align 8, !tbaa !50
  %i.ao = load ptr, ptr %2, align 8, !tbaa !78    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.n
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.g
  %i.aq = load i64, ptr %i.n, align 8, !tbaa !50
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  %i.as = load ptr, ptr %3, align 8, !tbaa !78    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.h
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.au = load i64, ptr %i.h, align 8, !tbaa !50
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit66

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.c
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i43, %bb.e
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %2, align 8, !tbaa !78    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.n
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.i
  %i.ba = load i64, ptr %i.n, align 8, !tbaa !50
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54, %bb.h
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.h ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ], [ %i.ax, %bb.i ]
  %i.bc = load ptr, ptr %3, align 8, !tbaa !78    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.h
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %i.be = load i64, ptr %i.h, align 8, !tbaa !50
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

bb.j:                                             ; preds = %_ZN4JsonL24containsControlCharacterEPKc.exit, %bb.b
  %i.bg = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #45
  %i.bh = shl i64 %i.bg, 1
  %i.bi = add i64 %i.bh, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.bj, ptr %0, align 8, !tbaa !46
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  store i64 0, ptr %i.bk, align 8, !tbaa !49
  store i8 0, ptr %i.bj, align 8, !tbaa !50
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bi)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !49
  %i.bm = icmp eq i64 %i.bl, 4611686018427387903
  br i1 %i.bm, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i60: ; preds = %bb.k
  %i.bn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.85, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.preheader unwind label %bb.m ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.preheader: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i60
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 32
end_hunk_0
