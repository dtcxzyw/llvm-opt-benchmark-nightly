Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/rans_bit_encoder?download=true
inline.NumInlined: 326
inline.NumDeleted: 192
begin_hunk_0_@_ZN5draco14RAnsBitEncoder28EncodeLeastSignificantBits32Eij:bb.a

bb.i:                                             ; preds = %bb.a
  %i.ax = shl nsw i32 -1, %i.o
  %i.ay = load i32, ptr %i.q, align 8, !tbaa !30
  %i.az = xor i32 %i.ax, -1
  %i.ba = and i32 %i.ay, %i.az
  %i.bb = shl i32 %i.c, %i.o
  %i.bc = or i32 %i.ba, %i.bb                     ; 2 uses
  store i32 %i.bc, ptr %i.q, align 8, !tbaa !30
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !19 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !29
  %.not.i20 = icmp eq ptr %i.bf, %i.bh
  br i1 %.not.i20, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %i.bc, ptr %i.bf, align 4, !tbaa !30
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  store ptr %i.bi, ptr %i.be, align 8, !tbaa !19
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit27

bb.k:                                             ; preds = %bb.i
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !18 ; 4 uses
  %i.bk = ptrtoint ptr %i.bf to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 6 uses
  %i.bn = icmp eq i64 %i.bm, 9223372036854775804
  br i1 %i.bn, label %bb.l, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i21

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #16
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i21: ; preds = %bb.k
  %i.bo = ashr exact i64 %i.bm, 2                 ; 3 uses
  %.sroa.speculated.i.i.i22 = tail call i64 @llvm.umax.i64(i64 %i.bo, i64 1)
  %i.bp = add nsw i64 %.sroa.speculated.i.i.i22, %i.bo ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %i.bo
  %i.br = tail call i64 @llvm.umin.i64(i64 %i.bp, i64 2305843009213693951)
  %i.bs = select i1 %i.bq, i64 2305843009213693951, i64 %i.br ; 3 uses
  %.not.i.i.i23 = icmp ne i64 %i.bs, 0
  tail call void @llvm.assume(i1 %.not.i.i.i23)
  %i.bt = shl nuw nsw i64 %i.bs, 2
  %i.bu = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #12 ; 4 uses
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 %i.bm ; 2 uses
  %i.bw = load i32, ptr %i.q, align 8, !tbaa !30
  store i32 %i.bw, ptr %i.bv, align 4, !tbaa !30
  %i.bx = icmp sgt i64 %i.bm, 0
  br i1 %i.bx, label %bb.m, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i24

bb.m:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i21
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bu, ptr align 4 %i.bj, i64 %i.bm, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i24

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i24: ; preds = %bb.m, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i21
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %.not.i17.i.i25 = icmp eq ptr %i.bj, null
  br i1 %.not.i17.i.i25, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i26, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bm) #13
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i26

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i26: ; preds = %bb.n, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i24
  store ptr %i.bu, ptr %i.bd, align 8, !tbaa !18
  store ptr %i.by, ptr %i.be, align 8, !tbaa !19
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bs
  store ptr %i.bz, ptr %i.bg, align 8, !tbaa !29
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit27

_ZNSt6vectorIjSaIjEE9push_backERKj.exit27:        ; preds = %bb.j, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i26
  %i.ca = sub nsw i32 %1, %i.p                    ; 2 uses
  %i.cb = sub nsw i32 32, %i.ca
  %i.cc = lshr i32 -1, %i.cb
  %i.cd = lshr i32 %i.c, %i.p
  %i.ce = and i32 %i.cc, %i.cd
  br label %.sink.split

.sink.split:                                      ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.d, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit27
  %storemerge = phi i32 [ %i.ce, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit27 ], [ 0, %bb.d ], [ 0, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ]
  %.sink = phi i32 [ %i.ca, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit27 ], [ 0, %bb.d ], [ 0, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ]
  store i32 %storemerge, ptr %i.q, align 8, !tbaa !30
  store i32 %.sink, ptr %i.n, align 4, !tbaa !28
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress uwtable
define void @_ZN5draco14RAnsBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !12     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !14
  %i.e = load i64, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %i.f = add i64 %i.e, %i.d
  %spec.select = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %i.g = uitofp i64 %i.e to double
  %i.h = uitofp i64 %spec.select to double
  %i.i = fdiv double %i.g, %i.h
  %i.j = tail call double @llvm.fmuladd.f64(double %i.i, double 2.560000e+02, double 5.000000e-01)
  %i.k = fptoui double %i.j to i32                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.l = icmp ult i32 %i.k, 255
  %i.m = trunc nuw i32 %i.k to i8
  %i.n = tail call i8 @llvm.umax.i8(i8 %i.m, i8 1)
  %storemerge = select i1 %i.l, i8 %i.n, i8 -1    ; 5 uses
  store i8 %storemerge, ptr %i.a, align 1, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !19   ; 3 uses
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !18   ; 3 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = shl i64 %i.u, 1                          ; 2 uses
  %i.w = add i64 %i.v, 64                         ; 4 uses
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %.noexc, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #16
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %.noexc34

