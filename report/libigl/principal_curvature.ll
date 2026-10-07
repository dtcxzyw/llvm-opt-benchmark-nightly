Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/principal_curvature?download=true
inline.NumInlined: 17939
inline.NumDeleted: 8729
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 147
loop-unroll.NumUnrolled: 163
begin_hunk_0_@_ZN19CurvatureCalculator10fitQuadricERKN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEERKSt6vectorIS2_SaIS2_EERKS5_IiSaIiEEPNS_7QuadricE:bb.a
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %.pre65 = load ptr, ptr %5, align 8, !tbaa !88
  br label %bb.n

bb.l:                                             ; preds = %bb.j, %bb.h
  %i.cy = phi ptr [ %.pre64, %bb.j ], [ %i.s, %bb.h ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cz = load ptr, ptr %i.i, align 8, !tbaa !90
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cy to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef %i.dc) #32
  br label %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EED2Ev.exit

_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EED2Ev.exit: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret void

bb.n:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.k
  %i.dd = phi ptr [ %i.bv, %.loopexit.split-lp ], [ %.pre65, %bb.k ], [ %i.bv, %.loopexit ] ; 3 uses
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.cx, %bb.k ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i32 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EED2Ev.exit33, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !90
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.dd to i64
  %i.di = sub i64 %i.dg, %i.dh
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.di) #32
  br label %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EED2Ev.exit33

