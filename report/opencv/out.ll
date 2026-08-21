inline.NumInlined: 750
inline.NumDeleted: 357
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2cv9Formatter3getENS0_10FormatTypeE:bb.a
  %i.d = icmp ult i32 %switch.tableidx, 5
  br i1 %i.d, label %switch.lookup, label %_ZNSt12__shared_ptrIN2cv15MatlabFormatterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

switch.lookup:                                    ; preds = %bb.a
  %i.e = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2cv9Formatter3getENS0_10FormatTypeE, i64 %i.e
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.f = zext nneg i32 %switch.tableidx to i64
  %switch.gep46 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2cv9Formatter3getENS0_10FormatTypeE.3, i64 %i.f
  %switch.load47 = load ptr, ptr %switch.gep46, align 8
  br label %_ZNSt12__shared_ptrIN2cv15MatlabFormatterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv15MatlabFormatterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %switch.lookup
  %.sink45 = phi ptr [ %switch.load, %switch.lookup ], [ getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN2cv16DefaultFormatterESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), %bb.a ]
  %.sink = phi ptr [ %switch.load47, %switch.lookup ], [ getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN2cv16DefaultFormatterE, i64 16), %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %.sink45, ptr %i.a, align 8, !tbaa !12, !noalias !8
  store <4 x i32> <i32 4, i32 8, i32 16, i32 1>, ptr %i.h, align 8, !tbaa !14, !noalias !8
  store ptr %.sink, ptr %i.i, align 8, !tbaa !12, !noalias !8
  store ptr %i.i, ptr %0, align 8, !tbaa !15
  store ptr %i.a, ptr %i.g, align 8, !tbaa !21
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv6pprintERSoRKNS_11_InputArrayEiiic(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef signext %5) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 14 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %8 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %9 = alloca %"struct.cv::MatShape", align 4     ; 7 uses
  %i.c = alloca [10 x i64], align 16              ; 12 uses
  switch i8 %5, label %bb.b [
    i8 40, label %bb.c
    i8 91, label %.fold.split
    i8 123, label %.fold.split56
    i8 60, label %switch.edge
  ]

switch.edge:                                      ; preds = %bb.a
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  br label %bb.c

.fold.split:                                      ; preds = %bb.a
  br label %bb.c

.fold.split56:                                    ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %switch.edge, %bb.a, %.fold.split56, %.fold.split, %bb.b
  %i.d = phi i8 [ 41, %bb.a ], [ 93, %.fold.split ], [ %5, %bb.b ], [ 125, %.fold.split56 ], [ 62, %switch.edge ] ; 2 uses
  %i.e = icmp sgt i32 %3, 0
  %i.f = select i1 %i.e, i32 %3, i32 3
  %i.g = icmp sgt i32 %4, 0
  %i.h = select i1 %i.g, i32 %4, i32 100
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.i = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1), !noalias !22
  %i.j = icmp eq i32 %i.i, 65536
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !25, !noalias !22
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %i.l)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.e:                                             ; preds = %bb.c
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.d, %bb.e
  %i.m = load i32, ptr %6, align 8, !tbaa !28
  %i.n = and i32 %i.m, 16384
  %.not69 = icmp eq i32 %i.n, 0
  br i1 %.not69, label %bb.f, label %bb.l

bb.f:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %i.p, align 8
  store i32 33619968, ptr %8, align 8, !tbaa !36
  store ptr %7, ptr %i.o, align 8, !tbaa !25
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.q = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.h unwind label %bb.j       ; 0 uses

bb.h:                                             ; preds = %bb.g
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.l

bb.i:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn47 = phi { ptr, i32 } [ %i.s, %bb.j ], [ %i.r, %bb.i ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.z

bb.l:                                             ; preds = %bb.h, %_ZNK2cv11_InputArray6getMatEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 72
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %9, ptr noundef nonnull align 4 dereferenceable(52) %i.t)
          to label %_ZNK2cv3Mat5shapeEv.exit unwind label %bb.q

_ZNK2cv3Mat5shapeEv.exit:                         ; preds = %bb.l
  %i.u = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %6)
          to label %bb.m unwind label %bb.r       ; 3 uses

bb.m:                                             ; preds = %_ZNK2cv3Mat5shapeEv.exit
  %.not = icmp eq i8 %5, 0                        ; 2 uses
  br i1 %.not, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %5, ptr %i.b, align 1, !tbaa !37
  %i.v = load ptr, ptr %0, align 8, !tbaa !12
  %i.w = getelementptr i8, ptr %i.v, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %0, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !38
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %.thread unwind label %bb.r    ; 0 uses

bb.p:                                             ; preds = %bb.n
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %5)
          to label %.thread unwind label %bb.r    ; 0 uses