.noexc34:                                         ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #12 ; 4 uses
  %i.z = getelementptr i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.y, align 1, !tbaa !31
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.ab = add nsw i64 %i.v, 63
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aa, i8 0, i64 %i.ab, i1 false)
  %i.ac = ptrtoint ptr %i.z to i64
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit:               ; preds = %.noexc34, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.0 = phi i64 [ %i.ac, %.noexc34 ], [ 0, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.073.0 = phi ptr [ %i.y, %.noexc34 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 13 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !28
  %.02180 = add i32 %i.ae, -1                     ; 2 uses
  %i.af = icmp sgt i32 %.02180, -1
  br i1 %i.af, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !27
  %i.ai = sub i8 0, %storemerge                   ; 2 uses
  %i.aj = zext i8 %i.ai to i32
  br label %bb.b

.preheader:                                       ; preds = %_ZN5dracoL15rabs_desc_writeEPNS_8AnsCoderEih.exit, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  %.sroa.10.0.lcssa = phi i32 [ 0, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit ], [ %.sroa.10.3, %_ZN5dracoL15rabs_desc_writeEPNS_8AnsCoderEih.exit ] ; 2 uses
  %.sroa.22.0.lcssa = phi i32 [ 4096, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit ], [ %i.bg, %_ZN5dracoL15rabs_desc_writeEPNS_8AnsCoderEih.exit ] ; 2 uses
  %.not88 = icmp eq ptr %i.q, %i.r
  br i1 %.not88, label %._crit_edge, label %.lr.ph92

.lr.ph92:                                         ; preds = %.preheader
  %i.ak = sub i8 0, %storemerge                   ; 2 uses
  %i.al = zext i8 %i.ak to i32
  br label %bb.i

bb.b:                                             ; preds = %.lr.ph, %_ZN5dracoL15rabs_desc_writeEPNS_8AnsCoderEih.exit
  %.02183 = phi i32 [ %.02180, %.lr.ph ], [ %.021, %_ZN5dracoL15rabs_desc_writeEPNS_8AnsCoderEih.exit ] ; 3 uses
  %.sroa.22.082 = phi i32 [ 4096, %.lr.ph ], [ %i.bg, %_ZN5dracoL15rabs_desc_writeEPNS_8AnsCoderEih.exit ] ; 4 uses
  %.sroa.10.081 = phi i32 [ 0, %.lr.ph ], [ %.sroa.10.3, %_ZN5dracoL15rabs_desc_writeEPNS_8AnsCoderEih.exit ] ; 3 uses
  %i.am = shl nuw i32 1, %.02183
  %i.an = and i32 %i.ah, %i.am
  %.not.i = icmp eq i32 %i.an, 0                  ; 2 uses
  %i.ao = select i1 %.not.i, i8 %storemerge, i8 %i.ai ; 2 uses
  %i.ap = zext i8 %i.ao to i32                    ; 2 uses
  %i.aq = shl nuw nsw i32 %i.ap, 12
  %.not19.i = icmp ult i32 %.sroa.22.082, %i.aq
  br i1 %.not19.i, label %_ZN5dracoL15rabs_desc_writeEPNS_8AnsCoderEih.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ar = trunc i32 %.sroa.22.082 to i8
  %i.as = add nsw i32 %.sroa.10.081, 1
  %i.at = sext i32 %.sroa.10.081 to i64
  %i.au = getelementptr inbounds i8, ptr %.sroa.073.0, i64 %i.at
  store i8 %i.ar, ptr %i.au, align 1, !tbaa !31
  %i.av = lshr i32 %.sroa.22.082, 8
  br label %_ZN5dracoL15rabs_desc_writeEPNS_8AnsCoderEih.exit

_ZN5dracoL15rabs_desc_writeEPNS_8AnsCoderEih.exit: ; preds = %bb.b, %bb.c
  %.sroa.10.3 = phi i32 [ %.sroa.10.081, %bb.b ], [ %i.as, %bb.c ] ; 2 uses
  %i.aw = phi i32 [ %.sroa.22.082, %bb.b ], [ %i.av, %bb.c ] ; 3 uses
  %2 = zext nneg i32 %i.aw to i64
  %i.ax = zext i8 %i.ao to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr @_ZN5draco16vp10_fastdiv_tabE, i64 %i.ax ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !52
  %3 = zext i32 %i.az to i64
  %4 = mul nuw nsw i64 %3, %2
  %5 = lshr i64 %4, 32
  %6 = trunc nuw nsw i64 %5 to i32
  %i.ba = add nuw nsw i32 %i.aw, %6
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !53
  %i.bd = lshr i32 %i.ba, %i.bc
  %i.be = select i1 %.not.i, i32 %i.aj, i32 0
  %reass.add.i = sub nuw nsw i32 256, %i.ap
  %reass.mul.i = mul i32 %i.bd, %reass.add.i
  %i.bf = add nuw nsw i32 %i.aw, %i.be
  %i.bg = add i32 %i.bf, %reass.mul.i             ; 2 uses
  %.021 = add nsw i32 %.02183, -1
  %i.bh = icmp sgt i32 %.02183, 0
  br i1 %i.bh, label %bb.b, label %.preheader

.loopexit:                                        ; preds = %bb.l
  %.not = icmp eq ptr %i.cd, %i.r
  br i1 %.not, label %._crit_edge, label %bb.i, !llvm.loop !49

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %.sroa.10.1.lcssa = phi i32 [ %.sroa.10.0.lcssa, %.preheader ], [ %.sroa.10.4, %.loopexit ] ; 7 uses
  %.sroa.22.1.lcssa = phi i32 [ %.sroa.22.0.lcssa, %.preheader ], [ %i.cz, %.loopexit ] ; 5 uses
  %i.bi = add i32 %.sroa.22.1.lcssa, -4096        ; 3 uses
  %i.bj = icmp ult i32 %i.bi, 64
  br i1 %i.bj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.bk = trunc i32 %.sroa.22.1.lcssa to i8
  %i.bl = sext i32 %.sroa.10.1.lcssa to i64
  %i.bm = getelementptr inbounds i8, ptr %.sroa.073.0, i64 %i.bl
  store i8 %i.bk, ptr %i.bm, align 1, !tbaa !31
  %i.bn = add nsw i32 %.sroa.10.1.lcssa, 1
  br label %_ZN5dracoL13ans_write_endEPNS_8AnsCoderE.exit

bb.e:                                             ; preds = %._crit_edge
  %i.bo = icmp ult i32 %i.bi, 16384
  br i1 %i.bo, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bp = sext i32 %.sroa.10.1.lcssa to i64
  %i.bq = getelementptr inbounds i8, ptr %.sroa.073.0, i64 %i.bp
  %i.br = trunc nuw nsw i32 %.sroa.22.1.lcssa to i16
  %i.bs = add nuw nsw i16 %i.br, 12288
  store i16 %i.bs, ptr %i.bq, align 1
  %i.bt = add nsw i32 %.sroa.10.1.lcssa, 2
  br label %_ZN5dracoL13ans_write_endEPNS_8AnsCoderE.exit

bb.g:                                             ; preds = %bb.e
  %i.bu = icmp ult i32 %i.bi, 4194304
  br i1 %i.bu, label %bb.h, label %_ZN5dracoL13ans_write_endEPNS_8AnsCoderE.exit

bb.h:                                             ; preds = %bb.g
  %i.bv = sext i32 %.sroa.10.1.lcssa to i64
  %i.bw = getelementptr inbounds i8, ptr %.sroa.073.0, i64 %i.bv ; 2 uses
  %i.bx = add nuw nsw i32 %.sroa.22.1.lcssa, 8384512
  %i.by = trunc i32 %.sroa.22.1.lcssa to i8
  store i8 %i.by, ptr %i.bw, align 1, !tbaa !31
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  %i.ca = lshr i32 %i.bx, 8
  %i.cb = trunc nuw i32 %i.ca to i16
  store i16 %i.cb, ptr %i.bz, align 1
  %i.cc = add nsw i32 %.sroa.10.1.lcssa, 3
  br label %_ZN5dracoL13ans_write_endEPNS_8AnsCoderE.exit

bb.i:                                             ; preds = %.lr.ph92, %.loopexit
  %.sroa.046.091 = phi ptr [ %i.q, %.lr.ph92 ], [ %i.cd, %.loopexit ]
  %.sroa.22.190 = phi i32 [ %.sroa.22.0.lcssa, %.lr.ph92 ], [ %i.cz, %.loopexit ]
  %.sroa.10.189 = phi i32 [ %.sroa.10.0.lcssa, %.lr.ph92 ], [ %.sroa.10.4, %.loopexit ]
  %i.cd = getelementptr inbounds i8, ptr %.sroa.046.091, i64 -4 ; 3 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !30
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.l
  %.087 = phi i32 [ 31, %bb.i ], [ %i.da, %bb.l ] ; 3 uses
  %.sroa.22.286 = phi i32 [ %.sroa.22.190, %bb.i ], [ %i.cz, %bb.l ] ; 4 uses
  %.sroa.10.285 = phi i32 [ %.sroa.10.189, %bb.i ], [ %.sroa.10.4, %bb.l ] ; 3 uses
  %i.cf = shl nuw i32 1, %.087
  %i.cg = and i32 %i.cf, %i.ce
  %.not.i35 = icmp eq i32 %i.cg, 0                ; 2 uses
  %i.ch = select i1 %.not.i35, i8 %storemerge, i8 %i.ak ; 2 uses
  %i.ci = zext i8 %i.ch to i32                    ; 2 uses
  %i.cj = shl nuw nsw i32 %i.ci, 12
  %.not19.i36 = icmp ult i32 %.sroa.22.286, %i.cj
  br i1 %.not19.i36, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ck = trunc i32 %.sroa.22.286 to i8
  %i.cl = add nsw i32 %.sroa.10.285, 1
  %i.cm = sext i32 %.sroa.10.285 to i64
  %i.cn = getelementptr inbounds i8, ptr %.sroa.073.0, i64 %i.cm
  store i8 %i.ck, ptr %i.cn, align 1, !tbaa !31
  %i.co = lshr i32 %.sroa.22.286, 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.10.4 = phi i32 [ %.sroa.10.285, %bb.j ], [ %i.cl, %bb.k ] ; 3 uses
  %i.cp = phi i32 [ %.sroa.22.286, %bb.j ], [ %i.co, %bb.k ] ; 3 uses
  %7 = zext nneg i32 %i.cp to i64
  %i.cq = zext i8 %i.ch to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr @_ZN5draco16vp10_fastdiv_tabE, i64 %i.cq ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !52
  %8 = zext i32 %i.cs to i64
  %9 = mul nuw nsw i64 %8, %7
  %10 = lshr i64 %9, 32
  %11 = trunc nuw nsw i64 %10 to i32
  %i.ct = add nuw nsw i32 %i.cp, %11
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !53
  %i.cw = lshr i32 %i.ct, %i.cv
  %i.cx = select i1 %.not.i35, i32 %i.al, i32 0
  %reass.add.i37 = sub nuw nsw i32 256, %i.ci
  %reass.mul.i38 = mul i32 %i.cw, %reass.add.i37
  %i.cy = add nuw nsw i32 %i.cp, %i.cx
  %i.cz = add i32 %i.cy, %reass.mul.i38           ; 3 uses
  %i.da = add nsw i32 %.087, -1
  %.not105 = icmp eq i32 %.087, 0
  br i1 %.not105, label %.loopexit, label %bb.j, !llvm.loop !50

_ZN5dracoL13ans_write_endEPNS_8AnsCoderE.exit:    ; preds = %bb.h, %bb.f, %bb.d, %bb.g
  %.0.i = phi i32 [ %i.bn, %bb.d ], [ %i.bt, %bb.f ], [ %i.cc, %bb.h ], [ %.sroa.10.1.lcssa, %bb.g ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !47
  %i.dd = icmp slt i64 %i.dc, 1
  br i1 %i.dd, label %bb.m, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

bb.m:                                             ; preds = %_ZN5dracoL13ans_write_endEPNS_8AnsCoderE.exit
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !48
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.dh = load ptr, ptr %1, align 8, !tbaa !48    ; 2 uses
  %i.di = ptrtoint ptr %i.df to i64
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = getelementptr inbounds i8, ptr %i.dh, i64 %i.dk
  invoke void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.dl, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull %i.dg)
          to label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit unwind label %bb.u

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit:    ; preds = %_ZN5dracoL13ans_write_endEPNS_8AnsCoderE.exit, %bb.m
  %i.dm = invoke noundef zeroext i1 @_ZN5draco12EncodeVarintIjEEbT_PNS_13EncoderBufferE(i32 noundef %.0.i, ptr noundef nonnull %1)
          to label %bb.n unwind label %bb.u       ; 0 uses

bb.n:                                             ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit
  %i.dn = load i64, ptr %i.db, align 8, !tbaa !47
  %i.do = icmp slt i64 %i.dn, 1
  br i1 %i.do, label %bb.o, label %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit

bb.o:                                             ; preds = %bb.n
  %i.dp = sext i32 %.0.i to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !48
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.073.0, i64 %i.dp
  %i.dt = load ptr, ptr %1, align 8, !tbaa !48    ; 2 uses
  %i.du = ptrtoint ptr %i.dr to i64
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = getelementptr inbounds i8, ptr %i.dt, i64 %i.dw
  invoke void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.dx, ptr noundef %.sroa.073.0, ptr noundef %i.ds)
          to label %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit unwind label %bb.u

_ZN5draco13EncoderBuffer6EncodeEPKvm.exit:        ; preds = %bb.n, %bb.o
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !11
  %i.ea = load ptr, ptr %0, align 8, !tbaa !12    ; 7 uses
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = ptrtoint ptr %i.ea to i64               ; 3 uses
  %i.ed = sub i64 %i.eb, %i.ec                    ; 2 uses
  %i.ee = icmp ult i64 %i.ed, 9
  br i1 %i.ee, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit.i.i, label %bb.q

_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit.i.i:        ; preds = %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit
  %i.ef = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #12
          to label %.noexc42 unwind label %bb.u   ; 3 uses

.noexc42:                                         ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ef, i8 0, i64 16, i1 false), !tbaa !14
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ef, ptr %0, align 8, !tbaa !12
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !15
  store ptr %i.eg, ptr %i.dy, align 8, !tbaa !11
  %.not.i.i.i.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorImSaImEE14_M_fill_assignEmRKm.exit.i, label %bb.p

