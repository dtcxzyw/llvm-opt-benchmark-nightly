Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/stereo_binary_bm?download=true
inline.NumInlined: 327
inline.NumDeleted: 127
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN2cv6stereo8Matching28hammingDistanceBlockMatchingERKNS_3MatES4_RS2_i:bb.a
  store ptr %i.bx, ptr %i.bv, align 8, !tbaa !155
  %i.by = getelementptr inbounds nuw i8, ptr %16, i64 24
  store ptr %i.bp, ptr %i.by, align 8, !tbaa !156
  %i.bz = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i32 %i.bq, ptr %i.bz, align 8, !tbaa !157
  %i.ca = getelementptr inbounds nuw i8, ptr %16, i64 36
  store i32 %i.bl, ptr %i.ca, align 4, !tbaa !90
  %i.cb = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.cc = load i32, ptr %i.a, align 4, !tbaa !56
  store i32 %i.cc, ptr %i.cb, align 8, !tbaa !91
  %i.cd = getelementptr inbounds nuw i8, ptr %16, i64 44
  store i32 65535, ptr %i.cd, align 4, !tbaa !158
  %i.ce = getelementptr inbounds nuw i8, ptr %16, i64 48
  store ptr %i.br, ptr %i.ce, align 8, !tbaa !159
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %16, double noundef -1.000000e+00)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %16) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  ret void

bb.ag:                                            ; preds = %bb.ae
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %16) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn39 = phi { ptr, i32 } [ %i.cf, %bb.ag ], [ %.pn37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ], [ %.pn35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ], [ %.pn33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %.pn31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn39
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6stereo8Matching13costGatheringERKNS_3MatERS2_(ptr noundef nonnull align 8 dereferenceable(262784) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !24
  %i.b = and i32 %i.a, 4095
  %i.c = icmp eq i32 %i.b, 3
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.39, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv6stereo8Matching13costGatheringERKNS_3MatERS2_, ptr noundef nonnull @.str.2, i32 noundef 443) #19
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %3, align 8, !tbaa !28     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.i = load i64, ptr %i.g, align 8, !tbaa !14
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.e, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  %i.k = load i32, ptr %2, align 8, !tbaa !24
  %i.l = and i32 %i.k, 4095
  %i.m = icmp eq i32 %i.l, 3
  br i1 %i.m, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.40, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv6stereo8Matching13costGatheringERKNS_3MatERS2_, ptr noundef nonnull @.str.2, i32 noundef 444) #19
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

bb.l:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %5, align 8, !tbaa !28     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %bb.l
  %i.s = load i64, ptr %i.q, align 8, !tbaa !14
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83, %bb.k
  %.pn79 = phi { ptr, i32 } [ %i.n, %bb.k ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83 ], [ %i.o, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.n

bb.m:                                             ; preds = %bb.g
  %i.u = load i32, ptr %0, align 8, !tbaa !32     ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !56
  %i.x = add nsw i32 %i.u, 1                      ; 9 uses
  %i.y = sdiv i32 %i.w, %i.x                      ; 4 uses
  %i.z = add i32 %i.y, -1                         ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !57 ; 3 uses
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !62 ; 10 uses
  %i.af = ptrtoaddr ptr %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !62 ; 2 uses
  %i.ai = ptrtoaddr ptr %i.ah to i64
  %i.aj = sext i32 %i.y to i64
  %i.ak = sext i32 %i.ab to i64
  %i.al = sext i32 %i.x to i64                    ; 9 uses
  %i.am = shl nsw i64 %i.al, 1
  %i.an = mul nsw i64 %i.am, %i.aj
  %i.ao = mul i64 %i.an, %i.ak
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.ae, i8 0, i64 %i.ao, i1 false)
  %i.ap = icmp sgt i32 %i.ab, 2
  br i1 %i.ap, label %.lr.ph95, label %._crit_edge106.split

.lr.ph95:                                         ; preds = %bb.m
  %i.aq = icmp slt i32 %i.y, 3
  %.not8287 = icmp slt i32 %i.u, 0
  %brmerge = or i1 %i.aq, %.not8287
  br i1 %brmerge, label %.preheader.lr.ph, label %.lr.ph91.preheader

