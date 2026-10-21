Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/B3DImporter?download=true
inline.NumInlined: 1740
inline.NumDeleted: 961
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6Assimp11B3DImporter8ReadVRTSEv:bb.a
  %i.bs = sdiv exact i64 %i.br, 56                ; 5 uses
  %i.bt = trunc i64 %i.bs to i32
  %sext = shl i64 %i.bs, 32
  %i.bu = ashr exact i64 %sext, 32
  %i.bv = add nsw i64 %i.bu, %i.bk                ; 4 uses
  %i.bw = icmp ugt i64 %i.bv, %i.bs
  br i1 %i.bw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bx = sub nuw nsw i64 %i.bv, %i.bs
  tail call void @_ZNSt6vectorIN6Assimp11B3DImporter6VertexESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 noundef %i.bx)
  br label %_ZNSt6vectorIN6Assimp11B3DImporter6VertexESaIS2_EE6resizeEm.exit

bb.r:                                             ; preds = %bb.p
  %i.by = icmp ult i64 %i.bv, %i.bs
  br i1 %i.by, label %bb.s, label %_ZNSt6vectorIN6Assimp11B3DImporter6VertexESaIS2_EE6resizeEm.exit

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw [56 x i8], ptr %i.bo, i64 %i.bv ; 2 uses
  %.not.i.i = icmp eq ptr %i.bn, %i.bz
  br i1 %.not.i.i, label %_ZNSt6vectorIN6Assimp11B3DImporter6VertexESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPN6Assimp11B3DImporter6VertexES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6Assimp11B3DImporter6VertexES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.s
  store ptr %i.bz, ptr %i.bm, align 8
  br label %_ZNSt6vectorIN6Assimp11B3DImporter6VertexESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN6Assimp11B3DImporter6VertexESaIS2_EE6resizeEm.exit: ; preds = %bb.q, %bb.r, %bb.s, %_ZSt8_DestroyIPN6Assimp11B3DImporter6VertexES2_EvT_S4_RSaIT0_E.exit.i.i
  %.not66 = icmp ult i64 %i.bi, %i.bj
  br i1 %.not66, label %._crit_edge65, label %.lr.ph64

.lr.ph64:                                         ; preds = %_ZNSt6vectorIN6Assimp11B3DImporter6VertexESaIS2_EE6resizeEm.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.t

._crit_edge65:                                    ; preds = %._crit_edge62, %_ZNSt6vectorIN6Assimp11B3DImporter6VertexESaIS2_EE6resizeEm.exit
  ret void

bb.t:                                             ; preds = %.lr.ph64, %._crit_edge62
  %.03263 = phi i32 [ 0, %.lr.ph64 ], [ %i.cs, %._crit_edge62 ] ; 2 uses
  %i.cc = add i32 %.03263, %i.bt
  %i.cd = zext i32 %i.cc to i64
  %i.ce = load ptr, ptr %i.bl, align 8
  %i.cf = getelementptr inbounds nuw [56 x i8], ptr %i.ce, i64 %i.cd ; 8 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cg, i8 0, i64 20, i1 false)
  %i.ch = tail call { <2 x float>, float } @_ZN6Assimp11B3DImporter8ReadVec3Ev(ptr noundef nonnull align 8 dereferenceable(312) %0) ; 2 uses
  %.fca.0.extract8 = extractvalue { <2 x float>, float } %i.ch, 0
  %.fca.1.extract9 = extractvalue { <2 x float>, float } %i.ch, 1
  store <2 x float> %.fca.0.extract8, ptr %i.cf, align 4
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store float %.fca.1.extract9, ptr %.sroa.413.0..sroa_idx, align 4
  %i.ci = load i32, ptr %i.t, align 8             ; 2 uses
  %i.cj = and i32 %i.ci, 1
  %.not36 = icmp eq i32 %i.cj, 0
  br i1 %.not36, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ck = tail call { <2 x float>, float } @_ZN6Assimp11B3DImporter8ReadVec3Ev(ptr noundef nonnull align 8 dereferenceable(312) %0) ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.ck, 0
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.ck, 1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  store <2 x float> %.fca.0.extract, ptr %i.cl, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 20
  store float %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 4
  %.pre = load i32, ptr %i.t, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cm = phi i32 [ %.pre, %bb.u ], [ %i.ci, %bb.t ]
  %i.cn = and i32 %i.cm, 2
  %.not37 = icmp eq i32 %i.cn, 0
  br i1 %.not37, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.co = tail call { <2 x float>, <2 x float> } @_ZN6Assimp11B3DImporter8ReadQuatEv(ptr noundef nonnull align 8 dereferenceable(312) %0) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cp = load i32, ptr %i.ad, align 4            ; 2 uses
  %i.cq = icmp sgt i32 %i.cp, 0
  br i1 %i.cq, label %.lr.ph61, label %._crit_edge62

.lr.ph61:                                         ; preds = %bb.x
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %.sroa.4.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.cf, i64 28
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  br label %bb.y

._crit_edge62:                                    ; preds = %bb.ac, %bb.x
  %i.cs = add i32 %.03263, 1                      ; 2 uses
  %i.ct = zext i32 %i.cs to i64
  %i.cu = icmp samesign ugt i64 %i.bk, %i.ct
  br i1 %i.cu, label %bb.t, label %._crit_edge65, !llvm.loop !67