bb.p:                                             ; preds = %.noexc42
  call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef %i.ed) #13
  br label %_ZNSt6vectorImSaImEE14_M_fill_assignEmRKm.exit.i

bb.q:                                             ; preds = %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !15 ; 5 uses
  %i.ek = ptrtoint ptr %i.ej to i64               ; 2 uses
  %i.el = sub i64 %i.ek, %i.ec                    ; 3 uses
  %i.em = icmp ult i64 %i.el, 9
  br i1 %i.em, label %bb.r, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i

bb.r:                                             ; preds = %bb.q
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.ea, %i.ej
  br i1 %.not5.i.i.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmEvT_S7_RKT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.r
  %i.en = and i64 %i.el, 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.ea, i8 0, i64 %i.en, i1 false), !tbaa !14
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmEvT_S7_RKT0_.exit.i.i

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmEvT_S7_RKT0_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.preheader.i, %bb.r
  %i.eo = add i64 %i.ec, 8
  %i.ep = sub i64 %i.eo, %i.ek
  %i.eq = and i64 %i.ep, -8
  %i.er = add i64 %i.eq, 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.ej, i8 0, i64 %i.er, i1 false), !tbaa !14
  %.idx.i.i.i.i.i.i.i = sub nuw nsw i64 16, %i.el
  %i.es = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.idx.i.i.i.i.i.i.i
  store ptr %i.es, ptr %i.ei, align 8, !tbaa !15
  br label %_ZNSt6vectorImSaImEE14_M_fill_assignEmRKm.exit.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i:          ; preds = %bb.q
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ea, i8 0, i64 16, i1 false), !tbaa !14
  %i.et = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.ej, %i.et
  br i1 %.not.i.i1.i, label %_ZNSt6vectorImSaImEE14_M_fill_assignEmRKm.exit.i, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i
  store ptr %i.et, ptr %i.ei, align 8, !tbaa !15
  br label %_ZNSt6vectorImSaImEE14_M_fill_assignEmRKm.exit.i