.lr.ph91.preheader:                               ; preds = %.lr.ph95
  %i.ar = zext nneg i32 %i.z to i64
  %wide.trip.count120 = zext nneg i32 %i.ac to i64
  %wide.trip.count115 = zext i32 %i.z to i64      ; 3 uses
  %wide.trip.count = zext nneg i32 %i.x to i64    ; 8 uses
  %i.as = shl nuw i32 %i.u, 1
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = add nuw nsw i64 %i.at, 2
  %i.av = add nuw nsw i64 %wide.trip.count115, 1
  %i.aw = mul nuw i64 %i.av, %i.al
  %i.ax = shl i64 %i.aw, 1
  %i.ay = add i64 %i.ax, %i.af
  %i.az = sub i64 %i.ay, %i.ai
  %i.ba = mul nuw nsw i64 %i.al, %wide.trip.count115
  %i.bb = shl nuw i64 %i.ba, 1
  %min.iters.check = icmp ult i32 %i.x, 4
  %i.bc = or disjoint i64 %i.at, 1
  %diff.check154 = icmp samesign ult i64 %i.bc, 31
  %min.iters.check155 = icmp ult i32 %i.x, 16
  %i.bd = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.bd, 0
  %n.vec159 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n164 = icmp eq i64 %n.vec159, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph91

.preheader.lr.ph:                                 ; preds = %._crit_edge92, %.lr.ph95
  %i.be = icmp slt i32 %i.y, 3
  %.not97 = icmp slt i32 %i.u, 0
  %brmerge110 = or i1 %i.be, %.not97
  br i1 %brmerge110, label %._crit_edge106.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.bf = zext nneg i32 %i.z to i64               ; 2 uses
  %wide.trip.count135 = zext nneg i32 %i.ac to i64
  %wide.trip.count130 = zext i32 %i.z to i64      ; 3 uses
  %wide.trip.count125 = zext nneg i32 %i.x to i64 ; 9 uses
  %i.bg = shl nuw i32 %i.u, 1
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %i.bi = shl nuw nsw i64 %wide.trip.count125, 1  ; 2 uses
  %i.bj = mul nuw nsw i64 %i.al, %wide.trip.count130
  %i.bk = shl nuw i64 %i.bj, 1
  %i.bl = add nuw nsw i64 %wide.trip.count130, 1
  %i.bm = mul nuw i64 %i.bl, %i.al
  %i.bn = shl i64 %i.bm, 1                        ; 2 uses
  %i.bo = getelementptr i8, ptr %i.ae, i64 %i.bi
  %i.bp = getelementptr i8, ptr %i.bo, i64 %i.bh
  %i.bq = getelementptr i8, ptr %i.bp, i64 2
  %i.br = getelementptr i8, ptr %i.ae, i64 %i.bh
  %i.bs = getelementptr i8, ptr %i.br, i64 2
  %i.bt = getelementptr i8, ptr %i.ae, i64 %i.bn
  %i.bu = getelementptr i8, ptr %i.bt, i64 %i.bi
  %i.bv = getelementptr i8, ptr %i.ae, i64 %i.bn
  %min.iters.check176 = icmp ult i32 %i.x, 4
  %min.iters.check179 = icmp ult i32 %i.x, 16
  %i.bw = and i64 %wide.trip.count125, 12
  %n.vec181 = and i64 %wide.trip.count125, 2147483632 ; 4 uses
  %cmp.n190 = icmp eq i64 %n.vec181, %wide.trip.count125
  %min.epilog.iters.check194 = icmp eq i64 %i.bw, 0
  %n.vec197 = and i64 %wide.trip.count125, 2147483644 ; 3 uses
  %cmp.n204 = icmp eq i64 %n.vec197, %wide.trip.count125
  %xtraiter206 = and i64 %wide.trip.count125, 3   ; 2 uses
  %lcmp.mod207.not = icmp eq i64 %xtraiter206, 0
  br label %.preheader