bb.y:                                             ; preds = %.lr.ph61, %bb.ac
  %i.cv = phi i32 [ %i.cp, %.lr.ph61 ], [ %i.fv, %bb.ac ]
  %.02959 = phi i32 [ 0, %.lr.ph61 ], [ %i.fw, %bb.ac ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.cw = load i32, ptr %i.an, align 8            ; 2 uses
  %i.cx = icmp sgt i32 %i.cw, 0
  br i1 %i.cx, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.y
  %i.cy = load ptr, ptr %i.f, align 8
  %i.cz = load ptr, ptr %i.e, align 8             ; 5 uses
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db                    ; 4 uses
  %.promoted = load i64, ptr %i.b, align 8        ; 12 uses
  %wide.trip.count = zext nneg i32 %i.cw to i64   ; 4 uses
  %i.dd = zext i64 %i.dc to i128
  %i.de = add nuw nsw i128 %i.dd, 1
  %i.df = add i64 %.promoted, 4
  %i.dg = zext i64 %i.df to i128                  ; 2 uses
  %i.dh = tail call i128 @llvm.umax.i128(i128 %i.de, i128 %i.dg)
  %i.di = add nuw nsw i128 %i.dh, 3
  %i.dj = sub nsw i128 %i.di, %i.dg
  %i.dk = lshr i128 %i.dj, 2
  %i.dl = add nsw i64 %wide.trip.count, -1
  %i.dm = zext i64 %i.dl to i128
  %i.dn = tail call i128 @llvm.umin.i128(i128 %i.dk, i128 %i.dm)
  %i.do = trunc nuw i128 %i.dn to i64
  %i.dp = add i64 %i.do, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.dp, 61
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

scalar.ph.preheader.loopexit:                     ; preds = %vector.body
  store i64 %i.fa, ptr %i.b, align 8, !alias.scope !74, !noalias !75
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.loopexit, %vector.memcheck, %vector.scevcheck, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %n.vec, %scalar.ph.preheader.loopexit ]
  %.ph = phi i64 [ %.promoted, %vector.memcheck ], [ %.promoted, %vector.scevcheck ], [ %.promoted, %.lr.ph ], [ %i.et, %scalar.ph.preheader.loopexit ]
  br label %scalar.ph

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.dq = zext i64 %i.dc to i128
  %i.dr = add nuw nsw i128 %i.dq, 1
  %i.ds = add i64 %.promoted, 4
  %i.dt = zext i64 %i.ds to i128                  ; 2 uses
  %umax = tail call i128 @llvm.umax.i128(i128 %i.dr, i128 %i.dt)
  %i.du = add nuw nsw i128 %umax, 3
  %i.dv = sub nsw i128 %i.du, %i.dt
  %i.dw = lshr i128 %i.dv, 2
  %i.dx = add nsw i64 %wide.trip.count, -1
  %i.dy = zext i64 %i.dx to i128
  %umin = tail call i128 @llvm.umin.i128(i128 %i.dw, i128 %i.dy)
  %i.dz = trunc nuw i128 %umin to i64             ; 2 uses
  %mul.result = shl i64 %i.dz, 2
  %mul.overflow = icmp ugt i64 %i.dz, 4611686018427387903
  %i.ea = sub i64 -5, %.promoted
  %i.eb = icmp ult i64 %i.ea, %mul.result
  %i.ec = or i1 %i.eb, %mul.overflow
  br i1 %i.ec, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep = getelementptr i8, ptr %i.cz, i64 %.promoted
  %scevgep92 = getelementptr i8, ptr %i.cz, i64 4
  %i.ed = zext i64 %i.dc to i128
  %i.ee = add nuw nsw i128 %i.ed, 1
  %i.ef = add i64 %.promoted, 4
  %i.eg = zext i64 %i.ef to i128                  ; 2 uses
  %umax93 = tail call i128 @llvm.umax.i128(i128 %i.ee, i128 %i.eg)
  %i.eh = add nuw nsw i128 %umax93, 3
  %i.ei = sub nsw i128 %i.eh, %i.eg
  %i.ej = lshr i128 %i.ei, 2
  %i.ek = add nsw i64 %wide.trip.count, -1
  %i.el = zext i64 %i.ek to i128
  %umin94 = tail call i128 @llvm.umin.i128(i128 %i.ej, i128 %i.el)
  %i.em = trunc nuw i128 %umin94 to i64
  %i.en = shl i64 %i.em, 2
  %i.eo = getelementptr i8, ptr %scevgep92, i64 %.promoted
  %scevgep95 = getelementptr i8, ptr %i.eo, i64 %i.en
  %bound0 = icmp ult ptr %i.b, %scevgep95
  %bound1 = icmp ult ptr %scevgep, %i.e
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ep = and i64 %i.dp, 3                        ; 2 uses
  %i.eq = icmp eq i64 %i.ep, 0
  %i.er = select i1 %i.eq, i64 4, i64 %i.ep
  %n.vec = sub i64 %i.dp, %i.er                   ; 3 uses
  %i.es = shl i64 %n.vec, 2
  %i.et = add i64 %.promoted, %i.es
  %i.eu = add i64 %.promoted, 4
  %i.ev = getelementptr i8, ptr %i.cz, i64 %.promoted
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ew = phi i64 [ %i.eu, %vector.ph ], [ %i.fc, %vector.body ] ; 2 uses
  %i.ex = shl i64 %index, 2
  %i.ey = getelementptr i8, ptr %i.ev, i64 %i.ex  ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %wide.load = load <2 x float>, ptr %i.ey, align 1, !alias.scope !75
  %wide.load96 = load <2 x float>, ptr %i.ez, align 1, !alias.scope !75
  %i.fa = add i64 %i.ew, 12
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  %10 = shufflevector <2 x float> %wide.load, <2 x float> %wide.load96, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %10, ptr %i.fb, align 16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fc = add i64 %i.ew, 16
  %i.fd = icmp eq i64 %index.next, %n.vec
  br i1 %i.fd, label %scalar.ph.preheader.loopexit, label %vector.body, !llvm.loop !71

._crit_edge.loopexit:                             ; preds = %_ZN6Assimp11B3DImporter9ReadFloatEv.exit
  %.pre68 = load float, ptr %i.ca, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.y
  %i.fe = phi float [ %.pre68, %._crit_edge.loopexit ], [ 0.000000e+00, %bb.y ]
  %.not38 = icmp eq i32 %.02959, 0
  br i1 %.not38, label %bb.ab, label %bb.ac

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN6Assimp11B3DImporter9ReadFloatEv.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN6Assimp11B3DImporter9ReadFloatEv.exit ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ff = phi i64 [ %i.fg, %_ZN6Assimp11B3DImporter9ReadFloatEv.exit ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %i.fg = add i64 %i.ff, 4                        ; 3 uses
  %i.fh = icmp ugt i64 %i.fg, %i.dc
  br i1 %i.fh, label %._crit_edge.i.i, label %_ZN6Assimp11B3DImporter9ReadFloatEv.exit

._crit_edge.i.i:                                  ; preds = %scalar.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.fi, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.fi, ptr noundef nonnull align 1 dereferenceable(3) @.str.6, i64 3, i1 false)
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 3, ptr %i.fj, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 0, ptr %i.fk, align 1
  invoke void @_ZN6Assimp11B3DImporter4FailERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %1) #26
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i.i
  unreachable

bb.aa:                                            ; preds = %._crit_edge.i.i
  %i.fl = landingpad { ptr, i32 }
          cleanup
  %i.fm = load ptr, ptr %1, align 8               ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.fi
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53: ; preds = %bb.aa
  %i.fo = load i64, ptr %i.fi, align 8
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fp) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i54: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %common.resume

_ZN6Assimp11B3DImporter9ReadFloatEv.exit:         ; preds = %scalar.ph
  %i.fq = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.ff
  %.0.copyload.i52 = load float, ptr %i.fq, align 1
  store i64 %i.fg, ptr %i.b, align 8
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store float %.0.copyload.i52, ptr %i.fr, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %scalar.ph, !llvm.loop !72