_ZNSt6vectorImSaImEE14_M_fill_assignEmRKm.exit.i: ; preds = %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmEvT_S7_RKT0_.exit.i.i, %bb.p, %.noexc42
  %i.eu = load ptr, ptr %i.o, align 8, !tbaa !18  ; 2 uses
  %i.ev = load ptr, ptr %i.p, align 8, !tbaa !19
  %.not.i.i.i = icmp eq ptr %i.ev, %i.eu
  br i1 %.not.i.i.i, label %bb.s, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %_ZNSt6vectorImSaImEE14_M_fill_assignEmRKm.exit.i
  store ptr %i.eu, ptr %i.p, align 8, !tbaa !19
  br label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i, %_ZNSt6vectorImSaImEE14_M_fill_assignEmRKm.exit.i
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.ew, align 8, !tbaa !27
  store i32 0, ptr %i.ad, align 4, !tbaa !28
  %.not.i.i.i43 = icmp eq ptr %.sroa.073.0, null
  br i1 %.not.i.i.i43, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ex = ptrtoint ptr %.sroa.073.0 to i64
  %i.ey = sub i64 %.sroa.11.0, %i.ex
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.073.0, i64 noundef %i.ey) #13
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void

bb.u:                                             ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit.i.i, %bb.o, %bb.m, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit
  %i.ez = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i44 = icmp eq ptr %.sroa.073.0, null
  br i1 %.not.i.i.i44, label %_ZNSt6vectorIhSaIhEED2Ev.exit45, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fa = ptrtoint ptr %.sroa.073.0 to i64
  %i.fb = sub i64 %.sroa.11.0, %i.fa
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.073.0, i64 noundef %i.fb) #13
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit45