_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EED2Ev.exit33: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN19CurvatureCalculator7Quadric3fitERKSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS4_EE(ptr dead_on_unwind noalias writable sret(%"class.CurvatureCalculator::Quadric") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i:
  %2 = alloca %"class.Eigen::Matrix", align 8     ; 10 uses
  %3 = alloca %"class.Eigen::Matrix", align 8     ; 18 uses
  %4 = alloca %"class.Eigen::Matrix", align 8     ; 10 uses
  %5 = alloca %"class.Eigen::JacobiSVD", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89   ; 8 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !88     ; 11 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 19 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %.not.i = icmp eq ptr %i.b, %i.c                ; 2 uses
  br i1 %.not.i, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ImiEERKT_RKT0_.exit.thread, label %bb.a

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ImiEERKT_RKT0_.exit.thread: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  store i64 %i.g, ptr %i.h, align 8, !tbaa !70
  store i64 5, ptr %i.i, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i47

bb.a:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.l = icmp sgt i64 %i.f, 0
  br i1 %i.l, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, label %bb.b

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.a
  %i.m = mul nuw i64 %i.g, 40
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #33 ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.noexc54, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i58

.noexc54:                                         ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !73
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
  unreachable

bb.b:                                             ; preds = %bb.a
  store i64 %i.g, ptr %i.h, align 8, !tbaa !70
  store i64 5, ptr %i.i, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %.sink.split.i56

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i58: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  store ptr %i.n, ptr %2, align 8, !tbaa !69
  store i64 %i.g, ptr %i.h, align 8, !tbaa !70
  store i64 5, ptr %i.i, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = shl nuw nsw i64 %i.g, 3
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.w) #33 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.c, label %.sink.split.i56

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i58
  %i.z = tail call ptr @__cxa_allocate_exception(i64 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.z, align 8, !tbaa !73
  invoke void @__cxa_throw(ptr nonnull %i.z, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
          to label %.noexc60 unwind label %bb.d

.noexc60:                                         ; preds = %bb.c
  unreachable

.sink.split.i56:                                  ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i58
  %i.aa = phi ptr [ %i.v, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i58 ], [ %i.s, %bb.b ]
  %i.ab = phi ptr [ %i.u, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i58 ], [ %i.r, %bb.b ]
  %.sink.i94 = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i58 ], [ null, %bb.b ]
  %.sink.i57 = phi ptr [ %i.x, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i58 ], [ null, %bb.b ] ; 2 uses
  store ptr %.sink.i57, ptr %3, align 8, !tbaa !69
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i47

bb.d:                                             ; preds = %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i47: ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ImiEERKT_RKT0_.exit.thread, %.sink.split.i56
  %i.ad = phi ptr [ %i.k, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ImiEERKT_RKT0_.exit.thread ], [ %i.aa, %.sink.split.i56 ]
  %i.ae = phi ptr [ %i.j, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ImiEERKT_RKT0_.exit.thread ], [ %i.ab, %.sink.split.i56 ]
  %i.af = phi ptr [ null, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ImiEERKT_RKT0_.exit.thread ], [ %.sink.i94, %.sink.split.i56 ] ; 17 uses
  %i.ag = phi ptr [ null, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ImiEERKT_RKT0_.exit.thread ], [ %.sink.i57, %.sink.split.i56 ] ; 10 uses
  store i64 %i.g, ptr %i.ae, align 8, !tbaa !70
  store i64 1, ptr %i.ad, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.aj = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #33 ; 4 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.e, label %.sink.split.i63

bb.e:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i47
  %i.al = tail call ptr @__cxa_allocate_exception(i64 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.al, align 8, !tbaa !73
  invoke void @__cxa_throw(ptr nonnull %i.al, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
          to label %.noexc67 unwind label %bb.f

.noexc67:                                         ; preds = %bb.e
  unreachable

.sink.split.i63:                                  ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i47
  store ptr %i.aj, ptr %4, align 8, !tbaa !69
  store i64 5, ptr %i.ah, align 8, !tbaa !70
  store i64 1, ptr %i.ai, align 8, !tbaa !71
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.sink.split.i63
  %.idx = shl nsw i64 %i.g, 4                     ; 3 uses
  %.idx82 = shl i64 %i.g, 5                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.g, 56
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.am = add nsw i64 %i.g, -1                    ; 2 uses
  %i.an = and i64 %i.am, 4294967295
  %i.ao = icmp eq i64 %i.an, 4294967295
  %i.ap = icmp ugt i64 %i.am, 4294967295
  %i.aq = or i1 %i.ao, %i.ap
  br i1 %i.aq, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ar = shl nuw nsw i64 %i.g, 3                 ; 3 uses
  %i.as = getelementptr i8, ptr %i.af, i64 %i.ar  ; 6 uses
  %i.at = shl nuw nsw i64 %i.g, 3
  %i.au = getelementptr i8, ptr %i.af, i64 %i.at  ; 6 uses
  %i.av = shl nuw nsw i64 %i.g, 4
  %i.aw = getelementptr i8, ptr %i.af, i64 %i.av  ; 6 uses
  %i.ax = getelementptr i8, ptr %i.af, i64 %.idx  ; 5 uses
  %i.ay = getelementptr i8, ptr %i.af, i64 %i.f   ; 5 uses
  %i.az = getelementptr i8, ptr %i.af, i64 %i.f   ; 5 uses
  %i.ba = add i64 %i.ar, %i.d
  %i.bb = sub i64 %i.ba, %i.e
  %i.bc = getelementptr i8, ptr %i.af, i64 %i.bb  ; 5 uses
  %i.bd = getelementptr i8, ptr %i.af, i64 %.idx82 ; 6 uses
  %i.be = mul nuw i64 %i.g, 40
  %i.bf = getelementptr i8, ptr %i.af, i64 %i.be  ; 6 uses
  %i.bg = getelementptr i8, ptr %i.ag, i64 %i.ar  ; 6 uses
  %bound0 = icmp ult ptr %i.af, %i.aw
  %bound1 = icmp ult ptr %i.au, %i.as
  %found.conflict = and i1 %bound0, %bound1
  %bound0184 = icmp ult ptr %i.af, %i.ay
  %bound1185 = icmp ult ptr %i.ax, %i.as
  %found.conflict186 = and i1 %bound0184, %bound1185
  %conflict.rdx = or i1 %found.conflict, %found.conflict186
  %bound0187 = icmp ult ptr %i.af, %i.bc
  %bound1188 = icmp ult ptr %i.az, %i.as
  %found.conflict189 = and i1 %bound0187, %bound1188
  %conflict.rdx190 = or i1 %conflict.rdx, %found.conflict189
  %bound0191 = icmp ult ptr %i.af, %i.bf
  %bound1192 = icmp ult ptr %i.bd, %i.as
  %found.conflict193 = and i1 %bound0191, %bound1192
  %conflict.rdx194 = or i1 %conflict.rdx190, %found.conflict193
  %bound0195 = icmp ult ptr %i.af, %i.bg
  %bound1196 = icmp ult ptr %i.ag, %i.as
  %found.conflict197 = and i1 %bound0195, %bound1196
  %conflict.rdx198 = or i1 %conflict.rdx194, %found.conflict197
  %bound0199 = icmp ult ptr %i.af, %i.b
  %bound1200 = icmp ult ptr %i.c, %i.as
  %found.conflict201 = and i1 %bound0199, %bound1200
  %conflict.rdx202 = or i1 %conflict.rdx198, %found.conflict201
  %bound0203 = icmp ult ptr %i.au, %i.ay
  %bound1204 = icmp ult ptr %i.ax, %i.aw
  %found.conflict205 = and i1 %bound0203, %bound1204
  %conflict.rdx206 = or i1 %conflict.rdx202, %found.conflict205
  %bound0207 = icmp ult ptr %i.au, %i.bc
  %bound1208 = icmp ult ptr %i.az, %i.aw
  %found.conflict209 = and i1 %bound0207, %bound1208
  %conflict.rdx210 = or i1 %conflict.rdx206, %found.conflict209
  %bound0211 = icmp ult ptr %i.au, %i.bf
  %bound1212 = icmp ult ptr %i.bd, %i.aw
  %found.conflict213 = and i1 %bound0211, %bound1212
  %conflict.rdx214 = or i1 %conflict.rdx210, %found.conflict213
  %bound0215 = icmp ult ptr %i.au, %i.bg
  %bound1216 = icmp ult ptr %i.ag, %i.aw
  %found.conflict217 = and i1 %bound0215, %bound1216
  %conflict.rdx218 = or i1 %conflict.rdx214, %found.conflict217
  %bound0219 = icmp ult ptr %i.au, %i.b
  %bound1220 = icmp ult ptr %i.c, %i.aw
  %found.conflict221 = and i1 %bound0219, %bound1220
  %conflict.rdx222 = or i1 %conflict.rdx218, %found.conflict221
  %bound0227 = icmp ult ptr %i.ax, %i.bf
  %bound1228 = icmp ult ptr %i.bd, %i.ay
  %found.conflict229 = and i1 %bound0227, %bound1228
  %conflict.rdx230 = or i1 %conflict.rdx222, %found.conflict229
  %bound0231 = icmp ult ptr %i.ax, %i.bg
  %bound1232 = icmp ult ptr %i.ag, %i.ay
  %found.conflict233 = and i1 %bound0231, %bound1232
  %conflict.rdx234 = or i1 %conflict.rdx230, %found.conflict233
  %bound0235 = icmp ult ptr %i.ax, %i.b
  %bound1236 = icmp ult ptr %i.c, %i.ay
  %found.conflict237 = and i1 %bound0235, %bound1236
  %conflict.rdx238 = or i1 %conflict.rdx234, %found.conflict237
  %bound0239 = icmp ult ptr %i.az, %i.bf
  %bound1240 = icmp ult ptr %i.bd, %i.bc
  %found.conflict241 = and i1 %bound0239, %bound1240
  %conflict.rdx242 = or i1 %conflict.rdx238, %found.conflict241
  %bound0243 = icmp ult ptr %i.az, %i.bg
  %bound1244 = icmp ult ptr %i.ag, %i.bc
  %found.conflict245 = and i1 %bound0243, %bound1244
  %conflict.rdx246 = or i1 %conflict.rdx242, %found.conflict245
  %bound0247 = icmp ult ptr %i.az, %i.b
  %bound1248 = icmp ult ptr %i.c, %i.bc
  %found.conflict249 = and i1 %bound0247, %bound1248
  %conflict.rdx250 = or i1 %conflict.rdx246, %found.conflict249
  %bound0251 = icmp ult ptr %i.bd, %i.bg
  %bound1252 = icmp ult ptr %i.ag, %i.bf
  %found.conflict253 = and i1 %bound0251, %bound1252
  %conflict.rdx254 = or i1 %conflict.rdx250, %found.conflict253
  %bound0255 = icmp ult ptr %i.bd, %i.b
  %bound1256 = icmp ult ptr %i.c, %i.bf
  %found.conflict257 = and i1 %bound0255, %bound1256
  %conflict.rdx258 = or i1 %conflict.rdx254, %found.conflict257
  %bound0259 = icmp ult ptr %i.ag, %i.b
  %bound1260 = icmp ult ptr %i.c, %i.bg
  %found.conflict261 = and i1 %bound0259, %bound1260
  %conflict.rdx262 = or i1 %conflict.rdx258, %found.conflict261
  br i1 %conflict.rdx262, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, 8589934590               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %index ; 3 uses
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %index ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load double, ptr %i.bh, align 8, !tbaa !74, !alias.scope !422
  %i.bl = load double, ptr %i.bj, align 8, !tbaa !74, !alias.scope !422
  %i.bm = insertelement <2 x double> poison, double %i.bk, i64 0
  %i.bn = insertelement <2 x double> %i.bm, double %i.bl, i64 1 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bq = load double, ptr %i.bo, align 8, !tbaa !74, !alias.scope !422
  %i.br = load double, ptr %i.bp, align 8, !tbaa !74, !alias.scope !422
  %i.bs = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.bt = insertelement <2 x double> %i.bs, double %i.br, i64 1 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bw = load double, ptr %i.bu, align 8, !tbaa !74, !alias.scope !422
  %i.bx = load double, ptr %i.bv, align 8, !tbaa !74, !alias.scope !422
  %i.by = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.bz = insertelement <2 x double> %i.by, double %i.bx, i64 1
  %i.ca = getelementptr [8 x i8], ptr %i.af, i64 %index ; 5 uses
  %i.cb = fmul <2 x double> %i.bn, %i.bn
  store <2 x double> %i.cb, ptr %i.ca, align 8, !tbaa !74, !alias.scope !423, !noalias !424
  %i.cc = getelementptr [8 x i8], ptr %i.ca, i64 %i.g
  %i.cd = fmul <2 x double> %i.bn, %i.bt
  store <2 x double> %i.cd, ptr %i.cc, align 8, !tbaa !74, !alias.scope !425, !noalias !426
  %i.ce = getelementptr i8, ptr %i.ca, i64 %.idx
  %i.cf = fmul <2 x double> %i.bt, %i.bt
  store <2 x double> %i.cf, ptr %i.ce, align 8, !tbaa !74, !alias.scope !427, !noalias !428
  %i.cg = getelementptr i8, ptr %i.ca, i64 %i.f
  store <2 x double> %i.bn, ptr %i.cg, align 8, !tbaa !74, !alias.scope !429, !noalias !430
  %i.ch = getelementptr i8, ptr %i.ca, i64 %.idx82
  store <2 x double> %i.bt, ptr %i.ch, align 8, !tbaa !74, !alias.scope !431, !noalias !432
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %index
  store <2 x double> %i.bz, ptr %i.ci, align 8, !tbaa !74, !alias.scope !433, !noalias !422
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !420

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

bb.f:                                             ; preds = %bb.e
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %.body49

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %.sink.split.i63
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  invoke void @_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9jacobiSvdEj(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::JacobiSVD") align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 40)
          to label %bb.g unwind label %bb.k

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %indvars.iv ; 3 uses
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !74 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.co = load double, ptr %i.cn, align 8, !tbaa !74 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !74
  %i.cr = getelementptr [8 x i8], ptr %i.af, i64 %indvars.iv ; 5 uses
  %i.cs = fmul double %i.cm, %i.cm
  store double %i.cs, ptr %i.cr, align 8, !tbaa !74
  %i.ct = getelementptr [8 x i8], ptr %i.cr, i64 %i.g
  %i.cu = fmul double %i.cm, %i.co
  store double %i.cu, ptr %i.ct, align 8, !tbaa !74
  %i.cv = getelementptr i8, ptr %i.cr, i64 %.idx
  %i.cw = fmul double %i.co, %i.co
  store double %i.cw, ptr %i.cv, align 8, !tbaa !74
  %i.cx = getelementptr i8, ptr %i.cr, i64 %i.f
  store double %i.cm, ptr %i.cx, align 8, !tbaa !74
  %i.cy = getelementptr i8, ptr %i.cr, i64 %.idx82
  store double %i.co, ptr %i.cy, align 8, !tbaa !74
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv
  store double %i.cq, ptr %i.cz, align 8, !tbaa !74
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.da = and i64 %indvars.iv.next, 4294967295
  %i.db = icmp ugt i64 %i.g, %i.da
  br i1 %i.db, label %scalar.ph, label %._crit_edge, !llvm.loop !421

bb.g:                                             ; preds = %._crit_edge
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !97 ; 6 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.dd, 5
  %i.de = load i64, ptr %i.ai, align 8            ; 2 uses
  %.not11.i.i.i.i.i.i = icmp eq i64 %i.de, 1
  %or.cond.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 %.not11.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4_setINS_5SolveINS_7SVDBaseINS_9JacobiSVDIS2_Li2EEEEES2_EEEERS2_RKNS_9DenseBaseIT_EE.exit.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i: ; preds = %bb.g
  %i.df = mul nsw i64 %i.de, 5
  %.not.i69 = icmp eq i64 %i.dd, %i.df
  br i1 %.not.i69, label %.noexc51, label %bb.h

bb.h:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i
  call void @free(ptr noundef nonnull %i.aj) #29
  %i.dg = icmp sgt i64 %i.dd, 0
  br i1 %i.dg, label %bb.i, label %.sink.split.i70

bb.i:                                             ; preds = %bb.h
  %i.dh = icmp samesign ugt i64 %i.dd, 2305843009213693951
  br i1 %i.dh, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i72

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i72: ; preds = %bb.i
  %i.di = shl nuw i64 %i.dd, 3
  %i.dj = call noalias ptr @malloc(i64 noundef %i.di) #33 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, null
end_hunk_0