bb.ab:                                            ; preds = %._crit_edge
  %i.fs = fsub float 1.000000e+00, %i.fe
  %i.ft = load float, ptr %i.a, align 16
  %i.fu = load float, ptr %i.cb, align 8
  store float %i.ft, ptr %i.cr, align 4
  store float %i.fs, ptr %.sroa.4.0..sroa_idx56, align 4
  store float %i.fu, ptr %.sroa.5.0..sroa_idx, align 4
  %.pre69 = load i32, ptr %i.ad, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge
  %i.fv = phi i32 [ %.pre69, %bb.ab ], [ %i.cv, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.fw = add nuw nsw i32 %.02959, 1              ; 2 uses
  %i.fx = icmp slt i32 %i.fw, %i.fv
  br i1 %i.fx, label %bb.y, label %._crit_edge62, !llvm.loop !73
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11B3DImporter8ReadTRISEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(312) %0, i32 noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %12 = alloca %"class.std::unique_ptr.54", align 8 ; 5 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 7 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = add i64 %i.b, 4                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ugt i64 %i.c, %i.j
  br i1 %i.k, label %bb.b, label %_ZN6Assimp11B3DImporter7ReadIntEv.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %9)
  invoke void @_ZN6Assimp11B3DImporter4FailERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %8) #26
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %8, align 8                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.p = load i64, ptr %i.n, align 8
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn48.pn.pn.pn.pn, %.body ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %common.resume

_ZN6Assimp11B3DImporter7ReadIntEv.exit:           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %.0.copyload.i = load i32, ptr %i.r, align 1    ; 4 uses
  store i64 %i.c, ptr %i.a, align 8
  %i.s = icmp eq i32 %.0.copyload.i, -1
  br i1 %i.s, label %bb.l, label %bb.e

bb.e:                                             ; preds = %_ZN6Assimp11B3DImporter7ReadIntEv.exit
  %i.t = icmp slt i32 %.0.copyload.i, 0
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.u, align 8
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = lshr exact i64 %i.aa, 3
  %i.ac = trunc i64 %i.ab to i32
  %.not = icmp slt i32 %.0.copyload.i, %i.ac
  br i1 %.not, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6Assimp11B3DImporter4FailERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %10) #26
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = load ptr, ptr %10, align 8              ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.ai = load i64, ptr %i.ag, align 8
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #25
end_hunk_0
begin_hunk_1_@_ZN6Assimp11B3DImporter8ReadBONEEi:bb.a

bb.h:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %2, align 8               ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21: ; preds = %bb.h
  %i.ah = load i64, ptr %i.af, align 8
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i22: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %common.resume