_ZNSt6vectorIhSaIhEED2Ev.exit45:                  ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  resume { ptr, i32 } %i.ez
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco12EncodeVarintIjEEbT_PNS_13EncoderBufferE(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = trunc i32 %0 to i8                       ; 2 uses
  %i.c = and i8 %i.b, 127
  store i8 %i.c, ptr %i.a, align 1, !tbaa !31
  %i.d = icmp ugt i32 %0, 127
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = or i8 %i.b, -128
  store i8 %i.e, ptr %i.a, align 1, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !47
  %i.h = icmp slt i64 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.l = load ptr, ptr %1, align 8, !tbaa !48     ; 2 uses
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = getelementptr inbounds i8, ptr %i.l, i64 %i.o
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.p, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull %i.k)
  %i.q = lshr i32 %0, 7
  %i.r = call noundef zeroext i1 @_ZN5draco12EncodeVarintIjEEbT_PNS_13EncoderBufferE(i32 noundef %i.q, ptr noundef nonnull %1)
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

bb.d:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag:bb.a
  %i.bj = getelementptr i8, ptr %i.av, i64 %n.vec101
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index102 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next106, %vec.epilog.vector.body ] ; 3 uses
  %next.gep103 = getelementptr i8, ptr %i.g, i64 %index102
  %next.gep104 = getelementptr i8, ptr %i.av, i64 %index102
  %wide.load105 = load <4 x i8>, ptr %next.gep104, align 1, !tbaa !31
  store <4 x i8> %wide.load105, ptr %next.gep103, align 1, !tbaa !31
  %index.next106 = add nuw i64 %index102, 4       ; 2 uses
  %i.bk = icmp eq i64 %index.next106, %n.vec101
  br i1 %i.bk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !58

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n107 = icmp eq i64 %i.ax, %n.vec101
  br i1 %cmp.n107, label %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.ax, %iter.check ], [ %i.bb, %vec.epilog.iter.check ], [ %i.bh, %vec.epilog.middle.block ]
  %.0811.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.g, %iter.check ], [ %i.bc, %vec.epilog.iter.check ], [ %i.bi, %vec.epilog.middle.block ]
  %.0910.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.av, %iter.check ], [ %i.bd, %vec.epilog.iter.check ], [ %i.bj, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi i64 [ %i.bo, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.bl = load i8, ptr %.0910.i.i.i.i.i.i.i.i, align 1, !tbaa !31
  store i8 %i.bl, ptr %.0811.i.i.i.i.i.i.i.i, align 1, !tbaa !31
  %i.bm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 1
  %i.bn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i, i64 1
  %i.bo = add nsw i64 %.012.i.i.i.i.i.i.i.i, -1
  %i.bp = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i.i, 1
  br i1 %i.bp, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit.loopexit, !llvm.loop !59

_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !64
  br label %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit: ; preds = %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit.loopexit, %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit
  %i.bq = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit.loopexit ], [ %i.g, %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.br = sub nuw i64 %i.c, %i.l
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.br ; 3 uses
  store ptr %i.bs, ptr %i.f, align 8, !tbaa !64
  %i.bt = icmp sgt i64 %i.l, 1
  br i1 %i.bt, label %bb.k, label %bb.l, !prof !65

bb.k:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bs, ptr align 1 %1, i64 %i.l, i1 false)
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55

bb.l:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit
  br i1 %i.au, label %bb.m, label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55

bb.m:                                             ; preds = %bb.l
  %i.bu = load i8, ptr %1, align 1, !tbaa !31
  store i8 %i.bu, ptr %i.bs, align 1, !tbaa !31
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55

_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55: ; preds = %bb.k, %bb.l, %bb.m
  %i.bv = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.l
  store ptr %i.bw, ptr %i.f, align 8, !tbaa !64
  %i.bx = icmp sgt i64 %i.l, 0
  br i1 %i.bx, label %iter.check130, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

iter.check130:                                    ; preds = %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55
  %min.iters.check113 = icmp ult i64 %i.l, 4
  %i.by = sub i64 %i.b, %i.k
  %diff.check112 = icmp ugt i64 %i.by, -32
  %or.cond184 = or i1 %min.iters.check113, %diff.check112
  br i1 %or.cond184, label %.lr.ph.i.i.i.i.i57.preheader, label %vector.main.loop.iter.check114

vector.main.loop.iter.check114:                   ; preds = %iter.check130
  %min.iters.check115 = icmp ult i64 %i.l, 32
  br i1 %min.iters.check115, label %vec.epilog.ph134, label %vector.ph116

vector.ph116:                                     ; preds = %vector.main.loop.iter.check114
  %i.bz = and i64 %i.l, 28
  %n.vec117 = and i64 %i.l, 9223372036854775776   ; 5 uses
  %i.ca = and i64 %i.l, 31
  %i.cb = getelementptr i8, ptr %1, i64 %n.vec117
  %i.cc = getelementptr i8, ptr %2, i64 %n.vec117
  br label %vector.body118

vector.body118:                                   ; preds = %vector.ph116, %vector.body118
  %index119 = phi i64 [ 0, %vector.ph116 ], [ %index.next124, %vector.body118 ] ; 3 uses
  %next.gep120 = getelementptr i8, ptr %1, i64 %index119 ; 2 uses
  %next.gep121 = getelementptr i8, ptr %2, i64 %index119 ; 2 uses
  %i.cd = getelementptr i8, ptr %next.gep121, i64 16
  %wide.load122 = load <16 x i8>, ptr %next.gep121, align 1, !tbaa !31
  %wide.load123 = load <16 x i8>, ptr %i.cd, align 1, !tbaa !31
  %i.ce = getelementptr i8, ptr %next.gep120, i64 16
  store <16 x i8> %wide.load122, ptr %next.gep120, align 1, !tbaa !31
  store <16 x i8> %wide.load123, ptr %i.ce, align 1, !tbaa !31
  %index.next124 = add nuw i64 %index119, 32      ; 2 uses
  %i.cf = icmp eq i64 %index.next124, %n.vec117
  br i1 %i.cf, label %middle.block125, label %vector.body118, !llvm.loop !60

middle.block125:                                  ; preds = %vector.body118
  %cmp.n126 = icmp eq i64 %i.l, %n.vec117
  br i1 %cmp.n126, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit, label %vec.epilog.iter.check132

vec.epilog.iter.check132:                         ; preds = %middle.block125
  %min.epilog.iters.check133 = icmp eq i64 %i.bz, 0
  br i1 %min.epilog.iters.check133, label %.lr.ph.i.i.i.i.i57.preheader, label %vec.epilog.ph134, !prof !68

vec.epilog.ph134:                                 ; preds = %vector.main.loop.iter.check114, %vec.epilog.iter.check132
  %vec.epilog.resume.val127 = phi i64 [ %n.vec117, %vec.epilog.iter.check132 ], [ 0, %vector.main.loop.iter.check114 ]
  %n.vec135 = and i64 %i.l, 9223372036854775804   ; 4 uses
  %i.cg = and i64 %i.l, 3
  %i.ch = getelementptr i8, ptr %1, i64 %n.vec135
  %i.ci = getelementptr i8, ptr %2, i64 %n.vec135
  br label %vec.epilog.vector.body136

vec.epilog.vector.body136:                        ; preds = %vec.epilog.vector.body136, %vec.epilog.ph134
  %index137 = phi i64 [ %vec.epilog.resume.val127, %vec.epilog.ph134 ], [ %index.next141, %vec.epilog.vector.body136 ] ; 3 uses
  %next.gep138 = getelementptr i8, ptr %1, i64 %index137
  %next.gep139 = getelementptr i8, ptr %2, i64 %index137
  %wide.load140 = load <4 x i8>, ptr %next.gep139, align 1, !tbaa !31
  store <4 x i8> %wide.load140, ptr %next.gep138, align 1, !tbaa !31
  %index.next141 = add nuw i64 %index137, 4       ; 2 uses
  %i.cj = icmp eq i64 %index.next141, %n.vec135
  br i1 %i.cj, label %vec.epilog.middle.block142, label %vec.epilog.vector.body136, !llvm.loop !61

vec.epilog.middle.block142:                       ; preds = %vec.epilog.vector.body136
  %cmp.n143 = icmp eq i64 %i.l, %n.vec135
  br i1 %cmp.n143, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i.i57.preheader

.lr.ph.i.i.i.i.i57.preheader:                     ; preds = %iter.check130, %vec.epilog.iter.check132, %vec.epilog.middle.block142
  %.012.i.i.i.i.i58.ph = phi i64 [ %i.l, %iter.check130 ], [ %i.ca, %vec.epilog.iter.check132 ], [ %i.cg, %vec.epilog.middle.block142 ]
  %.0811.i.i.i.i.i59.ph = phi ptr [ %1, %iter.check130 ], [ %i.cb, %vec.epilog.iter.check132 ], [ %i.ch, %vec.epilog.middle.block142 ]
  %.0910.i.i.i.i.i60.ph = phi ptr [ %2, %iter.check130 ], [ %i.cc, %vec.epilog.iter.check132 ], [ %i.ci, %vec.epilog.middle.block142 ]
  br label %.lr.ph.i.i.i.i.i57

.lr.ph.i.i.i.i.i57:                               ; preds = %.lr.ph.i.i.i.i.i57.preheader, %.lr.ph.i.i.i.i.i57
  %.012.i.i.i.i.i58 = phi i64 [ %i.cn, %.lr.ph.i.i.i.i.i57 ], [ %.012.i.i.i.i.i58.ph, %.lr.ph.i.i.i.i.i57.preheader ] ; 2 uses
  %.0811.i.i.i.i.i59 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i57 ], [ %.0811.i.i.i.i.i59.ph, %.lr.ph.i.i.i.i.i57.preheader ] ; 2 uses
  %.0910.i.i.i.i.i60 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i57 ], [ %.0910.i.i.i.i.i60.ph, %.lr.ph.i.i.i.i.i57.preheader ] ; 2 uses
  %i.ck = load i8, ptr %.0910.i.i.i.i.i60, align 1, !tbaa !31
  store i8 %i.ck, ptr %.0811.i.i.i.i.i59, align 1, !tbaa !31
  %i.cl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i60, i64 1
  %i.cm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i59, i64 1
  %i.cn = add nsw i64 %.012.i.i.i.i.i58, -1
  %i.co = icmp samesign ugt i64 %.012.i.i.i.i.i58, 1
  br i1 %i.co, label %.lr.ph.i.i.i.i.i57, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit, !llvm.loop !62