bb.q:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.r:                                             ; preds = %bb.x, %bb.w, %bb.t, %bb.p, %bb.o, %_ZNK2cv3Mat5shapeEv.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.s:                                             ; preds = %bb.m
  %i.af = icmp eq i64 %i.u, 0
  br i1 %i.af, label %bb.t, label %bb.u

.thread:                                          ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ag = icmp eq i64 %i.u, 0
  br i1 %i.ag, label %.critedge, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.thread unwind label %bb.r ; 0 uses

bb.u:                                             ; preds = %.thread, %bb.s
  %i.ai = zext nneg i32 %i.h to i64
  %.not49 = icmp ugt i64 %i.u, %i.ai
  %spec.select = select i1 %.not49, i32 %i.f, i32 0
  %i.aj = load i32, ptr %9, align 4, !tbaa !48    ; 3 uses
  %i.ak = load i32, ptr %6, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.al = call i32 @llvm.smax.i32(i32 %i.aj, i32 1)
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr [8 x i8], ptr %i.c, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 -8
  store i64 1, ptr %i.ao, align 8, !tbaa !49
  %i.ap = icmp sgt i32 %i.aj, 1
  br i1 %i.ap, label %bb.v, label %._crit_edge

bb.v:                                             ; preds = %bb.u
  %i.aq = add nsw i32 %i.aj, -2                   ; 3 uses
  %10 = lshr i32 %i.ak, 5
  %11 = and i32 %10, 127
  %12 = add nuw nsw i32 %11, 1
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 5 uses
  %i.ar = zext nneg i32 %i.aq to i64              ; 5 uses
  %15 = add nuw nsw i64 %i.ar, 1                  ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %15
  %i.at = load i64, ptr %i.as, align 8, !tbaa !49
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %15
  %i.av = load i32, ptr %i.au, align 4, !tbaa !14
  %i.aw = sext i32 %i.av to i64
  %i.ax = mul i64 %i.at, %13
  %i.ay = mul i64 %i.ax, %i.aw                    ; 3 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ar
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !49
  %.not77 = icmp eq i32 %i.aq, 0
  br i1 %.not77, label %._crit_edge, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.v
  %xtraiter = and i64 %i.ar, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.peel.next.prol.loopexit, label %.peel.next.prol

.peel.next.prol:                                  ; preds = %.peel.next.preheader, %.peel.next.prol
  %i.ba = phi i64 [ %i.be, %.peel.next.prol ], [ %i.ay, %.peel.next.preheader ]
  %indvars.iv.in.prol = phi i64 [ %indvars.iv.prol, %.peel.next.prol ], [ %i.ar, %.peel.next.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.peel.next.prol ], [ 0, %.peel.next.preheader ]
  %indvars.iv.prol = add nsw i64 %indvars.iv.in.prol, -1 ; 3 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %indvars.iv.in.prol
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !14
  %i.bd = sext i32 %i.bc to i64
  %i.be = mul i64 %i.ba, %i.bd                    ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.prol
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !49
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.peel.next.prol.loopexit, label %.peel.next.prol, !llvm.loop !50

.peel.next.prol.loopexit:                         ; preds = %.peel.next.prol, %.peel.next.preheader
  %.unr = phi i64 [ %i.ay, %.peel.next.preheader ], [ %i.be, %.peel.next.prol ]
  %indvars.iv.in.unr = phi i64 [ %i.ar, %.peel.next.preheader ], [ %indvars.iv.prol, %.peel.next.prol ]
  %i.bg = icmp ult i32 %i.aq, 4
  br i1 %i.bg, label %._crit_edge, label %.peel.next

._crit_edge:                                      ; preds = %.peel.next.prol.loopexit, %.peel.next, %bb.v, %bb.u
  invoke fastcc void @_ZN2cvL11pprintSliceERSoRKNS_3MatEPKmimi(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef %i.c, i32 noundef 0, i64 noundef 0, i32 noundef %spec.select)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.body