.lr.ph91:                                         ; preds = %.lr.ph91.preheader, %._crit_edge92
  %indvar152 = phi i64 [ 0, %.lr.ph91.preheader ], [ %indvar.next153, %._crit_edge92 ] ; 2 uses
  %indvars.iv117 = phi i64 [ 1, %.lr.ph91.preheader ], [ %indvars.iv.next118, %._crit_edge92 ] ; 3 uses
  %i.bx = mul i64 %i.bb, %indvar152
  %i.by = add i64 %i.az, %i.bx
  %i.bz = mul nuw nsw i64 %indvars.iv117, %i.ar
  %i.ca = trunc i64 %indvars.iv117 to i32
  %i.cb = add i32 %i.ca, -1
  %i.cc = mul i32 %i.cb, %i.z
  %i.cd = add i32 %i.cc, -1
  br label %iter.check

._crit_edge92:                                    ; preds = %._crit_edge
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %exitcond121.not = icmp eq i64 %indvars.iv.next118, %wide.trip.count120
  %indvar.next153 = add i64 %indvar152, 1
  br i1 %exitcond121.not, label %.preheader.lr.ph, label %.lr.ph91, !llvm.loop !160

iter.check:                                       ; preds = %.lr.ph91, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph91 ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %indvars.iv112 = phi i64 [ 1, %.lr.ph91 ], [ %indvars.iv.next113, %._crit_edge ] ; 3 uses
  %i.ce = add nuw nsw i64 %indvars.iv112, %i.bz   ; 2 uses
  %i.cf = mul nuw nsw i64 %i.ce, %i.al
  %i.cg = add nsw i64 %i.ce, -1
  %i.ch = mul nsw i64 %i.cg, %i.al
  %i.ci = trunc nuw nsw i64 %indvars.iv112 to i32
  %i.cj = add i32 %i.cd, %i.ci
  %i.ck = mul nsw i32 %i.cj, %i.x
  %i.cl = sext i32 %i.ck to i64                   ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.ah, i64 %i.cl ; 7 uses
  %invariant.gep141 = getelementptr [2 x i8], ptr %i.ae, i64 %i.ch ; 7 uses
  %invariant.gep143 = getelementptr [2 x i8], ptr %i.ae, i64 %i.cf ; 7 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cm = mul i64 %indvar, %i.au
  %i.cn = add i64 %i.by, %i.cm
  %i.co = shl nsw i64 %i.cl, 1
  %i.cp = sub i64 %i.co, %i.cn
  %diff.check = icmp ugt i64 %i.cp, -32
  %conflict.rdx = or i1 %diff.check, %diff.check154
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check155, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 4 uses
  %i.cq = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 16
  %wide.load = load <8 x i16>, ptr %i.cq, align 2, !tbaa !93
  %wide.load156 = load <8 x i16>, ptr %i.cr, align 2, !tbaa !93
  %i.cs = getelementptr [2 x i8], ptr %invariant.gep141, i64 %index ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cs, i64 16
  %wide.load157 = load <8 x i16>, ptr %i.cs, align 2, !tbaa !93
  %wide.load158 = load <8 x i16>, ptr %i.ct, align 2, !tbaa !93
  %i.cu = add <8 x i16> %wide.load157, %wide.load
  %i.cv = add <8 x i16> %wide.load158, %wide.load156
  %i.cw = getelementptr [2 x i8], ptr %invariant.gep143, i64 %index ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 16
  store <8 x i16> %i.cu, ptr %i.cw, align 2, !tbaa !93
  store <8 x i16> %i.cv, ptr %i.cx, align 2, !tbaa !93
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %middle.block, label %vector.body, !llvm.loop !161

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !96

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index160 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next163, %vec.epilog.vector.body ] ; 4 uses
  %i.cz = getelementptr [2 x i8], ptr %invariant.gep, i64 %index160
  %wide.load161 = load <4 x i16>, ptr %i.cz, align 2, !tbaa !93
  %i.da = getelementptr [2 x i8], ptr %invariant.gep141, i64 %index160
  %wide.load162 = load <4 x i16>, ptr %i.da, align 2, !tbaa !93
  %i.db = add <4 x i16> %wide.load162, %wide.load161
  %i.dc = getelementptr [2 x i8], ptr %invariant.gep143, i64 %index160
  store <4 x i16> %i.db, ptr %i.dc, align 2, !tbaa !93
  %index.next163 = add nuw i64 %index160, 4       ; 2 uses
  %i.dd = icmp eq i64 %index.next163, %n.vec159
  br i1 %i.dd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !162

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n164, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec159, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.prol = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.de = load i16, ptr %gep.prol, align 2, !tbaa !93
  %gep142.prol = getelementptr [2 x i8], ptr %invariant.gep141, i64 %indvars.iv.prol
  %i.df = load i16, ptr %gep142.prol, align 2, !tbaa !93
  %i.dg = add i16 %i.df, %i.de
  %gep144.prol = getelementptr [2 x i8], ptr %invariant.gep143, i64 %indvars.iv.prol
  store i16 %i.dg, ptr %gep144.prol, align 2, !tbaa !93
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !163

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.dh = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.di = icmp ugt i64 %i.dh, -4
  br i1 %i.di, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %exitcond116.not = icmp eq i64 %indvars.iv.next113, %wide.trip.count115
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond116.not, label %._crit_edge92, label %iter.check, !llvm.loop !164

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 7 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.dj = load i16, ptr %gep, align 2, !tbaa !93
  %gep142 = getelementptr [2 x i8], ptr %invariant.gep141, i64 %indvars.iv
  %i.dk = load i16, ptr %gep142, align 2, !tbaa !93
  %i.dl = add i16 %i.dk, %i.dj
  %gep144 = getelementptr [2 x i8], ptr %invariant.gep143, i64 %indvars.iv
  store i16 %i.dl, ptr %gep144, align 2, !tbaa !93
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.dm = load i16, ptr %gep.1, align 2, !tbaa !93
  %gep142.1 = getelementptr [2 x i8], ptr %invariant.gep141, i64 %indvars.iv.next
  %i.dn = load i16, ptr %gep142.1, align 2, !tbaa !93
  %i.do = add i16 %i.dn, %i.dm
  %gep144.1 = getelementptr [2 x i8], ptr %invariant.gep143, i64 %indvars.iv.next
  store i16 %i.do, ptr %gep144.1, align 2, !tbaa !93
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %gep.2 = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.dp = load i16, ptr %gep.2, align 2, !tbaa !93
  %gep142.2 = getelementptr [2 x i8], ptr %invariant.gep141, i64 %indvars.iv.next.1
  %i.dq = load i16, ptr %gep142.2, align 2, !tbaa !93
  %i.dr = add i16 %i.dq, %i.dp
  %gep144.2 = getelementptr [2 x i8], ptr %invariant.gep143, i64 %indvars.iv.next.1
  store i16 %i.dr, ptr %gep144.2, align 2, !tbaa !93
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %gep.3 = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.ds = load i16, ptr %gep.3, align 2, !tbaa !93
  %gep142.3 = getelementptr [2 x i8], ptr %invariant.gep141, i64 %indvars.iv.next.2
  %i.dt = load i16, ptr %gep142.3, align 2, !tbaa !93
  %i.du = add i16 %i.dt, %i.ds
  %gep144.3 = getelementptr [2 x i8], ptr %invariant.gep143, i64 %indvars.iv.next.2
  store i16 %i.du, ptr %gep144.3, align 2, !tbaa !93
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !165

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge104
  %indvar171 = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next172, %._crit_edge104 ] ; 2 uses
  %indvars.iv132 = phi i64 [ 1, %.preheader.preheader ], [ %indvars.iv.next133, %._crit_edge104 ] ; 3 uses
  %i.dv = mul i64 %i.bk, %indvar171               ; 4 uses
  %scevgep = getelementptr i8, ptr %i.bq, i64 %i.dv
  %scevgep173 = getelementptr i8, ptr %i.bs, i64 %i.dv
  %scevgep174 = getelementptr i8, ptr %i.bu, i64 %i.dv
  %scevgep175 = getelementptr i8, ptr %i.bv, i64 %i.dv
  %i.dw = mul nuw nsw i64 %indvars.iv132, %i.bf
  %i.dx = add nsw i64 %indvars.iv132, -1
  %i.dy = mul nuw nsw i64 %i.dx, %i.bf
  %bound0 = icmp ult ptr %scevgep175, %scevgep
  %bound1 = icmp ult ptr %scevgep173, %scevgep174
  %found.conflict = and i1 %bound0, %bound1
  br label %iter.check191

