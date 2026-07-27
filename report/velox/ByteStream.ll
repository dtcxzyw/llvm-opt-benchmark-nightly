inline.NumInlined: 721
inline.NumDeleted: 389
begin_hunk_0_@_ZNK8facebook5velox17BufferInputStream8toStringB5cxx11Ev:bb.a
  %i.ak = icmp eq ptr %i.aj, %i.m
  br i1 %i.ak, label %._crit_edge, label %bb.c

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10: ; preds = %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !43)
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.al, ptr %0, align 8, !tbaa !49, !alias.scope !50
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.am, align 8, !tbaa !34, !alias.scope !50
  store i8 0, ptr %i.al, align 8, !tbaa !35, !alias.scope !50
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !51, !noalias !50 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ao, null
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !50 ; 2 uses
  %i.ar = icmp ugt ptr %i.ao, %i.aq
  %.08.i.i.i = select i1 %i.ar, ptr %i.ao, ptr %i.aq ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !55, !noalias !50 ; 2 uses
  %i.au = ptrtoint ptr %.08.i.i.i to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.at, i64 noundef %i.aw)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = load ptr, ptr %0, align 8, !tbaa !31, !alias.scope !50 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.al
  br i1 %i.ba, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  %i.bb = load i64, ptr %i.al, align 8, !tbaa !35, !alias.scope !50
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #24
  br label %.body

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bd)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.g

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.h, %bb.f
  %i.be = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.be, ptr %2, align 8, !tbaa !56
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bg = getelementptr i8, ptr %i.be, i64 -24
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds i8, ptr %2, i64 %i.bh
  store ptr %i.bf, ptr %i.bi, align 8, !tbaa !56
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !56
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bk, align 8, !tbaa !56
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !31 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !35
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #24
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bk, align 8, !tbaa !56
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.br) #25
  %i.bs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bs, ptr %2, align 8, !tbaa !56
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bu = getelementptr i8, ptr %i.bs, i64 -24
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds i8, ptr %2, i64 %i.bv
  store ptr %i.bt, ptr %i.bw, align 8, !tbaa !56
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.bx, align 8, !tbaa !58
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.by) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

