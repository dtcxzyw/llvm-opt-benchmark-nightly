Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/wieldmesh?download=true
inline.NumInlined: 2216
inline.NumDeleted: 845
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN5scene5SMesh22recalculateBoundingBoxEv:bb.a
  %i.aq = fcmp nsz ogt float %i.s, %i.ap
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store float %i.s, ptr %i.f, align 4, !tbaa !197
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ar = phi float [ %i.s, %bb.f ], [ %i.ap, %bb.e ]
  %i.as = load float, ptr %i.g, align 8, !tbaa !198 ; 2 uses
  %i.at = fcmp nsz ogt float %i.am, %i.as
  br i1 %i.at, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store float %i.am, ptr %i.g, align 8, !tbaa !198
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.au = phi float [ %i.am, %bb.h ], [ %i.as, %bb.g ]
  %i.av = load float, ptr %i.h, align 4, !tbaa !199 ; 2 uses
  %i.aw = fcmp nsz ogt float %i.ao, %i.av
  br i1 %i.aw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store float %i.ao, ptr %i.h, align 4, !tbaa !199
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ax = phi float [ %i.ao, %bb.j ], [ %i.av, %bb.i ]
  %i.ay = load float, ptr %i.e, align 8, !tbaa !200 ; 2 uses
  %i.az = fcmp nsz olt float %i.s, %i.ay
  br i1 %i.az, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store float %i.s, ptr %i.e, align 8, !tbaa !200
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ba = phi float [ %i.s, %bb.l ], [ %i.ay, %bb.k ]
  %i.bb = load float, ptr %i.i, align 4, !tbaa !201 ; 2 uses
  %i.bc = fcmp nsz olt float %i.am, %i.bb
  br i1 %i.bc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store float %i.am, ptr %i.i, align 4, !tbaa !201
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bd = phi float [ %i.am, %bb.n ], [ %i.bb, %bb.m ]
  %i.be = load float, ptr %i.j, align 8, !tbaa !202 ; 2 uses
  %i.bf = fcmp nsz olt float %i.ao, %i.be
  br i1 %i.bf, label %bb.p, label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i

bb.p:                                             ; preds = %bb.o
  store float %i.ao, ptr %i.j, align 8, !tbaa !202
  br label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i

_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i: ; preds = %bb.p, %bb.o
  %i.bg = phi float [ %i.be, %bb.o ], [ %i.ao, %bb.p ]
  %i.bh = load float, ptr %i.p, align 4, !tbaa !194 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !195 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !159 ; 4 uses
  %i.bm = fcmp nsz ogt float %i.bh, %i.ar
  br i1 %i.bm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i
  store float %i.bh, ptr %i.f, align 4, !tbaa !197
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i
  %i.bn = fcmp nsz ogt float %i.bj, %i.au
  br i1 %i.bn, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store float %i.bj, ptr %i.g, align 8, !tbaa !198
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bo = fcmp nsz ogt float %i.bl, %i.ax
  br i1 %i.bo, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store float %i.bl, ptr %i.h, align 4, !tbaa !199
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bp = fcmp nsz olt float %i.bh, %i.ba
  br i1 %i.bp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store float %i.bh, ptr %i.e, align 8, !tbaa !200
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bq = fcmp nsz olt float %i.bj, %i.bd
  br i1 %i.bq, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store float %i.bj, ptr %i.i, align 4, !tbaa !201
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.br = fcmp nsz olt float %i.bl, %i.bg
  br i1 %i.br, label %bb.aa, label %_ZN4core8aabbox3dIfE14addInternalBoxERKS1_.exit

bb.aa:                                            ; preds = %bb.z
  store float %i.bl, ptr %i.j, align 8, !tbaa !202
  br label %_ZN4core8aabbox3dIfE14addInternalBoxERKS1_.exit

