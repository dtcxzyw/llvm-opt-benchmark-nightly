Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencc/original/DartsDict?download=true
inline.NumInlined: 1274
inline.NumDeleted: 491
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN5Darts7Details11DawgBuilder5flushEj:bb.a
  br i1 %i.jh, label %bb.af, label %_ZN5Darts7Details11DawgBuilder9free_nodeEj.exit

bb.af:                                            ; preds = %.lr.ph119
  %i.ji = add i64 %i.ja, 1                        ; 3 uses
  %i.jj = shl i64 %i.ja, 1
  %.not.i69 = icmp ult i64 %i.ji, %i.jj
  br i1 %.not.i69, label %.preheader.i82, label %.loopexit30.i70

.preheader.i82:                                   ; preds = %bb.af, %.preheader.i82
  %.019.i83 = phi i64 [ %i.jl, %.preheader.i82 ], [ 1, %bb.af ] ; 3 uses
  %i.jk = icmp ult i64 %.019.i83, %i.ji
  %i.jl = shl i64 %.019.i83, 1
  br i1 %i.jk, label %.preheader.i82, label %.loopexit30.i70, !llvm.loop !18

.loopexit30.i70:                                  ; preds = %.preheader.i82, %bb.af
  %.1.i71 = phi i64 [ %i.ji, %bb.af ], [ %.019.i83, %.preheader.i82 ] ; 3 uses
  %i.jm = shl i64 %.1.i71, 2
  %i.jn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.jm) #29
          to label %_ZN5Darts7Details9AutoArrayIcE5resetEPc.exit.i74 unwind label %bb.ag ; 9 uses

bb.ag:                                            ; preds = %.loopexit30.i70
  %i.jo = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9bad_alloc             ; 3 uses
  %i.jp = extractvalue { ptr, i32 } %i.jo, 1
  %i.jq = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9bad_alloc) #28
  %i.jr = icmp eq i32 %i.jp, %i.jq
  br i1 %i.jr, label %bb.ah, label %common.resume

bb.ah:                                            ; preds = %bb.ag
  %i.js = extractvalue { ptr, i32 } %i.jo, 0
  %i.jt = call ptr @__cxa_begin_catch(ptr %i.js) #28 ; 0 uses
  %i.ju = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Darts7Details9ExceptionE, i64 16), ptr %i.ju, align 8, !tbaa !41
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  store ptr @.str.22, ptr %i.jv, align 8, !tbaa !131
  invoke void @__cxa_throw(ptr nonnull %i.ju, ptr nonnull @_ZTIN5Darts7Details9ExceptionE, ptr nonnull @_ZNSt9exceptionD2Ev) #27
          to label %bb.al unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.jw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ak

_ZN5Darts7Details9AutoArrayIcE5resetEPc.exit.i74: ; preds = %.loopexit30.i70
  %.not23.i75 = icmp eq i64 %i.ja, 0
  %.pre.i76 = load ptr, ptr %i.v, align 8, !tbaa !117 ; 9 uses
  br i1 %.not23.i75, label %.loopexit.i80, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZN5Darts7Details9AutoArrayIcE5resetEPc.exit.i74
  %.pre.i76174 = ptrtoaddr ptr %.pre.i76 to i64
  %i.jx = ptrtoaddr ptr %i.jn to i64
  %min.iters.check = icmp ult i64 %i.ja, 8
  %i.jy = sub i64 %.pre.i76174, %i.jx
  %diff.check = icmp ugt i64 %i.jy, -32
  %or.cond229 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond229, label %.preheader.preheader230, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %n.vec = and i64 %i.ja, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %index ; 2 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %.pre.i76, i64 %index ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  %wide.load = load <4 x i32>, ptr %i.ka, align 4, !tbaa !56
  %wide.load175 = load <4 x i32>, ptr %i.kb, align 4, !tbaa !56
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  store <4 x i32> %wide.load, ptr %i.jz, align 4, !tbaa !56
  store <4 x i32> %wide.load175, ptr %i.kc, align 4, !tbaa !56
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kd = icmp eq i64 %index.next, %n.vec
  br i1 %i.kd, label %middle.block, label %vector.body, !llvm.loop !248

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ja, %n.vec
  br i1 %cmp.n, label %.loopexit.thread.i79, label %.preheader.preheader230