.body:                                            ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.b, %bb.e
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.e ], [ %i.q, %bb.b ], [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ay, %bb.g ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEl(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #5 align 2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK8facebook5velox17BufferInputStream5atEndEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !25
  %i.h = icmp slt i64 %i.e, %i.g
  br i1 %i.h, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39
  %.not = icmp ult ptr %i.b, %i.j
  br i1 %.not, label %.critedge, label %bb.d, !prof !60

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !40
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -24 ; 2 uses
  %i.n = icmp ugt ptr %i.b, %i.m
  br i1 %i.n, label %.critedge, label %bb.e, !prof !60

.critedge:                                        ; preds = %bb.c, %bb.d
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox17BufferInputStream5atEndEvE18veloxCheckFailArgs) #22
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.o = icmp eq ptr %i.b, %i.m
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %bb.e
  %.0 = phi i1 [ %i.o, %bb.e ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK8facebook5velox17BufferInputStream4sizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40   ; 3 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.f = ptrtoaddr ptr %i.d to i64
  %i.g = ptrtoaddr ptr %i.b to i64
  %i.h = add i64 %i.f, -24
  %i.i = sub i64 %i.h, %i.g                       ; 3 uses
  %i.j = udiv i64 %i.i, 24
  %i.k = add nuw nsw i64 %i.j, 1                  ; 4 uses
  %min.iters.check = icmp ult i64 %i.i, 96
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check11 = icmp ult i64 %i.i, 384
  br i1 %min.iters.check11, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.k, 15                    ; 2 uses
  %i.l = icmp eq i64 %n.mod.vf, 0
  %i.m = select i1 %i.l, i64 16, i64 %n.mod.vf    ; 2 uses
  %n.vec = sub nsw i64 %i.k, %i.m                 ; 3 uses
  %i.n = mul i64 %n.vec, 24
  %i.o = getelementptr i8, ptr %i.b, i64 %i.n
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi12 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.y, %vector.body ]
  %vec.phi13 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi14 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %i.p = mul i64 %index, 24                       ; 4 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %i.p
  %i.q = getelementptr i8, ptr %i.b, i64 %i.p
  %i.r = getelementptr i8, ptr %i.b, i64 %i.p
  %i.s = getelementptr i8, ptr %i.b, i64 %i.p
  %i.t = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.u = getelementptr i8, ptr %i.q, i64 104
  %i.v = getelementptr i8, ptr %i.r, i64 200
  %i.w = getelementptr i8, ptr %i.s, i64 296
  %1 = load <10 x i64>, ptr %i.t, align 8, !tbaa !25
  %strided.vec = shufflevector <10 x i64> %1, <10 x i64> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9>
  %2 = load <10 x i64>, ptr %i.u, align 8, !tbaa !25
  %strided.vec19 = shufflevector <10 x i64> %2, <10 x i64> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9>
  %3 = load <10 x i64>, ptr %i.v, align 8, !tbaa !25
  %strided.vec21 = shufflevector <10 x i64> %3, <10 x i64> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9>
  %4 = load <10 x i64>, ptr %i.w, align 8, !tbaa !25
  %strided.vec23 = shufflevector <10 x i64> %4, <10 x i64> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9>
  %i.x = add <4 x i64> %strided.vec, %vec.phi     ; 2 uses
  %i.y = add <4 x i64> %strided.vec19, %vec.phi12 ; 2 uses
  %i.z = add <4 x i64> %strided.vec21, %vec.phi13 ; 2 uses
  %i.aa = add <4 x i64> %strided.vec23, %vec.phi14 ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !61

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <4 x i64> %i.y, %i.x
  %bin.rdx24 = add <4 x i64> %i.z, %bin.rdx
  %bin.rdx25 = add <4 x i64> %i.aa, %bin.rdx24
  %i.ac = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx25) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.m, 5
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !64

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.ac, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.mod.vf26 = and i64 %i.k, 3                   ; 2 uses
  %i.ad = icmp eq i64 %n.mod.vf26, 0
  %i.ae = select i1 %i.ad, i64 4, i64 %n.mod.vf26
  %n.vec27 = sub nsw i64 %i.k, %i.ae              ; 2 uses
  %i.af = mul i64 %n.vec27, 24
  %i.ag = getelementptr i8, ptr %i.b, i64 %i.af
  %i.ah = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index28 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next33, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi29 = phi <4 x i64> [ %i.ah, %vec.epilog.ph ], [ %i.ak, %vec.epilog.vector.body ]
  %i.ai = mul i64 %index28, 24
  %next.gep30 = getelementptr i8, ptr %i.b, i64 %i.ai
  %i.aj = getelementptr inbounds nuw i8, ptr %next.gep30, i64 8
  %5 = load <10 x i64>, ptr %i.aj, align 8, !tbaa !25
  %strided.vec32 = shufflevector <10 x i64> %5, <10 x i64> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9>
  %i.ak = add <4 x i64> %strided.vec32, %vec.phi29 ; 2 uses
  %index.next33 = add nuw i64 %index28, 4         ; 2 uses
  %i.al = icmp eq i64 %index.next33, %n.vec27
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !65

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.am = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.ak)
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.ph = phi i64 [ 0, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.am, %vec.epilog.middle.block ]
  %.sroa.05.08.ph = phi ptr [ %i.b, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %i.ag, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.ap, %.lr.ph ]
  ret i64 %.0.lcssa

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.09 = phi i64 [ %i.ap, %.lr.ph ], [ %.09.ph, %.lr.ph.preheader ]
  %.sroa.05.08 = phi ptr [ %i.aq, %.lr.ph ], [ %.sroa.05.08.ph, %.lr.ph.preheader ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.05.08, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !25
  %i.ap = add i64 %i.ao, %.09                     ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.05.08, i64 24 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.d
  br i1 %i.ar, label %._crit_edge, label %.lr.ph, !llvm.loop !66
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK8facebook5velox17BufferInputStream13remainingSizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40   ; 3 uses
  %i.e = ptrtoaddr ptr %i.d to i64
  %i.f = icmp eq ptr %i.b, %i.d
  br i1 %i.f, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !41   ; 12 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !27
  %i.n = sub nsw i64 %i.k, %i.m
  %.sroa.speculated.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.n, i64 0) ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 4 uses
  %.not10 = icmp ugt ptr %i.o, %i.g
  br i1 %.not10, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.b
  %i.p = ptrtoaddr ptr %i.i to i64                ; 3 uses
  %i.q = add i64 %i.e, -23
  %i.r = add i64 %i.p, 48
  %umax = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %i.r)
  %i.s = add i64 %umax, -48                       ; 2 uses
  %i.t = icmp ne i64 %i.s, %i.p
  %umin = zext i1 %i.t to i64                     ; 2 uses
  %i.u = add i64 %i.p, %umin
  %i.v = sub i64 %i.s, %i.u
  %i.w = udiv i64 %i.v, 24
  %i.x = add nuw nsw i64 %i.w, %umin              ; 3 uses
  %i.y = add nuw nsw i64 %i.x, 1                  ; 4 uses
  %min.iters.check = icmp samesign ult i64 %i.x, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check15 = icmp samesign ult i64 %i.x, 16
  br i1 %min.iters.check15, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.y, 15                    ; 2 uses
  %i.z = icmp eq i64 %n.mod.vf, 0
  %i.aa = select i1 %i.z, i64 16, i64 %n.mod.vf   ; 2 uses
  %n.vec = sub nsw i64 %i.y, %i.aa                ; 3 uses
  %i.ab = mul i64 %n.vec, 24                      ; 2 uses
  %i.ac = getelementptr i8, ptr %i.o, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.i, i64 %i.ab
  %i.ae = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %.sroa.speculated.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i64> [ %i.ae, %vector.ph ], [ %i.an, %vector.body ]
  %vec.phi16 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.ao, %vector.body ]
  %vec.phi17 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.ap, %vector.body ]
  %vec.phi18 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %i.af = mul i64 %index, 24                      ; 4 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.af
  %i.ag = getelementptr i8, ptr %i.i, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.i, i64 %i.af
  %i.ai = getelementptr i8, ptr %i.i, i64 %i.af
  %i.aj = getelementptr inbounds nuw i8, ptr %next.gep, i64 32
  %i.ak = getelementptr i8, ptr %i.ag, i64 128
  %i.al = getelementptr i8, ptr %i.ah, i64 224
  %i.am = getelementptr i8, ptr %i.ai, i64 320
  %1 = load <10 x i64>, ptr %i.aj, align 8, !tbaa !25
  %strided.vec = shufflevector <10 x i64> %1, <10 x i64> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9>
  %2 = load <10 x i64>, ptr %i.ak, align 8, !tbaa !25
  %strided.vec23 = shufflevector <10 x i64> %2, <10 x i64> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9>
  %3 = load <10 x i64>, ptr %i.al, align 8, !tbaa !25
  %strided.vec25 = shufflevector <10 x i64> %3, <10 x i64> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9>
  %4 = load <10 x i64>, ptr %i.am, align 8, !tbaa !25
  %strided.vec27 = shufflevector <10 x i64> %4, <10 x i64> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9>
  %i.an = add <4 x i64> %strided.vec, %vec.phi    ; 2 uses
  %i.ao = add <4 x i64> %strided.vec23, %vec.phi16 ; 2 uses
  %i.ap = add <4 x i64> %strided.vec25, %vec.phi17 ; 2 uses
  %i.aq = add <4 x i64> %strided.vec27, %vec.phi18 ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !67

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <4 x i64> %i.ao, %i.an
  %bin.rdx28 = add <4 x i64> %i.ap, %bin.rdx
  %bin.rdx29 = add <4 x i64> %i.aq, %bin.rdx28
  %i.as = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx29) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.aa, 5
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !64

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.as, %vec.epilog.iter.check ], [ %.sroa.speculated.i, %vector.main.loop.iter.check ]
  %n.mod.vf31 = and i64 %i.y, 3                   ; 2 uses
  %i.at = icmp eq i64 %n.mod.vf31, 0
  %i.au = select i1 %i.at, i64 4, i64 %n.mod.vf31
  %n.vec32 = sub nsw i64 %i.y, %i.au              ; 2 uses
  %i.av = mul i64 %n.vec32, 24                    ; 2 uses
  %i.aw = getelementptr i8, ptr %i.o, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.i, i64 %i.av
  %i.ay = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index33 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next38, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi34 = phi <4 x i64> [ %i.ay, %vec.epilog.ph ], [ %i.bb, %vec.epilog.vector.body ]
  %i.az = mul i64 %index33, 24
  %next.gep35 = getelementptr i8, ptr %i.i, i64 %i.az
  %i.ba = getelementptr inbounds nuw i8, ptr %next.gep35, i64 32
  %5 = load <10 x i64>, ptr %i.ba, align 8, !tbaa !25
  %strided.vec37 = shufflevector <10 x i64> %5, <10 x i64> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9>
  %i.bb = add <4 x i64> %strided.vec37, %vec.phi34 ; 2 uses
  %index.next38 = add nuw i64 %index33, 4         ; 2 uses
  %i.bc = icmp eq i64 %index.next38, %n.vec32
  br i1 %i.bc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !68

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bd = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.bb)
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi ptr [ %i.o, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.aw, %vec.epilog.middle.block ]
  %.012.ph = phi i64 [ %.sroa.speculated.i, %iter.check ], [ %i.as, %vec.epilog.iter.check ], [ %i.bd, %vec.epilog.middle.block ]
  %.0711.ph = phi ptr [ %i.i, %iter.check ], [ %i.ad, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.be = phi ptr [ %i.bi, %.lr.ph ], [ %.ph, %.lr.ph.preheader ] ; 2 uses
  %.012 = phi i64 [ %i.bh, %.lr.ph ], [ %.012.ph, %.lr.ph.preheader ]
  %.0711 = phi ptr [ %i.be, %.lr.ph ], [ %.0711.ph, %.lr.ph.preheader ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.0711, i64 32
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !25
  %i.bh = add i64 %i.bg, %.012                    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 2 uses
  %.not = icmp ugt ptr %i.bi, %i.g
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !69

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.08 = phi i64 [ 0, %bb.a ], [ %.sroa.speculated.i, %bb.b ], [ %i.bh, %.lr.ph ]
  ret i64 %.08
}

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZNK8facebook5velox17BufferInputStream5tellpEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40   ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !41   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.c
  %.025 = phi i64 [ 0, %.preheader ], [ %i.j, %bb.c ] ; 2 uses
  %.sroa.014.024 = phi ptr [ %i.b, %.preheader ], [ %i.k, %bb.c ] ; 3 uses
  %.not = icmp eq ptr %.sroa.014.024, %i.g
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.014.024, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !25
  %i.j = add nsw i64 %i.i, %.025
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.014.024, i64 24 ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.d
  br i1 %i.l, label %.critedge, label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !27
  %i.o = add nsw i64 %i.n, %.025
  br label %bb.e

.critedge:                                        ; preds = %bb.c
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox17BufferInputStream5tellpEvE18veloxCheckFailArgs, ptr noundef nonnull @.str.13) #22
  unreachable