_ZN4core8aabbox3dIfE14addInternalBoxERKS1_.exit:  ; preds = %bb.aa, %bb.z, %bb.d, %_ZNK4core8aabbox3dIfE7isEmptyEv.exit
  %.1 = phi i8 [ %.013, %_ZNK4core8aabbox3dIfE7isEmptyEv.exit ], [ 1, %bb.d ], [ 1, %bb.z ], [ 1, %bb.aa ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.08.012, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bs, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.bu, align 4, !tbaa !88
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 76
  store float 0.000000e+00, ptr %i.bv, align 4, !tbaa !159
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 4 dereferenceable(12) %i.bu, i64 12, i1 false), !tbaa.struct !203
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge.thread, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z21createAnimationFramesP14ITextureSourceRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK19TileAnimationParamsRi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.21") align 8 captures(none) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(4) initializes((0, 4)) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  store i32 0, ptr %4, align 4, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !61
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.g = load i8, ptr %3, align 4, !tbaa !346
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.i = call noundef ptr @_ZN14ITextureSource17getTextureForMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPj(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %i.a)
  %i.j = load i32, ptr %i.a, align 4, !tbaa !18
  %i.k = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #26 ; 4 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !166
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !167
  store i32 %i.j, ptr %i.k, align 8
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.i, ptr %.sroa.566.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !tbaa !206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %1, align 8, !tbaa !63
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call i64 %i.q(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 4 uses
  %i.s = and i64 %i.r, 4294967295
  %i.t = icmp ne i64 %i.s, 0
  %i.u = icmp ugt i64 %i.r, 4294967295
  %or.cond = and i1 %i.u, %i.t
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.t

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i32 1, ptr %i.b, align 4, !tbaa !18
  call void @_ZNK19TileAnimationParams15determineParamsEN4core8vector2dIjEEPiS3_PS2_(ptr noundef nonnull align 4 dereferenceable(16) %3, i64 %i.r, ptr noundef nonnull %i.b, ptr noundef nonnull %4, ptr noundef null)
  %i.v = load i32, ptr %i.b, align 4, !tbaa !18   ; 3 uses
  %i.w = sext i32 %i.v to i64                     ; 2 uses
  %i.x = icmp slt i32 %i.v, 0
  br i1 %i.x, label %.noexc, label %_ZNSt6vectorI9FrameSpecSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i

.noexc:                                           ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #28
  unreachable

_ZNSt6vectorI9FrameSpecSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i: ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseI9FrameSpecSaIS0_EEC2EmRKS1_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorI9FrameSpecSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i
  %i.y = shl nuw nsw i64 %i.w, 4                  ; 3 uses
  %i.z = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #26 ; 4 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.w
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.z, i8 0, i64 %i.y, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.z, i64 %i.y
  br label %_ZNSt12_Vector_baseI9FrameSpecSaIS0_EEC2EmRKS1_.exit.thread.i

_ZNSt12_Vector_baseI9FrameSpecSaIS0_EEC2EmRKS1_.exit.thread.i: ; preds = %_ZNSt6vectorI9FrameSpecSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i, %.lr.ph.preheader.i.i.i.i.i
  %i.ab = phi ptr [ %i.z, %.lr.ph.preheader.i.i.i.i.i ], [ null, %_ZNSt6vectorI9FrameSpecSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i ] ; 5 uses
  %.sink.i = phi ptr [ %i.aa, %.lr.ph.preheader.i.i.i.i.i ], [ null, %_ZNSt6vectorI9FrameSpecSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ], [ null, %_ZNSt6vectorI9FrameSpecSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i ]
  store ptr %i.ab, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink.i, ptr %i.ad, align 8, !tbaa !167
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ac, align 8, !tbaa !206
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(112) %5, i32 noundef 4)
          to label %.preheader unwind label %bb.h

.preheader:                                       ; preds = %_ZNSt12_Vector_baseI9FrameSpecSaIS0_EEC2EmRKS1_.exit.thread.i
  %i.ae = load i32, ptr %i.b, align 4, !tbaa !18
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %._crit_edge.i.i.lr.ph, label %._crit_edge

._crit_edge.i.i.lr.ph:                            ; preds = %.preheader
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 40
  br label %._crit_edge.i.i

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %.preheader
  %i.ar = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ar, ptr %5, align 8, !tbaa !63
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.at = getelementptr i8, ptr %i.ar, i64 -24
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds i8, ptr %5, i64 %i.au
  store ptr %i.as, ptr %i.av, align 8, !tbaa !63
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aw, align 8, !tbaa !63
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !59 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %._crit_edge
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !60
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #29
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %._crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aw, align 8, !tbaa !63
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bd) #27
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.be) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %bb.t