bb.n:                                             ; preds = %bb.b
  %i.cp = load ptr, ptr %0, align 8, !tbaa !69    ; 5 uses
  %i.cq = ptrtoint ptr %i.cp to i64               ; 4 uses
  %i.cr = sub i64 %i.i, %i.cq                     ; 4 uses
  %i.cs = sub i64 9223372036854775807, %i.cr
  %i.ct = icmp ult i64 %i.cs, %i.c
  br i1 %i.ct, label %bb.o, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #16
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit:    ; preds = %bb.n
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cr, i64 %i.c)
  %i.cu = add i64 %.sroa.speculated.i, %i.cr      ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.cr
  %i.cw = tail call i64 @llvm.umin.i64(i64 %i.cu, i64 9223372036854775807)
  %i.cx = select i1 %i.cv, i64 9223372036854775807, i64 %i.cw ; 3 uses
  %.not.i = icmp eq i64 %i.cx, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit
  %i.cy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #12
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit, %bb.p
  %i.cz = phi ptr [ %i.cy, %bb.p ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit ] ; 6 uses
  %i.da = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.db = sub i64 %i.da, %i.cq                    ; 4 uses
  %i.dc = icmp sgt i64 %i.db, 1
  br i1 %i.dc, label %bb.q, label %bb.r, !prof !65

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cz, ptr align 1 %i.cp, i64 %i.db, i1 false)
  br label %bb.t

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit
  %i.dd = icmp eq i64 %i.db, 1
  br i1 %i.dd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.de = load i8, ptr %i.cp, align 1, !tbaa !31
  store i8 %i.de, ptr %i.cz, align 1, !tbaa !31
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.df = getelementptr i8, ptr %i.cz, i64 %i.db  ; 2 uses
  %i.dg = icmp sgt i64 %i.c, 0
  br i1 %i.dg, label %.lr.ph.i.i.i.i.i.i.i.i63.preheader, label %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit67