bb.e:                                             ; preds = %bb.d, %bb.a
  %.sroa.017.2 = phi i64 [ %i.o, %bb.d ], [ 0, %bb.a ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.017.2, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox17BufferInputStream5seekpESt4fposI11__mbstate_tE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i64 %1, i64 %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.59", align 16 ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40   ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d                   ; 2 uses
  %i.f = icmp eq i64 %1, 0
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.a
  br i1 %i.e, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %.029 = phi i64 [ %i.i, %bb.b ], [ %1, %.preheader ] ; 3 uses
  %.sroa.018.028 = phi ptr [ %i.j, %bb.b ], [ %i.b, %.preheader ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.018.028, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !25   ; 2 uses
  %.not = icmp sgt i64 %.029, %i.h
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.i = sub nsw i64 %.029, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.018.028, i64 24 ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.d
  br i1 %i.k, label %.critedge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.018.028, ptr %i.l, align 8, !tbaa !41
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.018.028, i64 16
  store i64 %.029, ptr %i.m, align 8, !tbaa !27
  br label %bb.f

.critedge:                                        ; preds = %bb.b, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !70
  %.sroa.03.0.insert.ext.i = zext i64 %1 to i128
  store i128 %.sroa.03.0.insert.ext.i, ptr %3, align 16, !noalias !70
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.15, i64 41, i64 3, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !70
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox17BufferInputStream5seekpESt4fposI11__mbstate_tEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.15) #22
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.critedge
  unreachable

bb.e:                                             ; preds = %.critedge
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %4, align 8, !tbaa !31     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.r = load i64, ptr %i.p, align 8, !tbaa !35
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %i.n

bb.f:                                             ; preds = %bb.a, %bb.c
  ret void
}

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(32), ptr) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox17BufferInputStream9nextRangeEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v11::detail::format_arg_store.60", align 16 ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39   ; 2 uses
  %.not = icmp ult ptr %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.c, !prof !60

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox17BufferInputStream9nextRangeEvE18veloxCheckFailArgs) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 24
  %i.i = add nsw i64 %i.h, 1                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = sdiv exact i64 %i.m, 24                  ; 2 uses
  %.not4 = icmp ult i64 %i.i, %i.n
  br i1 %.not4, label %bb.g, label %bb.d, !prof !73

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25, !noalias !74
  store i64 %i.i, ptr %1, align 16, !tbaa !35, !noalias !74
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.n, ptr %i.o, align 16, !tbaa !35, !noalias !74
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr nonnull @.str.19, i64 49, i64 68, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25, !noalias !74
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox17BufferInputStream9nextRangeEvE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nonnull @.str.19) #22
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