._crit_edge106.split:                             ; preds = %._crit_edge104, %bb.m, %.preheader.lr.ph
  ret void

._crit_edge104:                                   ; preds = %._crit_edge101
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %exitcond136.not = icmp eq i64 %indvars.iv.next133, %wide.trip.count135
  %indvar.next172 = add i64 %indvar171, 1
  br i1 %exitcond136.not, label %._crit_edge106.split, label %.preheader, !llvm.loop !166

iter.check191:                                    ; preds = %.preheader, %._crit_edge101
  %indvars.iv127 = phi i64 [ 1, %.preheader ], [ %indvars.iv.next128, %._crit_edge101 ] ; 3 uses
  %i.dz = add nuw nsw i64 %indvars.iv127, %i.dw
  %i.ea = mul nuw nsw i64 %i.dz, %i.al
  %i.eb = add nsw i64 %indvars.iv127, %i.dy
  %i.ec = mul nsw i64 %i.eb, %i.al
  %invariant.gep145 = getelementptr [2 x i8], ptr %i.ae, i64 %i.ec ; 7 uses
  %invariant.gep147 = getelementptr [2 x i8], ptr %i.ae, i64 %i.ea ; 7 uses
  %brmerge209 = select i1 %min.iters.check176, i1 true, i1 %found.conflict
  br i1 %brmerge209, label %vec.epilog.scalar.ph193.preheader, label %vector.main.loop.iter.check178