_ZN6Assimp11B3DImporter9ReadFloatEv.exit:         ; preds = %_ZN6Assimp11B3DImporter7ReadIntEv.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %.0.copyload.i20 = load float, ptr %i.aj, align 1
  store i64 %i.ab, ptr %i.b, align 8
  %i.ak = icmp slt i32 %.0.copyload.i, 0
  br i1 %i.ak, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN6Assimp11B3DImporter9ReadFloatEv.exit
  %i.al = load ptr, ptr %i.j, align 8
  %i.am = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = sdiv exact i64 %i.ap, 56
  %i.ar = trunc i64 %i.aq to i32
  %.not18 = icmp slt i32 %.0.copyload.i, %i.ar
  br i1 %.not18, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN6Assimp11B3DImporter9ReadFloatEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN6Assimp11B3DImporter4FailERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %6) #26
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.n:                                             ; preds = %bb.k
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %6, align 8               ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.ax = load i64, ptr %i.av, align 8
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.m
  %.pn = phi { ptr, i32 } [ %i.as, %bb.m ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.at, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %common.resume

bb.o:                                             ; preds = %bb.i
  %i.az = zext nneg i32 %.0.copyload.i to i64
  %i.ba = getelementptr inbounds nuw [56 x i8], ptr %i.am, i64 %i.az ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40 ; 2 uses
  %i.bc = load float, ptr %i.bb, align 4
  %i.bd = fcmp une float %i.bc, 0.000000e+00
  br i1 %i.bd, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 44
  %i.bf = load float, ptr %i.be, align 4
  %i.bg = fcmp une float %i.bf, 0.000000e+00
  br i1 %i.bg, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bi = load float, ptr %i.bh, align 4
  %i.bj = fcmp une float %i.bi, 0.000000e+00
  br i1 %i.bj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 52
  %i.bl = load float, ptr %i.bk, align 4
  %i.bm = fcmp une float %i.bl, 0.000000e+00
  br i1 %i.bm, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %.lcssa = phi i64 [ 0, %bb.o ], [ 1, %bb.p ], [ 2, %bb.q ], [ 3, %bb.r ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %.lcssa
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ba, i64 36
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.lcssa
  store i8 %i.k, ptr %i.bp, align 1
  store float %.0.copyload.i20, ptr %i.bn, align 4
  %.pre = load ptr, ptr %i.a, align 8
  %.pre31 = load i64, ptr %i.b, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.r, %bb.s
  %i.bq = phi i64 [ %.pre31, %bb.s ], [ %i.ab, %bb.r ] ; 2 uses
  %i.br = phi ptr [ %.pre, %bb.s ], [ %i.l, %bb.r ] ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -8
  %i.bt = load i64, ptr %i.bs, align 8
  %.not = icmp eq i64 %i.bt, %i.bq
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !87

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11B3DImporter8ReadKEYSEP10aiNodeAnim(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(312) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = add i64 %i.b, 4                          ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ugt i64 %i.c, %i.j
  br i1 %i.k, label %bb.b, label %_ZN6Assimp11B3DImporter7ReadIntEv.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.b
  invoke void @_ZN6Assimp11B3DImporter4FailERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %4) #26
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  unreachable

bb.d:                                             ; preds = %.noexc
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit86.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.p = load i64, ptr %i.n, align 8
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #25
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit86.thread

_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit86.thread: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit88

_ZN6Assimp11B3DImporter7ReadIntEv.exit:           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %.0.copyload.i = load i32, ptr %i.r, align 1    ; 7 uses
  store i64 %i.c, ptr %i.a, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8
  %i.v = load i64, ptr %i.u, align 8
  %.not302 = icmp eq i64 %i.v, %i.c
  %.pre = and i32 %.0.copyload.i, 1               ; 2 uses
  %.not20407 = icmp eq i32 %.pre, 0               ; 2 uses
  br i1 %.not302, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6Assimp11B3DImporter7ReadIntEv.exit
  %i.w = and i32 %.0.copyload.i, 2
  %.not24 = icmp eq i32 %i.w, 0
  %i.x = and i32 %.0.copyload.i, 4
  %.not25 = icmp eq i32 %i.x, 0
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorI9aiQuatKeySaIS0_EE12emplace_backIJRi13aiQuaterniontIfEEEERS0_DpOT_.exit
  %i.y = phi i64 [ %i.c, %.lr.ph ], [ %i.dn, %_ZNSt6vectorI9aiQuatKeySaIS0_EE12emplace_backIJRi13aiQuaterniontIfEEEERS0_DpOT_.exit ] ; 2 uses
  %.sroa.18.0311 = phi ptr [ null, %.lr.ph ], [ %.sroa.18.2, %_ZNSt6vectorI9aiQuatKeySaIS0_EE12emplace_backIJRi13aiQuaterniontIfEEEERS0_DpOT_.exit ] ; 10 uses
  %.sroa.11.0310 = phi ptr [ null, %.lr.ph ], [ %.sroa.11.1, %_ZNSt6vectorI9aiQuatKeySaIS0_EE12emplace_backIJRi13aiQuaterniontIfEEEERS0_DpOT_.exit ] ; 6 uses
  %.sroa.0107.0309 = phi ptr [ null, %.lr.ph ], [ %.sroa.0107.2, %_ZNSt6vectorI9aiQuatKeySaIS0_EE12emplace_backIJRi13aiQuaterniontIfEEEERS0_DpOT_.exit ] ; 11 uses
  %.sroa.18131.0308 = phi ptr [ null, %.lr.ph ], [ %.sroa.18131.2, %_ZNSt6vectorI9aiQuatKeySaIS0_EE12emplace_backIJRi13aiQuaterniontIfEEEERS0_DpOT_.exit ] ; 9 uses
  %.sroa.11126.0307 = phi ptr [ null, %.lr.ph ], [ %.sroa.11126.1, %_ZNSt6vectorI9aiQuatKeySaIS0_EE12emplace_backIJRi13aiQuaterniontIfEEEERS0_DpOT_.exit ] ; 7 uses
  %.sroa.0120.0306 = phi ptr [ null, %.lr.ph ], [ %.sroa.0120.2, %_ZNSt6vectorI9aiQuatKeySaIS0_EE12emplace_backIJRi13aiQuaterniontIfEEEERS0_DpOT_.exit ] ; 10 uses
  %.sroa.18146.0305 = phi ptr [ null, %.lr.ph ], [ %.sroa.18146.2, %_ZNSt6vectorI9aiQuatKeySaIS0_EE12emplace_backIJRi13aiQuaterniontIfEEEERS0_DpOT_.exit ] ; 8 uses
  %.sroa.11141.0304 = phi ptr [ null, %.lr.ph ], [ %.sroa.11141.1, %_ZNSt6vectorI9aiQuatKeySaIS0_EE12emplace_backIJRi13aiQuaterniontIfEEEERS0_DpOT_.exit ] ; 7 uses
  %.sroa.0135.0303 = phi ptr [ null, %.lr.ph ], [ %.sroa.0135.2, %_ZNSt6vectorI9aiQuatKeySaIS0_EE12emplace_backIJRi13aiQuaterniontIfEEEERS0_DpOT_.exit ] ; 9 uses
  %i.z = add i64 %i.y, 4                          ; 2 uses
  %i.aa = load ptr, ptr %i.e, align 8
  %i.ab = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = icmp ugt i64 %i.z, %i.ae
  br i1 %i.af, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc32 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc32:                                         ; preds = %bb.f
  invoke void @_ZN6Assimp11B3DImporter4FailERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %2) #26
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.noexc32
  unreachable

bb.h:                                             ; preds = %.noexc32
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %2, align 8               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29: ; preds = %bb.h
  %i.ak = load i64, ptr %i.ai, align 8
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i30: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %.body

bb.i:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.y
  %.0.copyload.i28 = load i32, ptr %i.am, align 1 ; 6 uses
  store i64 %i.z, ptr %i.a, align 8
  br i1 %.not20407, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE12emplace_backIJRi10aiVector3tIfEEEERS0_DpOT_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = invoke { <2 x float>, float } @_ZN6Assimp11B3DImporter8ReadVec3Ev(ptr noundef nonnull align 8 dereferenceable(312) %0)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.k:                                             ; preds = %bb.j
  %.fca.0.extract1 = extractvalue { <2 x float>, float } %i.an, 0 ; 2 uses
  %.fca.1.extract2 = extractvalue { <2 x float>, float } %i.an, 1 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.11141.0304, %.sroa.18146.0305
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = sitofp i32 %.0.copyload.i28 to double
  store double %i.ao, ptr %.sroa.11141.0304, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.11141.0304, i64 8
  store <2 x float> %.fca.0.extract1, ptr %i.ap, align 8
  %.sroa.699.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11141.0304, i64 16
  store float %.fca.1.extract2, ptr %.sroa.699.0..sroa_idx, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.11141.0304, i64 20
  store i32 1, ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.11141.0304, i64 24
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EE12emplace_backIJRi10aiVector3tIfEEEERS0_DpOT_.exit

bb.m:                                             ; preds = %bb.k
  %i.as = ptrtoint ptr %.sroa.18146.0305 to i64
  %i.at = ptrtoint ptr %.sroa.0135.0303 to i64
  %i.au = sub i64 %i.as, %i.at                    ; 4 uses
  %i.av = icmp eq i64 %i.au, 9223372036854775800
  br i1 %i.av, label %bb.n, label %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #26
          to label %.noexc36 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc36:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.aw = sdiv exact i64 %i.au, 24                ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aw, i64 1)
  %i.ax = add nsw i64 %.sroa.speculated.i.i.i, %i.aw ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %i.aw
  %i.az = tail call i64 @llvm.umin.i64(i64 %i.ax, i64 384307168202282325)
  %i.ba = select i1 %i.ay, i64 384307168202282325, i64 %i.az ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ba, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bb = mul nuw nsw i64 %i.ba, 24
  %i.bc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #27
          to label %.noexc37 unwind label %.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc37:                                         ; preds = %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.au ; 4 uses
  %i.be = sitofp i32 %.0.copyload.i28 to double
  store double %i.be, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store <2 x float> %.fca.0.extract1, ptr %i.bf, align 8
  %.sroa.699.0..sroa_idx100 = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store float %.fca.1.extract2, ptr %.sroa.699.0..sroa_idx100, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 20
  store i32 1, ptr %i.bg, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.0135.0303, %.sroa.18146.0305
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc37, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i ], [ %i.bc, %.noexc37 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i ], [ %.sroa.0135.0303, %.noexc37 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i, i64 24, i1 false), !alias.scope !101
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bh, %.sroa.18146.0305
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !91

_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc37
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bc, %.noexc37 ], [ %i.bi, %.lr.ph.i.i.i.i.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24
  %.not.i34.i.i = icmp eq ptr %.sroa.0135.0303, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJRi10aiVector3tIfEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0135.0303, i64 noundef %i.au) #25
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJRi10aiVector3tIfEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJRi10aiVector3tIfEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %i.ba
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EE12emplace_backIJRi10aiVector3tIfEEEERS0_DpOT_.exit