.preheader.preheader230:                          ; preds = %.preheader.preheader, %middle.block
  %.031.i77.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter241 = and i64 %i.ja, 3                 ; 2 uses
  %lcmp.mod242.not = icmp eq i64 %xtraiter241, 0
  br i1 %lcmp.mod242.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader230, %.preheader.prol
  %.031.i77.prol = phi i64 [ %i.kh, %.preheader.prol ], [ %.031.i77.ph, %.preheader.preheader230 ] ; 3 uses
  %prol.iter243 = phi i64 [ %prol.iter243.next, %.preheader.prol ], [ 0, %.preheader.preheader230 ]
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %.031.i77.prol
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %.pre.i76, i64 %.031.i77.prol
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !56
  store i32 %i.kg, ptr %i.ke, align 4, !tbaa !56
  %i.kh = add nuw i64 %.031.i77.prol, 1           ; 2 uses
  %prol.iter243.next = add i64 %prol.iter243, 1   ; 2 uses
  %prol.iter243.cmp.not = icmp eq i64 %prol.iter243.next, %xtraiter241
  br i1 %prol.iter243.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !249

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader230
  %.031.i77.unr = phi i64 [ %.031.i77.ph, %.preheader.preheader230 ], [ %i.kh, %.preheader.prol ]
  %i.ki = sub i64 %.031.i77.ph, %i.ja
  %i.kj = icmp ugt i64 %i.ki, -4
  br i1 %i.kj, label %.loopexit.thread.i79, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.031.i77 = phi i64 [ %i.kz, %.preheader ], [ %.031.i77.unr, %.preheader.prol.loopexit ] ; 6 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %.031.i77
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %.pre.i76, i64 %.031.i77
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !56
  store i32 %i.km, ptr %i.kk, align 4, !tbaa !56
  %i.kn = add nuw i64 %.031.i77, 1                ; 2 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %i.kn
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %.pre.i76, i64 %i.kn
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !56
  store i32 %i.kq, ptr %i.ko, align 4, !tbaa !56
  %i.kr = add nuw i64 %.031.i77, 2                ; 2 uses
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %i.kr
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %.pre.i76, i64 %i.kr
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !56
  store i32 %i.ku, ptr %i.ks, align 4, !tbaa !56
  %i.kv = add nuw i64 %.031.i77, 3                ; 2 uses
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %i.kv
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %.pre.i76, i64 %i.kv
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !56
  store i32 %i.ky, ptr %i.kw, align 4, !tbaa !56
  %i.kz = add nuw i64 %.031.i77, 4                ; 2 uses
  %exitcond.not.i78.3 = icmp eq i64 %i.kz, %i.ja
  br i1 %exitcond.not.i78.3, label %.loopexit.thread.i79, label %.preheader, !llvm.loop !250

.loopexit.thread.i79:                             ; preds = %.preheader.prol.loopexit, %.preheader, %middle.block
  store ptr %i.jn, ptr %i.v, align 8, !tbaa !117
  store i64 %.1.i71, ptr %i.x, align 8, !tbaa !153
  br label %bb.aj

.loopexit.i80:                                    ; preds = %_ZN5Darts7Details9AutoArrayIcE5resetEPc.exit.i74
  store ptr %i.jn, ptr %i.v, align 8, !tbaa !117
  store i64 %.1.i71, ptr %i.x, align 8, !tbaa !153
  %.not.i.i.i81 = icmp eq ptr %.pre.i76, null
  br i1 %.not.i.i.i81, label %_ZN5Darts7Details11DawgBuilder9free_nodeEj.exit, label %bb.aj