.peel.next:                                       ; preds = %.peel.next.prol.loopexit, %.peel.next
  %i.bh = phi i64 [ %i.cb, %.peel.next ], [ %.unr, %.peel.next.prol.loopexit ]
  %indvars.iv.in = phi i64 [ %indvars.iv.3, %.peel.next ], [ %indvars.iv.in.unr, %.peel.next.prol.loopexit ] ; 7 uses
  %indvars.iv = add nsw i64 %indvars.iv.in, -1    ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %indvars.iv.in
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !14
  %i.bk = sext i32 %i.bj to i64
  %i.bl = mul i64 %i.bh, %i.bk                    ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !49
  %indvars.iv.1 = add nsw i64 %indvars.iv.in, -2  ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %indvars.iv
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !14
  %i.bp = sext i32 %i.bo to i64
  %i.bq = mul i64 %i.bl, %i.bp                    ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.1
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !49
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %indvars.iv.1
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !14
  %i.bu = sext i32 %i.bt to i64
  %i.bv = mul i64 %i.bq, %i.bu                    ; 2 uses
  %i.bw = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv.in
  %i.bx = getelementptr i8, ptr %i.bw, i64 -24
  store i64 %i.bv, ptr %i.bx, align 8, !tbaa !49
  %indvars.iv.3 = add nsw i64 %indvars.iv.in, -4  ; 2 uses
  %i.by = getelementptr [4 x i8], ptr %9, i64 %indvars.iv.in
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !14
  %i.ca = sext i32 %i.bz to i64
  %i.cb = mul i64 %i.bv, %i.ca                    ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.3
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !49
  %i.cd = icmp sgt i64 %indvars.iv.in, 4
  br i1 %i.cd, label %.peel.next, label %._crit_edge, !llvm.loop !52

.body:                                            ; preds = %._crit_edge
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %bb.y

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br i1 %.not, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.thread, label %.critedge

.critedge:                                        ; preds = %.thread, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.d, ptr %i.a, align 1, !tbaa !37
  %i.cf = load ptr, ptr %0, align 8, !tbaa !12
  %i.cg = getelementptr i8, ptr %i.cf, i64 -24
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds i8, ptr %0, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !38
  %.not.i60 = icmp eq i64 %i.ck, 0
  br i1 %.not.i60, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.critedge
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit64 unwind label %bb.r ; 0 uses

bb.x:                                             ; preds = %.critedge
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.d)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit64 unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit64: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.thread

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.thread: ; preds = %bb.t, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit64, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  ret ptr %0

bb.y:                                             ; preds = %bb.r, %.body, %bb.q
  %.pn52.pn = phi { ptr, i32 } [ %i.ad, %bb.q ], [ %i.ae, %bb.r ], [ %i.ce, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.k
  %.pn52.pn.pn = phi { ptr, i32 } [ %.pn52.pn, %bb.y ], [ %.pn47, %bb.k ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  resume { ptr, i32 } %.pn52.pn.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #5

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #5

declare noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN2cvL11pprintSliceERSoRKNS_3MatEPKmimi(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr nofree noundef nonnull readonly captures(none) %2, i32 noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 14 uses
  %i.b = alloca [128 x i8], align 16              ; 14 uses
  %i.c = alloca [128 x i8], align 16              ; 14 uses
  %i.d = alloca [128 x i8], align 16              ; 14 uses
  %i.e = alloca [128 x i8], align 16              ; 14 uses
  %i.f = alloca [128 x i8], align 16              ; 14 uses
  %i.g = alloca [128 x i8], align 16              ; 14 uses
  %i.h = alloca [128 x i8], align 16              ; 14 uses
  %i.i = alloca [128 x i8], align 16              ; 14 uses
  %i.j = alloca [128 x i8], align 16              ; 14 uses
  %i.k = alloca [128 x i8], align 16              ; 14 uses
  %i.l = alloca [128 x i8], align 16              ; 14 uses
  %i.m = alloca [128 x i8], align 16              ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"struct.cv::MatShape", align 4     ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %8, ptr noundef nonnull align 4 dereferenceable(52) %i.n)
  %i.o = load i32, ptr %8, align 4, !tbaa !48     ; 4 uses
  %.not = icmp slt i32 %3, %i.o
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %narrow.i = call i32 @llvm.smax.i32(i32 %i.o, i32 1)
  %i.p = icmp ult i32 %3, %narrow.i
  br i1 %i.p, label %_ZN2cv8MatShapeixEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %7)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.2, i32 noundef 97) #20
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %6, align 8, !tbaa !55     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.u = load i64, ptr %i.s, align 8, !tbaa !37
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %bb.fn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn131.pn, %bb.fn ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %bb.b
  %i.w = zext nneg i32 %3 to i64
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.w
  %i.z = load i32, ptr %i.y, align 4, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN2cv8MatShapeixEm.exit
  %i.aa = phi i32 [ %i.z, %_ZN2cv8MatShapeixEm.exit ], [ 1, %bb.a ] ; 5 uses
  %i.ab = add nsw i32 %i.o, -1
  %.not127 = icmp slt i32 %3, %i.ab
  br i1 %.not127, label %bb.fo, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !58 ; 14 uses
  %.not129 = icmp eq ptr %i.ad, null
  br i1 %.not129, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cvL11pprintSliceERSoRKNS_3MatEPKmimi, ptr noundef nonnull @.str.5, i32 noundef 485) #20
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.l:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %9, align 8, !tbaa !55    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !37
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_0