bb.p:                                             ; preds = %bb.al, %bb.ah, %bb.ad, %bb.b
  %.sroa.0135.1 = phi ptr [ null, %bb.b ], [ %.sroa.0135.0.lcssa410, %bb.al ], [ %.sroa.0135.0.lcssa409, %bb.ah ], [ %.sroa.0135.2, %bb.ad ]
  %.sroa.18146.1 = phi ptr [ null, %bb.b ], [ %.sroa.18146.0.lcssa415, %bb.al ], [ %.sroa.18146.0.lcssa414, %bb.ah ], [ %.sroa.18146.2, %bb.ad ]
  %.sroa.0120.1 = phi ptr [ null, %bb.b ], [ %.sroa.0120.0.lcssa418469, %bb.al ], [ %.sroa.0120.0.lcssa418, %bb.ah ], [ %.sroa.0120.2, %bb.ad ]
  %.sroa.18131.1 = phi ptr [ null, %bb.b ], [ %.sroa.18131.0.lcssa424, %bb.al ], [ %.sroa.18131.0.lcssa423, %bb.ah ], [ %.sroa.18131.2, %bb.ad ]
  %.sroa.0107.1 = phi ptr [ null, %bb.b ], [ %.sroa.0107.0.lcssa428, %bb.al ], [ %.sroa.0107.0.lcssa427, %bb.ah ], [ %.sroa.0107.2, %bb.ad ]
  %.sroa.18.1 = phi ptr [ null, %bb.b ], [ %.sroa.18.0.lcssa433, %bb.al ], [ %.sroa.18.0.lcssa432, %bb.ah ], [ %.sroa.18.2, %bb.ad ]
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i, %bb.j, %bb.f, %bb.n
  %lpad.loopexit.split-lp677 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorI11aiVectorKeySaIS0_EE12emplace_backIJRi10aiVector3tIfEEEERS0_DpOT_.exit: ; preds = %bb.l, %_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJRi10aiVector3tIfEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.i
  %.sroa.0135.2 = phi ptr [ %.sroa.0135.0303, %bb.i ], [ %i.bc, %_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJRi10aiVector3tIfEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %.sroa.0135.0303, %bb.l ] ; 10 uses
  %.sroa.11141.1 = phi ptr [ %.sroa.11141.0304, %bb.i ], [ %i.bj, %_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJRi10aiVector3tIfEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %i.ar, %bb.l ] ; 3 uses
  %.sroa.18146.2 = phi ptr [ %.sroa.18146.0305, %bb.i ], [ %i.bk, %_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJRi10aiVector3tIfEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %.sroa.18146.0305, %bb.l ] ; 7 uses
  br i1 %.not24, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE12emplace_backIJRi10aiVector3tIfEEEERS0_DpOT_.exit53, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EE12emplace_backIJRi10aiVector3tIfEEEERS0_DpOT_.exit
  %i.bm = invoke { <2 x float>, float } @_ZN6Assimp11B3DImporter8ReadVec3Ev(ptr noundef nonnull align 8 dereferenceable(312) %0)
          to label %bb.r unwind label %.loopexit.split-lp178.loopexit.split-lp ; 2 uses

bb.r:                                             ; preds = %bb.q
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.bm, 0 ; 2 uses
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.bm, 1 ; 2 uses
  %.not.i38 = icmp eq ptr %.sroa.11126.0307, %.sroa.18131.0308
  br i1 %.not.i38, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = sitofp i32 %.0.copyload.i28 to double
  store double %i.bn, ptr %.sroa.11126.0307, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.11126.0307, i64 8
  store <2 x float> %.fca.0.extract, ptr %i.bo, align 8
  %.sroa.694.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11126.0307, i64 16
  store float %.fca.1.extract, ptr %.sroa.694.0..sroa_idx, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.11126.0307, i64 20
  store i32 1, ptr %i.bp, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.11126.0307, i64 24
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EE12emplace_backIJRi10aiVector3tIfEEEERS0_DpOT_.exit53

bb.t:                                             ; preds = %bb.r
  %i.br = ptrtoint ptr %.sroa.18131.0308 to i64
  %i.bs = ptrtoint ptr %.sroa.0120.0306 to i64
  %i.bt = sub i64 %i.br, %i.bs                    ; 4 uses
  %i.bu = icmp eq i64 %i.bt, 9223372036854775800
  br i1 %i.bu, label %bb.u, label %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i39

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #26
          to label %.noexc51 unwind label %.loopexit.split-lp178.loopexit.split-lp

.noexc51:                                         ; preds = %bb.u
  unreachable

_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i39: ; preds = %bb.t
  %i.bv = sdiv exact i64 %i.bt, 24                ; 3 uses
  %.sroa.speculated.i.i.i40 = tail call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.bw = add nsw i64 %.sroa.speculated.i.i.i40, %i.bv ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bv
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 384307168202282325)
  %i.bz = select i1 %i.bx, i64 384307168202282325, i64 %i.by ; 3 uses
  %.not.i.i.i41 = icmp ne i64 %i.bz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i41)
  %i.ca = mul nuw nsw i64 %i.bz, 24
  %i.cb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #27
          to label %.noexc52 unwind label %.loopexit.split-lp178.loopexit.split-lp ; 5 uses

.noexc52:                                         ; preds = %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i39
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bt ; 4 uses
  %i.cd = sitofp i32 %.0.copyload.i28 to double
  store double %i.cd, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store <2 x float> %.fca.0.extract, ptr %i.ce, align 8
  %.sroa.694.0..sroa_idx95 = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store float %.fca.1.extract, ptr %.sroa.694.0..sroa_idx95, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 20
  store i32 1, ptr %i.cf, align 4
  %.not10.i.i.i.i.i42 = icmp eq ptr %.sroa.0120.0306, %.sroa.18131.0308
  br i1 %.not10.i.i.i.i.i42, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i47, label %.lr.ph.i.i.i.i.i43

.lr.ph.i.i.i.i.i43:                               ; preds = %.noexc52, %.lr.ph.i.i.i.i.i43
  %.012.i.i.i.i.i44 = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i43 ], [ %i.cb, %.noexc52 ] ; 2 uses
  %.0911.i.i.i.i.i45 = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i43 ], [ %.sroa.0120.0306, %.noexc52 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i44, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i45, i64 24, i1 false), !alias.scope !102
  %i.cg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i45, i64 24 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i44, i64 24 ; 2 uses
  %.not.i.i.i.i.i46 = icmp eq ptr %i.cg, %.sroa.18131.0308
  br i1 %.not.i.i.i.i.i46, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i47, label %.lr.ph.i.i.i.i.i43, !llvm.loop !91

_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i47: ; preds = %.lr.ph.i.i.i.i.i43, %.noexc52
  %.0.lcssa.i.i.i.i.i48 = phi ptr [ %i.cb, %.noexc52 ], [ %i.ch, %.lr.ph.i.i.i.i.i43 ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i48, i64 24
  %.not.i34.i.i49 = icmp eq ptr %.sroa.0120.0306, null
  br i1 %.not.i34.i.i49, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJRi10aiVector3tIfEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i50, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i47
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0120.0306, i64 noundef %i.bt) #25
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJRi10aiVector3tIfEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i50

_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJRi10aiVector3tIfEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i50: ; preds = %bb.v, %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i47
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.cb, i64 %i.bz
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EE12emplace_backIJRi10aiVector3tIfEEEERS0_DpOT_.exit53