end_hunk_0
begin_hunk_1_@_ZN8facebook5velox17BufferInputStream8nextViewEl:bb.a
  %i.s = icmp eq ptr %i.j, %i.r
  br i1 %i.s, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN8facebook5velox17BufferInputStream9nextRangeEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !41  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre21 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.t = phi i64 [ %.pre21, %bb.g ], [ %i.n, %bb.e ] ; 3 uses
  %i.u = phi ptr [ %.pre, %bb.g ], [ %i.j, %bb.e ] ; 2 uses
  %i.v = icmp slt i64 %i.t, 1
  br i1 %i.v, label %bb.i, label %bb.l, !prof !60

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !93
  store i64 %i.t, ptr %2, align 16, !tbaa !35, !noalias !93
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.w, align 16, !tbaa !35, !alias.scope !96, !noalias !93
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.26, i64 11, i64 19, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !93
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox17BufferInputStream8nextViewElE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull @.str.26) #22
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %5, align 8, !tbaa !31     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.k
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !35
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.n

bb.l:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !27 ; 3 uses
  %i.af = sub nsw i64 %i.t, %i.ae
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %1, i64 %i.af) ; 2 uses
  %i.ag = add nsw i64 %.sroa.speculated, %i.ae
  store i64 %i.ag, ptr %i.ad, align 8, !tbaa !27
  %i.ah = load ptr, ptr %i.u, align 8, !tbaa !77
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.ae
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %bb.l
  %.sroa.020.0 = phi i64 [ %.sroa.speculated, %bb.l ], [ 0, %bb.f ]
  %.sroa.3.0 = phi ptr [ %i.ai, %bb.l ], [ null, %bb.f ]
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.020.0, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.3.0, 1
  ret { i64, ptr } %.fca.1.insert

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox17BufferInputStream4skipEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i32 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.b, label %.preheader, !prof !60

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !27   ; 2 uses
  %i.h = sub nsw i64 %i.e, %i.g
  %.sroa.speculated.i13 = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.h, i64 0)
  %i.i = trunc i64 %.sroa.speculated.i13 to i32
  %.sroa.speculated14 = tail call i32 @llvm.smin.i32(i32 %1, i32 %i.i) ; 2 uses
  %i.j = sub nsw i32 %1, %.sroa.speculated14      ; 2 uses
  %i.k = sext i32 %.sroa.speculated14 to i64
  %i.l = add nsw i64 %i.g, %i.k
  store i64 %i.l, ptr %i.f, align 8, !tbaa !27
  %i.m = icmp eq i32 %i.j, 0
  br i1 %i.m, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !99
  store i32 %1, ptr %2, align 16, !tbaa !35, !noalias !99
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.n, align 16, !tbaa !35, !noalias !99
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.28, i64 55, i64 17, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !99
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox17BufferInputStream4skipEiE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.28) #22
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %3, align 8, !tbaa !31     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.s = load i64, ptr %i.q, align 8, !tbaa !35
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.o

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.u = phi i32 [ %i.ac, %.lr.ph ], [ %i.j, %.preheader ] ; 2 uses
  tail call void @_ZN8facebook5velox17BufferInputStream9nextRangeEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !41   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !25
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !27   ; 2 uses
  %i.aa = sub nsw i64 %i.x, %i.z
  %.sroa.speculated.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.aa, i64 0)
  %i.ab = trunc i64 %.sroa.speculated.i to i32
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.u, i32 %i.ab) ; 2 uses
  %i.ac = sub nsw i32 %i.u, %.sroa.speculated     ; 2 uses
  %i.ad = sext i32 %.sroa.speculated to i64
  %i.ae = add nsw i64 %i.z, %i.ad
  store i64 %i.ae, ptr %i.y, align 8, !tbaa !27
  %i.af = icmp eq i32 %i.ac, 0
  br i1 %i.af, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK8facebook5velox16ByteOutputStream4sizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40   ; 3 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24                  ; 3 uses
  %i.j = add nsw i64 %i.i, -1                     ; 6 uses
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %.preheader
  %min.iters.check = icmp ult i64 %i.i, 6
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check15 = icmp ult i64 %i.i, 18
  br i1 %min.iters.check15, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.j, 15                    ; 2 uses
  %i.k = icmp eq i64 %n.mod.vf, 0
  %i.l = select i1 %i.k, i64 16, i64 %n.mod.vf    ; 2 uses
  %n.vec = sub nsw i64 %i.j, %i.l                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.phi = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.u, %vector.body ]
  %vec.phi16 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.v, %vector.body ]
  %vec.phi17 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.w, %vector.body ]
  %vec.phi18 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.x, %vector.body ]
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %index
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %index
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %index
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %index
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 200
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 296
  %1 = load <10 x i64>, ptr %i.q, align 8, !tbaa !25
  %strided.vec = shufflevector <10 x i64> %1, <10 x i64> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9>
  %2 = load <10 x i64>, ptr %i.r, align 8, !tbaa !25
  %strided.vec20 = shufflevector <10 x i64> %2, <10 x i64> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9>
  %3 = load <10 x i64>, ptr %i.s, align 8, !tbaa !25
  %strided.vec22 = shufflevector <10 x i64> %3, <10 x i64> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9>
  %4 = load <10 x i64>, ptr %i.t, align 8, !tbaa !25
  %strided.vec24 = shufflevector <10 x i64> %4, <10 x i64> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9>
  %i.u = add <4 x i64> %strided.vec, %vec.phi     ; 2 uses
  %i.v = add <4 x i64> %strided.vec20, %vec.phi16 ; 2 uses
  %i.w = add <4 x i64> %strided.vec22, %vec.phi17 ; 2 uses
  %i.x = add <4 x i64> %strided.vec24, %vec.phi18 ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !102

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <4 x i64> %i.v, %i.u
  %bin.rdx25 = add <4 x i64> %i.w, %bin.rdx
  %bin.rdx26 = add <4 x i64> %i.x, %bin.rdx25
  %i.z = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx26) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.l, 5
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !64

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.z, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.mod.vf27 = and i64 %i.j, 3                   ; 2 uses
  %i.aa = icmp eq i64 %n.mod.vf27, 0
  %i.ab = select i1 %i.aa, i64 4, i64 %n.mod.vf27
  %n.vec28 = sub nsw i64 %i.j, %i.ab              ; 2 uses
  %i.ac = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index29 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next33, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi30 = phi <4 x i64> [ %i.ac, %vec.epilog.ph ], [ %i.af, %vec.epilog.vector.body ]
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %index29
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %5 = load <10 x i64>, ptr %i.ae, align 8, !tbaa !25
  %strided.vec32 = shufflevector <10 x i64> %5, <10 x i64> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9>
  %i.af = add <4 x i64> %strided.vec32, %vec.phi30 ; 2 uses
  %index.next33 = add nuw i64 %index29, 4         ; 2 uses
  %i.ag = icmp eq i64 %index.next33, %n.vec28
  br i1 %i.ag, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !103

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ah = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.af)
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec28, %vec.epilog.middle.block ]
  %.0610.ph = phi i64 [ 0, %iter.check ], [ %i.z, %vec.epilog.iter.check ], [ %i.ah, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.06.lcssa = phi i64 [ 0, %.preheader ], [ %i.ar, %.lr.ph ]
  %i.ai = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !15
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !15
  %i.am = tail call i64 @llvm.smax.i64(i64 %i.ak, i64 %i.al)
  %i.an = add i64 %i.am, %.06.lcssa
  br label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %.0610 = phi i64 [ %i.ar, %.lr.ph ], [ %.0610.ph, %.lr.ph.preheader ]
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %indvars.iv
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !25
  %i.ar = add i64 %i.aq, %.0610                   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !104

bb.b:                                             ; preds = %bb.a, %._crit_edge
  %.07 = phi i64 [ %i.an, %._crit_edge ], [ 0, %bb.a ]
  ret i64 %.07
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox16ByteOutputStream10appendBitsEPKmii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = sub nsw i32 %3, %2                       ; 2 uses
  %i.b = sext i32 %i.a to i64                     ; 3 uses
  %i.c = icmp eq i32 %i.a, 1
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !105  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !27   ; 4 uses
  %i.j = icmp sgt i64 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !77
  %i.l = sext i32 %2 to i64                       ; 2 uses
  %i.m = lshr i64 %i.l, 6
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !15
  %i.p = and i64 %i.l, 63
  %i.q = shl nuw i64 1, %i.p
  %i.r = and i64 %i.o, %i.q
  %.not26 = icmp eq i64 %i.r, 0
  %i.s = lshr i64 %i.i, 3
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !35    ; 2 uses
  br i1 %.not26, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = trunc i64 %i.i to i8
  %i.w = and i8 %i.v, 7
  %i.x = shl nuw i8 1, %i.w
  %i.y = or i8 %i.u, %i.x
  br label %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit

bb.e:                                             ; preds = %bb.c
  %i.z = and i64 %i.i, 7
  %i.aa = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !35
  %i.ac = and i8 %i.ab, %i.u
  br label %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit

_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit:    ; preds = %bb.d, %bb.e
  %.sink.i = phi i8 [ %i.ac, %bb.e ], [ %i.y, %bb.d ]
  store i8 %.sink.i, ptr %i.t, align 1, !tbaa !35
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !105
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !27
  %i.ag = add nsw i64 %i.af, 1
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !27
  br label %.critedge

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ai = sext i32 %2 to i64
  %i.aj = add nsw i64 %i.b, 7
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.019 = phi i64 [ 0, %bb.f ], [ %i.ax, %bb.h ]  ; 3 uses
  %i.ak = sub nsw i64 %i.b, %.019
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !105 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !25
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !27 ; 2 uses
  %i.aq = sub nsw i64 %i.an, %i.ap
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.aq, i64 %i.ak) ; 3 uses
  %i.ar = add nsw i64 %.019, %i.ai
  %i.as = load ptr, ptr %i.al, align 8, !tbaa !77
  tail call void @_ZN8facebook5velox4bits8copyBitsEPKmmPmmm(ptr noundef %1, i64 noundef %i.ar, ptr noundef %i.as, i64 noundef %i.ap, i64 noundef %.sroa.speculated)
  %i.at = load ptr, ptr %i.ah, align 8, !tbaa !105
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !27
  %i.aw = add nsw i64 %i.av, %.sroa.speculated
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !27
  %i.ax = add nsw i64 %.sroa.speculated, %.019    ; 3 uses
  %.not = icmp eq i64 %i.ax, %i.b
  br i1 %.not, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = sub i64 %i.aj, %i.ax
  %i.az = lshr i64 %i.ay, 3
  tail call void @_ZN8facebook5velox16ByteOutputStream6extendEl(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %i.az)
  br label %bb.g, !llvm.loop !112