.lr.ph.i.i.i.i.i.i.i.i63.preheader:               ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.df, ptr align 1 %2, i64 %i.c, i1 false), !tbaa !31
  %i.dh = add i64 %i.a, %i.da
  %i.di = add i64 %i.b, %i.cq
  %i.dj = sub i64 %i.dh, %i.di
  %scevgep = getelementptr i8, ptr %i.cz, i64 %i.dj
  br label %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit67

_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit67: ; preds = %.lr.ph.i.i.i.i.i.i.i.i63.preheader, %bb.t
  %.08.lcssa.i.i.i.i.i.i.i.i62 = phi ptr [ %i.df, %bb.t ], [ %scevgep, %.lr.ph.i.i.i.i.i.i.i.i63.preheader ] ; 3 uses
  %i.dk = sub i64 %i.i, %i.da                     ; 4 uses
  %i.dl = icmp sgt i64 %i.dk, 1
  br i1 %i.dl, label %bb.u, label %bb.v, !prof !65

bb.u:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit67
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i.i.i.i62, ptr align 1 %1, i64 %i.dk, i1 false)
  br label %bb.x

bb.v:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit67
  %i.dm = icmp eq i64 %i.dk, 1
  br i1 %i.dm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dn = load i8, ptr %1, align 1, !tbaa !31
  store i8 %i.dn, ptr %.08.lcssa.i.i.i.i.i.i.i.i62, align 1, !tbaa !31
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.do = getelementptr inbounds i8, ptr %.08.lcssa.i.i.i.i.i.i.i.i62, i64 %i.dk
  %.not.i69 = icmp eq ptr %i.cp, null
  br i1 %.not.i69, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dp = sub i64 %i.h, %i.cq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.dp) #13
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit: ; preds = %bb.x, %bb.y
  store ptr %i.cz, ptr %0, align 8, !tbaa !69
  store ptr %i.do, ptr %i.f, align 8, !tbaa !64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cx
  store ptr %i.dq, ptr %i.d, align 8, !tbaa !63
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit: ; preds = %.lr.ph.i.i.i.i.i57, %.lr.ph.i.i.i.i.i, %middle.block125, %vec.epilog.middle.block142, %middle.block161, %vec.epilog.middle.block178, %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55, %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bitreverse.i32(i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #13 = { builtin nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind }
attributes #16 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 long", !8, i64 0}
!10 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !9, i64 0, !9, i64 8, !9, i64 16}
!11 = !{!10, !9, i64 16}
!12 = !{!10, !9, i64 0}
!13 = !{!"long", !4, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!10, !9, i64 8}
!16 = !{!"p1 int", !8, i64 0}
!17 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
!18 = !{!17, !16, i64 0}
!19 = !{!17, !16, i64 8}
!20 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !10, i64 0}
!21 = !{!"_ZTSSt12_Vector_baseImSaImEE", !20, i64 0}
!22 = !{!"_ZTSSt6vectorImSaImEE", !21, i64 0}
!23 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !17, i64 0}
!24 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !23, i64 0}
!25 = !{!"_ZTSSt6vectorIjSaIjEE", !24, i64 0}
!26 = !{!"_ZTSN5draco14RAnsBitEncoderE", !22, i64 0, !25, i64 24, !5, i64 48, !5, i64 52}
!27 = !{!26, !5, i64 48}
!28 = !{!26, !5, i64 52}
!29 = !{!17, !16, i64 16}
!30 = !{!5, !5, i64 0}
!31 = !{!4, !4, i64 0}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!"p1 omnipotent char", !8, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataE", !33, i64 0, !33, i64 8, !33, i64 16}
!35 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE12_Vector_implE", !34, i64 0}
!36 = !{!"_ZTSSt12_Vector_baseIcSaIcEE", !35, i64 0}
!37 = !{!"_ZTSSt6vectorIcSaIcEE", !36, i64 0}
!38 = !{!"p1 _ZTSN5draco13EncoderBuffer10BitEncoderE", !8, i64 0}
!39 = !{!"_ZTSSt10_Head_baseILm0EPN5draco13EncoderBuffer10BitEncoderELb0EE", !38, i64 0}
!40 = !{!"_ZTSSt11_Tuple_implILm0EJPN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EEE", !39, i64 0}
!41 = !{!"_ZTSSt5tupleIJPN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EEE", !40, i64 0}
!42 = !{!"_ZTSSt15__uniq_ptr_implIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EE", !41, i64 0}
!43 = !{!"_ZTSSt15__uniq_ptr_dataIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_ELb1ELb1EE", !42, i64 0}
!44 = !{!"_ZTSSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EE", !43, i64 0}
!45 = !{!"bool", !4, i64 0}
!46 = !{!"_ZTSN5draco13EncoderBufferE", !37, i64 0, !44, i64 24, !13, i64 32, !45, i64 40}
!47 = !{!46, !13, i64 32}
!48 = !{!33, !33, i64 0}
!49 = distinct !{!49, !32}
!50 = distinct !{!50, !32}
!51 = !{!"_ZTSN5draco12fastdiv_elemE", !5, i64 0, !5, i64 4}
!52 = !{!51, !5, i64 0}
!53 = !{!51, !5, i64 4}
!54 = distinct !{!54, !32, !66, !67}
!55 = distinct !{!55, !32, !66, !67}
!56 = distinct !{!56, !32, !66}
!57 = distinct !{!57, !32, !66, !67}
!58 = distinct !{!58, !32, !66, !67}
!59 = distinct !{!59, !32, !66}
!60 = distinct !{!60, !32, !66, !67}
!61 = distinct !{!61, !32, !66, !67}
!62 = distinct !{!62, !32, !66}
!63 = !{!34, !33, i64 16}
!64 = !{!34, !33, i64 8}
!65 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!66 = !{!"llvm.loop.isvectorized", i32 1}
!67 = !{!"llvm.loop.unroll.runtime.disable"}
!68 = !{!"branch_weights", i32 4, i32 28}
!69 = !{!34, !33, i64 0}
end_hunk_1