.loopexit.split-lp178.loopexit.split-lp:          ; preds = %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i39, %bb.q, %bb.u
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorI11aiVectorKeySaIS0_EE12emplace_backIJRi10aiVector3tIfEEEERS0_DpOT_.exit53: ; preds = %bb.s, %_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJRi10aiVector3tIfEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i50, %_ZNSt6vectorI11aiVectorKeySaIS0_EE12emplace_backIJRi10aiVector3tIfEEEERS0_DpOT_.exit
  %.sroa.0120.2 = phi ptr [ %.sroa.0120.0306, %_ZNSt6vectorI11aiVectorKeySaIS0_EE12emplace_backIJRi10aiVector3tIfEEEERS0_DpOT_.exit ], [ %i.cb, %_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJRi10aiVector3tIfEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i50 ], [ %.sroa.0120.0306, %bb.s ] ; 6 uses
  %.sroa.11126.1 = phi ptr [ %.sroa.11126.0307, %_ZNSt6vectorI11aiVectorKeySaIS0_EE12emplace_backIJRi10aiVector3tIfEEEERS0_DpOT_.exit ], [ %i.ci, %_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJRi10aiVector3tIfEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i50 ], [ %i.bq, %bb.s ] ; 4 uses
  %.sroa.18131.2 = phi ptr [ %.sroa.18131.0308, %_ZNSt6vectorI11aiVectorKeySaIS0_EE12emplace_backIJRi10aiVector3tIfEEEERS0_DpOT_.exit ], [ %i.cj, %_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJRi10aiVector3tIfEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i50 ], [ %.sroa.18131.0308, %bb.s ] ; 6 uses
  br i1 %.not25, label %_ZNSt6vectorI9aiQuatKeySaIS0_EE12emplace_backIJRi13aiQuaterniontIfEEEERS0_DpOT_.exit, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EE12emplace_backIJRi10aiVector3tIfEEEERS0_DpOT_.exit53
  %i.ck = invoke { <2 x float>, <2 x float> } @_ZN6Assimp11B3DImporter8ReadQuatEv(ptr noundef nonnull align 8 dereferenceable(312) %0)
          to label %bb.x unwind label %.loopexit.split-lp183.loopexit.split-lp ; 2 uses

bb.x:                                             ; preds = %bb.w
  %i.cl = extractvalue { <2 x float>, <2 x float> } %i.ck, 0 ; 2 uses
  %i.cm = extractvalue { <2 x float>, <2 x float> } %i.ck, 1 ; 2 uses
  %.not.i54 = icmp eq ptr %.sroa.11.0310, %.sroa.18.0311
  br i1 %.not.i54, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cn = sitofp i32 %.0.copyload.i28 to double
  store double %i.cn, ptr %.sroa.11.0310, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.11.0310, i64 8
  %6 = shufflevector <2 x float> %i.cl, <2 x float> %i.cm, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %6, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.11.0310, i64 24
  store i32 1, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.11.0310, i64 32
  br label %_ZNSt6vectorI9aiQuatKeySaIS0_EE12emplace_backIJRi13aiQuaterniontIfEEEERS0_DpOT_.exit

bb.z:                                             ; preds = %bb.x
  %i.cr = ptrtoint ptr %.sroa.18.0311 to i64
  %i.cs = ptrtoint ptr %.sroa.0107.0309 to i64
  %i.ct = sub i64 %i.cr, %i.cs                    ; 4 uses
  %i.cu = icmp eq i64 %i.ct, 9223372036854775776
  br i1 %i.cu, label %bb.aa, label %_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #26
          to label %.noexc64 unwind label %.loopexit.split-lp183.loopexit.split-lp

.noexc64:                                         ; preds = %bb.aa
  unreachable

_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.z
  %i.cv = ashr exact i64 %i.ct, 5                 ; 3 uses
  %.sroa.speculated.i.i.i55 = tail call i64 @llvm.umax.i64(i64 %i.cv, i64 1)
  %i.cw = add nsw i64 %.sroa.speculated.i.i.i55, %i.cv ; 2 uses
  %i.cx = icmp ult i64 %i.cw, %i.cv
  %i.cy = tail call i64 @llvm.umin.i64(i64 %i.cw, i64 288230376151711743)
  %i.cz = select i1 %i.cx, i64 288230376151711743, i64 %i.cy ; 3 uses
  %.not.i.i.i56 = icmp ne i64 %i.cz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i56)
  %i.da = shl nuw nsw i64 %i.cz, 5
  %i.db = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.da) #27
          to label %.noexc65 unwind label %.loopexit.split-lp183.loopexit.split-lp ; 5 uses

.noexc65:                                         ; preds = %_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.ct ; 3 uses
  %i.dd = sitofp i32 %.0.copyload.i28 to double
  store double %i.dd, ptr %i.dc, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %7 = shufflevector <2 x float> %i.cl, <2 x float> %i.cm, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %7, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  store i32 1, ptr %i.df, align 8
  %.not10.i.i.i.i.i57 = icmp eq ptr %.sroa.0107.0309, %.sroa.18.0311
  br i1 %.not10.i.i.i.i.i57, label %_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i, label %.lr.ph.i.i.i.i.i58

.lr.ph.i.i.i.i.i58:                               ; preds = %.noexc65, %.lr.ph.i.i.i.i.i58
  %.012.i.i.i.i.i59 = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i58 ], [ %i.db, %.noexc65 ] ; 2 uses
  %.0911.i.i.i.i.i60 = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i58 ], [ %.sroa.0107.0309, %.noexc65 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i59, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i60, i64 32, i1 false), !alias.scope !103
  %i.dg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i60, i64 32 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i59, i64 32 ; 2 uses
  %.not.i.i.i.i.i61 = icmp eq ptr %i.dg, %.sroa.18.0311
  br i1 %.not.i.i.i.i.i61, label %_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i, label %.lr.ph.i.i.i.i.i58, !llvm.loop !98

_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i58, %.noexc65
  %.0.lcssa.i.i.i.i.i62 = phi ptr [ %i.db, %.noexc65 ], [ %i.dh, %.lr.ph.i.i.i.i.i58 ]
  %i.di = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i62, i64 32
  %.not.i34.i.i63 = icmp eq ptr %.sroa.0107.0309, null
  br i1 %.not.i34.i.i63, label %_ZNSt6vectorI9aiQuatKeySaIS0_EE17_M_realloc_insertIJRi13aiQuaterniontIfEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0107.0309, i64 noundef %i.ct) #25
  br label %_ZNSt6vectorI9aiQuatKeySaIS0_EE17_M_realloc_insertIJRi13aiQuaterniontIfEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI9aiQuatKeySaIS0_EE17_M_realloc_insertIJRi13aiQuaterniontIfEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.ab, %_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i
  %i.dj = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.cz
  br label %_ZNSt6vectorI9aiQuatKeySaIS0_EE12emplace_backIJRi13aiQuaterniontIfEEEERS0_DpOT_.exit