bb.aj:                                            ; preds = %.loopexit.i80, %.loopexit.thread.i79
  call void @_ZdaPv(ptr noundef nonnull %.pre.i76) #30
  %.pre.i.i.i.i.pre = load i64, ptr %i.w, align 8, !tbaa !152
  br label %_ZN5Darts7Details11DawgBuilder9free_nodeEj.exit

bb.ak:                                            ; preds = %bb.ai
  %i.la = landingpad { ptr, i32 }
          catch ptr null
  %i.lb = extractvalue { ptr, i32 } %i.la, 0
  call void @__clang_call_terminate(ptr %i.lb) #31
  unreachable

bb.al:                                            ; preds = %bb.ah
  unreachable

_ZN5Darts7Details11DawgBuilder9free_nodeEj.exit:  ; preds = %bb.aj, %.loopexit.i80, %.lr.ph119
  %i.lc = phi i64 [ %i.ja, %.lr.ph119 ], [ 0, %.loopexit.i80 ], [ %.pre.i.i.i.i.pre, %bb.aj ] ; 2 uses
  %i.ld = add i64 %i.lc, 1                        ; 2 uses
  store i64 %i.ld, ptr %i.w, align 8, !tbaa !152
  %i.le = load ptr, ptr %i.v, align 8, !tbaa !117
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %i.lc
  store i32 %.0117, ptr %i.lf, align 4, !tbaa !56
  %.not38 = icmp eq i32 %i.jf, 0
  br i1 %.not38, label %._crit_edge120, label %.lr.ph119, !llvm.loop !251

._crit_edge124:                                   ; preds = %._crit_edge120, %bb.a
  %.lcssa = phi i64 [ %i.d, %bb.a ], [ %i.ir, %._crit_edge120 ]
  %i.lg = add i64 %.lcssa, -1
  store i64 %i.lg, ptr %i.c, align 8, !tbaa !152
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Darts7Details11DawgBuilder12expand_tableEv(ptr noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #23 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !152  ; 3 uses
  %i.d = shl i64 %i.c, 1                          ; 5 uses
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %_ZN5Darts7Details8AutoPoolIjE6resizeEm.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  store i64 0, ptr %i.b, align 8, !tbaa !152
  br label %_ZN5Darts7Details8AutoPoolIjE6resizeEm.exit.i

_ZN5Darts7Details8AutoPoolIjE6resizeEm.exit.i:    ; preds = %.lr.ph.preheader.i.i, %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !117  ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN5Darts7Details8AutoPoolIjE6resizeEm.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #30
  store ptr null, ptr %i.a, align 8, !tbaa !117
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN5Darts7Details8AutoPoolIjE6resizeEm.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %1

1:                                                ; preds = %bb.c
  tail call void @_ZN5Darts7Details8AutoPoolIjE10resize_bufEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.d)
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !152
  br label %bb.d

bb.d:                                             ; preds = %1, %bb.c
  %2 = phi i64 [ %.pre.i, %1 ], [ 0, %bb.c ]      ; 3 uses
  %i.f = icmp ult i64 %2, %i.d
  br i1 %i.f, label %.lr.ph9.i, label %_ZN5Darts7Details8AutoPoolIjE6resizeEmRKj.exit

.lr.ph9.i:                                        ; preds = %bb.d
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !117
  %i.h = shl i64 %2, 2                            ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %i.g, i64 %i.h
  %i.i = shl i64 %i.c, 3
  %i.j = sub i64 %i.i, %i.h
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.j, i1 false), !tbaa !56
  store i64 %i.d, ptr %i.b, align 8, !tbaa !152
  br label %_ZN5Darts7Details8AutoPoolIjE6resizeEmRKj.exit