vector.main.loop.iter.check178:                   ; preds = %iter.check191
  br i1 %min.iters.check179, label %vec.epilog.ph195, label %vector.body182

vector.body182:                                   ; preds = %vector.main.loop.iter.check178, %vector.body182
  %index183 = phi i64 [ %index.next188, %vector.body182 ], [ 0, %vector.main.loop.iter.check178 ] ; 3 uses
  %i.ed = getelementptr [2 x i8], ptr %invariant.gep145, i64 %index183 ; 2 uses
  %i.ee = getelementptr i8, ptr %i.ed, i64 16
  %wide.load184 = load <8 x i16>, ptr %i.ed, align 2, !tbaa !93, !alias.scope !175
  %wide.load185 = load <8 x i16>, ptr %i.ee, align 2, !tbaa !93, !alias.scope !175
  %i.ef = getelementptr [2 x i8], ptr %invariant.gep147, i64 %index183 ; 3 uses
  %i.eg = getelementptr i8, ptr %i.ef, i64 16     ; 2 uses
  %wide.load186 = load <8 x i16>, ptr %i.ef, align 2, !tbaa !93, !alias.scope !176, !noalias !175
  %wide.load187 = load <8 x i16>, ptr %i.eg, align 2, !tbaa !93, !alias.scope !176, !noalias !175
  %i.eh = add <8 x i16> %wide.load186, %wide.load184
  %i.ei = add <8 x i16> %wide.load187, %wide.load185
  store <8 x i16> %i.eh, ptr %i.ef, align 2, !tbaa !93, !alias.scope !176, !noalias !175
  store <8 x i16> %i.ei, ptr %i.eg, align 2, !tbaa !93, !alias.scope !176, !noalias !175
  %index.next188 = add nuw i64 %index183, 16      ; 2 uses
  %i.ej = icmp eq i64 %index.next188, %n.vec181
  br i1 %i.ej, label %middle.block189, label %vector.body182, !llvm.loop !170

middle.block189:                                  ; preds = %vector.body182
  br i1 %cmp.n190, label %._crit_edge101, label %vec.epilog.iter.check192

vec.epilog.iter.check192:                         ; preds = %middle.block189
  br i1 %min.epilog.iters.check194, label %vec.epilog.scalar.ph193.preheader, label %vec.epilog.ph195, !prof !96

vec.epilog.ph195:                                 ; preds = %vector.main.loop.iter.check178, %vec.epilog.iter.check192
  %vec.epilog.resume.val196 = phi i64 [ %n.vec181, %vec.epilog.iter.check192 ], [ 0, %vector.main.loop.iter.check178 ]
  br label %vec.epilog.vector.body198