bb.h:                                             ; preds = %_ZNSt12_Vector_baseI9FrameSpecSaIS0_EEC2EmRKS1_.exit.thread.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  %indvars.iv = phi i64 [ 0, %._crit_edge.i.i.lr.ph ], [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store ptr %i.ag, ptr %6, align 8, !tbaa !57
  store i64 0, ptr %i.ah, align 8, !tbaa !61
  store i8 0, ptr %i.ag, align 8, !tbaa !60
  %i.bg = load i64, ptr %i.aj, align 8, !tbaa !61
  %i.bh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 noundef 0, i64 noundef %i.bg, ptr noundef nonnull %i.ag, i64 noundef 0)
          to label %.noexc39 unwind label %bb.n   ; 0 uses

.noexc39:                                         ; preds = %._crit_edge.i.i
  %i.bi = load i32, ptr %i.al, align 8, !tbaa !352
  %i.bj = and i32 %i.bi, 3
  %.not.i.i.i = icmp eq i32 %i.bj, 0
  %i.bk = load i64, ptr %i.aj, align 8
  %.0.i.i.i = select i1 %.not.i.i.i, i64 0, i64 %i.bk
  %i.bl = load ptr, ptr %i.ai, align 8, !tbaa !59
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.ak, ptr noundef %i.bl, i64 noundef 0, i64 noundef %.0.i.i.i)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit unwind label %bb.n

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit: ; preds = %.noexc39
  %i.bm = load ptr, ptr %6, align 8, !tbaa !59    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.ag
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit
  %i.bo = load i64, ptr %i.ag, align 8, !tbaa !60
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.bq = load ptr, ptr %2, align 8, !tbaa !59
  %i.br = load i64, ptr %i.d, align 8, !tbaa !61
  %i.bs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %i.bq, i64 noundef %i.br)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.o ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bt = trunc nuw nsw i64 %indvars.iv to i32
  invoke void @_ZNK19TileAnimationParams17getTextureModiferERSoN4core8vector2dIjEEi(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, i64 %i.r, i32 noundef %i.bt)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !353)
  call void @llvm.experimental.noalias.scope.decl(metadata !354)
  store ptr %i.am, ptr %7, align 8, !tbaa !57, !alias.scope !355
  store i64 0, ptr %i.an, align 8, !tbaa !61, !alias.scope !355
  store i8 0, ptr %i.am, align 8, !tbaa !60, !alias.scope !355
  %i.bu = load ptr, ptr %i.ao, align 8, !tbaa !356, !noalias !355 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.bu, null
  %i.bv = load ptr, ptr %i.ap, align 8, !noalias !355 ; 2 uses
  %i.bw = icmp ugt ptr %i.bu, %i.bv
  %.08.i.i.i = select i1 %i.bw, ptr %i.bu, ptr %i.bv ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bx = load ptr, ptr %i.aq, align 8, !tbaa !357, !noalias !355 ; 2 uses
  %i.by = ptrtoint ptr %.08.i.i.i to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef %i.bx, i64 noundef %i.ca)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = load ptr, ptr %7, align 8, !tbaa !59, !alias.scope !355 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.am
  br i1 %i.ce, label %.body42, label %.body42.sink.split

bb.l:                                             ; preds = %bb.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.l, %bb.j
  %i.cf = invoke noundef ptr @_ZN14ITextureSource17getTextureForMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPj(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull %i.c)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %indvars.iv ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr %i.cf, ptr %i.ch, align 8, !tbaa !174
  %i.ci = load ptr, ptr %7, align 8, !tbaa !59    ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.am
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.m
  %i.ck = load i64, ptr %i.am, align 8, !tbaa !60
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.cm = load i32, ptr %i.c, align 4, !tbaa !18
  store i32 %i.cm, ptr %i.cg, align 8, !tbaa !358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cn = load i32, ptr %i.b, align 4, !tbaa !18
  %i.co = sext i32 %i.cn to i64
  %i.cp = icmp slt i64 %indvars.iv.next, %i.co
  br i1 %i.cp, label %._crit_edge.i.i, label %._crit_edge, !llvm.loop !345

bb.n:                                             ; preds = %.noexc39, %._crit_edge.i.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  %i.cr = load ptr, ptr %6, align 8, !tbaa !59    ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.ag
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %bb.n
  %i.ct = load i64, ptr %i.ag, align 8, !tbaa !60
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.q

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cx = load ptr, ptr %7, align 8, !tbaa !59    ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.am
  br i1 %i.cy, label %.body42, label %.body42.sink.split
end_hunk_0