_ZN5Darts7Details8AutoPoolIjE6resizeEmRKj.exit:   ; preds = %bb.d, %.lr.ph9.i
  %3 = phi i64 [ %2, %bb.d ], [ %i.d, %.lr.ph9.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !135  ; 2 uses
  %i.n = icmp ugt i64 %i.m, 1
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Darts7Details8AutoPoolIjE6resizeEmRKj.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !117  ; 2 uses
  br label %bb.e

._crit_edge:                                      ; preds = %bb.k, %_ZN5Darts7Details8AutoPoolIjE6resizeEmRKj.exit
  ret void

bb.e:                                             ; preds = %.lr.ph, %bb.k
  %.012 = phi i64 [ 1, %.lr.ph ], [ %i.bb, %bb.k ] ; 3 uses
  %i.q = trunc i64 %.012 to i32                   ; 2 uses
  %i.r = and i64 %.012, 4294967295                ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !38
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !117
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.r
  %i.x = load i32, ptr %i.w, align 4, !tbaa !147
  %i.y = and i32 %i.x, 2
  %.not10 = icmp eq i32 %i.y, 0
  br i1 %.not10, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not12.i.i = icmp eq i32 %i.q, 0
  br i1 %.not12.i.i, label %_ZNK5Darts7Details11DawgBuilder9hash_unitEj.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g
  %i.z = load ptr, ptr %i.k, align 8, !tbaa !117
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.aa = and i64 %indvars.iv.next.i.i, 4294967295
  %exitcond = icmp eq i64 %i.aa, 0
  br i1 %exitcond, label %_ZNK5Darts7Details11DawgBuilder9hash_unitEj.exit.i, label %bb.i, !llvm.loop !252

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %i.r, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.h ] ; 3 uses
  %.01014.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.at, %bb.h ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i.i
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !147 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv.i.i
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !38
  %i.af = zext i8 %i.ae to i32
  %i.ag = shl nuw i32 %i.af, 24
  %i.ah = xor i32 %i.ac, %i.ag
  %i.ai = xor i32 %i.ah, -1
  %i.aj = shl i32 %i.ac, 15
  %i.ak = add i32 %i.aj, %i.ai                    ; 2 uses
  %i.al = lshr i32 %i.ak, 12
  %i.am = xor i32 %i.al, %i.ak
  %i.an = mul i32 %i.am, 5                        ; 2 uses
  %i.ao = lshr i32 %i.an, 4
  %i.ap = xor i32 %i.ao, %i.an
  %i.aq = mul i32 %i.ap, 2057                     ; 2 uses
  %i.ar = lshr i32 %i.aq, 16
  %i.as = xor i32 %.01014.i.i, %i.ar
  %i.at = xor i32 %i.as, %i.aq                    ; 3 uses
  %i.au = trunc i32 %i.ac to i1
  br i1 %i.au, label %bb.h, label %_ZNK5Darts7Details11DawgBuilder9hash_unitEj.exit.i

_ZNK5Darts7Details11DawgBuilder9hash_unitEj.exit.i: ; preds = %bb.i, %bb.h, %bb.g
  %.1.i.i = phi i32 [ 0, %bb.g ], [ %i.at, %bb.h ], [ %i.at, %bb.i ]
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !117 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %_ZNK5Darts7Details11DawgBuilder9hash_unitEj.exit.i
  %.pn.in.i = phi i32 [ %.1.i.i, %_ZNK5Darts7Details11DawgBuilder9hash_unitEj.exit.i ], [ %i.az, %bb.j ]
  %.pn.i = zext i32 %.pn.in.i to i64
  %storemerge.in.i = urem i64 %.pn.i, %3          ; 3 uses
  %storemerge.i = trunc nuw i64 %storemerge.in.i to i32
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %storemerge.in.i
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !56
  %i.ay = icmp eq i32 %i.ax, 0
  %i.az = add i32 %storemerge.i, 1
  br i1 %i.ay, label %_ZNK5Darts7Details11DawgBuilder9find_unitEjPj.exit, label %bb.j, !llvm.loop !253