.critedge:                                        ; preds = %bb.g, %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits8copyBitsEPKmmPmmm(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #9 comdat {
bb.a:
  %.not64 = icmp ult i64 %4, 64
  br i1 %.not64, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.b = and i64 %1, 7                            ; 3 uses
  %.not.i = icmp eq i64 %i.b, 0                   ; 2 uses
  %i.c = ptrtoint ptr %2 to i64                   ; 4 uses
  %i.d = and i64 %3, 7                            ; 6 uses
  %i.e = shl nsw i64 -1, %i.d
  %i.f = xor i64 %i.e, -1                         ; 2 uses
  %.not61 = icmp eq i64 %i.d, 0
  %i.g = trunc nuw nsw i64 %i.d to i32
  %notmask23.i = shl nsw i32 -1, %i.g
  %i.h = xor i32 %notmask23.i, 255
  %i.i = zext i32 %i.h to i64                     ; 3 uses
  %i.j = xor i64 %i.i, -1                         ; 2 uses
  %i.k = sub nuw nsw i64 64, %i.d                 ; 2 uses
  br i1 %.not61, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not.i, label %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us.us, label %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us

_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us.us: ; preds = %.lr.ph.split.us, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us.us
  %i.l = phi i64 [ %i.v, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us.us ], [ 64, %.lr.ph.split.us ] ; 3 uses
  %.065.us.us = phi i64 [ %i.l, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us.us ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %i.m = add i64 %.065.us.us, %1
  %i.n = lshr exact i64 %i.m, 3
  %i.o = add i64 %i.n, %i.a
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8, !tbaa !15
  %i.r = add i64 %.065.us.us, %3
  %i.s = lshr exact i64 %i.r, 3
  %i.t = add i64 %i.s, %i.c
  %i.u = inttoptr i64 %i.t to ptr
  store i64 %i.q, ptr %i.u, align 8, !tbaa !15
  %i.v = add i64 %i.l, 64                         ; 2 uses
  %.not.us.us = icmp ugt i64 %i.v, %4
  br i1 %.not.us.us, label %._crit_edge, label %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us.us, !llvm.loop !113

_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us: ; preds = %.lr.ph.split.us, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us
  %i.w = phi i64 [ %i.ak, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us ], [ 64, %.lr.ph.split.us ] ; 3 uses
  %.065.us = phi i64 [ %i.w, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %i.x = add i64 %.065.us, %1
  %i.y = lshr i64 %i.x, 3
  %i.z = add i64 %i.y, %i.a
  %i.aa = inttoptr i64 %i.z to ptr                ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !35
  %i.ae = zext i8 %i.ad to i64
  %i.af = tail call i64 @llvm.fshr.i64(i64 %i.ae, i64 %i.ab, i64 %i.b)
  %i.ag = add i64 %.065.us, %3
  %i.ah = lshr exact i64 %i.ag, 3
  %i.ai = add i64 %i.ah, %i.c
  %i.aj = inttoptr i64 %i.ai to ptr
  store i64 %i.af, ptr %i.aj, align 8, !tbaa !15
  %i.ak = add i64 %i.w, 64                        ; 2 uses
  %.not.us = icmp ugt i64 %i.ak, %4
  br i1 %.not.us, label %._crit_edge, label %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us, !llvm.loop !113

.lr.ph.split:                                     ; preds = %.lr.ph
end_hunk_1