.loopexit.split-lp183.loopexit.split-lp:          ; preds = %_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i, %bb.w, %bb.aa
  %lpad.loopexit.split-lp681 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorI9aiQuatKeySaIS0_EE12emplace_backIJRi13aiQuaterniontIfEEEERS0_DpOT_.exit: ; preds = %bb.y, %_ZNSt6vectorI9aiQuatKeySaIS0_EE17_M_realloc_insertIJRi13aiQuaterniontIfEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %_ZNSt6vectorI11aiVectorKeySaIS0_EE12emplace_backIJRi10aiVector3tIfEEEERS0_DpOT_.exit53
  %.sroa.0107.2 = phi ptr [ %.sroa.0107.0309, %_ZNSt6vectorI11aiVectorKeySaIS0_EE12emplace_backIJRi10aiVector3tIfEEEERS0_DpOT_.exit53 ], [ %i.db, %_ZNSt6vectorI9aiQuatKeySaIS0_EE17_M_realloc_insertIJRi13aiQuaterniontIfEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %.sroa.0107.0309, %bb.y ] ; 5 uses
  %.sroa.11.1 = phi ptr [ %.sroa.11.0310, %_ZNSt6vectorI11aiVectorKeySaIS0_EE12emplace_backIJRi10aiVector3tIfEEEERS0_DpOT_.exit53 ], [ %i.di, %_ZNSt6vectorI9aiQuatKeySaIS0_EE17_M_realloc_insertIJRi13aiQuaterniontIfEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %i.cq, %bb.y ] ; 4 uses
  %.sroa.18.2 = phi ptr [ %.sroa.18.0311, %_ZNSt6vectorI11aiVectorKeySaIS0_EE12emplace_backIJRi10aiVector3tIfEEEERS0_DpOT_.exit53 ], [ %i.dj, %_ZNSt6vectorI9aiQuatKeySaIS0_EE17_M_realloc_insertIJRi13aiQuaterniontIfEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %.sroa.18.0311, %bb.y ] ; 5 uses
  %i.dk = load ptr, ptr %i.s, align 8
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -8
  %i.dm = load i64, ptr %i.dl, align 8
  %i.dn = load i64, ptr %i.a, align 8             ; 2 uses
  %.not = icmp eq i64 %i.dm, %i.dn
  br i1 %.not, label %._crit_edge, label %bb.e, !llvm.loop !99

._crit_edge:                                      ; preds = %_ZNSt6vectorI9aiQuatKeySaIS0_EE12emplace_backIJRi13aiQuaterniontIfEEEERS0_DpOT_.exit
  %.not20 = icmp eq i32 %.pre, 0
  br i1 %.not20, label %bb.af, label %bb.ac

._crit_edge.thread:                               ; preds = %_ZN6Assimp11B3DImporter7ReadIntEv.exit
  br i1 %.not20407, label %.thread452, label %.thread

.thread:                                          ; preds = %._crit_edge.thread
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 1028
  store i32 0, ptr %i.do, align 4
  br label %_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit

bb.ac:                                            ; preds = %._crit_edge
  %i.dp = ptrtoint ptr %.sroa.11141.1 to i64
  %i.dq = ptrtoint ptr %.sroa.0135.2 to i64
  %i.dr = sub i64 %i.dp, %i.dq                    ; 3 uses
  %i.ds = sdiv exact i64 %i.dr, 24                ; 2 uses
  %i.dt = trunc i64 %i.ds to i32
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 1028
  store i32 %i.dt, ptr %i.du, align 4
  %i.dv = icmp eq ptr %.sroa.0135.2, %.sroa.11141.1
  br i1 %i.dv, label %_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dw = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ds, i64 24) ; 2 uses
  %i.dx = extractvalue { i64, i1 } %i.dw, 1
  %i.dy = extractvalue { i64, i1 } %i.dw, 0
  %i.dz = select i1 %i.dx, i64 -1, i64 %i.dy
  %i.ea = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dz) #27
          to label %.noexc67 unwind label %bb.p   ; 4 uses

.noexc67:                                         ; preds = %bb.ad
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 %i.dr
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.noexc67
  %i.ec = phi ptr [ %i.ea, %.noexc67 ], [ %i.ee, %bb.ae ] ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.ed, align 4
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 24 ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.eb
  br i1 %i.ef, label %.lr.ph.preheader.i, label %bb.ae

.lr.ph.preheader.i:                               ; preds = %bb.ae
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ea, ptr align 8 %.sroa.0135.2, i64 %i.dr, i1 false)
  br label %_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit

_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit: ; preds = %.thread, %.lr.ph.preheader.i, %bb.ac
  %.sroa.0135.0.lcssa408451 = phi ptr [ %.sroa.0135.2, %bb.ac ], [ %.sroa.0135.2, %.lr.ph.preheader.i ], [ null, %.thread ]
  %.sroa.18146.0.lcssa413450 = phi ptr [ %.sroa.18146.2, %bb.ac ], [ %.sroa.18146.2, %.lr.ph.preheader.i ], [ null, %.thread ]
  %.sroa.0120.0.lcssa417449 = phi ptr [ %.sroa.0120.2, %bb.ac ], [ %.sroa.0120.2, %.lr.ph.preheader.i ], [ null, %.thread ]
  %.sroa.11126.0.lcssa420448 = phi ptr [ %.sroa.11126.1, %bb.ac ], [ %.sroa.11126.1, %.lr.ph.preheader.i ], [ null, %.thread ]
  %.sroa.18131.0.lcssa422447 = phi ptr [ %.sroa.18131.2, %bb.ac ], [ %.sroa.18131.2, %.lr.ph.preheader.i ], [ null, %.thread ]
  %.sroa.0107.0.lcssa426446 = phi ptr [ %.sroa.0107.2, %bb.ac ], [ %.sroa.0107.2, %.lr.ph.preheader.i ], [ null, %.thread ]
  %.sroa.11.0.lcssa429445 = phi ptr [ %.sroa.11.1, %bb.ac ], [ %.sroa.11.1, %.lr.ph.preheader.i ], [ null, %.thread ]
  %.sroa.18.0.lcssa431444 = phi ptr [ %.sroa.18.2, %bb.ac ], [ %.sroa.18.2, %.lr.ph.preheader.i ], [ null, %.thread ]
  %.010.i = phi ptr [ null, %bb.ac ], [ %i.ea, %.lr.ph.preheader.i ], [ null, %.thread ]
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 1032
  store ptr %.010.i, ptr %i.eg, align 8
  br label %bb.af

bb.af:                                            ; preds = %_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit, %._crit_edge
  %.sroa.18.0.lcssa432 = phi ptr [ %.sroa.18.2, %._crit_edge ], [ %.sroa.18.0.lcssa431444, %_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit ] ; 4 uses
  %.sroa.11.0.lcssa430 = phi ptr [ %.sroa.11.1, %._crit_edge ], [ %.sroa.11.0.lcssa429445, %_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit ] ; 3 uses
  %.sroa.0107.0.lcssa427 = phi ptr [ %.sroa.0107.2, %._crit_edge ], [ %.sroa.0107.0.lcssa426446, %_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit ] ; 4 uses
  %.sroa.18131.0.lcssa423 = phi ptr [ %.sroa.18131.2, %._crit_edge ], [ %.sroa.18131.0.lcssa422447, %_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit ] ; 4 uses
  %.sroa.11126.0.lcssa421 = phi ptr [ %.sroa.11126.1, %._crit_edge ], [ %.sroa.11126.0.lcssa420448, %_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit ] ; 2 uses
  %.sroa.0120.0.lcssa418 = phi ptr [ %.sroa.0120.2, %._crit_edge ], [ %.sroa.0120.0.lcssa417449, %_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit ] ; 7 uses
  %.sroa.18146.0.lcssa414 = phi ptr [ %.sroa.18146.2, %._crit_edge ], [ %.sroa.18146.0.lcssa413450, %_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit ] ; 4 uses
  %.sroa.0135.0.lcssa409 = phi ptr [ %.sroa.0135.2, %._crit_edge ], [ %.sroa.0135.0.lcssa408451, %_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit ] ; 4 uses
  %i.eh = and i32 %.0.copyload.i, 2
  %.not21 = icmp eq i32 %i.eh, 0
  br i1 %.not21, label %bb.aj, label %bb.ag