_ZNK5Darts7Details11DawgBuilder9find_unitEjPj.exit: ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %storemerge.in.i
  store i32 %i.q, ptr %i.ba, align 4, !tbaa !56
  br label %bb.k

bb.k:                                             ; preds = %_ZNK5Darts7Details11DawgBuilder9find_unitEjPj.exit, %bb.f
  %i.bb = add nuw i64 %.012, 1                    ; 2 uses
  %exitcond14.not = icmp eq i64 %i.bb, %i.m
  br i1 %exitcond14.not, label %._crit_edge, label %bb.e, !llvm.loop !254
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK5Darts7Details11DawgBuilder9find_nodeEjPj(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #23 comdat align 2 {
bb.a:
  %.not9.i = icmp eq i32 %1, 0                    ; 2 uses
  br i1 %.not9.i, label %_ZNK5Darts7Details11DawgBuilder9hash_nodeEj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !117
  br label %bb.b

bb.b:                                             ; preds = %_ZNK5Darts7Details8DawgNode4unitEv.exit.i, %.lr.ph.i
  %.011.i = phi i32 [ %1, %.lr.ph.i ], [ %i.ai, %_ZNK5Darts7Details8DawgNode4unitEv.exit.i ]
  %.0810.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ag, %_ZNK5Darts7Details8DawgNode4unitEv.exit.i ]
  %i.b = zext i32 %.011.i to i64
  %i.c = getelementptr inbounds nuw [12 x i8], ptr %i.a, i64 %i.b ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i8, ptr %i.d, align 4, !tbaa !161   ; 2 uses
  %i.f = icmp eq i8 %i.e, 0
  %i.g = load i32, ptr %i.c, align 4, !tbaa !162  ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = shl i32 %i.g, 1
  br label %_ZNK5Darts7Details8DawgNode4unitEv.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = shl i32 %i.g, 2
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %i.k = load i8, ptr %i.j, align 1, !tbaa !164, !range !148, !noundef !149
  %i.l = shl nuw nsw i8 %i.k, 1
  %i.m = zext nneg i8 %i.l to i32
  %i.n = or disjoint i32 %i.i, %i.m
  br label %_ZNK5Darts7Details8DawgNode4unitEv.exit.i