vec.epilog.vector.body198:                        ; preds = %vec.epilog.vector.body198, %vec.epilog.ph195
  %index199 = phi i64 [ %vec.epilog.resume.val196, %vec.epilog.ph195 ], [ %index.next202, %vec.epilog.vector.body198 ] ; 3 uses
  %i.ek = getelementptr [2 x i8], ptr %invariant.gep145, i64 %index199
  %wide.load200 = load <4 x i16>, ptr %i.ek, align 2, !tbaa !93, !alias.scope !175
  %i.el = getelementptr [2 x i8], ptr %invariant.gep147, i64 %index199 ; 2 uses
  %wide.load201 = load <4 x i16>, ptr %i.el, align 2, !tbaa !93, !alias.scope !176, !noalias !175
  %i.em = add <4 x i16> %wide.load201, %wide.load200
  store <4 x i16> %i.em, ptr %i.el, align 2, !tbaa !93, !alias.scope !176, !noalias !175
  %index.next202 = add nuw i64 %index199, 4       ; 2 uses
  %i.en = icmp eq i64 %index.next202, %n.vec197
  br i1 %i.en, label %vec.epilog.middle.block203, label %vec.epilog.vector.body198, !llvm.loop !171

vec.epilog.middle.block203:                       ; preds = %vec.epilog.vector.body198
  br i1 %cmp.n204, label %._crit_edge101, label %vec.epilog.scalar.ph193.preheader

vec.epilog.scalar.ph193.preheader:                ; preds = %iter.check191, %vec.epilog.iter.check192, %vec.epilog.middle.block203
  %indvars.iv122.ph = phi i64 [ 0, %iter.check191 ], [ %n.vec197, %vec.epilog.middle.block203 ], [ %n.vec181, %vec.epilog.iter.check192 ] ; 3 uses
  br i1 %lcmp.mod207.not, label %vec.epilog.scalar.ph193.prol.loopexit, label %vec.epilog.scalar.ph193.prol

vec.epilog.scalar.ph193.prol:                     ; preds = %vec.epilog.scalar.ph193.preheader, %vec.epilog.scalar.ph193.prol
  %indvars.iv122.prol = phi i64 [ %indvars.iv.next123.prol, %vec.epilog.scalar.ph193.prol ], [ %indvars.iv122.ph, %vec.epilog.scalar.ph193.preheader ] ; 3 uses
  %prol.iter208 = phi i64 [ %prol.iter208.next, %vec.epilog.scalar.ph193.prol ], [ 0, %vec.epilog.scalar.ph193.preheader ]
  %gep146.prol = getelementptr [2 x i8], ptr %invariant.gep145, i64 %indvars.iv122.prol
  %i.eo = load i16, ptr %gep146.prol, align 2, !tbaa !93
  %gep148.prol = getelementptr [2 x i8], ptr %invariant.gep147, i64 %indvars.iv122.prol ; 2 uses
  %i.ep = load i16, ptr %gep148.prol, align 2, !tbaa !93
  %i.eq = add i16 %i.ep, %i.eo
  store i16 %i.eq, ptr %gep148.prol, align 2, !tbaa !93
  %indvars.iv.next123.prol = add nuw nsw i64 %indvars.iv122.prol, 1 ; 2 uses
  %prol.iter208.next = add i64 %prol.iter208, 1   ; 2 uses
  %prol.iter208.cmp.not = icmp eq i64 %prol.iter208.next, %xtraiter206
  br i1 %prol.iter208.cmp.not, label %vec.epilog.scalar.ph193.prol.loopexit, label %vec.epilog.scalar.ph193.prol, !llvm.loop !172

vec.epilog.scalar.ph193.prol.loopexit:            ; preds = %vec.epilog.scalar.ph193.prol, %vec.epilog.scalar.ph193.preheader
  %indvars.iv122.unr = phi i64 [ %indvars.iv122.ph, %vec.epilog.scalar.ph193.preheader ], [ %indvars.iv.next123.prol, %vec.epilog.scalar.ph193.prol ]
  %i.er = sub nsw i64 %indvars.iv122.ph, %wide.trip.count125
  %i.es = icmp ugt i64 %i.er, -4
  br i1 %i.es, label %._crit_edge101, label %vec.epilog.scalar.ph193