.thread452:                                       ; preds = %._crit_edge.thread
  %i.ei = and i32 %.0.copyload.i, 2
  %.not21461 = icmp eq i32 %i.ei, 0
  br i1 %.not21461, label %.thread488, label %.thread472

.thread472:                                       ; preds = %.thread452
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 1056
  store i32 0, ptr %i.ej, align 8
  br label %_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit73

bb.ag:                                            ; preds = %bb.af
  %i.ek = ptrtoint ptr %.sroa.11126.0.lcssa421 to i64
  %i.el = ptrtoint ptr %.sroa.0120.0.lcssa418 to i64
  %i.em = sub i64 %i.ek, %i.el                    ; 3 uses
  %i.en = sdiv exact i64 %i.em, 24                ; 2 uses
  %i.eo = trunc i64 %i.en to i32
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 1056
  store i32 %i.eo, ptr %i.ep, align 8
  %i.eq = icmp eq ptr %.sroa.0120.0.lcssa418, %.sroa.11126.0.lcssa421
  br i1 %i.eq, label %_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit73, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.er = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.en, i64 24) ; 2 uses
  %i.es = extractvalue { i64, i1 } %i.er, 1
  %i.et = extractvalue { i64, i1 } %i.er, 0
  %i.eu = select i1 %i.es, i64 -1, i64 %i.et
  %i.ev = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.eu) #27
          to label %.noexc72 unwind label %bb.p   ; 4 uses

.noexc72:                                         ; preds = %bb.ah
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 %i.em
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.noexc72
  %i.ex = phi ptr [ %i.ev, %.noexc72 ], [ %i.ez, %bb.ai ] ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ex, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.ey, align 4
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 24 ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.ew
  br i1 %i.fa, label %.lr.ph.preheader.i70, label %bb.ai

.lr.ph.preheader.i70:                             ; preds = %bb.ai
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ev, ptr align 8 %.sroa.0120.0.lcssa418, i64 %i.em, i1 false)
  br label %_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit73

_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit73: ; preds = %.thread472, %.lr.ph.preheader.i70, %bb.ag
  %.sroa.18.0.lcssa432462487 = phi ptr [ %.sroa.18.0.lcssa432, %bb.ag ], [ %.sroa.18.0.lcssa432, %.lr.ph.preheader.i70 ], [ null, %.thread472 ]
  %.sroa.11.0.lcssa430463486 = phi ptr [ %.sroa.11.0.lcssa430, %bb.ag ], [ %.sroa.11.0.lcssa430, %.lr.ph.preheader.i70 ], [ null, %.thread472 ]
  %.sroa.0107.0.lcssa427465485 = phi ptr [ %.sroa.0107.0.lcssa427, %bb.ag ], [ %.sroa.0107.0.lcssa427, %.lr.ph.preheader.i70 ], [ null, %.thread472 ]
  %.sroa.18131.0.lcssa423466484 = phi ptr [ %.sroa.18131.0.lcssa423, %bb.ag ], [ %.sroa.18131.0.lcssa423, %.lr.ph.preheader.i70 ], [ null, %.thread472 ]
  %.sroa.0120.0.lcssa418468483 = phi ptr [ %.sroa.0120.0.lcssa418, %bb.ag ], [ %.sroa.0120.0.lcssa418, %.lr.ph.preheader.i70 ], [ null, %.thread472 ]
  %.sroa.18146.0.lcssa414470482 = phi ptr [ %.sroa.18146.0.lcssa414, %bb.ag ], [ %.sroa.18146.0.lcssa414, %.lr.ph.preheader.i70 ], [ null, %.thread472 ]
  %.sroa.0135.0.lcssa409471481 = phi ptr [ %.sroa.0135.0.lcssa409, %bb.ag ], [ %.sroa.0135.0.lcssa409, %.lr.ph.preheader.i70 ], [ null, %.thread472 ]
  %.010.i71 = phi ptr [ null, %bb.ag ], [ %i.ev, %.lr.ph.preheader.i70 ], [ null, %.thread472 ]
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 1064
  store ptr %.010.i71, ptr %i.fb, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit73, %bb.af
  %.sroa.0120.0.lcssa418469 = phi ptr [ %.sroa.0120.0.lcssa418468483, %_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit73 ], [ %.sroa.0120.0.lcssa418, %bb.af ] ; 5 uses
  %.sroa.11.0.lcssa430464 = phi ptr [ %.sroa.11.0.lcssa430463486, %_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit73 ], [ %.sroa.11.0.lcssa430, %bb.af ] ; 2 uses
  %.sroa.18.0.lcssa433 = phi ptr [ %.sroa.18.0.lcssa432462487, %_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit73 ], [ %.sroa.18.0.lcssa432, %bb.af ] ; 5 uses
  %.sroa.0107.0.lcssa428 = phi ptr [ %.sroa.0107.0.lcssa427465485, %_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit73 ], [ %.sroa.0107.0.lcssa427, %bb.af ] ; 10 uses
  %.sroa.18131.0.lcssa424 = phi ptr [ %.sroa.18131.0.lcssa423466484, %_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit73 ], [ %.sroa.18131.0.lcssa423, %bb.af ] ; 5 uses
  %.sroa.18146.0.lcssa415 = phi ptr [ %.sroa.18146.0.lcssa414470482, %_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit73 ], [ %.sroa.18146.0.lcssa414, %bb.af ] ; 5 uses
  %.sroa.0135.0.lcssa410 = phi ptr [ %.sroa.0135.0.lcssa409471481, %_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit73 ], [ %.sroa.0135.0.lcssa409, %bb.af ] ; 5 uses
  %i.fc = and i32 %.0.copyload.i, 4
  %.not22 = icmp eq i32 %i.fc, 0
  br i1 %.not22, label %bb.an, label %bb.ak

.thread488:                                       ; preds = %.thread452
  %i.fd = and i32 %.0.copyload.i, 4
  %.not22496 = icmp eq i32 %i.fd, 0
  br i1 %.not22496, label %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit82, label %.thread505

.thread505:                                       ; preds = %.thread488
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 1040
  store i32 0, ptr %i.fe, align 8
  br label %_ZN6Assimp11B3DImporter8to_arrayI9aiQuatKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit

end_hunk_1