_ZNK5Darts7Details8DawgNode4unitEv.exit.i:        ; preds = %bb.d, %bb.c
  %.sink.i.i = phi i32 [ %i.n, %bb.d ], [ %i.h, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.p = load i8, ptr %i.o, align 2, !tbaa !163, !range !148, !noundef !149
  %i.q = zext nneg i8 %i.p to i32
  %i.r = or disjoint i32 %.sink.i.i, %i.q         ; 2 uses
  %i.s = zext i8 %i.e to i32
  %i.t = shl nuw i32 %i.s, 24
  %i.u = xor i32 %i.t, %i.r
  %i.v = xor i32 %i.u, -1
  %i.w = shl i32 %i.r, 15
  %i.x = add i32 %i.w, %i.v                       ; 2 uses
  %i.y = lshr i32 %i.x, 12
  %i.z = xor i32 %i.y, %i.x
  %i.aa = mul i32 %i.z, 5                         ; 2 uses
  %i.ab = lshr i32 %i.aa, 4
  %i.ac = xor i32 %i.ab, %i.aa
  %i.ad = mul i32 %i.ac, 2057                     ; 2 uses
  %i.ae = lshr i32 %i.ad, 16
  %i.af = xor i32 %.0810.i, %i.ae
  %i.ag = xor i32 %i.af, %i.ad                    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !165 ; 2 uses
  %.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i, label %_ZNK5Darts7Details11DawgBuilder9hash_nodeEj.exit.loopexit, label %bb.b, !llvm.loop !255

_ZNK5Darts7Details11DawgBuilder9hash_nodeEj.exit.loopexit: ; preds = %_ZNK5Darts7Details8DawgNode4unitEv.exit.i
  %i.aj = zext i32 %i.ag to i64
  br label %_ZNK5Darts7Details11DawgBuilder9hash_nodeEj.exit

_ZNK5Darts7Details11DawgBuilder9hash_nodeEj.exit: ; preds = %_ZNK5Darts7Details11DawgBuilder9hash_nodeEj.exit.loopexit, %bb.a
  %.08.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.aj, %_ZNK5Darts7Details11DawgBuilder9hash_nodeEj.exit.loopexit ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.am = load i64, ptr %i.al, align 8, !tbaa !152 ; 3 uses
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !117 ; 3 uses
  %storemerge.in37 = urem i64 %.08.lcssa.i, %i.am ; 4 uses
  %storemerge38 = trunc nuw i64 %storemerge.in37 to i32
  store i32 %storemerge38, ptr %2, align 4, !tbaa !56
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %storemerge.in37
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !56 ; 3 uses
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %_ZNK5Darts7Details11DawgBuilder9are_equalEjj.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5Darts7Details11DawgBuilder9hash_nodeEj.exit
  %i.ar = load ptr, ptr %0, align 8, !tbaa !117   ; 4 uses
  %.pn2730.i = zext i32 %1 to i64
  %.pn31.i = getelementptr inbounds nuw [12 x i8], ptr %i.ar, i64 %.pn2730.i
  %.018.in32.i = getelementptr inbounds nuw i8, ptr %.pn31.i, i64 4 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !117 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  br i1 %.not9.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.loopexit31.us
  %i.at = phi i32 [ %i.bf, %.loopexit31.us ], [ %i.ap, %.lr.ph ] ; 3 uses
  %storemerge39.us = phi i64 [ %storemerge.in.us, %.loopexit31.us ], [ %storemerge.in37, %.lr.ph ]
  %.01833.i.us = load i32, ptr %.018.in32.i, align 4, !tbaa !165 ; 2 uses
  %.not34.i.us = icmp eq i32 %.01833.i.us, 0
  br i1 %.not34.i.us, label %._crit_edge.i.us, label %.lr.ph.i13.us

.lr.ph.i13.us:                                    ; preds = %.lr.ph.split.us, %bb.e
  %.01836.i.us = phi i32 [ %.018.i.us, %bb.e ], [ %.01833.i.us, %.lr.ph.split.us ]
  %.01935.i.us = phi i32 [ %i.ay, %bb.e ], [ %i.at, %.lr.ph.split.us ] ; 2 uses
  %i.au = zext i32 %.01935.i.us to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !147
  %i.ax = trunc i32 %i.aw to i1
  br i1 %i.ax, label %bb.e, label %.loopexit31.us

bb.e:                                             ; preds = %.lr.ph.i13.us
  %i.ay = add i32 %.01935.i.us, 1                 ; 2 uses
  %.pn27.i.us = zext i32 %.01836.i.us to i64
  %.pn.i.us = getelementptr inbounds nuw [12 x i8], ptr %i.ar, i64 %.pn27.i.us
  %.018.in.i.us = getelementptr inbounds nuw i8, ptr %.pn.i.us, i64 4
  %.018.i.us = load i32, ptr %.018.in.i.us, align 4, !tbaa !165 ; 2 uses
  %.not.i14.us = icmp eq i32 %.018.i.us, 0
  br i1 %.not.i14.us, label %._crit_edge.i.us, label %.lr.ph.i13.us, !llvm.loop !256

._crit_edge.i.us:                                 ; preds = %bb.e, %.lr.ph.split.us
  %.019.lcssa.i.us = phi i32 [ %i.at, %.lr.ph.split.us ], [ %i.ay, %bb.e ]
  %i.az = zext i32 %.019.lcssa.i.us to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !147
  %i.bc = trunc i32 %i.bb to i1
  br i1 %i.bc, label %.loopexit31.us, label %_ZNK5Darts7Details11DawgBuilder9are_equalEjj.exit

.loopexit31.us:                                   ; preds = %.lr.ph.i13.us, %._crit_edge.i.us
  %i.bd = add nuw nsw i64 %storemerge39.us, 1
  %.pn.us = and i64 %i.bd, 4294967295
  %storemerge.in.us = urem i64 %.pn.us, %i.am     ; 3 uses
  %storemerge.us = trunc nuw i64 %storemerge.in.us to i32
  store i32 %storemerge.us, ptr %2, align 4, !tbaa !56
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %storemerge.in.us
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !56 ; 2 uses
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %_ZNK5Darts7Details11DawgBuilder9are_equalEjj.exit, label %.lr.ph.split.us, !llvm.loop !257

.lr.ph.split:                                     ; preds = %.lr.ph, %.loopexit
  %i.bh = phi i32 [ %i.ct, %.loopexit ], [ %i.ap, %.lr.ph ] ; 3 uses
  %storemerge39 = phi i64 [ %storemerge.in, %.loopexit ], [ %storemerge.in37, %.lr.ph ]
  %.01833.i = load i32, ptr %.018.in32.i, align 4, !tbaa !165 ; 2 uses
  %.not34.i = icmp eq i32 %.01833.i, 0
  br i1 %.not34.i, label %._crit_edge.i, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %.lr.ph.split, %bb.f
  %.01836.i = phi i32 [ %.018.i, %bb.f ], [ %.01833.i, %.lr.ph.split ]
  %.01935.i = phi i32 [ %i.bm, %bb.f ], [ %i.bh, %.lr.ph.split ] ; 2 uses
  %i.bi = zext i32 %.01935.i to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !147
  %i.bl = trunc i32 %i.bk to i1
  br i1 %i.bl, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.lr.ph.i13
  %i.bm = add i32 %.01935.i, 1                    ; 2 uses
  %.pn27.i = zext i32 %.01836.i to i64
  %.pn.i = getelementptr inbounds nuw [12 x i8], ptr %i.ar, i64 %.pn27.i
  %.018.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 4
  %.018.i = load i32, ptr %.018.in.i, align 4, !tbaa !165 ; 2 uses
  %.not.i14 = icmp eq i32 %.018.i, 0
  br i1 %.not.i14, label %._crit_edge.i, label %.lr.ph.i13, !llvm.loop !256

._crit_edge.i:                                    ; preds = %bb.f, %.lr.ph.split
  %.019.lcssa.i = phi i32 [ %i.bh, %.lr.ph.split ], [ %i.bm, %bb.f ] ; 2 uses
  %i.bn = zext i32 %.019.lcssa.i to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !147
  %i.bq = trunc i32 %i.bp to i1
  br i1 %i.bq, label %.loopexit, label %.lr.ph40.i

.lr.ph40.i:                                       ; preds = %._crit_edge.i, %bb.j
  %.039.i = phi i32 [ %i.cp, %bb.j ], [ %1, %._crit_edge.i ]
  %.12038.i = phi i32 [ %i.cq, %bb.j ], [ %.019.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.br = zext i32 %.039.i to i64
  %i.bs = getelementptr inbounds nuw [12 x i8], ptr %i.ar, i64 %i.br ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load i8, ptr %i.bt, align 4, !tbaa !161 ; 2 uses
  %i.bv = icmp eq i8 %i.bu, 0
  %i.bw = load i32, ptr %i.bs, align 4, !tbaa !162 ; 2 uses
  br i1 %i.bv, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph40.i
  %i.bx = shl i32 %i.bw, 1
  br label %_ZNK5Darts7Details8DawgNode4unitEv.exit.i15

bb.h:                                             ; preds = %.lr.ph40.i
  %i.by = shl i32 %i.bw, 2
end_hunk_0