._crit_edge101:                                   ; preds = %vec.epilog.scalar.ph193.prol.loopexit, %vec.epilog.scalar.ph193, %vec.epilog.middle.block203, %middle.block189
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %exitcond131.not = icmp eq i64 %indvars.iv.next128, %wide.trip.count130
  br i1 %exitcond131.not, label %._crit_edge104, label %iter.check191, !llvm.loop !173

vec.epilog.scalar.ph193:                          ; preds = %vec.epilog.scalar.ph193.prol.loopexit, %vec.epilog.scalar.ph193
  %indvars.iv122 = phi i64 [ %indvars.iv.next123.3, %vec.epilog.scalar.ph193 ], [ %indvars.iv122.unr, %vec.epilog.scalar.ph193.prol.loopexit ] ; 6 uses
  %gep146 = getelementptr [2 x i8], ptr %invariant.gep145, i64 %indvars.iv122
  %i.et = load i16, ptr %gep146, align 2, !tbaa !93
  %gep148 = getelementptr [2 x i8], ptr %invariant.gep147, i64 %indvars.iv122 ; 2 uses
  %i.eu = load i16, ptr %gep148, align 2, !tbaa !93
  %i.ev = add i16 %i.eu, %i.et
  store i16 %i.ev, ptr %gep148, align 2, !tbaa !93
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %gep146.1 = getelementptr [2 x i8], ptr %invariant.gep145, i64 %indvars.iv.next123
  %i.ew = load i16, ptr %gep146.1, align 2, !tbaa !93
  %gep148.1 = getelementptr [2 x i8], ptr %invariant.gep147, i64 %indvars.iv.next123 ; 2 uses
  %i.ex = load i16, ptr %gep148.1, align 2, !tbaa !93
  %i.ey = add i16 %i.ex, %i.ew
  store i16 %i.ey, ptr %gep148.1, align 2, !tbaa !93
  %indvars.iv.next123.1 = add nuw nsw i64 %indvars.iv122, 2 ; 2 uses
  %gep146.2 = getelementptr [2 x i8], ptr %invariant.gep145, i64 %indvars.iv.next123.1
  %i.ez = load i16, ptr %gep146.2, align 2, !tbaa !93
  %gep148.2 = getelementptr [2 x i8], ptr %invariant.gep147, i64 %indvars.iv.next123.1 ; 2 uses
  %i.fa = load i16, ptr %gep148.2, align 2, !tbaa !93
  %i.fb = add i16 %i.fa, %i.ez
  store i16 %i.fb, ptr %gep148.2, align 2, !tbaa !93
  %indvars.iv.next123.2 = add nuw nsw i64 %indvars.iv122, 3 ; 2 uses
  %gep146.3 = getelementptr [2 x i8], ptr %invariant.gep145, i64 %indvars.iv.next123.2
  %i.fc = load i16, ptr %gep146.3, align 2, !tbaa !93
  %gep148.3 = getelementptr [2 x i8], ptr %invariant.gep147, i64 %indvars.iv.next123.2 ; 2 uses
  %i.fd = load i16, ptr %gep148.3, align 2, !tbaa !93
  %i.fe = add i16 %i.fd, %i.fc
  store i16 %i.fe, ptr %gep148.3, align 2, !tbaa !93
  %indvars.iv.next123.3 = add nuw nsw i64 %indvars.iv122, 4 ; 2 uses
  %exitcond126.not.3 = icmp eq i64 %indvars.iv.next123.3, %wide.trip.count125
  br i1 %exitcond126.not.3, label %._crit_edge101, label %vec.epilog.scalar.ph193, !llvm.loop !174

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn79.pn = phi { ptr, i32 } [ %.pn79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn79.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6stereo8Matching15blockAgregationERKNS_3MatEiRS2_(ptr noundef nonnull align 8 dereferenceable(262784) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(208) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %10 = alloca %"class.cv::Range", align 4        ; 6 uses
  %11 = alloca %"class.cv::stereo::Matching::agregateCost", align 8 ; 13 uses
  %i.a = and i32 %2, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.41, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv6stereo8Matching15blockAgregationERKNS_3MatEiRS2_, ptr noundef nonnull @.str.2, i32 noundef 482) #19
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %4, align 8, !tbaa !28     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.g = load i64, ptr %i.e, align 8, !tbaa !14
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.b, %bb.e ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.c, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.v

bb.g:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !57   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
end_hunk_0
