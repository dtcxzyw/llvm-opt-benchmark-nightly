Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuklear/original/unity?download=true
inline.NumInlined: 1904
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 145
begin_hunk_0_@nk_menubar_begin:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store i32 %i.z, ptr %i.aa, align 8, !tbaa !928
  store i32 0, ptr %i.y, align 4, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.a, %bb.b, %bb.c, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_menubar_end(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_push_scissor.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !755  ; 6 uses
  %.not33 = icmp eq ptr %i.b, null
  br i1 %.not33, label %nk_push_scissor.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !756  ; 16 uses
  %.not34 = icmp eq ptr %i.d, null
  br i1 %.not34, label %nk_push_scissor.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !845
  %i.h = and i32 %i.g, 40960
  %or.cond = icmp eq i32 %i.h, 0
  br i1 %or.cond, label %bb.e, label %nk_push_scissor.exit

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 44 ; 2 uses
  %i.j = load float, ptr %i.i, align 4, !tbaa !859
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.l = load float, ptr %i.k, align 4, !tbaa !925
  %i.m = fsub float %i.j, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.p = load float, ptr %i.o, align 8, !tbaa !856 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 9648
  %i.r = load float, ptr %i.q, align 8, !tbaa !929
  %i.s = fadd float %i.p, %i.r
  %i.t = fadd float %i.m, %i.s                    ; 3 uses
  store float %i.t, ptr %i.n, align 8, !tbaa !930
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !849
  %i.w = fadd float %i.v, %i.t                    ; 3 uses
  store float %i.w, ptr %i.u, align 4, !tbaa !849
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 20 ; 2 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !858
  %i.z = fsub float %i.y, %i.t                    ; 2 uses
  store float %i.z, ptr %i.x, align 4, !tbaa !858
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 100
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !927
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !841
  store i32 %i.ab, ptr %i.ad, align 4, !tbaa !10
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !928
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !842
  store i32 %i.af, ptr %i.ah, align 4, !tbaa !10
  %i.ai = fsub float %i.w, %i.p
  store float %i.ai, ptr %i.i, align 4, !tbaa !859
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store float %i.w, ptr %i.ak, align 8, !tbaa !874
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store float %i.z, ptr %i.al, align 8, !tbaa !875
  %i.am = load <2 x float>, ptr %i.aj, align 4    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.ao = load <2 x float>, ptr %i.an, align 4    ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.aq = shufflevector <2 x float> %i.am, <2 x float> %i.ao, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.aq, ptr %i.ap, align 8, !tbaa !8
  %i.ar = load ptr, ptr %i.e, align 8, !tbaa !112
  %i.as = tail call fastcc ptr @nk_buffer_alloc(ptr noundef %i.ar, i32 noundef 0, i64 noundef 24, i64 noundef 8) ; 7 uses
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %nk_push_scissor.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !112 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !44
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !116
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 31
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = and i64 %i.bc, -8
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  store i32 1, ptr %i.as, align 8, !tbaa !117
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 88
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !52
  %i.bi = add i64 %i.bh, %i.bf                    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !119
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store i64 %i.bi, ptr %i.bk, align 8, !tbaa !120
  %i.bl = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.bm = fcmp ogt <2 x float> %i.ao, zeroinitializer
  %i.bn = select <2 x i1> %i.bm, <2 x float> %i.ao, <2 x float> zeroinitializer
  %i.bo = shufflevector <2 x float> %i.am, <2 x float> %i.bn, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.bp = fptosi <4 x float> %i.bo to <4 x i16>
  %i.bq = fptoui <4 x float> %i.bo to <4 x i16>
  %i.br = shufflevector <4 x i16> %i.bp, <4 x i16> %i.bq, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i16> %i.br, ptr %i.bl, align 8, !tbaa !121
  br label %nk_push_scissor.exit

nk_push_scissor.exit:                             ; preds = %bb.f, %bb.e, %bb.d, %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_menu_begin_text(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, <2 x float> %4) local_unnamed_addr #20 {
bb.a:
  %5 = alloca %struct.nk_rect, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_menu_begin.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !755  ; 9 uses
  %.not27 = icmp eq ptr %i.b, null
  br i1 %.not27, label %nk_menu_begin.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !756
  %.not28 = icmp eq ptr %i.d, null
  br i1 %.not28, label %nk_menu_begin.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @nk_widget(ptr noundef nonnull %5, ptr noundef nonnull %0)
  switch i32 %i.e, label %bb.f [
    i32 0, label %nk_menu_begin.exit
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.g = load i32, ptr %i.f, align 8, !tbaa !312
  %i.h = and i32 %i.g, 4096
  %.not30 = icmp eq i32 %i.h, 0
  %spec.select = select i1 %.not30, ptr %0, ptr null
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = phi ptr [ null, %bb.d ], [ %spec.select, %bb.e ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 9880
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !766
  %i.o = load <2 x float>, ptr %5, align 8        ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = load <2 x float>, ptr %i.p, align 8      ; 3 uses
  %i.r = tail call fastcc zeroext i1 @nk_do_button_text(ptr noundef %i.j, ptr noundef %i.k, <2 x float> %i.o, <2 x float> %i.q, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef %i.m, ptr noundef %i.i, ptr noundef %i.n)
  %.not5.i.i = icmp eq ptr %1, null
  br i1 %.not5.i.i, label %nk_strlen.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.f
  %i.s = load i8, ptr %1, align 1, !tbaa !11
  %.not4.i42.i = icmp eq i8 %i.s, 0
  br i1 %.not4.i42.i, label %nk_strlen.exit.i, label %.lr.ph.i.preheader45.i

.lr.ph.i.preheader45.i:                           ; preds = %.lr.ph.i.preheader.i
  %scevgep.i = getelementptr i8, ptr %1, i64 1
  %strlen.i = tail call i64 @strlen(ptr nonnull readonly dereferenceable(1) %scevgep.i)
  %i.t = trunc i64 %strlen.i to i32
  %i.u = add i32 %i.t, 1
  br label %nk_strlen.exit.i

nk_strlen.exit.i:                                 ; preds = %.lr.ph.i.preheader45.i, %.lr.ph.i.preheader.i, %bb.f
  %.0.lcssa.i.i = phi i32 [ 0, %bb.f ], [ 0, %.lr.ph.i.preheader.i ], [ %i.u, %.lr.ph.i.preheader45.i ]
  %i.v = tail call i32 @nk_murmur_hash(ptr noundef readonly %1, i32 noundef %.0.lcssa.i.i, i32 noundef 64) ; 2 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !755  ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %nk_menu_begin.exit, label %bb.g

bb.g:                                             ; preds = %nk_strlen.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 168
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !756
  %.not39.i = icmp eq ptr %i.y, null
  br i1 %.not39.i, label %nk_menu_begin.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %foldExtExtBinop = fadd <2 x float> %i.o, %i.q
  %.sroa.0.4.vec.insert.i = shufflevector <2 x float> %i.o, <2 x float> %foldExtExtBinop, <2 x i32> <i32 0, i32 3>
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !814 ; 2 uses
  %i.ab = icmp ne ptr %i.aa, null                 ; 2 uses
  br i1 %i.ab, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !909
  %i.ae = icmp eq i32 %i.ad, %i.v
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !908
  %i.ah = icmp eq i32 %i.ag, 64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.ai = phi i1 [ false, %bb.i ], [ false, %bb.h ], [ %i.ah, %bb.j ]
  %6 = icmp eq ptr %i.aa, null
  %or.cond40.i = select i1 %6, i1 true, i1 %i.ai
  %or.cond9.i = or i1 %i.r, %i.ab
  %or.cond41.i = and i1 %or.cond9.i, %or.cond40.i
  br i1 %or.cond41.i, label %bb.l, label %nk_menu_begin.exit

bb.l:                                             ; preds = %bb.k
  %i.aj = tail call fastcc zeroext i1 @nk_nonblock_begin(ptr noundef nonnull %0, i32 noundef 32, <2 x float> %.sroa.0.4.vec.insert.i, <2 x float> %4, <2 x float> %i.o, <2 x float> %i.q, i32 noundef 64)
  br i1 %i.aj, label %bb.m, label %nk_menu_begin.exit

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store i32 64, ptr %i.ak, align 8, !tbaa !908
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  store i32 %i.v, ptr %i.al, align 8, !tbaa !909
  br label %nk_menu_begin.exit

nk_menu_begin.exit:                               ; preds = %bb.m, %bb.l, %bb.k, %bb.g, %nk_strlen.exit.i, %bb.d, %bb.a, %bb.b, %bb.c
  %.023 = phi i1 [ false, %bb.d ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.b ], [ true, %bb.m ], [ false, %bb.k ], [ false, %nk_strlen.exit.i ], [ false, %bb.g ], [ false, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  ret i1 %.023
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_menu_begin_label(ptr noundef %0, ptr noundef %1, i32 noundef %2, <2 x float> %3) local_unnamed_addr #20 {
bb.a:
  %.not5.i = icmp eq ptr %1, null
  br i1 %.not5.i, label %nk_strlen.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !tbaa !11
  %.not4.i3 = icmp eq i8 %i.a, 0
  br i1 %.not4.i3, label %nk_strlen.exit, label %.lr.ph.i.preheader6

.lr.ph.i.preheader6:                              ; preds = %.lr.ph.i.preheader
  %scevgep = getelementptr i8, ptr %1, i64 1
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep)
  %i.b = trunc i64 %strlen to i32
  %i.c = add i32 %i.b, 1
  br label %nk_strlen.exit

nk_strlen.exit:                                   ; preds = %.lr.ph.i.preheader6, %.lr.ph.i.preheader, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ 0, %.lr.ph.i.preheader ], [ %i.c, %.lr.ph.i.preheader6 ]
  %i.d = tail call zeroext i1 @nk_menu_begin_text(ptr noundef %0, ptr noundef %1, i32 noundef %.0.lcssa.i, i32 noundef %2, <2 x float> %3)
  ret i1 %i.d
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_menu_begin_image(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly byval(%struct.nk_image) align 8 captures(none) %2, <2 x float> %3) local_unnamed_addr #20 {
bb.a:
  %4 = alloca %struct.nk_rect, align 8            ; 5 uses
  %5 = alloca %struct.nk_rect, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_menu_begin.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !755  ; 8 uses
  %.not23 = icmp eq ptr %i.b, null
  br i1 %.not23, label %nk_menu_begin.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !756
  %.not24 = icmp eq ptr %i.d, null
  br i1 %.not24, label %nk_menu_begin.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @nk_widget(ptr noundef nonnull %5, ptr noundef nonnull %0)
  switch i32 %i.e, label %bb.f [
    i32 0, label %nk_menu_begin.exit
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !756
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !845
  %i.i = and i32 %i.h, 4096
  %.not26 = icmp eq i32 %i.i, 0
  %spec.select = select i1 %.not26, ptr %0, ptr null
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = phi ptr [ null, %bb.d ], [ %spec.select, %bb.e ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 9880 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.n = load <2 x float>, ptr %5, align 8        ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = load <2 x float>, ptr %i.o, align 8      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store <2 x float> %i.n, ptr %4, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1092
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.v = load <2 x float>, ptr %i.u, align 8, !tbaa !8 ; 2 uses
  %i.w = fsub <2 x float> %i.n, %i.v
  %i.x = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> splat (float 2.000000e+00), <2 x float> %i.p)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.z = load <2 x float>, ptr %i.r, align 8, !tbaa !8 ; 3 uses
  %i.aa = load float, ptr %i.t, align 4, !tbaa !918
  %i.ab = load <2 x float>, ptr %i.s, align 8, !tbaa !8 ; 5 uses
  %i.ac = insertelement <2 x float> %i.z, float %i.aa, i64 1
  %i.ad = fadd <2 x float> %i.n, %i.ac
  %i.ae = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = fadd <2 x float> %i.ad, %i.ae
  %i.ag = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ah = fadd <2 x float> %i.af, %i.ag
  %i.ai = shufflevector <2 x float> %i.z, <2 x float> %i.ab, <2 x i32> <i32 0, i32 2>
  %i.aj = shufflevector <2 x float> %i.ab, <2 x float> %i.z, <2 x i32> <i32 0, i32 3>
  %i.ak = fadd <2 x float> %i.ai, %i.aj
  %i.al = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.am = fadd <2 x float> %i.ak, %i.al
  %i.an = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> splat (float -2.000000e+00), <2 x float> %i.p)
  %i.ao = tail call fastcc zeroext i1 @nk_button_behavior(ptr noundef nonnull %i.k, <2 x float> %i.w, <2 x float> %i.x, ptr noundef readonly %i.j, i32 noundef 0)
  %i.ap = load <2 x float>, ptr %i.y, align 8, !tbaa !8 ; 2 uses
  %i.aq = fadd <2 x float> %i.ah, %i.ap
  %i.ar = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> splat (float -2.000000e+00), <2 x float> %i.an)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !919 ; 2 uses
  %.not32.i = icmp eq ptr %i.at, null
  br i1 %.not32.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.av = load ptr, ptr %i.au, align 8
  tail call void %i.at(ptr noundef nonnull %i.l, ptr %i.av) #50, !inline_history !931
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aw = load i32, ptr %i.k, align 8, !tbaa !10
  %i.ax = call fastcc ptr @nk_draw_button(ptr noundef nonnull %i.l, ptr noundef nonnull readonly %4, i32 noundef %i.aw, ptr noundef nonnull readonly %i.m) ; 0 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1052
  %i.az = load float, ptr %i.ay, align 4, !tbaa !721 ; 2 uses
  %i.ba = fcmp oeq float %i.az, 1.000000e+00
  %i.bb = fmul float %i.az, 2.550000e+02
  %i.bc = fptoui float %i.bb to i8
  %i.bd = zext i8 %i.bc to i32
  %i.be = mul nuw nsw i32 %i.bd, 65793
  %i.bf = or disjoint i32 %i.be, -16777216
  %.sroa.011.0.insert.insert.i.i.i = select i1 %i.ba, i32 -1, i32 %i.bf
  call void @nk_draw_image(ptr noundef nonnull %i.l, <2 x float> %i.aq, <2 x float> %i.ar, ptr noundef nonnull readonly align 8 %2, i32 %.sroa.011.0.insert.insert.i.i.i)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !921 ; 2 uses
  %.not33.i = icmp eq ptr %i.bh, null
  br i1 %.not33.i, label %nk_do_button_image.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.bj = load ptr, ptr %i.bi, align 8
  tail call void %i.bh(ptr noundef nonnull %i.l, ptr %i.bj) #50, !inline_history !931
  br label %nk_do_button_image.exit

nk_do_button_image.exit:                          ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not5.i.i = icmp eq ptr %1, null
  br i1 %.not5.i.i, label %nk_strlen.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %nk_do_button_image.exit
  %i.bk = load i8, ptr %1, align 1, !tbaa !11
  %.not4.i42.i = icmp eq i8 %i.bk, 0
  br i1 %.not4.i42.i, label %nk_strlen.exit.i, label %.lr.ph.i.preheader45.i

.lr.ph.i.preheader45.i:                           ; preds = %.lr.ph.i.preheader.i
  %scevgep.i = getelementptr i8, ptr %1, i64 1
  %strlen.i = tail call i64 @strlen(ptr nonnull readonly dereferenceable(1) %scevgep.i)
  %i.bl = trunc i64 %strlen.i to i32
  %i.bm = add i32 %i.bl, 1
  br label %nk_strlen.exit.i

nk_strlen.exit.i:                                 ; preds = %.lr.ph.i.preheader45.i, %.lr.ph.i.preheader.i, %nk_do_button_image.exit
  %.0.lcssa.i.i = phi i32 [ 0, %nk_do_button_image.exit ], [ 0, %.lr.ph.i.preheader.i ], [ %i.bm, %.lr.ph.i.preheader45.i ]
  %i.bn = tail call i32 @nk_murmur_hash(ptr noundef readonly %1, i32 noundef %.0.lcssa.i.i, i32 noundef 64) ; 2 uses
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !755 ; 2 uses
  %.not.i = icmp eq ptr %i.bo, null
  br i1 %.not.i, label %nk_menu_begin.exit, label %bb.j

bb.j:                                             ; preds = %nk_strlen.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 168
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !756
  %.not39.i = icmp eq ptr %i.bq, null
  br i1 %.not39.i, label %nk_menu_begin.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %foldExtExtBinop = fadd <2 x float> %i.n, %i.p
  %.sroa.0.4.vec.insert.i28 = shufflevector <2 x float> %i.n, <2 x float> %foldExtExtBinop, <2 x i32> <i32 0, i32 3>
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !814 ; 2 uses
  %i.bt = icmp ne ptr %i.bs, null                 ; 2 uses
  br i1 %i.bt, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !909
  %i.bw = icmp eq i32 %i.bv, %i.bn
  br i1 %i.bw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !908
  %i.bz = icmp eq i32 %i.by, 64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.ca = phi i1 [ false, %bb.l ], [ false, %bb.k ], [ %i.bz, %bb.m ]
  %6 = icmp eq ptr %i.bs, null
  %or.cond40.i = select i1 %6, i1 true, i1 %i.ca
  %or.cond9.i = or i1 %i.ao, %i.bt
  %or.cond41.i = and i1 %or.cond9.i, %or.cond40.i
  br i1 %or.cond41.i, label %bb.o, label %nk_menu_begin.exit

bb.o:                                             ; preds = %bb.n
  %i.cb = tail call fastcc zeroext i1 @nk_nonblock_begin(ptr noundef nonnull %0, i32 noundef 32, <2 x float> %.sroa.0.4.vec.insert.i28, <2 x float> %3, <2 x float> %i.n, <2 x float> %i.p, i32 noundef 64)
  br i1 %i.cb, label %bb.p, label %nk_menu_begin.exit

bb.p:                                             ; preds = %bb.o
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store i32 64, ptr %i.cc, align 8, !tbaa !908
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  store i32 %i.bn, ptr %i.cd, align 8, !tbaa !909
  br label %nk_menu_begin.exit

nk_menu_begin.exit:                               ; preds = %bb.p, %bb.o, %bb.n, %bb.j, %nk_strlen.exit.i, %bb.d, %bb.a, %bb.b, %bb.c
  %.019 = phi i1 [ false, %bb.d ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.b ], [ true, %bb.p ], [ false, %bb.n ], [ false, %nk_strlen.exit.i ], [ false, %bb.j ], [ false, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  ret i1 %.019
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_menu_begin_symbol(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, <2 x float> %3) local_unnamed_addr #20 {
bb.a:
  %4 = alloca %struct.nk_rect, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_menu_begin.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !755  ; 8 uses
  %.not25 = icmp eq ptr %i.b, null
  br i1 %.not25, label %nk_menu_begin.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !756
  %.not26 = icmp eq ptr %i.d, null
  br i1 %.not26, label %nk_menu_begin.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @nk_widget(ptr noundef nonnull %4, ptr noundef nonnull %0)
  switch i32 %i.e, label %bb.f [
    i32 0, label %nk_menu_begin.exit
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !756
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !845
  %i.i = and i32 %i.h, 4096
  %.not28 = icmp eq i32 %i.i, 0
  %spec.select = select i1 %.not28, ptr %0, ptr null
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = phi ptr [ null, %bb.d ], [ %spec.select, %bb.e ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 9880
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !766
  %i.p = load <2 x float>, ptr %4, align 8        ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load <2 x float>, ptr %i.q, align 8      ; 3 uses
  %i.s = tail call fastcc zeroext i1 @nk_do_button_symbol(ptr noundef %i.k, ptr noundef nonnull %i.l, <2 x float> %i.p, <2 x float> %i.r, i32 noundef %2, i32 noundef 0, ptr noundef nonnull %i.n, ptr noundef %i.j, ptr noundef %i.o)
  %.not5.i.i = icmp eq ptr %1, null
  br i1 %.not5.i.i, label %nk_strlen.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.f
  %i.t = load i8, ptr %1, align 1, !tbaa !11
  %.not4.i42.i = icmp eq i8 %i.t, 0
  br i1 %.not4.i42.i, label %nk_strlen.exit.i, label %.lr.ph.i.preheader45.i

.lr.ph.i.preheader45.i:                           ; preds = %.lr.ph.i.preheader.i
  %scevgep.i = getelementptr i8, ptr %1, i64 1
  %strlen.i = tail call i64 @strlen(ptr nonnull readonly dereferenceable(1) %scevgep.i)
  %i.u = trunc i64 %strlen.i to i32
  %i.v = add i32 %i.u, 1
  br label %nk_strlen.exit.i

nk_strlen.exit.i:                                 ; preds = %.lr.ph.i.preheader45.i, %.lr.ph.i.preheader.i, %bb.f
  %.0.lcssa.i.i = phi i32 [ 0, %bb.f ], [ 0, %.lr.ph.i.preheader.i ], [ %i.v, %.lr.ph.i.preheader45.i ]
  %i.w = tail call i32 @nk_murmur_hash(ptr noundef readonly %1, i32 noundef %.0.lcssa.i.i, i32 noundef 64) ; 2 uses
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !755  ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %nk_menu_begin.exit, label %bb.g

bb.g:                                             ; preds = %nk_strlen.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 168
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !756
  %.not39.i = icmp eq ptr %i.z, null
  br i1 %.not39.i, label %nk_menu_begin.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %foldExtExtBinop = fadd <2 x float> %i.p, %i.r
  %.sroa.0.4.vec.insert.i = shufflevector <2 x float> %i.p, <2 x float> %foldExtExtBinop, <2 x i32> <i32 0, i32 3>
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !814 ; 2 uses
  %i.ac = icmp ne ptr %i.ab, null                 ; 2 uses
  br i1 %i.ac, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !909
  %i.af = icmp eq i32 %i.ae, %i.w
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !908
  %i.ai = icmp eq i32 %i.ah, 64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.aj = phi i1 [ false, %bb.i ], [ false, %bb.h ], [ %i.ai, %bb.j ]
  %5 = icmp eq ptr %i.ab, null
  %or.cond40.i = select i1 %5, i1 true, i1 %i.aj
  %or.cond9.i = or i1 %i.s, %i.ac
  %or.cond41.i = and i1 %or.cond9.i, %or.cond40.i
  br i1 %or.cond41.i, label %bb.l, label %nk_menu_begin.exit

bb.l:                                             ; preds = %bb.k
  %i.ak = tail call fastcc zeroext i1 @nk_nonblock_begin(ptr noundef nonnull %0, i32 noundef 32, <2 x float> %.sroa.0.4.vec.insert.i, <2 x float> %3, <2 x float> %i.p, <2 x float> %i.r, i32 noundef 64)
  br i1 %i.ak, label %bb.m, label %nk_menu_begin.exit

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store i32 64, ptr %i.al, align 8, !tbaa !908
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  store i32 %i.w, ptr %i.am, align 8, !tbaa !909
  br label %nk_menu_begin.exit

nk_menu_begin.exit:                               ; preds = %bb.m, %bb.l, %bb.k, %bb.g, %nk_strlen.exit.i, %bb.d, %bb.a, %bb.b, %bb.c
  %.021 = phi i1 [ false, %bb.d ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.b ], [ true, %bb.m ], [ false, %bb.k ], [ false, %nk_strlen.exit.i ], [ false, %bb.g ], [ false, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  ret i1 %.021
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @nk_do_button_symbol(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1, <2 x float> %2, <2 x float> %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(address_is_null) %6, ptr nofree noundef readonly captures(address_is_null) %7, ptr noundef %8) unnamed_addr #20 {
bb.a:
  %9 = alloca %struct.nk_rect, align 8            ; 3 uses
  store <2 x float> %2, ptr %9, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 8
  store <2 x float> %3, ptr %i.a, align 8
  %i.b = icmp ne ptr %1, null
  %i.c = icmp ne ptr %6, null
  %or.cond = and i1 %i.b, %i.c
  %i.d = icmp ne ptr %8, null
  %or.cond3 = and i1 %or.cond, %i.d
  br i1 %or.cond3, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 160
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 152
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 164
  %i.h = load <2 x float>, ptr %i.e, align 8, !tbaa !8 ; 3 uses
  %i.i = load float, ptr %i.g, align 4, !tbaa !918
  %i.j = load <2 x float>, ptr %i.f, align 8, !tbaa !8 ; 5 uses
  %i.k = insertelement <2 x float> %i.h, float %i.i, i64 1
  %i.l = fadd <2 x float> %2, %i.k
  %i.m = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer
  %i.n = fadd <2 x float> %i.l, %i.m
  %i.o = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.p = fadd <2 x float> %i.n, %i.o
  %i.q = shufflevector <2 x float> %i.h, <2 x float> %i.j, <2 x i32> <i32 0, i32 2>
  %i.r = shufflevector <2 x float> %i.j, <2 x float> %i.h, <2 x i32> <i32 0, i32 3>
  %i.s = fadd <2 x float> %i.q, %i.r
  %i.t = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.u = fadd <2 x float> %i.s, %i.t
  %i.v = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> splat (float -2.000000e+00), <2 x float> %3)
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 176
  %i.x = load <2 x float>, ptr %i.w, align 8, !tbaa !8 ; 2 uses
  %i.y = fsub <2 x float> %2, %i.x
  %i.z = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.x, <2 x float> splat (float 2.000000e+00), <2 x float> %3)
  %i.aa = tail call fastcc zeroext i1 @nk_button_behavior(ptr noundef nonnull %0, <2 x float> %i.y, <2 x float> %i.z, ptr noundef readonly %7, i32 noundef %5) ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 200
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !919 ; 2 uses
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 192
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ac(ptr noundef nonnull %1, ptr %i.ae) #50
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.af = load i32, ptr %0, align 4, !tbaa !10    ; 3 uses
  %i.ag = call fastcc ptr @nk_draw_button(ptr noundef nonnull %1, ptr noundef nonnull readonly %9, i32 noundef %i.af, ptr noundef nonnull readonly %6) ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !751
  %i.ai = icmp eq i32 %i.ah, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 128
  %.sroa.02.0.in.i = select i1 %i.ai, ptr %i.aj, ptr %i.ak
  %.sroa.02.0.i = load i32, ptr %.sroa.02.0.in.i, align 8
  %i.al = and i32 %i.af, 16
  %.not.i = icmp eq i32 %i.al, 0
  %i.am = and i32 %i.af, 32
  %.not22.i = icmp eq i32 %i.am, 0
  %..i = select i1 %.not22.i, i64 132, i64 140
  %.sink.i = select i1 %.not.i, i64 %..i, i64 136
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 %.sink.i
  %.sroa.04.0.i = load i32, ptr %i.an, align 4    ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 148
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !920 ; 4 uses
  %.sroa.5.0.extract.shift.i.i = lshr i32 %.sroa.04.0.i, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i.i = lshr i32 %.sroa.04.0.i, 16 ; 2 uses
  %i.aq = fcmp oeq float %i.ap, 1.000000e+00
  br i1 %i.aq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.7.0.extract.trunc.i.i = trunc i32 %.sroa.7.0.extract.shift.i.i to i8
  %.sroa.5.0.extract.trunc.i.i = trunc i32 %.sroa.5.0.extract.shift.i.i to i8
  %.sroa.0.0.extract.trunc.i.i = trunc i32 %.sroa.04.0.i to i8
  br label %nk_draw_button_symbol.exit

bb.f:                                             ; preds = %bb.d
  %i.ar = and i32 %.sroa.04.0.i, 255
  %i.as = uitofp nneg i32 %i.ar to float
  %i.at = fmul float %i.ap, %i.as
  %i.au = fptoui float %i.at to i8
  %i.av = and i32 %.sroa.5.0.extract.shift.i.i, 255
  %i.aw = uitofp nneg i32 %i.av to float
  %i.ax = fmul float %i.ap, %i.aw
  %i.ay = fptoui float %i.ax to i8
  %i.az = and i32 %.sroa.7.0.extract.shift.i.i, 255
  %i.ba = uitofp nneg i32 %i.az to float
  %i.bb = fmul float %i.ap, %i.ba
  %i.bc = fptoui float %i.bb to i8
  br label %nk_draw_button_symbol.exit

nk_draw_button_symbol.exit:                       ; preds = %bb.e, %bb.f
  %.sroa.3.0.i.i = phi i8 [ %.sroa.5.0.extract.trunc.i.i, %bb.e ], [ %i.ay, %bb.f ]
  %.sroa.011.0.i.i = phi i8 [ %.sroa.0.0.extract.trunc.i.i, %bb.e ], [ %i.au, %bb.f ]
  %.sroa.512.0.i.i = phi i8 [ %.sroa.7.0.extract.trunc.i.i, %bb.e ], [ %i.bc, %bb.f ]
  %.sroa.9.0.extract.shift.i.i = and i32 %.sroa.04.0.i, -16777216
  %.sroa.512.0.insert.ext.i.i = zext i8 %.sroa.512.0.i.i to i32
  %.sroa.512.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.512.0.insert.ext.i.i, 16
  %.sroa.512.0.insert.insert.i.i = or disjoint i32 %.sroa.512.0.insert.shift.i.i, %.sroa.9.0.extract.shift.i.i
  %.sroa.3.0.insert.ext.i.i = zext i8 %.sroa.3.0.i.i to i32
  %.sroa.3.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.3.0.insert.ext.i.i, 8
  %.sroa.3.0.insert.insert.i.i = or disjoint i32 %.sroa.512.0.insert.insert.i.i, %.sroa.3.0.insert.shift.i.i
  %.sroa.011.0.insert.ext.i.i = zext i8 %.sroa.011.0.i.i to i32
  %.sroa.011.0.insert.insert.i.i = or disjoint i32 %.sroa.3.0.insert.insert.i.i, %.sroa.011.0.insert.ext.i.i
  tail call fastcc void @nk_draw_symbol(ptr noundef nonnull %1, i32 noundef %4, <2 x float> %i.p, <2 x float> %i.v, i32 %.sroa.02.0.i, i32 %.sroa.011.0.insert.insert.i.i, float noundef 1.000000e+00, ptr noundef nonnull %8)
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 208
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !921 ; 2 uses
  %.not34 = icmp eq ptr %i.be, null
  br i1 %.not34, label %bb.h, label %bb.g

bb.g:                                             ; preds = %nk_draw_button_symbol.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 192
  %i.bg = load ptr, ptr %i.bf, align 8
  tail call void %i.be(ptr noundef nonnull %1, ptr %i.bg) #50
  br label %bb.h

bb.h:                                             ; preds = %nk_draw_button_symbol.exit, %bb.g, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %i.aa, %bb.g ], [ %i.aa, %nk_draw_button_symbol.exit ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_menu_begin_image_text(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly byval(%struct.nk_image) align 8 captures(none) %4, <2 x float> %5) local_unnamed_addr #20 {
bb.a:
  %6 = alloca %struct.nk_rect, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_menu_begin.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !755  ; 8 uses
  %.not27 = icmp eq ptr %i.b, null
  br i1 %.not27, label %nk_menu_begin.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !756
  %.not28 = icmp eq ptr %i.d, null
  br i1 %.not28, label %nk_menu_begin.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @nk_widget(ptr noundef nonnull %6, ptr noundef nonnull %0)
  switch i32 %i.e, label %bb.f [
    i32 0, label %nk_menu_begin.exit
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !756
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !845
  %i.i = and i32 %i.h, 4096
  %.not30 = icmp eq i32 %i.i, 0
  %spec.select = select i1 %.not30, ptr %0, ptr null
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = phi ptr [ null, %bb.d ], [ %spec.select, %bb.e ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 9880
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !766
  %i.p = load <2 x float>, ptr %6, align 8        ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.r = load <2 x float>, ptr %i.q, align 8      ; 3 uses
  %i.s = tail call fastcc zeroext i1 @nk_do_button_text_image(ptr noundef %i.k, ptr noundef %i.l, <2 x float> %i.p, <2 x float> %i.r, ptr noundef nonnull byval(%struct.nk_image) align 8 %4, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef nonnull %i.n, ptr noundef %i.o, ptr noundef %i.j)
  %.not5.i.i = icmp eq ptr %1, null
  br i1 %.not5.i.i, label %nk_strlen.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.f
  %i.t = load i8, ptr %1, align 1, !tbaa !11
  %.not4.i42.i = icmp eq i8 %i.t, 0
  br i1 %.not4.i42.i, label %nk_strlen.exit.i, label %.lr.ph.i.preheader45.i

.lr.ph.i.preheader45.i:                           ; preds = %.lr.ph.i.preheader.i
  %scevgep.i = getelementptr i8, ptr %1, i64 1
  %strlen.i = tail call i64 @strlen(ptr nonnull readonly dereferenceable(1) %scevgep.i)
  %i.u = trunc i64 %strlen.i to i32
  %i.v = add i32 %i.u, 1
  br label %nk_strlen.exit.i

nk_strlen.exit.i:                                 ; preds = %.lr.ph.i.preheader45.i, %.lr.ph.i.preheader.i, %bb.f
  %.0.lcssa.i.i = phi i32 [ 0, %bb.f ], [ 0, %.lr.ph.i.preheader.i ], [ %i.v, %.lr.ph.i.preheader45.i ]
  %i.w = tail call i32 @nk_murmur_hash(ptr noundef readonly %1, i32 noundef %.0.lcssa.i.i, i32 noundef 64) ; 2 uses
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !755  ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %nk_menu_begin.exit, label %bb.g

bb.g:                                             ; preds = %nk_strlen.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 168
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !756
  %.not39.i = icmp eq ptr %i.z, null
  br i1 %.not39.i, label %nk_menu_begin.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %foldExtExtBinop = fadd <2 x float> %i.p, %i.r
  %.sroa.0.4.vec.insert.i = shufflevector <2 x float> %i.p, <2 x float> %foldExtExtBinop, <2 x i32> <i32 0, i32 3>
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !814 ; 2 uses
  %i.ac = icmp ne ptr %i.ab, null                 ; 2 uses
  br i1 %i.ac, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !909
  %i.af = icmp eq i32 %i.ae, %i.w
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !908
  %i.ai = icmp eq i32 %i.ah, 64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.aj = phi i1 [ false, %bb.i ], [ false, %bb.h ], [ %i.ai, %bb.j ]
  %7 = icmp eq ptr %i.ab, null
  %or.cond40.i = select i1 %7, i1 true, i1 %i.aj
  %or.cond9.i = or i1 %i.s, %i.ac
  %or.cond41.i = and i1 %or.cond9.i, %or.cond40.i
  br i1 %or.cond41.i, label %bb.l, label %nk_menu_begin.exit

bb.l:                                             ; preds = %bb.k
  %i.ak = tail call fastcc zeroext i1 @nk_nonblock_begin(ptr noundef nonnull %0, i32 noundef 32, <2 x float> %.sroa.0.4.vec.insert.i, <2 x float> %5, <2 x float> %i.p, <2 x float> %i.r, i32 noundef 64)
  br i1 %i.ak, label %bb.m, label %nk_menu_begin.exit

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store i32 64, ptr %i.al, align 8, !tbaa !908
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  store i32 %i.w, ptr %i.am, align 8, !tbaa !909
  br label %nk_menu_begin.exit

nk_menu_begin.exit:                               ; preds = %bb.m, %bb.l, %bb.k, %bb.g, %nk_strlen.exit.i, %bb.d, %bb.a, %bb.b, %bb.c
  %.023 = phi i1 [ false, %bb.d ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.b ], [ true, %bb.m ], [ false, %bb.k ], [ false, %nk_strlen.exit.i ], [ false, %bb.g ], [ false, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  ret i1 %.023
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_menu_begin_image_label(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly byval(%struct.nk_image) align 8 captures(none) %3, <2 x float> %4) local_unnamed_addr #20 {
bb.a:
  %.not5.i = icmp eq ptr %1, null
  br i1 %.not5.i, label %nk_strlen.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !tbaa !11
  %.not4.i3 = icmp eq i8 %i.a, 0
  br i1 %.not4.i3, label %nk_strlen.exit, label %.lr.ph.i.preheader6

.lr.ph.i.preheader6:                              ; preds = %.lr.ph.i.preheader
  %scevgep = getelementptr i8, ptr %1, i64 1
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep)
  %i.b = trunc i64 %strlen to i32
  %i.c = add i32 %i.b, 1
  br label %nk_strlen.exit

nk_strlen.exit:                                   ; preds = %.lr.ph.i.preheader6, %.lr.ph.i.preheader, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ 0, %.lr.ph.i.preheader ], [ %i.c, %.lr.ph.i.preheader6 ]
  %i.d = tail call zeroext i1 @nk_menu_begin_image_text(ptr noundef %0, ptr noundef %1, i32 noundef %.0.lcssa.i, i32 noundef %2, ptr noundef nonnull byval(%struct.nk_image) align 8 %3, <2 x float> %4)
  ret i1 %i.d
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_menu_begin_symbol_text(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, <2 x float> %5) local_unnamed_addr #20 {
bb.a:
  %6 = alloca %struct.nk_rect, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_menu_begin.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !755  ; 8 uses
  %.not28 = icmp eq ptr %i.b, null
  br i1 %.not28, label %nk_menu_begin.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !756
  %.not29 = icmp eq ptr %i.d, null
  br i1 %.not29, label %nk_menu_begin.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @nk_widget(ptr noundef nonnull %6, ptr noundef nonnull %0)
  switch i32 %i.e, label %bb.f [
    i32 0, label %nk_menu_begin.exit
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !756
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !845
  %i.i = and i32 %i.h, 4096
  %.not31 = icmp eq i32 %i.i, 0
  %spec.select = select i1 %.not31, ptr %0, ptr null
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = phi ptr [ null, %bb.d ], [ %spec.select, %bb.e ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 9880
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !766
  %i.p = load <2 x float>, ptr %6, align 8        ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.r = load <2 x float>, ptr %i.q, align 8      ; 3 uses
  %i.s = tail call fastcc zeroext i1 @nk_do_button_text_symbol(ptr noundef %i.k, ptr noundef %i.l, <2 x float> %i.p, <2 x float> %i.r, i32 noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef nonnull %i.n, ptr noundef %i.o, ptr noundef %i.j)
  %.not5.i.i = icmp eq ptr %1, null
  br i1 %.not5.i.i, label %nk_strlen.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.f
  %i.t = load i8, ptr %1, align 1, !tbaa !11
  %.not4.i42.i = icmp eq i8 %i.t, 0
  br i1 %.not4.i42.i, label %nk_strlen.exit.i, label %.lr.ph.i.preheader45.i

.lr.ph.i.preheader45.i:                           ; preds = %.lr.ph.i.preheader.i
  %scevgep.i = getelementptr i8, ptr %1, i64 1
  %strlen.i = tail call i64 @strlen(ptr nonnull readonly dereferenceable(1) %scevgep.i)
  %i.u = trunc i64 %strlen.i to i32
  %i.v = add i32 %i.u, 1
  br label %nk_strlen.exit.i

nk_strlen.exit.i:                                 ; preds = %.lr.ph.i.preheader45.i, %.lr.ph.i.preheader.i, %bb.f
  %.0.lcssa.i.i = phi i32 [ 0, %bb.f ], [ 0, %.lr.ph.i.preheader.i ], [ %i.v, %.lr.ph.i.preheader45.i ]
  %i.w = tail call i32 @nk_murmur_hash(ptr noundef readonly %1, i32 noundef %.0.lcssa.i.i, i32 noundef 64) ; 2 uses
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !755  ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %nk_menu_begin.exit, label %bb.g

bb.g:                                             ; preds = %nk_strlen.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 168
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !756
  %.not39.i = icmp eq ptr %i.z, null
  br i1 %.not39.i, label %nk_menu_begin.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %foldExtExtBinop = fadd <2 x float> %i.p, %i.r
  %.sroa.0.4.vec.insert.i = shufflevector <2 x float> %i.p, <2 x float> %foldExtExtBinop, <2 x i32> <i32 0, i32 3>
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !814 ; 2 uses
  %i.ac = icmp ne ptr %i.ab, null                 ; 2 uses
  br i1 %i.ac, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !909
  %i.af = icmp eq i32 %i.ae, %i.w
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !908
  %i.ai = icmp eq i32 %i.ah, 64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.aj = phi i1 [ false, %bb.i ], [ false, %bb.h ], [ %i.ai, %bb.j ]
  %7 = icmp eq ptr %i.ab, null
  %or.cond40.i = select i1 %7, i1 true, i1 %i.aj
  %or.cond9.i = or i1 %i.s, %i.ac
  %or.cond41.i = and i1 %or.cond9.i, %or.cond40.i
  br i1 %or.cond41.i, label %bb.l, label %nk_menu_begin.exit

bb.l:                                             ; preds = %bb.k
  %i.ak = tail call fastcc zeroext i1 @nk_nonblock_begin(ptr noundef nonnull %0, i32 noundef 32, <2 x float> %.sroa.0.4.vec.insert.i, <2 x float> %5, <2 x float> %i.p, <2 x float> %i.r, i32 noundef 64)
  br i1 %i.ak, label %bb.m, label %nk_menu_begin.exit

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store i32 64, ptr %i.al, align 8, !tbaa !908
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  store i32 %i.w, ptr %i.am, align 8, !tbaa !909
  br label %nk_menu_begin.exit

nk_menu_begin.exit:                               ; preds = %bb.m, %bb.l, %bb.k, %bb.g, %nk_strlen.exit.i, %bb.d, %bb.a, %bb.b, %bb.c
  %.024 = phi i1 [ false, %bb.d ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.b ], [ true, %bb.m ], [ false, %bb.k ], [ false, %nk_strlen.exit.i ], [ false, %bb.g ], [ false, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  ret i1 %.024
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_menu_begin_symbol_label(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, <2 x float> %4) local_unnamed_addr #20 {
bb.a:
  %.not5.i = icmp eq ptr %1, null
  br i1 %.not5.i, label %nk_strlen.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !tbaa !11
  %.not4.i4 = icmp eq i8 %i.a, 0
  br i1 %.not4.i4, label %nk_strlen.exit, label %.lr.ph.i.preheader7

.lr.ph.i.preheader7:                              ; preds = %.lr.ph.i.preheader
  %scevgep = getelementptr i8, ptr %1, i64 1
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep)
  %i.b = trunc i64 %strlen to i32
  %i.c = add i32 %i.b, 1
  br label %nk_strlen.exit

nk_strlen.exit:                                   ; preds = %.lr.ph.i.preheader7, %.lr.ph.i.preheader, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ 0, %.lr.ph.i.preheader ], [ %i.c, %.lr.ph.i.preheader7 ]
  %i.d = tail call zeroext i1 @nk_menu_begin_symbol_text(ptr noundef %0, ptr noundef %1, i32 noundef %.0.lcssa.i, i32 noundef %2, i32 noundef %3, <2 x float> %4)
  ret i1 %i.d
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_menu_item_text(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #20 {
bb.a:
  %4 = alloca %struct.nk_rect, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %nk_contextual_item_text.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !755  ; 3 uses
  %.not23.i = icmp eq ptr %i.b, null
  br i1 %.not23.i, label %nk_contextual_item_text.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !756
  %.not24.i = icmp eq ptr %i.d, null
  br i1 %.not24.i, label %nk_contextual_item_text.exit, label %nk_widget_fitting.exit.i

nk_widget_fitting.exit.i:                         ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.g = call i32 @nk_widget(ptr noundef nonnull %4, ptr noundef nonnull readonly %0)
  switch i32 %i.g, label %bb.d [
    i32 0, label %nk_contextual_item_text.exit
    i32 2, label %bb.e
  ]

bb.d:                                             ; preds = %nk_widget_fitting.exit.i
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !756
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !845
  %i.k = and i32 %i.j, 4096
  %.not26.i = icmp eq i32 %i.k, 0
  %spec.select.i = select i1 %.not26.i, ptr %0, ptr null
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %nk_widget_fitting.exit.i
  %i.l = phi ptr [ null, %nk_widget_fitting.exit.i ], [ %spec.select.i, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 9880
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !753
  %i.p = load <2 x float>, ptr %4, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load <2 x float>, ptr %i.q, align 8
  %i.s = tail call fastcc zeroext i1 @nk_do_button_text(ptr noundef %i.m, ptr noundef %i.n, <2 x float> %i.p, <2 x float> %i.r, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef %i.f, ptr noundef %i.l, ptr noundef %i.o)
  br i1 %i.s, label %bb.f, label %nk_contextual_item_text.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !755  ; 3 uses
  %.not5.i.i = icmp eq ptr %i.t, null
  br i1 %.not5.i.i, label %nk_contextual_item_text.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !756
  %.not6.i.i = icmp eq ptr %i.v, null
  br i1 %.not6.i.i, label %nk_contextual_item_text.exit, label %nk_popup_close.exit.i.i

nk_popup_close.exit.i.i:                          ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 72 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !312
  %i.y = or i32 %i.x, 8192
  store i32 %i.y, ptr %i.w, align 8, !tbaa !312
  br label %nk_contextual_item_text.exit

nk_contextual_item_text.exit:                     ; preds = %bb.a, %bb.b, %bb.c, %nk_widget_fitting.exit.i, %bb.e, %bb.f, %bb.g, %nk_popup_close.exit.i.i
  %.0.i = phi i1 [ false, %bb.e ], [ false, %nk_widget_fitting.exit.i ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.b ], [ true, %bb.f ], [ true, %bb.g ], [ true, %nk_popup_close.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  ret i1 %.0.i
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_menu_item_label(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #17 {
bb.a:
  %i.a = tail call zeroext i1 @nk_contextual_item_label(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  ret i1 %i.a
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_menu_item_image_label(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly byval(%struct.nk_image) align 8 captures(none) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #17 {
bb.a:
  %i.a = tail call zeroext i1 @nk_contextual_item_image_label(ptr noundef %0, ptr noundef nonnull byval(%struct.nk_image) align 8 %1, ptr noundef %2, i32 noundef %3)
  ret i1 %i.a
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_menu_item_image_text(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly byval(%struct.nk_image) align 8 captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #20 {
bb.a:
  %5 = alloca %struct.nk_rect, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %nk_contextual_item_image_text.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !755  ; 3 uses
  %.not23.i = icmp eq ptr %i.b, null
  br i1 %.not23.i, label %nk_contextual_item_image_text.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !756
  %.not24.i = icmp eq ptr %i.d, null
  br i1 %.not24.i, label %nk_contextual_item_image_text.exit, label %nk_widget_fitting.exit.i

nk_widget_fitting.exit.i:                         ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.g = call i32 @nk_widget(ptr noundef nonnull %5, ptr noundef nonnull readonly %0)
  switch i32 %i.g, label %bb.d [
    i32 0, label %nk_contextual_item_image_text.exit
    i32 2, label %bb.e
  ]

bb.d:                                             ; preds = %nk_widget_fitting.exit.i
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !756
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !845
  %i.k = and i32 %i.j, 4096
  %.not26.i = icmp eq i32 %i.k, 0
  %spec.select.i = select i1 %.not26.i, ptr %0, ptr null
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %nk_widget_fitting.exit.i
  %i.l = phi ptr [ null, %nk_widget_fitting.exit.i ], [ %spec.select.i, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 9880
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !753
  %i.p = load <2 x float>, ptr %5, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = load <2 x float>, ptr %i.q, align 8
  %i.s = tail call fastcc zeroext i1 @nk_do_button_text_image(ptr noundef %i.m, ptr noundef %i.n, <2 x float> %i.p, <2 x float> %i.r, ptr noundef nonnull byval(%struct.nk_image) align 8 %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 0, ptr noundef nonnull %i.f, ptr noundef %i.o, ptr noundef %i.l)
  br i1 %i.s, label %bb.f, label %nk_contextual_item_image_text.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !755  ; 3 uses
  %.not5.i.i = icmp eq ptr %i.t, null
  br i1 %.not5.i.i, label %nk_contextual_item_image_text.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !756
  %.not6.i.i = icmp eq ptr %i.v, null
  br i1 %.not6.i.i, label %nk_contextual_item_image_text.exit, label %nk_popup_close.exit.i.i

nk_popup_close.exit.i.i:                          ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 72 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !312
  %i.y = or i32 %i.x, 8192
  store i32 %i.y, ptr %i.w, align 8, !tbaa !312
  br label %nk_contextual_item_image_text.exit

end_hunk_0
begin_hunk_1_@nk_edit_string:bb.a
  store <2 x i32> %i.an, ptr %i.l, align 4, !tbaa !10
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 496
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !1123
  store i8 %i.ap, ptr %i.t, align 4, !tbaa !1107
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 488
  %i.ar = load <2 x i32>, ptr %i.aq, align 8, !tbaa !10
  %i.as = uitofp <2 x i32> %i.ar to <2 x float>
  store <2 x float> %i.as, ptr %i.v, align 8, !tbaa !8
  br label %.loopexit46.i.i.thread.i.i

.loopexit46.i.i.thread.i.i:                       ; preds = %bb.b, %bb.c, %bb.j
  %.sink91 = phi i8 [ 1, %bb.j ], [ 0, %bb.c ], [ 0, %bb.b ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 13193
  store i8 %.sink91, ptr %i.at, align 1, !tbaa !1125
  %i.au = tail call i32 @llvm.smax.i32(i32 %4, i32 1) ; 2 uses
  %i.av = load i32, ptr %3, align 4, !tbaa !10
  %i.aw = add nsw i32 %i.au, -1
  %. = tail call i32 @llvm.smin.i32(i32 %i.av, i32 %i.aw)
  store i32 %., ptr %3, align 4, !tbaa !10
  %i.ax = zext nneg i32 %i.au to i64              ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 13032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ay, i8 0, i64 112, i1 false), !tbaa !10
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 13088
  store i32 0, ptr %i.az, align 8, !tbaa !39
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 13096
  store ptr %2, ptr %i.ba, align 8, !tbaa !44
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 13104
  store i64 %i.ax, ptr %i.bb, align 8, !tbaa !45
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 13144
  store i64 %i.ax, ptr %i.bc, align 8, !tbaa !46
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 13152 ; 2 uses
  store i32 0, ptr %i.bd, align 8, !tbaa !86
  %i.be = load i32, ptr %3, align 4, !tbaa !10    ; 2 uses
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 13120 ; 2 uses
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !1126
  %i.bh = tail call i32 @nk_utf_len(ptr noundef nonnull %2, i32 noundef %i.be)
  store i32 %i.bh, ptr %i.bd, align 8, !tbaa !1103
  %i.bi = tail call i32 @nk_edit_buffer(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %i.i, ptr noundef nonnull %i.d) ; 2 uses
  %i.bj = load i64, ptr %i.bg, align 8, !tbaa !1126
  %i.bk = trunc i64 %i.bj to i32
  store i32 %i.bk, ptr %3, align 4, !tbaa !10
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 13193
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !1125
  %.not84 = icmp eq i8 %i.bm, 0
  br i1 %.not84, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.loopexit46.i.i.thread.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 476
  %i.bo = load <2 x i32>, ptr %i.n, align 8, !tbaa !10
  store <2 x i32> %i.bo, ptr %i.bn, align 4, !tbaa !10
  %i.bp = load i32, ptr %i.m, align 8, !tbaa !1105
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 484
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !1127
  %i.br = load i8, ptr %i.t, align 4, !tbaa !1107
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 496
  store i8 %i.br, ptr %i.bs, align 8, !tbaa !1123
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 488
  %i.bu = load <2 x float>, ptr %i.v, align 8, !tbaa !8
  %i.bv = fptoui <2 x float> %i.bu to <2 x i32>
  store <2 x i32> %i.bv, ptr %i.bt, align 8, !tbaa !10
  br label %bb.l

bb.l:                                             ; preds = %.loopexit46.i.i.thread.i.i, %bb.k, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.bi, %bb.k ], [ %i.bi, %.loopexit46.i.i.thread.i.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 32) i32 @nk_edit_buffer(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #20 {
bb.a:
  %4 = alloca %struct.nk_rect, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !755  ; 7 uses
  %.not63 = icmp eq ptr %i.b, null
  br i1 %.not63, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !756
  %.not64 = icmp eq ptr %i.d, null
  br i1 %.not64, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.f = call i32 @nk_widget(ptr noundef nonnull %4, ptr noundef nonnull %0) ; 2 uses
  switch i32 %i.f, label %bb.f [
    i32 0, label %bb.u
    i32 3, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.g = or i32 %1, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.058 = phi i32 [ %i.g, %bb.e ], [ %1, %bb.d ]  ; 5 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !756
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !845
  %i.k = and i32 %i.j, 4096
  %.not66 = icmp eq i32 %i.k, 0
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 456 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 460 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !897  ; 3 uses
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 4, !tbaa !897
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 468 ; 4 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !896  ; 2 uses
  %.not67 = icmp eq i32 %i.q, 0
  br i1 %.not67, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.l, align 8, !tbaa !1122
  %i.s = icmp eq i32 %i.n, %i.r
  br i1 %i.s, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.t = and i32 %.058, 16
  %.not68 = icmp eq i32 %i.t, 0
  br i1 %.not68, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.v = load i32, ptr %i.u, align 8, !tbaa !1103
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 168
  store i32 %i.v, ptr %i.w, align 8, !tbaa !1106
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = and i32 %.058, 32
  %.not69 = icmp eq i32 %i.x, 0
  br i1 %.not69, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.z = load i32, ptr %i.y, align 8, !tbaa !1106 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 172
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !1104
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 176
  store i32 %i.z, ptr %i.ab, align 8, !tbaa !1105
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ac = and i32 %.058, 64
  %.not70 = icmp eq i32 %i.ac, 0
  br i1 %.not70, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 9856
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !tbaa.struct !50
  %.pre = load i32, ptr %i.p, align 4, !tbaa !896
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ae = phi i32 [ %.pre, %bb.m ], [ %i.q, %bb.l ]
  %i.af = trunc i32 %i.ae to i8
  br label %bb.o

bb.o:                                             ; preds = %bb.f, %bb.g, %bb.n
  %.sink = phi i8 [ %i.af, %bb.n ], [ 0, %bb.g ], [ 0, %bb.f ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 185
  store i8 %.sink, ptr %i.ag, align 1, !tbaa !1125
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !1123
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 180
  store i8 %i.ai, ptr %i.aj, align 4, !tbaa !1107
  %.not71 = icmp eq ptr %3, null
  %i.ak = select i1 %.not71, ptr @nk_filter_default, ptr %3
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 185
  %i.am = and i32 %.058, 1
  %.not72 = icmp eq i32 %i.am, 0
  %i.an = select i1 %.not72, i1 %.not66, i1 false
  %i.ao = select i1 %i.an, ptr %0, ptr null
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 9880 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4952
  %i.as = load ptr, ptr %i.e, align 8, !tbaa !753
  %i.at = load <2 x float>, ptr %4, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.av = load <2 x float>, ptr %i.au, align 8
  %i.aw = tail call fastcc i32 @nk_do_edit(ptr noundef %i.ap, ptr noundef %i.aq, <2 x float> %i.at, <2 x float> %i.av, i32 noundef %.058, ptr noundef nonnull %i.ak, ptr noundef nonnull %2, ptr noundef %i.ar, ptr noundef %i.ao, ptr noundef %i.as) ; 3 uses
  %i.ax = load i32, ptr %i.ap, align 8, !tbaa !809
  %i.ay = and i32 %i.ax, 16
  %.not73 = icmp eq i32 %i.ay, 0
  br i1 %.not73, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !296
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 456
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !295
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bc = load i8, ptr %i.al, align 1, !tbaa !1125 ; 3 uses
  %.not74 = icmp eq i8 %i.bc, 0
  %.not75 = icmp eq i8 %.sink, %i.bc
  %or.cond = select i1 %.not74, i1 true, i1 %.not75
  br i1 %or.cond, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 1, ptr %i.p, align 4, !tbaa !896
  store i32 %i.n, ptr %i.l, align 8, !tbaa !1122
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %.not76 = icmp eq i8 %.sink, 0
  %.not76.a = icmp ne i8 %i.bc, 0
  %brmerge = or i1 %.not76, %.not76.a
  br i1 %brmerge, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.p, align 4, !tbaa !896
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.r, %bb.t, %bb.d, %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.f, %bb.d ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ %i.aw, %bb.s ], [ %i.aw, %bb.r ], [ %i.aw, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 1, 32) i32 @nk_do_edit(ptr nofree noundef nonnull captures(none) %0, ptr noundef nonnull %1, <2 x float> %2, <2 x float> %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef nonnull readonly %7, ptr noundef %8, ptr noundef %9) unnamed_addr #20 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %10 = alloca %struct.nk_vec2, align 4           ; 3 uses
  %i.d = alloca ptr, align 8                      ; 3 uses
  %i.e = alloca i32, align 4                      ; 3 uses
  %11 = alloca %struct.nk_vec2, align 4           ; 3 uses
  %i.f = alloca ptr, align 8                      ; 3 uses
  %i.g = alloca i32, align 4                      ; 3 uses
  %12 = alloca %struct.nk_vec2, align 4           ; 3 uses
  %i.h = alloca ptr, align 8                      ; 3 uses
  %i.i = alloca i32, align 4                      ; 3 uses
  %13 = alloca %struct.nk_text, align 8           ; 7 uses
  %.sroa.0647.0.vec.extract = extractelement <2 x float> %2, i64 0
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 944
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 924 ; 3 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !1128 ; 2 uses
  %.sroa.0647.4.vec.extract = extractelement <2 x float> %2, i64 1
  %i.m = load <2 x float>, ptr %i.j, align 8, !tbaa !8 ; 2 uses
  %i.n = fadd <2 x float> %2, %i.m
  %i.o = insertelement <2 x float> poison, float %i.l, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = fadd <2 x float> %i.n, %i.p              ; 15 uses
  %i.r = fmul float %i.l, 2.000000e+00
  %i.s = insertelement <2 x float> poison, float %i.r, i64 0
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer
  %i.u = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.m, <2 x float> splat (float 2.000000e+00), <2 x float> %i.t)
  %i.v = fsub <2 x float> %3, %i.u                ; 4 uses
  %i.w = and i32 %4, 1024                         ; 2 uses
  %.not.not = icmp eq i32 %i.w, 0                 ; 3 uses
  %i.x = extractelement <2 x float> %i.v, i64 1
  br i1 %.not.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 936
  %i.z = load float, ptr %i.y, align 8, !tbaa !1129
  %i.aa = extractelement <2 x float> %i.v, i64 0
  %i.ab = fsub float %i.aa, %i.z                  ; 2 uses
  %i.ac = fcmp ogt float %i.ab, 0.000000e+00
  %i.ad = select i1 %i.ac, float %i.ab, float 0.000000e+00
  %.sroa.26.8.vec.insert343 = insertelement <2 x float> %i.v, float %i.ad, i64 0
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.af = load float, ptr %i.ae, align 8, !tbaa !166
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 952
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !1130
  %i.ai = fadd float %i.af, %i.ah
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.26.01093 = phi <2 x float> [ %.sroa.26.8.vec.insert343, %bb.b ], [ %i.v, %bb.a ] ; 4 uses
  %i.aj = phi float [ %i.ai, %bb.b ], [ %i.x, %bb.a ] ; 23 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %.sroa.01082.0.copyload = load <2 x float>, ptr %i.ak, align 8 ; 5 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load <2 x float>, ptr %.sroa.8.0..sroa_idx, align 8 ; 4 uses
  %.sroa.26.8.vec.extract345 = extractelement <2 x float> %.sroa.26.01093, i64 0
  %.sroa.26.12.vec.extract362 = extractelement <2 x float> %.sroa.26.01093, i64 1 ; 3 uses
  %i.al = fadd <2 x float> %i.q, %.sroa.26.01093  ; 4 uses
  %i.am = fcmp olt <2 x float> %.sroa.01082.0.copyload, %i.q
  %i.an = fadd <2 x float> %.sroa.01082.0.copyload, %.sroa.8.0.copyload ; 2 uses
  %i.ao = fcmp olt <2 x float> %i.an, %i.al
  %i.ap = select <2 x i1> %i.ao, <2 x float> %i.an, <2 x float> %i.al
  %i.aq = select <2 x i1> %i.am, <2 x float> %i.q, <2 x float> %.sroa.01082.0.copyload ; 4 uses
  %i.ar = fsub <2 x float> %i.ap, %i.aq           ; 2 uses
  %i.as = fcmp ogt <2 x float> %i.ar, zeroinitializer
  %i.at = select <2 x i1> %i.as, <2 x float> %i.ar, <2 x float> zeroinitializer ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 185 ; 4 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !1125 ; 5 uses
  %.not723 = icmp eq ptr %8, null
  br i1 %.not723, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 264
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !699
  %.not724 = icmp eq i32 %i.ax, 0
  br i1 %.not724, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 260
  %i.az = load i8, ptr %i.ay, align 4, !tbaa !708, !range !79, !noundef !80
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 356
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !713 ; 2 uses
  %i.bd = fcmp ole float %.sroa.0647.0.vec.extract, %i.bc
  %foldExtExtBinop = fadd <2 x float> %2, %3
  %i.be = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bf = fcmp olt float %i.bc, %i.be
  %or.cond = select i1 %i.bd, i1 %i.bf, i1 false
  br i1 %or.cond, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 360
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !714 ; 2 uses
  %i.bi = fcmp ugt float %.sroa.0647.4.vec.extract, %i.bh
  br i1 %i.bi, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %foldExtExtBinop1378 = fadd <2 x float> %2, %3
  %i.bj = extractelement <2 x float> %foldExtExtBinop1378, i64 1
  %i.bk = fcmp olt float %i.bh, %i.bj
  %i.bl = zext i1 %i.bk to i8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %i.bm = phi i8 [ %i.bl, %bb.h ], [ 0, %bb.f ], [ 0, %bb.g ] ; 2 uses
  store i8 %i.bm, ptr %i.au, align 1, !tbaa !1125
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e, %bb.d, %bb.c
  %i.bn = phi i8 [ %i.bm, %bb.i ], [ %i.av, %bb.e ], [ %i.av, %bb.d ], [ %i.av, %bb.c ] ; 5 uses
  %.not725 = icmp eq i8 %i.av, 0
  %.not726 = icmp eq i8 %i.bn, 0                  ; 2 uses
  br i1 %.not725, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  br i1 %.not726, label %.thread1095, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.lobit = lshr exact i32 %i.w, 10
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 160 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 5376
  store <4 x i16> <i16 0, i16 99, i16 0, i16 999>, ptr %i.bq, align 8, !tbaa !121
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 172
  store i32 0, ptr %i.br, align 4, !tbaa !1104
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 176
  store i32 0, ptr %i.bs, align 8, !tbaa !1105
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 168 ; 2 uses
  store i32 0, ptr %i.bt, align 8, !tbaa !1106
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 188
  store float 0.000000e+00, ptr %i.bu, align 4, !tbaa !1119
  %i.bv = trunc nuw nsw i32 %.lobit to i8
  %i.bw = xor i8 %i.bv, 1
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 184
  store i8 %i.bw, ptr %i.bx, align 8, !tbaa !1109
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 180
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %i.by, align 4, !tbaa !11
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 152
  store ptr %5, ptr %i.bz, align 8, !tbaa !1110
  store i64 %i.bp, ptr %i.bo, align 8
  %i.ca = and i32 %4, 2
  %.not = icmp eq i32 %i.ca, 0                    ; 2 uses
  %i.cb = and i32 %4, 2048
  %.not727 = icmp eq i32 %i.cb, 0
  br i1 %.not727, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 144
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !1103
  store i32 %i.cd, ptr %i.bt, align 8, !tbaa !1106
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  br i1 %.not726, label %.thread1095, label %bb.o

.thread1095:                                      ; preds = %bb.k, %bb.n
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 180
  store i8 0, ptr %i.ce, align 4, !tbaa !1107
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n, %.thread1095
  %.1679 = phi i1 [ true, %bb.n ], [ true, %.thread1095 ], [ %.not, %bb.m ], [ %.not, %bb.l ]
  %.1 = phi ptr [ %8, %bb.n ], [ %8, %.thread1095 ], [ null, %bb.m ], [ %8, %bb.l ] ; 26 uses
  %.not729 = trunc i32 %4 to i1                   ; 2 uses
  br i1 %.not729, label %.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cf = and i32 %4, 512
  %.not730 = icmp eq i32 %i.cf, 0
  br i1 %.not730, label %bb.q, label %.sink.split

.sink.split:                                      ; preds = %bb.p, %bb.o
  %.sink = phi i8 [ 0, %bb.o ], [ 1, %bb.p ]
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 180
  store i8 %.sink, ptr %i.cg, align 4, !tbaa !1107
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.p
  %i.ch = zext i8 %i.bn to i32
  %.not731 = icmp eq i8 %i.bn, 0                  ; 2 uses
  %i.ci = select i1 %.not731, i32 2, i32 1
  %i.cj = sext i8 %i.av to i32
  %.not732 = icmp eq i32 %i.cj, %i.ch
end_hunk_1
begin_hunk_2_@nk_combo_begin_text:bb.a
  %.sroa.512.0.i134 = phi i8 [ %.sroa.7.0.extract.trunc.i144, %bb.i ], [ %i.bx, %bb.j ]
  %.sroa.9.0.extract.shift.i135 = and i32 %i.bi, -16777216
  %.sroa.512.0.insert.ext.i136 = zext i8 %.sroa.512.0.i134 to i32
  %.sroa.512.0.insert.shift.i137 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i136, 16
  %.sroa.512.0.insert.insert.i138 = or disjoint i32 %.sroa.512.0.insert.shift.i137, %.sroa.9.0.extract.shift.i135
  %.sroa.3.0.insert.ext.i139 = zext i8 %.sroa.3.0.i132 to i32
  %.sroa.3.0.insert.shift.i140 = shl nuw nsw i32 %.sroa.3.0.insert.ext.i139, 8
  %.sroa.3.0.insert.insert.i141 = or disjoint i32 %.sroa.512.0.insert.insert.i138, %.sroa.3.0.insert.shift.i140
  %.sroa.011.0.insert.ext.i142 = zext i8 %.sroa.011.0.i133 to i32
  %.sroa.011.0.insert.insert.i143 = or disjoint i32 %.sroa.3.0.insert.insert.i141, %.sroa.011.0.insert.ext.i142
  tail call void @nk_fill_rect(ptr noundef nonnull %i.bj, <2 x float> %i.r, <2 x float> %i.t, float noundef %i.bl, i32 %.sroa.011.0.insert.insert.i143)
  %i.by = load float, ptr %i.bk, align 8, !tbaa !1198
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8844
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !1199
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8584
  %i.cc = load float, ptr %i.ae, align 4, !tbaa !980 ; 4 uses
  %i.cd = load i32, ptr %i.cb, align 8            ; 5 uses
  %.sroa.5.0.extract.shift.i148 = lshr i32 %i.cd, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i149 = lshr i32 %i.cd, 16 ; 2 uses
  %i.ce = fcmp oeq float %i.cc, 1.000000e+00
  br i1 %i.ce, label %bb.k, label %bb.l

bb.k:                                             ; preds = %nk_rgb_factor.exit147
  %.sroa.7.0.extract.trunc.i162 = trunc i32 %.sroa.7.0.extract.shift.i149 to i8
  %.sroa.5.0.extract.trunc.i163 = trunc i32 %.sroa.5.0.extract.shift.i148 to i8
  %.sroa.0.0.extract.trunc.i164 = trunc i32 %i.cd to i8
  br label %nk_rgb_factor.exit165

bb.l:                                             ; preds = %nk_rgb_factor.exit147
  %i.cf = and i32 %i.cd, 255
  %i.cg = uitofp nneg i32 %i.cf to float
  %i.ch = fmul float %i.cc, %i.cg
  %i.ci = fptoui float %i.ch to i8
  %i.cj = and i32 %.sroa.5.0.extract.shift.i148, 255
  %i.ck = uitofp nneg i32 %i.cj to float
  %i.cl = fmul float %i.cc, %i.ck
  %i.cm = fptoui float %i.cl to i8
  %i.cn = and i32 %.sroa.7.0.extract.shift.i149, 255
  %i.co = uitofp nneg i32 %i.cn to float
  %i.cp = fmul float %i.cc, %i.co
  %i.cq = fptoui float %i.cp to i8
  br label %nk_rgb_factor.exit165

nk_rgb_factor.exit165:                            ; preds = %bb.k, %bb.l
  %.sroa.3.0.i150 = phi i8 [ %.sroa.5.0.extract.trunc.i163, %bb.k ], [ %i.cm, %bb.l ]
  %.sroa.011.0.i151 = phi i8 [ %.sroa.0.0.extract.trunc.i164, %bb.k ], [ %i.ci, %bb.l ]
  %.sroa.512.0.i152 = phi i8 [ %.sroa.7.0.extract.trunc.i162, %bb.k ], [ %i.cq, %bb.l ]
  %.sroa.9.0.extract.shift.i153 = and i32 %i.cd, -16777216
  %.sroa.512.0.insert.ext.i154 = zext i8 %.sroa.512.0.i152 to i32
  %.sroa.512.0.insert.shift.i155 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i154, 16
  %.sroa.512.0.insert.insert.i156 = or disjoint i32 %.sroa.512.0.insert.shift.i155, %.sroa.9.0.extract.shift.i153
  %.sroa.3.0.insert.ext.i157 = zext i8 %.sroa.3.0.i150 to i32
  %.sroa.3.0.insert.shift.i158 = shl nuw nsw i32 %.sroa.3.0.insert.ext.i157, 8
  %.sroa.3.0.insert.insert.i159 = or disjoint i32 %.sroa.512.0.insert.insert.i156, %.sroa.3.0.insert.shift.i158
  %.sroa.011.0.insert.ext.i160 = zext i8 %.sroa.011.0.i151 to i32
  %.sroa.011.0.insert.insert.i161 = or disjoint i32 %.sroa.3.0.insert.insert.i159, %.sroa.011.0.insert.ext.i160
  tail call void @nk_stroke_rect(ptr noundef nonnull %i.bj, <2 x float> %i.r, <2 x float> %i.t, float noundef %i.by, float noundef %i.ca, i32 %.sroa.011.0.insert.insert.i161)
  br label %bb.m

bb.m:                                             ; preds = %nk_rgb_factor.exit165, %nk_rgb_factor.exit129, %nk_rgb_factor.exit117, %nk_rgb_factor.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  %i.cr = load i32, ptr %i.q, align 8, !tbaa !809
  %i.cs = and i32 %i.cr, 16
  %.not102 = icmp eq i32 %i.cs, 0
  %. = select i1 %i.u, i64 8840, i64 8832
  %.sink = select i1 %.not102, i64 %., i64 8836
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %.092 = load i32, ptr %i.ct, align 4, !tbaa !10 ; 2 uses
  %.not104 = icmp eq i32 %.092, 0
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8860
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8864
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %foldExtExtBinop = fadd <2 x float> %i.r, %i.t
  %shift = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop189 = fsub <2 x float> %foldExtExtBinop, %shift
  %i.cx = extractelement <2 x float> %foldExtExtBinop189, i64 0
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8776
  %i.db = load <2 x float>, ptr %i.da, align 8, !tbaa !8 ; 2 uses
  %i.dc = load float, ptr %i.cv, align 8, !tbaa !1200 ; 2 uses
  %i.dd = load float, ptr %i.cu, align 4, !tbaa !1201
  %i.de = fadd float %i.dc, %i.y                  ; 2 uses
  %i.df = fsub float %i.cx, %i.dd                 ; 3 uses
  store float %i.df, ptr %6, align 4, !tbaa !129
  store float %i.de, ptr %i.cy, align 4, !tbaa !131
  %i.dg = insertelement <2 x float> poison, float %i.df, i64 0
  %i.dh = insertelement <2 x float> %i.dg, float %i.de, i64 1
  %i.di = fadd <2 x float> %i.dh, %i.db
  store <2 x float> zeroinitializer, ptr %5, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8852
  %i.dk = load <2 x float>, ptr %i.dj, align 4, !tbaa !8 ; 4 uses
  %i.dl = fadd <2 x float> %i.r, %i.dk            ; 3 uses
  %i.dm = insertelement <2 x float> %i.dk, float %i.dc, i64 0
  %i.dn = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.do = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dm, <2 x float> splat (float -2.000000e+00), <2 x float> %i.dn) ; 4 uses
  %i.dp = extractelement <2 x float> %i.do, i64 0 ; 2 uses
  store float %i.dp, ptr %i.cw, align 4, !tbaa !130
  store float %i.dp, ptr %i.cz, align 4, !tbaa !132
  %i.dq = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.db, <2 x float> splat (float -2.000000e+00), <2 x float> %i.dq)
  br i1 %.not104, label %.thread, label %bb.n

.thread:                                          ; preds = %bb.m
  %i.ds = extractelement <2 x float> %i.dk, i64 0
  %i.dt = tail call float @llvm.fmuladd.f32(float %i.ds, float -2.000000e+00, float %i.x)
  %.sroa.6.8.vec.insert14 = insertelement <2 x float> %i.do, float %i.dt, i64 0
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.dv = load ptr, ptr %i.g, align 8, !tbaa !766
  call fastcc void @nk_widget_text(ptr noundef nonnull %i.du, <2 x float> %i.dl, <2 x float> %.sroa.6.8.vec.insert14, ptr noundef nonnull %1, i32 noundef %2, ptr noundef %5, i32 noundef 17, ptr noundef %i.dv)
  br label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8616 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8868
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !1202
  %i.dz = extractelement <2 x float> %i.dk, i64 0
  %i.ea = fadd float %i.dz, %i.dy
  %i.eb = fsub float %i.df, %i.ea
  %i.ec = extractelement <2 x float> %i.dl, i64 0
  %i.ed = fsub float %i.eb, %i.ec
  %.sroa.6.8.vec.insert = insertelement <2 x float> %i.do, float %i.ed, i64 0
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 3 uses
  %i.ef = load ptr, ptr %i.g, align 8, !tbaa !766
  call fastcc void @nk_widget_text(ptr noundef nonnull %i.ee, <2 x float> %i.dl, <2 x float> %.sroa.6.8.vec.insert, ptr noundef nonnull %1, i32 noundef %2, ptr noundef %5, i32 noundef 17, ptr noundef %i.ef)
  %i.eg = load i32, ptr %i.q, align 8, !tbaa !809 ; 3 uses
  %i.eh = load ptr, ptr %i.g, align 8, !tbaa !753
  %i.ei = call fastcc ptr @nk_draw_button(ptr noundef nonnull %i.ee, ptr noundef nonnull readonly %6, i32 noundef %i.eg, ptr noundef nonnull readonly %i.dw) ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !751
  %i.ek = icmp eq i32 %i.ej, 0
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 8744
  %.sroa.02.0.in.i = select i1 %i.ek, ptr %i.el, ptr %i.em
  %.sroa.02.0.i = load i32, ptr %.sroa.02.0.in.i, align 8
  %i.en = and i32 %i.eg, 16
  %.not.i = icmp eq i32 %i.en, 0
  %i.eo = and i32 %i.eg, 32
  %.not22.i = icmp eq i32 %i.eo, 0
  %..i = select i1 %.not22.i, i64 132, i64 140
  %.sink.i = select i1 %.not.i, i64 %..i, i64 136
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.sink.i
  %.sroa.04.0.i = load i32, ptr %i.ep, align 4    ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 8764
  %i.er = load float, ptr %i.eq, align 4, !tbaa !920 ; 4 uses
  %.sroa.5.0.extract.shift.i.i = lshr i32 %.sroa.04.0.i, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i.i = lshr i32 %.sroa.04.0.i, 16 ; 2 uses
  %i.es = fcmp oeq float %i.er, 1.000000e+00
  br i1 %i.es, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.sroa.7.0.extract.trunc.i.i = trunc i32 %.sroa.7.0.extract.shift.i.i to i8
  %.sroa.5.0.extract.trunc.i.i = trunc i32 %.sroa.5.0.extract.shift.i.i to i8
  %.sroa.0.0.extract.trunc.i.i = trunc i32 %.sroa.04.0.i to i8
  br label %nk_draw_button_symbol.exit

bb.p:                                             ; preds = %bb.n
  %i.et = and i32 %.sroa.04.0.i, 255
  %i.eu = uitofp nneg i32 %i.et to float
  %i.ev = fmul float %i.er, %i.eu
  %i.ew = fptoui float %i.ev to i8
  %i.ex = and i32 %.sroa.5.0.extract.shift.i.i, 255
  %i.ey = uitofp nneg i32 %i.ex to float
  %i.ez = fmul float %i.er, %i.ey
  %i.fa = fptoui float %i.ez to i8
  %i.fb = and i32 %.sroa.7.0.extract.shift.i.i, 255
  %i.fc = uitofp nneg i32 %i.fb to float
  %i.fd = fmul float %i.er, %i.fc
  %i.fe = fptoui float %i.fd to i8
  br label %nk_draw_button_symbol.exit

nk_draw_button_symbol.exit:                       ; preds = %bb.o, %bb.p
  %.sroa.3.0.i.i = phi i8 [ %.sroa.5.0.extract.trunc.i.i, %bb.o ], [ %i.fa, %bb.p ]
  %.sroa.011.0.i.i = phi i8 [ %.sroa.0.0.extract.trunc.i.i, %bb.o ], [ %i.ew, %bb.p ]
  %.sroa.512.0.i.i = phi i8 [ %.sroa.7.0.extract.trunc.i.i, %bb.o ], [ %i.fe, %bb.p ]
  %.sroa.9.0.extract.shift.i.i = and i32 %.sroa.04.0.i, -16777216
  %.sroa.512.0.insert.ext.i.i = zext i8 %.sroa.512.0.i.i to i32
  %.sroa.512.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.512.0.insert.ext.i.i, 16
  %.sroa.512.0.insert.insert.i.i = or disjoint i32 %.sroa.512.0.insert.shift.i.i, %.sroa.9.0.extract.shift.i.i
  %.sroa.3.0.insert.ext.i.i = zext i8 %.sroa.3.0.i.i to i32
  %.sroa.3.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.3.0.insert.ext.i.i, 8
  %.sroa.3.0.insert.insert.i.i = or disjoint i32 %.sroa.512.0.insert.insert.i.i, %.sroa.3.0.insert.shift.i.i
  %.sroa.011.0.insert.ext.i.i = zext i8 %.sroa.011.0.i.i to i32
  %.sroa.011.0.insert.insert.i.i = or disjoint i32 %.sroa.3.0.insert.insert.i.i, %.sroa.011.0.insert.ext.i.i
  tail call fastcc void @nk_draw_symbol(ptr noundef nonnull %i.ee, i32 noundef %.092, <2 x float> %i.di, <2 x float> %i.dr, i32 %.sroa.02.0.i, i32 %.sroa.011.0.insert.insert.i.i, float noundef 1.000000e+00, ptr noundef %i.eh)
  br label %bb.q

bb.q:                                             ; preds = %.thread, %nk_draw_button_symbol.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  %i.ff = load ptr, ptr %i.a, align 8, !tbaa !755 ; 2 uses
  %.not.i166 = icmp eq ptr %i.ff, null
  br i1 %.not.i166, label %nk_combo_begin.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 168
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !756
  %.not44.i = icmp eq ptr %i.fh, null
  br i1 %.not44.i, label %nk_combo_begin.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fi = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !814 ; 2 uses
  %foldExtExtBinop191 = fadd <2 x float> %i.r, %i.t
  %i.fk = extractelement <2 x float> %foldExtExtBinop191, i64 1
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 9612
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !1203
  %i.fn = fsub float %i.fk, %i.fm
  %.sroa.013.4.vec.insert.i = insertelement <2 x float> %i.r, float %i.fn, i64 1
  %i.fo = getelementptr inbounds nuw i8, ptr %i.b, i64 424 ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !903 ; 3 uses
  %i.fq = add i32 %i.fp, 1
  store i32 %i.fq, ptr %i.fo, align 8, !tbaa !903
  %i.fr = icmp ne ptr %i.fj, null                 ; 3 uses
  br i1 %i.fr, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.fs = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !909
  %i.fu = icmp eq i32 %i.ft, %i.fp
  br i1 %i.fu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !908
  %i.fx = icmp eq i32 %i.fw, 32
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %i.fy = phi i1 [ false, %bb.t ], [ false, %bb.s ], [ %i.fx, %bb.u ]
  %7 = icmp eq ptr %i.fj, null
  %or.cond45.i = select i1 %7, i1 true, i1 %i.fy
  %or.cond9.i = or i1 %i.u, %i.fr
  %or.cond46.i = and i1 %or.cond9.i, %or.cond45.i
  br i1 %or.cond46.i, label %bb.w, label %nk_combo_begin.exit

bb.w:                                             ; preds = %bb.v
  %or.cond.i = and i1 %i.u, %i.fr                 ; 2 uses
  %.sroa.3.0.i167 = select i1 %or.cond.i, <2 x float> zeroinitializer, <2 x float> %i.t
  %.sroa.0.0.i = select i1 %or.cond.i, <2 x float> zeroinitializer, <2 x float> %i.r
  %i.fz = tail call fastcc zeroext i1 @nk_nonblock_begin(ptr noundef nonnull %0, i32 noundef 0, <2 x float> %.sroa.013.4.vec.insert.i, <2 x float> %3, <2 x float> %.sroa.0.0.i, <2 x float> %.sroa.3.0.i167, i32 noundef 32)
  br i1 %i.fz, label %bb.x, label %nk_combo_begin.exit

bb.x:                                             ; preds = %bb.w
  %i.ga = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store i32 32, ptr %i.ga, align 8, !tbaa !908
  %i.gb = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  store i32 %i.fp, ptr %i.gb, align 8, !tbaa !909
  br label %nk_combo_begin.exit

nk_combo_begin.exit:                              ; preds = %bb.x, %bb.w, %bb.v, %bb.r, %bb.q, %bb.d, %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ true, %bb.x ], [ false, %bb.v ], [ false, %bb.q ], [ false, %bb.r ], [ false, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc zeroext i1 @nk_button_behavior(ptr nofree noundef nonnull captures(none) %0, <2 x float> %1, <2 x float> %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4) unnamed_addr #29 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !10
  %i.b = and i32 %i.a, 2
  %. = or disjoint i32 %i.b, 4                    ; 3 uses
  store i32 %., ptr %0, align 4, !tbaa !10
  %.not26 = icmp eq ptr %3, null
  br i1 %.not26, label %nk_input_is_mouse_prev_hovering_rect.exit57.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %1, i64 0 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 356
  %i.d = load float, ptr %i.c, align 4, !tbaa !713 ; 2 uses
  %i.e = fcmp ole float %.sroa.0.0.vec.extract.i, %i.d
  %foldExtExtBinop = fadd <2 x float> %1, %2
  %i.f = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 4 uses
  %i.g = fcmp olt float %i.d, %i.f
  %or.cond.i = select i1 %i.e, i1 %i.g, i1 false
  br i1 %or.cond.i, label %bb.c, label %nk_input_is_mouse_pressed.exit

bb.c:                                             ; preds = %bb.b
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %1, i64 1 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 360
  %i.i = load float, ptr %i.h, align 4, !tbaa !714 ; 2 uses
  %i.j = fcmp ole float %.sroa.0.4.vec.extract.i, %i.i
  %foldExtExtBinop73 = fadd <2 x float> %1, %2
  %i.k = extractelement <2 x float> %foldExtExtBinop73, i64 1 ; 2 uses
  %i.l = fcmp olt float %i.i, %i.k
  %or.cond = select i1 %i.j, i1 %i.l, i1 false
  br i1 %or.cond, label %nk_input_is_mouse_down.exit, label %nk_input_is_mouse_pressed.exit

nk_input_is_mouse_down.exit:                      ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 260 ; 2 uses
  %i.n = load i8, ptr %i.m, align 4, !tbaa !708, !range !79, !noundef !80
  %i.o = trunc nuw i8 %i.n to i1
  %spec.store.select = select i1 %i.o, i32 34, i32 18 ; 6 uses
  store i32 %spec.store.select, ptr %0, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 268
  %i.q = load float, ptr %i.p, align 4, !tbaa !711 ; 2 uses
  %i.r = fcmp ole float %.sroa.0.0.vec.extract.i, %i.q
  %i.s = fcmp olt float %i.q, %i.f
  %or.cond.i34 = select i1 %i.r, i1 %i.s, i1 false
  br i1 %or.cond.i34, label %nk_input_has_mouse_click_in_button_rect.exit, label %nk_input_is_mouse_pressed.exit

nk_input_has_mouse_click_in_button_rect.exit:     ; preds = %nk_input_is_mouse_down.exit
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 272
  %i.u = load float, ptr %i.t, align 4, !tbaa !712 ; 2 uses
  %i.v = fcmp ole float %.sroa.0.4.vec.extract.i, %i.u
  %i.w = fcmp olt float %i.u, %i.k
  %or.cond16.i = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond16.i, label %bb.d, label %nk_input_is_mouse_pressed.exit

bb.d:                                             ; preds = %nk_input_has_mouse_click_in_button_rect.exit
  %.not27 = icmp eq i32 %4, 0
  %i.x = load i8, ptr %i.m, align 4, !tbaa !708, !range !79, !noundef !80
  %i.y = trunc nuw i8 %i.x to i1                  ; 2 uses
  br i1 %.not27, label %bb.e, label %nk_input_is_mouse_pressed.exit

bb.e:                                             ; preds = %bb.d
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 264
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !699
  %.not6.i = icmp eq i32 %i.aa, 0
  br i1 %.not6.i, label %bb.g, label %nk_input_is_mouse_pressed.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %nk_input_is_mouse_pressed.exit

nk_input_is_mouse_pressed.exit:                   ; preds = %bb.d, %nk_input_is_mouse_down.exit, %bb.b, %bb.c, %bb.g, %bb.f, %nk_input_has_mouse_click_in_button_rect.exit
  %i.ab = phi i32 [ %spec.store.select, %nk_input_is_mouse_down.exit ], [ %spec.store.select, %nk_input_has_mouse_click_in_button_rect.exit ], [ %., %bb.c ], [ %., %bb.b ], [ %spec.store.select, %bb.g ], [ %spec.store.select, %bb.f ], [ %spec.store.select, %bb.d ] ; 2 uses
  %.0 = phi i1 [ false, %nk_input_is_mouse_down.exit ], [ false, %nk_input_has_mouse_click_in_button_rect.exit ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.g ], [ true, %bb.f ], [ %i.y, %bb.d ] ; 3 uses
  %i.ac = and i32 %i.ab, 16
  %.not28 = icmp eq i32 %i.ac, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 364
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !715 ; 4 uses
  br i1 %.not28, label %nk_input_is_mouse_pressed.exit._crit_edge, label %bb.h

bb.h:                                             ; preds = %nk_input_is_mouse_pressed.exit
  %i.ad = fcmp ole float %.sroa.0.0.vec.extract.i, %.pre
  %i.ae = fcmp olt float %.pre, %i.f
  %or.cond.i46 = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %or.cond.i46, label %bb.i, label %nk_input_is_mouse_prev_hovering_rect.exit57.thread.sink.split

bb.i:                                             ; preds = %bb.h
  %.sroa.0.4.vec.extract.i48 = extractelement <2 x float> %1, i64 1
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 368
  %i.ag = load float, ptr %i.af, align 4, !tbaa !716 ; 2 uses
  %i.ah = fcmp ole float %.sroa.0.4.vec.extract.i48, %i.ag
  %foldExtExtBinop75 = fadd <2 x float> %1, %2
  %i.ai = extractelement <2 x float> %foldExtExtBinop75, i64 1
  %i.aj = fcmp olt float %i.ag, %i.ai
  %or.cond64 = select i1 %i.ah, i1 %i.aj, i1 false
  br i1 %or.cond64, label %nk_input_is_mouse_pressed.exit._crit_edge, label %nk_input_is_mouse_prev_hovering_rect.exit57.thread.sink.split

nk_input_is_mouse_pressed.exit._crit_edge:        ; preds = %nk_input_is_mouse_pressed.exit, %bb.i
  %i.ak = fcmp ole float %.sroa.0.0.vec.extract.i, %.pre
  %i.al = fcmp olt float %.pre, %i.f
  %or.cond.i53 = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond.i53, label %bb.j, label %nk_input_is_mouse_prev_hovering_rect.exit57.thread

bb.j:                                             ; preds = %nk_input_is_mouse_pressed.exit._crit_edge
  %.sroa.0.4.vec.extract.i55 = extractelement <2 x float> %1, i64 1
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 368
  %i.an = load float, ptr %i.am, align 4, !tbaa !716 ; 2 uses
  %i.ao = fcmp ole float %.sroa.0.4.vec.extract.i55, %i.an
  %foldExtExtBinop77 = fadd <2 x float> %1, %2
  %i.ap = extractelement <2 x float> %foldExtExtBinop77, i64 1
  %i.aq = fcmp olt float %i.an, %i.ap
  %or.cond66 = select i1 %i.ao, i1 %i.aq, i1 false
  br i1 %or.cond66, label %nk_input_is_mouse_prev_hovering_rect.exit57.thread.sink.split, label %nk_input_is_mouse_prev_hovering_rect.exit57.thread

nk_input_is_mouse_prev_hovering_rect.exit57.thread.sink.split: ; preds = %bb.j, %bb.i, %bb.h
  %.sink71 = phi i32 [ 8, %bb.i ], [ 8, %bb.h ], [ 64, %bb.j ]
  %i.ar = or i32 %i.ab, %.sink71
  store i32 %i.ar, ptr %0, align 4, !tbaa !10
  br label %nk_input_is_mouse_prev_hovering_rect.exit57.thread

nk_input_is_mouse_prev_hovering_rect.exit57.thread: ; preds = %nk_input_is_mouse_prev_hovering_rect.exit57.thread.sink.split, %nk_input_is_mouse_pressed.exit._crit_edge, %bb.j, %bb.a
  %.024 = phi i1 [ false, %bb.a ], [ %.0, %nk_input_is_mouse_pressed.exit._crit_edge ], [ %.0, %bb.j ], [ %.0, %nk_input_is_mouse_prev_hovering_rect.exit57.thread.sink.split ]
  ret i1 %.024
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_combo_begin_label(ptr noundef %0, ptr noundef %1, <2 x float> %2) local_unnamed_addr #20 {
bb.a:
  %.not5.i = icmp eq ptr %1, null
  br i1 %.not5.i, label %nk_strlen.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !tbaa !11
  %.not4.i3 = icmp eq i8 %i.a, 0
  br i1 %.not4.i3, label %nk_strlen.exit, label %.lr.ph.i.preheader6

.lr.ph.i.preheader6:                              ; preds = %.lr.ph.i.preheader
  %scevgep = getelementptr i8, ptr %1, i64 1
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep)
  %i.b = trunc i64 %strlen to i32
  %i.c = add i32 %i.b, 1
  br label %nk_strlen.exit

nk_strlen.exit:                                   ; preds = %.lr.ph.i.preheader6, %.lr.ph.i.preheader, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ 0, %.lr.ph.i.preheader ], [ %i.c, %.lr.ph.i.preheader6 ]
  %i.d = tail call zeroext i1 @nk_combo_begin_text(ptr noundef %0, ptr noundef %1, i32 noundef %.0.lcssa.i, <2 x float> %2)
  ret i1 %i.d
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_combo_begin_color(ptr noundef %0, i32 %1, <2 x float> %2) local_unnamed_addr #20 {
bb.a:
  %3 = alloca %struct.nk_rect, align 8            ; 5 uses
  %4 = alloca %struct.nk_rect, align 4            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_combo_begin.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !755  ; 12 uses
  %.not86 = icmp eq ptr %i.b, null
  br i1 %.not86, label %nk_combo_begin.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !756
  %.not87 = icmp eq ptr %i.d, null
  br i1 %.not87, label %nk_combo_begin.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.f = call i32 @nk_widget(ptr noundef nonnull %3, ptr noundef nonnull %0) ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
end_hunk_2
begin_hunk_3_@nk_combo_begin_color:bb.a
nk_rgb_factor.exit135:                            ; preds = %bb.i, %bb.j
  %.sroa.3.0.i120 = phi i8 [ %.sroa.5.0.extract.trunc.i133, %bb.i ], [ %i.bx, %bb.j ]
  %.sroa.011.0.i121 = phi i8 [ %.sroa.0.0.extract.trunc.i134, %bb.i ], [ %i.bt, %bb.j ]
  %.sroa.512.0.i122 = phi i8 [ %.sroa.7.0.extract.trunc.i132, %bb.i ], [ %i.cb, %bb.j ]
  %.sroa.9.0.extract.shift.i123 = and i32 %i.bo, -16777216
  %.sroa.512.0.insert.ext.i124 = zext i8 %.sroa.512.0.i122 to i32
  %.sroa.512.0.insert.shift.i125 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i124, 16
  %.sroa.512.0.insert.insert.i126 = or disjoint i32 %.sroa.512.0.insert.shift.i125, %.sroa.9.0.extract.shift.i123
  %.sroa.3.0.insert.ext.i127 = zext i8 %.sroa.3.0.i120 to i32
  %.sroa.3.0.insert.shift.i128 = shl nuw nsw i32 %.sroa.3.0.insert.ext.i127, 8
  %.sroa.3.0.insert.insert.i129 = or disjoint i32 %.sroa.512.0.insert.insert.i126, %.sroa.3.0.insert.shift.i128
  %.sroa.011.0.insert.ext.i130 = zext i8 %.sroa.011.0.i121 to i32
  %.sroa.011.0.insert.insert.i131 = or disjoint i32 %.sroa.3.0.insert.insert.i129, %.sroa.011.0.insert.ext.i130
  tail call void @nk_stroke_rect(ptr noundef nonnull %i.ap, <2 x float> %i.p, <2 x float> %i.r, float noundef %i.bj, float noundef %i.bl, i32 %.sroa.011.0.insert.insert.i131)
  br label %bb.k

bb.k:                                             ; preds = %nk_rgb_factor.exit135, %nk_rgb_factor.exit105, %nk_rgb_factor.exit, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  %i.cc = load i32, ptr %i.o, align 8, !tbaa !809
  %i.cd = and i32 %i.cc, 16
  %.not90 = icmp eq i32 %i.cd, 0
  %.173 = select i1 %i.s, i64 8840, i64 8832
  %.sink171 = select i1 %.not90, i64 %.173, i64 8836
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 %.sink171
  %.080 = load i32, ptr %i.ce, align 4, !tbaa !10 ; 2 uses
  %.not92 = icmp eq i32 %.080, 0                  ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8860
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8864
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 8
  %foldExtExtBinop = fadd <2 x float> %i.p, %i.r
  %shift = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop175 = fsub <2 x float> %foldExtExtBinop, %shift
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8616 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8776
  %i.cm = load <2 x float>, ptr %i.cl, align 8, !tbaa !8 ; 2 uses
  %i.cn = load float, ptr %i.cg, align 8, !tbaa !1200
  %i.co = load <2 x float>, ptr %i.cf, align 4, !tbaa !8 ; 2 uses
  %i.cp = shufflevector <2 x float> %foldExtExtBinop175, <2 x float> %i.p, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.cq = fsub <2 x float> %i.cp, %i.co           ; 2 uses
  %i.cr = fadd <2 x float> %i.cp, %i.co           ; 2 uses
  %i.cs = shufflevector <2 x float> %i.cq, <2 x float> %i.cr, <2 x i32> <i32 0, i32 3>
  %i.ct = extractelement <2 x float> %i.cq, i64 0 ; 2 uses
  store float %i.ct, ptr %4, align 4, !tbaa !129
  %i.cu = extractelement <2 x float> %i.cr, i64 1
  store float %i.cu, ptr %i.ci, align 4, !tbaa !131
  %i.cv = fadd <2 x float> %i.cs, %i.cm
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8852
  %i.cx = load <2 x float>, ptr %i.cw, align 4, !tbaa !8 ; 4 uses
  %i.cy = insertelement <2 x float> %i.cx, float %i.cn, i64 0
  %i.cz = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.da = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> <float -2.000000e+00, float -4.000000e+00>, <2 x float> %i.cz) ; 3 uses
  %i.db = extractelement <2 x float> %i.da, i64 0 ; 2 uses
  store float %i.db, ptr %i.ch, align 4, !tbaa !130
  store float %i.db, ptr %i.cj, align 4, !tbaa !132
  %i.dc = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cm, <2 x float> splat (float -2.000000e+00), <2 x float> %i.dc)
  %i.de = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cx, <2 x float> splat (float 2.000000e+00), <2 x float> %i.p) ; 2 uses
  br i1 %.not92, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8868
  %i.dg = load float, ptr %i.df, align 4, !tbaa !1202
  %i.dh = extractelement <2 x float> %i.cx, i64 0
  %i.di = fadd float %i.dh, %i.dg
  %i.dj = fsub float %i.ct, %i.di
  %i.dk = extractelement <2 x float> %i.de, i64 0
  %i.dl = fsub float %i.dj, %i.dk
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.dm = extractelement <2 x float> %i.cx, i64 0
  %i.dn = tail call float @llvm.fmuladd.f32(float %i.dm, float -4.000000e+00, float %i.v)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sink172 = phi float [ %i.dn, %bb.m ], [ %i.dl, %bb.l ]
  %i.do = insertelement <2 x float> %i.da, float %.sink172, i64 0
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8876
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !980 ; 4 uses
  %.sroa.5.0.extract.shift.i136 = lshr i32 %1, 8  ; 2 uses
  %.sroa.7.0.extract.shift.i137 = lshr i32 %1, 16 ; 2 uses
  %i.ds = fcmp oeq float %i.dr, 1.000000e+00
  br i1 %i.ds, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.sroa.7.0.extract.trunc.i150 = trunc i32 %.sroa.7.0.extract.shift.i137 to i8
  %.sroa.5.0.extract.trunc.i151 = trunc i32 %.sroa.5.0.extract.shift.i136 to i8
  %.sroa.0.0.extract.trunc.i152 = trunc i32 %1 to i8
  br label %nk_rgb_factor.exit153

bb.p:                                             ; preds = %bb.n
  %i.dt = and i32 %1, 255
  %i.du = uitofp nneg i32 %i.dt to float
  %i.dv = fmul float %i.dr, %i.du
  %i.dw = fptoui float %i.dv to i8
  %i.dx = and i32 %.sroa.5.0.extract.shift.i136, 255
  %i.dy = uitofp nneg i32 %i.dx to float
  %i.dz = fmul float %i.dr, %i.dy
  %i.ea = fptoui float %i.dz to i8
  %i.eb = and i32 %.sroa.7.0.extract.shift.i137, 255
  %i.ec = uitofp nneg i32 %i.eb to float
  %i.ed = fmul float %i.dr, %i.ec
  %i.ee = fptoui float %i.ed to i8
  br label %nk_rgb_factor.exit153

nk_rgb_factor.exit153:                            ; preds = %bb.o, %bb.p
  %.sroa.3.0.i138 = phi i8 [ %.sroa.5.0.extract.trunc.i151, %bb.o ], [ %i.ea, %bb.p ]
  %.sroa.011.0.i139 = phi i8 [ %.sroa.0.0.extract.trunc.i152, %bb.o ], [ %i.dw, %bb.p ]
  %.sroa.512.0.i140 = phi i8 [ %.sroa.7.0.extract.trunc.i150, %bb.o ], [ %i.ee, %bb.p ]
  %.sroa.9.0.extract.shift.i141 = and i32 %1, -16777216
  %.sroa.512.0.insert.ext.i142 = zext i8 %.sroa.512.0.i140 to i32
  %.sroa.512.0.insert.shift.i143 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i142, 16
  %.sroa.512.0.insert.insert.i144 = or disjoint i32 %.sroa.512.0.insert.shift.i143, %.sroa.9.0.extract.shift.i141
  %.sroa.3.0.insert.ext.i145 = zext i8 %.sroa.3.0.i138 to i32
  %.sroa.3.0.insert.shift.i146 = shl nuw nsw i32 %.sroa.3.0.insert.ext.i145, 8
  %.sroa.3.0.insert.insert.i147 = or disjoint i32 %.sroa.512.0.insert.insert.i144, %.sroa.3.0.insert.shift.i146
  %.sroa.011.0.insert.ext.i148 = zext i8 %.sroa.011.0.i139 to i32
  %.sroa.011.0.insert.insert.i149 = or disjoint i32 %.sroa.3.0.insert.insert.i147, %.sroa.011.0.insert.ext.i148
  tail call void @nk_fill_rect(ptr noundef nonnull %i.dp, <2 x float> %i.de, <2 x float> %i.do, float noundef 0.000000e+00, i32 %.sroa.011.0.insert.insert.i149)
  br i1 %.not92, label %bb.t, label %bb.q

bb.q:                                             ; preds = %nk_rgb_factor.exit153
  %i.ef = load i32, ptr %i.o, align 8, !tbaa !809 ; 3 uses
  %i.eg = load ptr, ptr %i.e, align 8, !tbaa !753
  %i.eh = call fastcc ptr @nk_draw_button(ptr noundef nonnull %i.dp, ptr noundef nonnull readonly %4, i32 noundef %i.ef, ptr noundef nonnull readonly %i.ck) ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !751
  %i.ej = icmp eq i32 %i.ei, 0
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 8744
  %.sroa.02.0.in.i = select i1 %i.ej, ptr %i.ek, ptr %i.el
  %.sroa.02.0.i = load i32, ptr %.sroa.02.0.in.i, align 8
  %i.em = and i32 %i.ef, 16
  %.not.i = icmp eq i32 %i.em, 0
  %i.en = and i32 %i.ef, 32
  %.not22.i = icmp eq i32 %i.en, 0
  %..i = select i1 %.not22.i, i64 132, i64 140
  %.sink.i = select i1 %.not.i, i64 %..i, i64 136
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.sink.i
  %.sroa.04.0.i = load i32, ptr %i.eo, align 4    ; 5 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8764
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !920 ; 4 uses
  %.sroa.5.0.extract.shift.i.i = lshr i32 %.sroa.04.0.i, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i.i = lshr i32 %.sroa.04.0.i, 16 ; 2 uses
  %i.er = fcmp oeq float %i.eq, 1.000000e+00
  br i1 %i.er, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.sroa.7.0.extract.trunc.i.i = trunc i32 %.sroa.7.0.extract.shift.i.i to i8
  %.sroa.5.0.extract.trunc.i.i = trunc i32 %.sroa.5.0.extract.shift.i.i to i8
  %.sroa.0.0.extract.trunc.i.i = trunc i32 %.sroa.04.0.i to i8
  br label %nk_draw_button_symbol.exit

bb.s:                                             ; preds = %bb.q
  %i.es = and i32 %.sroa.04.0.i, 255
  %i.et = uitofp nneg i32 %i.es to float
  %i.eu = fmul float %i.eq, %i.et
  %i.ev = fptoui float %i.eu to i8
  %i.ew = and i32 %.sroa.5.0.extract.shift.i.i, 255
  %i.ex = uitofp nneg i32 %i.ew to float
  %i.ey = fmul float %i.eq, %i.ex
  %i.ez = fptoui float %i.ey to i8
  %i.fa = and i32 %.sroa.7.0.extract.shift.i.i, 255
  %i.fb = uitofp nneg i32 %i.fa to float
  %i.fc = fmul float %i.eq, %i.fb
  %i.fd = fptoui float %i.fc to i8
  br label %nk_draw_button_symbol.exit

nk_draw_button_symbol.exit:                       ; preds = %bb.r, %bb.s
  %.sroa.3.0.i.i = phi i8 [ %.sroa.5.0.extract.trunc.i.i, %bb.r ], [ %i.ez, %bb.s ]
  %.sroa.011.0.i.i = phi i8 [ %.sroa.0.0.extract.trunc.i.i, %bb.r ], [ %i.ev, %bb.s ]
  %.sroa.512.0.i.i = phi i8 [ %.sroa.7.0.extract.trunc.i.i, %bb.r ], [ %i.fd, %bb.s ]
  %.sroa.9.0.extract.shift.i.i = and i32 %.sroa.04.0.i, -16777216
  %.sroa.512.0.insert.ext.i.i = zext i8 %.sroa.512.0.i.i to i32
  %.sroa.512.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.512.0.insert.ext.i.i, 16
  %.sroa.512.0.insert.insert.i.i = or disjoint i32 %.sroa.512.0.insert.shift.i.i, %.sroa.9.0.extract.shift.i.i
  %.sroa.3.0.insert.ext.i.i = zext i8 %.sroa.3.0.i.i to i32
  %.sroa.3.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.3.0.insert.ext.i.i, 8
  %.sroa.3.0.insert.insert.i.i = or disjoint i32 %.sroa.512.0.insert.insert.i.i, %.sroa.3.0.insert.shift.i.i
  %.sroa.011.0.insert.ext.i.i = zext i8 %.sroa.011.0.i.i to i32
  %.sroa.011.0.insert.insert.i.i = or disjoint i32 %.sroa.3.0.insert.insert.i.i, %.sroa.011.0.insert.ext.i.i
  tail call fastcc void @nk_draw_symbol(ptr noundef nonnull %i.dp, i32 noundef %.080, <2 x float> %i.cv, <2 x float> %i.dd, i32 %.sroa.02.0.i, i32 %.sroa.011.0.insert.insert.i.i, float noundef 1.000000e+00, ptr noundef %i.eg)
  br label %bb.t

bb.t:                                             ; preds = %nk_draw_button_symbol.exit, %nk_rgb_factor.exit153
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  %i.fe = load ptr, ptr %i.a, align 8, !tbaa !755 ; 2 uses
  %.not.i154 = icmp eq ptr %i.fe, null
  br i1 %.not.i154, label %nk_combo_begin.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 168
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !756
  %.not44.i = icmp eq ptr %i.fg, null
  br i1 %.not44.i, label %nk_combo_begin.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fh = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !814 ; 2 uses
  %foldExtExtBinop177 = fadd <2 x float> %i.p, %i.r
  %i.fj = extractelement <2 x float> %foldExtExtBinop177, i64 1
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 9612
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !1203
  %i.fm = fsub float %i.fj, %i.fl
  %.sroa.013.4.vec.insert.i = insertelement <2 x float> %i.p, float %i.fm, i64 1
  %i.fn = getelementptr inbounds nuw i8, ptr %i.b, i64 424 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !903 ; 3 uses
  %i.fp = add i32 %i.fo, 1
  store i32 %i.fp, ptr %i.fn, align 8, !tbaa !903
  %i.fq = icmp ne ptr %i.fi, null                 ; 3 uses
  br i1 %i.fq, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.fr = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !909
  %i.ft = icmp eq i32 %i.fs, %i.fo
  br i1 %i.ft, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fu = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !908
  %i.fw = icmp eq i32 %i.fv, 32
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %i.fx = phi i1 [ false, %bb.w ], [ false, %bb.v ], [ %i.fw, %bb.x ]
  %5 = icmp eq ptr %i.fi, null
  %or.cond45.i = select i1 %5, i1 true, i1 %i.fx
  %or.cond9.i = or i1 %i.s, %i.fq
  %or.cond46.i = and i1 %or.cond9.i, %or.cond45.i
  br i1 %or.cond46.i, label %bb.z, label %nk_combo_begin.exit

bb.z:                                             ; preds = %bb.y
  %or.cond.i = and i1 %i.s, %i.fq                 ; 2 uses
  %.sroa.3.0.i155 = select i1 %or.cond.i, <2 x float> zeroinitializer, <2 x float> %i.r
  %.sroa.0.0.i = select i1 %or.cond.i, <2 x float> zeroinitializer, <2 x float> %i.p
  %i.fy = tail call fastcc zeroext i1 @nk_nonblock_begin(ptr noundef nonnull %0, i32 noundef 0, <2 x float> %.sroa.013.4.vec.insert.i, <2 x float> %2, <2 x float> %.sroa.0.0.i, <2 x float> %.sroa.3.0.i155, i32 noundef 32)
  br i1 %i.fy, label %bb.aa, label %nk_combo_begin.exit

bb.aa:                                            ; preds = %bb.z
  %i.fz = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store i32 32, ptr %i.fz, align 8, !tbaa !908
  %i.ga = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  store i32 %i.fo, ptr %i.ga, align 8, !tbaa !909
  br label %nk_combo_begin.exit

nk_combo_begin.exit:                              ; preds = %bb.aa, %bb.z, %bb.y, %bb.u, %bb.t, %bb.d, %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ true, %bb.aa ], [ false, %bb.y ], [ false, %bb.t ], [ false, %bb.u ], [ false, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_combo_begin_symbol(ptr noundef %0, i32 noundef %1, <2 x float> %2) local_unnamed_addr #20 {
bb.a:
  %3 = alloca %struct.nk_rect, align 8            ; 5 uses
  %4 = alloca %struct.nk_rect, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_combo_begin.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !755  ; 12 uses
  %.not90 = icmp eq ptr %i.b, null
  br i1 %.not90, label %nk_combo_begin.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !756
  %.not91 = icmp eq ptr %i.d, null
  br i1 %.not91, label %nk_combo_begin.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.f = call i32 @nk_widget(ptr noundef nonnull %3, ptr noundef nonnull %0) ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %nk_combo_begin.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !756
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !845
  %i.k = and i32 %i.j, 4096
  %i.l = icmp ne i32 %i.k, 0
  %i.m = icmp ne i32 %i.f, 1
  %or.cond3 = or i1 %i.m, %i.l
  %i.n = select i1 %or.cond3, ptr null, ptr %0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 9880 ; 4 uses
  %i.p = load <2 x float>, ptr %3, align 8        ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load <2 x float>, ptr %i.q, align 8      ; 10 uses
  %i.s = tail call fastcc zeroext i1 @nk_button_behavior(ptr noundef %i.o, <2 x float> %i.p, <2 x float> %i.r, ptr noundef %i.n, i32 noundef 0) ; 3 uses
  %i.t = load i32, ptr %i.o, align 8, !tbaa !809  ; 2 uses
  %i.u = and i32 %i.t, 32
  %.not92 = icmp eq i32 %i.u, 0
  %i.v = extractelement <2 x float> %i.p, i64 1
  br i1 %.not92, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8544
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8608
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.y = and i32 %i.t, 16
  %.not93 = icmp eq i32 %i.y, 0
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8604 ; 2 uses
  br i1 %.not93, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8504
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8464
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.f
  %.sroa.013.0.in = phi ptr [ %i.x, %bb.f ], [ %i.z, %bb.h ], [ %i.z, %bb.i ]
  %.086 = phi ptr [ %i.w, %bb.f ], [ %i.aa, %bb.h ], [ %i.ab, %bb.i ] ; 4 uses
  %.sroa.013.0 = load i32, ptr %.sroa.013.0.in, align 4 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8876 ; 2 uses
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !980 ; 9 uses
  %.sroa.5.0.extract.shift.i = lshr i32 %.sroa.013.0, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i = lshr i32 %.sroa.013.0, 16 ; 2 uses
  %i.ae = fcmp oeq float %i.ad, 1.000000e+00      ; 4 uses
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.7.0.extract.trunc.i = trunc i32 %.sroa.7.0.extract.shift.i to i8
  %.sroa.5.0.extract.trunc.i = trunc i32 %.sroa.5.0.extract.shift.i to i8
  %.sroa.0.0.extract.trunc.i = trunc i32 %.sroa.013.0 to i8
  br label %nk_rgb_factor.exit

bb.l:                                             ; preds = %bb.j
  %i.af = and i32 %.sroa.013.0, 255
  %i.ag = uitofp nneg i32 %i.af to float
  %i.ah = fmul float %i.ad, %i.ag
  %i.ai = fptoui float %i.ah to i8
  %i.aj = and i32 %.sroa.5.0.extract.shift.i, 255
  %i.ak = uitofp nneg i32 %i.aj to float
  %i.al = fmul float %i.ad, %i.ak
  %i.am = fptoui float %i.al to i8
  %i.an = and i32 %.sroa.7.0.extract.shift.i, 255
  %i.ao = uitofp nneg i32 %i.an to float
  %i.ap = fmul float %i.ad, %i.ao
  %i.aq = fptoui float %i.ap to i8
  br label %nk_rgb_factor.exit

nk_rgb_factor.exit:                               ; preds = %bb.k, %bb.l
  %.sroa.3.0.i = phi i8 [ %.sroa.5.0.extract.trunc.i, %bb.k ], [ %i.am, %bb.l ]
  %.sroa.011.0.i = phi i8 [ %.sroa.0.0.extract.trunc.i, %bb.k ], [ %i.ai, %bb.l ]
  %.sroa.512.0.i = phi i8 [ %.sroa.7.0.extract.trunc.i, %bb.k ], [ %i.aq, %bb.l ]
  %.sroa.9.0.extract.shift.i = and i32 %.sroa.013.0, -16777216
  %.sroa.512.0.insert.ext.i = zext i8 %.sroa.512.0.i to i32
  %.sroa.512.0.insert.shift.i = shl nuw nsw i32 %.sroa.512.0.insert.ext.i, 16
  %.sroa.512.0.insert.insert.i = or disjoint i32 %.sroa.512.0.insert.shift.i, %.sroa.9.0.extract.shift.i
  %.sroa.3.0.insert.ext.i = zext i8 %.sroa.3.0.i to i32
  %.sroa.3.0.insert.shift.i = shl nuw nsw i32 %.sroa.3.0.insert.ext.i, 8
  %.sroa.3.0.insert.insert.i = or disjoint i32 %.sroa.512.0.insert.insert.i, %.sroa.3.0.insert.shift.i
  %.sroa.011.0.insert.ext.i = zext i8 %.sroa.011.0.i to i32
  %.sroa.011.0.insert.insert.i = or disjoint i32 %.sroa.3.0.insert.insert.i, %.sroa.011.0.insert.ext.i
  %i.ar = load i32, ptr %.086, align 8, !tbaa !751
  switch i32 %i.ar, label %bb.r [
    i32 1, label %nk_rgb_factor.exit108
    i32 2, label %nk_rgb_factor.exit120
    i32 0, label %bb.m
  ]

nk_rgb_factor.exit108:                            ; preds = %nk_rgb_factor.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.at = getelementptr inbounds nuw i8, ptr %.086, i64 8
  %i.au = fmul float %i.ad, 2.550000e+02
  %i.av = fptoui float %i.au to i8
  %i.aw = zext i8 %i.av to i32
  %.sroa.512.0.insert.ext.i100 = select i1 %i.ae, i32 255, i32 %i.aw ; 3 uses
  %.sroa.512.0.insert.shift.i101 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i100, 16
  %.sroa.3.0.insert.shift.i104 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i100, 8
  %.sroa.512.0.insert.insert.i102 = or disjoint i32 %.sroa.512.0.insert.shift.i101, %.sroa.3.0.insert.shift.i104
  %.sroa.3.0.insert.insert.i105 = or disjoint i32 %.sroa.512.0.insert.insert.i102, %.sroa.512.0.insert.ext.i100
  %.sroa.011.0.insert.insert.i107 = or disjoint i32 %.sroa.3.0.insert.insert.i105, -16777216
  tail call void @nk_draw_image(ptr noundef nonnull %i.as, <2 x float> %i.p, <2 x float> %i.r, ptr noundef nonnull %i.at, i32 %.sroa.011.0.insert.insert.i107)
  br label %bb.r

nk_rgb_factor.exit120:                            ; preds = %nk_rgb_factor.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ay = getelementptr inbounds nuw i8, ptr %.086, i64 8
  %i.az = fmul float %i.ad, 2.550000e+02
  %i.ba = fptoui float %i.az to i8
  %i.bb = zext i8 %i.ba to i32
  %.sroa.512.0.insert.ext.i112 = select i1 %i.ae, i32 255, i32 %i.bb ; 3 uses
  %.sroa.512.0.insert.shift.i113 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i112, 16
  %.sroa.3.0.insert.shift.i116 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i112, 8
  %.sroa.512.0.insert.insert.i114 = or disjoint i32 %.sroa.512.0.insert.shift.i113, %.sroa.3.0.insert.shift.i116
  %.sroa.3.0.insert.insert.i117 = or disjoint i32 %.sroa.512.0.insert.insert.i114, %.sroa.512.0.insert.ext.i112
  %.sroa.011.0.insert.insert.i119 = or disjoint i32 %.sroa.3.0.insert.insert.i117, -16777216
  tail call void @nk_draw_nine_slice(ptr noundef nonnull %i.ax, <2 x float> %i.p, <2 x float> %i.r, ptr noundef nonnull %i.ay, i32 %.sroa.011.0.insert.insert.i119)
  br label %bb.r

bb.m:                                             ; preds = %nk_rgb_factor.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %.086, i64 8
  %.sroa.017.0.copyload = load i32, ptr %i.bc, align 8 ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8848 ; 2 uses
  %i.bf = load float, ptr %i.be, align 8, !tbaa !1198
  %.sroa.5.0.extract.shift.i121 = lshr i32 %.sroa.017.0.copyload, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i122 = lshr i32 %.sroa.017.0.copyload, 16 ; 2 uses
  br i1 %i.ae, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.sroa.7.0.extract.trunc.i135 = trunc i32 %.sroa.7.0.extract.shift.i122 to i8
  %.sroa.5.0.extract.trunc.i136 = trunc i32 %.sroa.5.0.extract.shift.i121 to i8
  %.sroa.0.0.extract.trunc.i137 = trunc i32 %.sroa.017.0.copyload to i8
  br label %nk_rgb_factor.exit138

bb.o:                                             ; preds = %bb.m
  %i.bg = and i32 %.sroa.017.0.copyload, 255
  %i.bh = uitofp nneg i32 %i.bg to float
  %i.bi = fmul float %i.ad, %i.bh
  %i.bj = fptoui float %i.bi to i8
  %i.bk = and i32 %.sroa.5.0.extract.shift.i121, 255
  %i.bl = uitofp nneg i32 %i.bk to float
  %i.bm = fmul float %i.ad, %i.bl
  %i.bn = fptoui float %i.bm to i8
  %i.bo = and i32 %.sroa.7.0.extract.shift.i122, 255
  %i.bp = uitofp nneg i32 %i.bo to float
  %i.bq = fmul float %i.ad, %i.bp
  %i.br = fptoui float %i.bq to i8
  br label %nk_rgb_factor.exit138

nk_rgb_factor.exit138:                            ; preds = %bb.n, %bb.o
  %.sroa.3.0.i123 = phi i8 [ %.sroa.5.0.extract.trunc.i136, %bb.n ], [ %i.bn, %bb.o ]
  %.sroa.011.0.i124 = phi i8 [ %.sroa.0.0.extract.trunc.i137, %bb.n ], [ %i.bj, %bb.o ]
  %.sroa.512.0.i125 = phi i8 [ %.sroa.7.0.extract.trunc.i135, %bb.n ], [ %i.br, %bb.o ]
  %.sroa.9.0.extract.shift.i126 = and i32 %.sroa.017.0.copyload, -16777216
  %.sroa.512.0.insert.ext.i127 = zext i8 %.sroa.512.0.i125 to i32
  %.sroa.512.0.insert.shift.i128 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i127, 16
  %.sroa.512.0.insert.insert.i129 = or disjoint i32 %.sroa.512.0.insert.shift.i128, %.sroa.9.0.extract.shift.i126
  %.sroa.3.0.insert.ext.i130 = zext i8 %.sroa.3.0.i123 to i32
  %.sroa.3.0.insert.shift.i131 = shl nuw nsw i32 %.sroa.3.0.insert.ext.i130, 8
  %.sroa.3.0.insert.insert.i132 = or disjoint i32 %.sroa.512.0.insert.insert.i129, %.sroa.3.0.insert.shift.i131
  %.sroa.011.0.insert.ext.i133 = zext i8 %.sroa.011.0.i124 to i32
  %.sroa.011.0.insert.insert.i134 = or disjoint i32 %.sroa.3.0.insert.insert.i132, %.sroa.011.0.insert.ext.i133
  tail call void @nk_fill_rect(ptr noundef nonnull %i.bd, <2 x float> %i.p, <2 x float> %i.r, float noundef %i.bf, i32 %.sroa.011.0.insert.insert.i134)
  %i.bs = load float, ptr %i.be, align 8, !tbaa !1198
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8844
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !1199
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8584
  %i.bw = load float, ptr %i.ac, align 4, !tbaa !980 ; 4 uses
  %i.bx = load i32, ptr %i.bv, align 8            ; 5 uses
  %.sroa.5.0.extract.shift.i139 = lshr i32 %i.bx, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i140 = lshr i32 %i.bx, 16 ; 2 uses
  %i.by = fcmp oeq float %i.bw, 1.000000e+00
  br i1 %i.by, label %bb.p, label %bb.q

bb.p:                                             ; preds = %nk_rgb_factor.exit138
  %.sroa.7.0.extract.trunc.i153 = trunc i32 %.sroa.7.0.extract.shift.i140 to i8
  %.sroa.5.0.extract.trunc.i154 = trunc i32 %.sroa.5.0.extract.shift.i139 to i8
  %.sroa.0.0.extract.trunc.i155 = trunc i32 %i.bx to i8
  br label %nk_rgb_factor.exit156

bb.q:                                             ; preds = %nk_rgb_factor.exit138
  %i.bz = and i32 %i.bx, 255
  %i.ca = uitofp nneg i32 %i.bz to float
  %i.cb = fmul float %i.bw, %i.ca
  %i.cc = fptoui float %i.cb to i8
  %i.cd = and i32 %.sroa.5.0.extract.shift.i139, 255
  %i.ce = uitofp nneg i32 %i.cd to float
  %i.cf = fmul float %i.bw, %i.ce
  %i.cg = fptoui float %i.cf to i8
  %i.ch = and i32 %.sroa.7.0.extract.shift.i140, 255
  %i.ci = uitofp nneg i32 %i.ch to float
  %i.cj = fmul float %i.bw, %i.ci
  %i.ck = fptoui float %i.cj to i8
  br label %nk_rgb_factor.exit156

nk_rgb_factor.exit156:                            ; preds = %bb.p, %bb.q
  %.sroa.3.0.i141 = phi i8 [ %.sroa.5.0.extract.trunc.i154, %bb.p ], [ %i.cg, %bb.q ]
  %.sroa.011.0.i142 = phi i8 [ %.sroa.0.0.extract.trunc.i155, %bb.p ], [ %i.cc, %bb.q ]
  %.sroa.512.0.i143 = phi i8 [ %.sroa.7.0.extract.trunc.i153, %bb.p ], [ %i.ck, %bb.q ]
  %.sroa.9.0.extract.shift.i144 = and i32 %i.bx, -16777216
  %.sroa.512.0.insert.ext.i145 = zext i8 %.sroa.512.0.i143 to i32
  %.sroa.512.0.insert.shift.i146 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i145, 16
  %.sroa.512.0.insert.insert.i147 = or disjoint i32 %.sroa.512.0.insert.shift.i146, %.sroa.9.0.extract.shift.i144
  %.sroa.3.0.insert.ext.i148 = zext i8 %.sroa.3.0.i141 to i32
  %.sroa.3.0.insert.shift.i149 = shl nuw nsw i32 %.sroa.3.0.insert.ext.i148, 8
  %.sroa.3.0.insert.insert.i150 = or disjoint i32 %.sroa.512.0.insert.insert.i147, %.sroa.3.0.insert.shift.i149
  %.sroa.011.0.insert.ext.i151 = zext i8 %.sroa.011.0.i142 to i32
  %.sroa.011.0.insert.insert.i152 = or disjoint i32 %.sroa.3.0.insert.insert.i150, %.sroa.011.0.insert.ext.i151
  tail call void @nk_stroke_rect(ptr noundef nonnull %i.bd, <2 x float> %i.p, <2 x float> %i.r, float noundef %i.bs, float noundef %i.bu, i32 %.sroa.011.0.insert.insert.i152)
  br label %bb.r

bb.r:                                             ; preds = %nk_rgb_factor.exit156, %nk_rgb_factor.exit120, %nk_rgb_factor.exit108, %nk_rgb_factor.exit
  %.sroa.017.0 = phi i32 [ undef, %nk_rgb_factor.exit ], [ 0, %nk_rgb_factor.exit108 ], [ 0, %nk_rgb_factor.exit120 ], [ %.sroa.017.0.copyload, %nk_rgb_factor.exit156 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  %i.cl = load i32, ptr %i.o, align 8, !tbaa !809
  %i.cm = and i32 %i.cl, 16
  %.not94 = icmp eq i32 %i.cm, 0
  %. = select i1 %i.s, i64 8840, i64 8832
  %.sink = select i1 %.not94, i64 %., i64 8836
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %.0 = load i32, ptr %i.cn, align 4, !tbaa !10
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8864
  %i.cp = load float, ptr %i.co, align 8, !tbaa !1200 ; 3 uses
  %foldExtExtBinop = fadd <2 x float> %i.p, %i.r
  %shift = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop174 = fsub <2 x float> %foldExtExtBinop, %shift
  %i.cq = extractelement <2 x float> %foldExtExtBinop174, i64 0
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8616 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8776
  %i.ct = load <2 x float>, ptr %i.cs, align 8, !tbaa !8 ; 2 uses
  %i.cu = fadd float %i.cp, %i.v
  %i.cv = fsub float %i.cq, %i.cp                 ; 2 uses
  %i.cw = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.cx = insertelement <2 x float> %i.cw, float %i.cu, i64 1
  %i.cy = fadd <2 x float> %i.ct, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8852
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8856
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.dc = load float, ptr %i.da, align 8, !tbaa !1204 ; 2 uses
  %i.dd = load <2 x float>, ptr %i.cz, align 4, !tbaa !8
  %i.de = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.df = insertelement <2 x float> %i.de, float %i.dc, i64 1
  %i.dg = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.df, <2 x float> splat (float -2.000000e+00), <2 x float> %i.dg) ; 2 uses
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ct, <2 x float> splat (float -2.000000e+00), <2 x float> %i.di)
  %i.dk = extractelement <2 x float> %i.dh, i64 1
  store float %i.dk, ptr %i.db, align 4, !tbaa !132
  %i.dl = fadd <2 x float> %i.p, %i.dd            ; 3 uses
  store <2 x float> %i.dl, ptr %4, align 8, !tbaa !8
  %i.dm = fsub float %i.cv, %i.dc
  %i.dn = extractelement <2 x float> %i.dl, i64 0
  %i.do = fsub float %i.dm, %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store float %i.do, ptr %i.dp, align 8, !tbaa !130
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 3 uses
  %i.dr = load ptr, ptr %i.e, align 8, !tbaa !753
  %i.ds = load <2 x float>, ptr %i.dp, align 8
  tail call fastcc void @nk_draw_symbol(ptr noundef %i.dq, i32 noundef %1, <2 x float> %i.dl, <2 x float> %i.ds, i32 %.sroa.017.0, i32 %.sroa.011.0.insert.insert.i, float noundef 1.000000e+00, ptr noundef %i.dr)
  %i.dt = load i32, ptr %i.o, align 8, !tbaa !809 ; 3 uses
  %i.du = load ptr, ptr %i.e, align 8, !tbaa !753
  %i.dv = call fastcc ptr @nk_draw_button(ptr noundef nonnull %i.dq, ptr noundef nonnull readonly %4, i32 noundef %i.dt, ptr noundef nonnull readonly %i.cr) ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !751
  %i.dx = icmp eq i32 %i.dw, 0
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8744
  %.sroa.02.0.in.i = select i1 %i.dx, ptr %i.dy, ptr %i.dz
  %.sroa.02.0.i = load i32, ptr %.sroa.02.0.in.i, align 8
  %i.ea = and i32 %i.dt, 16
  %.not.i = icmp eq i32 %i.ea, 0
  %i.eb = and i32 %i.dt, 32
  %.not22.i = icmp eq i32 %i.eb, 0
  %..i = select i1 %.not22.i, i64 132, i64 140
  %.sink.i = select i1 %.not.i, i64 %..i, i64 136
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.sink.i
  %.sroa.04.0.i = load i32, ptr %i.ec, align 4    ; 5 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8764
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !920 ; 4 uses
  %.sroa.5.0.extract.shift.i.i = lshr i32 %.sroa.04.0.i, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i.i = lshr i32 %.sroa.04.0.i, 16 ; 2 uses
  %i.ef = fcmp oeq float %i.ee, 1.000000e+00
  br i1 %i.ef, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %.sroa.7.0.extract.trunc.i.i = trunc i32 %.sroa.7.0.extract.shift.i.i to i8
  %.sroa.5.0.extract.trunc.i.i = trunc i32 %.sroa.5.0.extract.shift.i.i to i8
  %.sroa.0.0.extract.trunc.i.i = trunc i32 %.sroa.04.0.i to i8
  br label %nk_draw_button_symbol.exit

bb.t:                                             ; preds = %bb.r
  %i.eg = and i32 %.sroa.04.0.i, 255
  %i.eh = uitofp nneg i32 %i.eg to float
  %i.ei = fmul float %i.ee, %i.eh
  %i.ej = fptoui float %i.ei to i8
  %i.ek = and i32 %.sroa.5.0.extract.shift.i.i, 255
  %i.el = uitofp nneg i32 %i.ek to float
  %i.em = fmul float %i.ee, %i.el
  %i.en = fptoui float %i.em to i8
  %i.eo = and i32 %.sroa.7.0.extract.shift.i.i, 255
  %i.ep = uitofp nneg i32 %i.eo to float
  %i.eq = fmul float %i.ee, %i.ep
  %i.er = fptoui float %i.eq to i8
  br label %nk_draw_button_symbol.exit

nk_draw_button_symbol.exit:                       ; preds = %bb.s, %bb.t
  %.sroa.3.0.i.i = phi i8 [ %.sroa.5.0.extract.trunc.i.i, %bb.s ], [ %i.en, %bb.t ]
  %.sroa.011.0.i.i = phi i8 [ %.sroa.0.0.extract.trunc.i.i, %bb.s ], [ %i.ej, %bb.t ]
  %.sroa.512.0.i.i = phi i8 [ %.sroa.7.0.extract.trunc.i.i, %bb.s ], [ %i.er, %bb.t ]
  %.sroa.9.0.extract.shift.i.i = and i32 %.sroa.04.0.i, -16777216
  %.sroa.512.0.insert.ext.i.i = zext i8 %.sroa.512.0.i.i to i32
  %.sroa.512.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.512.0.insert.ext.i.i, 16
  %.sroa.512.0.insert.insert.i.i = or disjoint i32 %.sroa.512.0.insert.shift.i.i, %.sroa.9.0.extract.shift.i.i
  %.sroa.3.0.insert.ext.i.i = zext i8 %.sroa.3.0.i.i to i32
  %.sroa.3.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.3.0.insert.ext.i.i, 8
  %.sroa.3.0.insert.insert.i.i = or disjoint i32 %.sroa.512.0.insert.insert.i.i, %.sroa.3.0.insert.shift.i.i
  %.sroa.011.0.insert.ext.i.i = zext i8 %.sroa.011.0.i.i to i32
  %.sroa.011.0.insert.insert.i.i = or disjoint i32 %.sroa.3.0.insert.insert.i.i, %.sroa.011.0.insert.ext.i.i
  tail call fastcc void @nk_draw_symbol(ptr noundef nonnull %i.dq, i32 noundef %.0, <2 x float> %i.cy, <2 x float> %i.dj, i32 %.sroa.02.0.i, i32 %.sroa.011.0.insert.insert.i.i, float noundef 1.000000e+00, ptr noundef %i.du)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  %i.es = load ptr, ptr %i.a, align 8, !tbaa !755 ; 2 uses
  %.not.i157 = icmp eq ptr %i.es, null
  br i1 %.not.i157, label %nk_combo_begin.exit, label %bb.u

bb.u:                                             ; preds = %nk_draw_button_symbol.exit
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 168
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !756
  %.not44.i = icmp eq ptr %i.eu, null
  br i1 %.not44.i, label %nk_combo_begin.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !814 ; 2 uses
  %foldExtExtBinop176 = fadd <2 x float> %i.p, %i.r
  %i.ex = extractelement <2 x float> %foldExtExtBinop176, i64 1
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 9612
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !1203
  %i.fa = fsub float %i.ex, %i.ez
  %.sroa.013.4.vec.insert.i = insertelement <2 x float> %i.p, float %i.fa, i64 1
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 424 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !903 ; 3 uses
  %i.fd = add i32 %i.fc, 1
  store i32 %i.fd, ptr %i.fb, align 8, !tbaa !903
  %i.fe = icmp ne ptr %i.ew, null                 ; 3 uses
  br i1 %i.fe, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.ff = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !909
  %i.fh = icmp eq i32 %i.fg, %i.fc
  br i1 %i.fh, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fi = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !908
  %i.fk = icmp eq i32 %i.fj, 32
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %i.fl = phi i1 [ false, %bb.w ], [ false, %bb.v ], [ %i.fk, %bb.x ]
  %5 = icmp eq ptr %i.ew, null
  %or.cond45.i = select i1 %5, i1 true, i1 %i.fl
  %or.cond9.i = or i1 %i.s, %i.fe
  %or.cond46.i = and i1 %or.cond9.i, %or.cond45.i
  br i1 %or.cond46.i, label %bb.z, label %nk_combo_begin.exit

bb.z:                                             ; preds = %bb.y
  %or.cond.i = and i1 %i.s, %i.fe                 ; 2 uses
  %.sroa.3.0.i158 = select i1 %or.cond.i, <2 x float> zeroinitializer, <2 x float> %i.r
  %.sroa.0.0.i = select i1 %or.cond.i, <2 x float> zeroinitializer, <2 x float> %i.p
  %i.fm = tail call fastcc zeroext i1 @nk_nonblock_begin(ptr noundef nonnull %0, i32 noundef 0, <2 x float> %.sroa.013.4.vec.insert.i, <2 x float> %2, <2 x float> %.sroa.0.0.i, <2 x float> %.sroa.3.0.i158, i32 noundef 32)
  br i1 %i.fm, label %bb.aa, label %nk_combo_begin.exit

bb.aa:                                            ; preds = %bb.z
  %i.fn = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store i32 32, ptr %i.fn, align 8, !tbaa !908
  %i.fo = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  store i32 %i.fc, ptr %i.fo, align 8, !tbaa !909
  br label %nk_combo_begin.exit

nk_combo_begin.exit:                              ; preds = %bb.aa, %bb.z, %bb.y, %bb.u, %nk_draw_button_symbol.exit, %bb.d, %bb.a, %bb.b, %bb.c
  %.084 = phi i1 [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ true, %bb.aa ], [ false, %bb.y ], [ false, %nk_draw_button_symbol.exit ], [ false, %bb.u ], [ false, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  ret i1 %.084
}

; Function Attrs: nounwind uwtable
define internal fastcc void @nk_draw_symbol(ptr nofree noundef nonnull captures(address_is_null) %0, i32 noundef %1, <2 x float> %2, <2 x float> %3, i32 %4, i32 %5, float noundef nofpclass(nan inf nzero sub nnorm) %6, ptr noundef %7) unnamed_addr #20 {
bb.a:
  %8 = alloca %struct.nk_text, align 8            ; 6 uses
  switch i32 %1, label %bb.s [
    i32 16, label %bb.n
    i32 15, label %bb.n
    i32 14, label %bb.n
    i32 13, label %bb.n
    i32 3, label %bb.d
    i32 4, label %bb.d
    i32 5, label %bb.d
    i32 6, label %bb.d
    i32 7, label %bb.i
    i32 8, label %bb.i
    i32 9, label %bb.i
    i32 10, label %bb.i
    i32 1, label %bb.c
    i32 2, label %bb.b
    i32 11, label %bb.b
    i32 12, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.a = icmp eq i32 %1, 2
  %i.b = icmp eq i32 %1, 11
  %i.c = select i1 %i.b, ptr @.str.62, ptr @.str.63
  %i.d = select i1 %i.a, ptr @.str.61, ptr %i.c
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.d, %bb.b ], [ @.str.60, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #50
  store <2 x float> zeroinitializer, ptr %8, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %4, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 %5, ptr %i.g, align 4
  call fastcc void @nk_widget_text(ptr noundef nonnull %0, <2 x float> %2, <2 x float> %3, ptr noundef %i.e, i32 noundef 1, ptr noundef %8, i32 noundef 18, ptr noundef %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #50
  br label %bb.s

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.h = add nsw i32 %1, -5
  %or.cond = icmp ult i32 %i.h, 2
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.i = icmp eq i32 %1, 6
  tail call void @nk_fill_rect(ptr noundef nonnull %0, <2 x float> %2, <2 x float> %3, float noundef 0.000000e+00, i32 %5)
  br i1 %i.i, label %bb.f, label %bb.s

bb.f:                                             ; preds = %bb.e
  %i.j = fmul nnan float %6, 2.000000e+00
  %i.k = insertelement <2 x float> poison, float %6, i64 0
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.m = fadd <2 x float> %2, %i.l
  %i.n = insertelement <2 x float> poison, float %i.j, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.p = fcmp olt <2 x float> %3, %i.o
  %i.q = select <2 x i1> %i.p, <2 x float> %i.o, <2 x float> %3
  %i.r = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.l, <2 x float> splat (float -2.000000e+00), <2 x float> %i.q)
  tail call void @nk_fill_rect(ptr noundef nonnull %0, <2 x float> %i.m, <2 x float> %i.r, float noundef 0.000000e+00, i32 %4)
  br label %bb.s

bb.g:                                             ; preds = %bb.d
  tail call void @nk_fill_circle(ptr noundef nonnull %0, <2 x float> %2, <2 x float> %3, i32 %5)
  %i.s = icmp eq i32 %1, 4
  br i1 %i.s, label %bb.h, label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.t = fadd <2 x float> %2, splat (float 1.000000e+00)
  %i.u = fcmp olt <2 x float> %3, splat (float 2.000000e+00)
  %i.v = select <2 x i1> %i.u, <2 x float> splat (float 2.000000e+00), <2 x float> %3
  %i.w = fadd <2 x float> %i.v, splat (float -2.000000e+00)
  tail call void @nk_fill_circle(ptr noundef nonnull %0, <2 x float> %i.t, <2 x float> %i.w, i32 %4)
  br label %bb.s

bb.i:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.x = icmp eq i32 %1, 10
  %i.y = icmp eq i32 %1, 9
  %i.z = icmp eq i32 %1, 7
  %i.aa = select i1 %i.z, i32 0, i32 2
  %i.ab = select i1 %i.y, i32 3, i32 %i.aa
  %i.ac = select i1 %i.x, i32 1, i32 %i.ab
  %i.ad = fcmp ogt <2 x float> %3, zeroinitializer
  %i.ae = select <2 x i1> %i.ad, <2 x float> %3, <2 x float> zeroinitializer ; 8 uses
  %i.af = fadd <2 x float> %2, zeroinitializer    ; 16 uses
  %i.ag = extractelement <2 x float> %i.ae, i64 0
  %i.ah = fmul float %i.ag, 5.000000e-01          ; 2 uses
  %i.ai = extractelement <2 x float> %i.ae, i64 1
  %i.aj = fmul float %i.ai, 5.000000e-01          ; 2 uses
  switch i32 %i.ac, label %default.unreachable [
    i32 0, label %bb.j
    i32 1, label %bb.k
    i32 2, label %bb.l
    i32 3, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i
  %i.ak = extractelement <2 x float> %i.af, i64 0
  %i.al = fadd float %i.ak, %i.ah
  %i.am = insertelement <2 x float> %i.af, float %i.al, i64 0
  %i.an = fadd <2 x float> %i.af, %i.ae           ; 2 uses
  %i.ao = shufflevector <2 x float> %i.af, <2 x float> %i.an, <2 x i32> <i32 0, i32 3>
  br label %nk_triangle_from_direction.exit

bb.k:                                             ; preds = %bb.i
  %i.ap = insertelement <2 x float> %i.ae, float %i.aj, i64 1
  %i.aq = fadd <2 x float> %i.af, %i.ap
  %foldExtExtBinop = fadd <2 x float> %i.af, %i.ae
  %.sroa.0.4.vec.insert.i135.i = shufflevector <2 x float> %i.af, <2 x float> %foldExtExtBinop, <2 x i32> <i32 0, i32 3>
  br label %nk_triangle_from_direction.exit

bb.l:                                             ; preds = %bb.i
  %foldExtExtBinop91 = fadd <2 x float> %i.af, %i.ae
  %i.ar = shufflevector <2 x float> %foldExtExtBinop91, <2 x float> %i.af, <2 x i32> <i32 0, i32 3>
  %i.as = insertelement <2 x float> %i.ae, float %i.ah, i64 0
  %i.at = fadd <2 x float> %i.af, %i.as
  br label %nk_triangle_from_direction.exit

default.unreachable:                              ; preds = %bb.n, %bb.i
  unreachable

bb.m:                                             ; preds = %bb.i
  %i.au = extractelement <2 x float> %i.af, i64 1
  %i.av = fadd float %i.au, %i.aj
  %.sroa.0.4.vec.insert.i143.i = insertelement <2 x float> %i.af, float %i.av, i64 1
  %i.aw = fadd <2 x float> %i.af, %i.ae           ; 2 uses
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> %i.af, <2 x i32> <i32 0, i32 3>
  br label %nk_triangle_from_direction.exit

nk_triangle_from_direction.exit:                  ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %.sroa.1488.0 = phi <2 x float> [ %i.aw, %bb.m ], [ %i.ao, %bb.j ], [ %.sroa.0.4.vec.insert.i135.i, %bb.k ], [ %i.at, %bb.l ] ; 2 uses
  %.sroa.887.0 = phi <2 x float> [ %i.ax, %bb.m ], [ %i.an, %bb.j ], [ %i.aq, %bb.k ], [ %i.ar, %bb.l ] ; 2 uses
  %.sroa.086.0 = phi <2 x float> [ %.sroa.0.4.vec.insert.i143.i, %bb.m ], [ %i.am, %bb.j ], [ %i.af, %bb.k ], [ %i.af, %bb.l ] ; 2 uses
  %.sroa.086.0.vec.extract = extractelement <2 x float> %.sroa.086.0, i64 0
  %.sroa.086.4.vec.extract = extractelement <2 x float> %.sroa.086.0, i64 1
  %.sroa.887.8.vec.extract = extractelement <2 x float> %.sroa.887.0, i64 0
  %.sroa.887.12.vec.extract = extractelement <2 x float> %.sroa.887.0, i64 1
  %.sroa.1488.16.vec.extract = extractelement <2 x float> %.sroa.1488.0, i64 0
  %.sroa.1488.20.vec.extract = extractelement <2 x float> %.sroa.1488.0, i64 1
  tail call void @nk_fill_triangle(ptr noundef nonnull %0, float noundef %.sroa.086.0.vec.extract, float noundef %.sroa.086.4.vec.extract, float noundef %.sroa.887.8.vec.extract, float noundef %.sroa.887.12.vec.extract, float noundef %.sroa.1488.16.vec.extract, float noundef %.sroa.1488.20.vec.extract, i32 %5)
  br label %bb.s

bb.n:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.ay = icmp eq i32 %1, 16
  %i.az = icmp eq i32 %1, 15
  %i.ba = icmp eq i32 %1, 13
  %i.bb = select i1 %i.ba, i32 0, i32 2
  %i.bc = select i1 %i.az, i32 3, i32 %i.bb
  %i.bd = select i1 %i.ay, i32 1, i32 %i.bc
  %i.be = fcmp ogt <2 x float> %3, zeroinitializer
  %i.bf = select <2 x i1> %i.be, <2 x float> %3, <2 x float> zeroinitializer ; 8 uses
  %i.bg = fadd <2 x float> %2, zeroinitializer    ; 16 uses
  %i.bh = extractelement <2 x float> %i.bf, i64 0
  %i.bi = fmul float %i.bh, 5.000000e-01          ; 2 uses
  %i.bj = extractelement <2 x float> %i.bf, i64 1
  %i.bk = fmul float %i.bj, 5.000000e-01          ; 2 uses
  switch i32 %i.bd, label %default.unreachable [
    i32 0, label %bb.o
    i32 1, label %bb.p
    i32 2, label %bb.q
    i32 3, label %bb.r
  ]

bb.o:                                             ; preds = %bb.n
  %i.bl = extractelement <2 x float> %i.bg, i64 0
  %i.bm = fadd float %i.bl, %i.bi
  %i.bn = insertelement <2 x float> %i.bg, float %i.bm, i64 0
  %i.bo = fadd <2 x float> %i.bg, %i.bf           ; 2 uses
  %i.bp = shufflevector <2 x float> %i.bg, <2 x float> %i.bo, <2 x i32> <i32 0, i32 3>
  br label %nk_triangle_from_direction.exit85

bb.p:                                             ; preds = %bb.n
end_hunk_3
begin_hunk_4_@nk_combo_begin_symbol_text:bb.a
  %i.cf = fmul float %i.ac, %i.ce
  %i.cg = fptoui float %i.cf to i8
  br label %nk_rgb_factor.exit178

nk_rgb_factor.exit178:                            ; preds = %bb.m, %bb.n
  %.sroa.3.0.i163 = phi i8 [ %.sroa.5.0.extract.trunc.i176, %bb.m ], [ %i.cc, %bb.n ]
  %.sroa.011.0.i164 = phi i8 [ %.sroa.0.0.extract.trunc.i177, %bb.m ], [ %i.by, %bb.n ]
  %.sroa.512.0.i165 = phi i8 [ %.sroa.7.0.extract.trunc.i175, %bb.m ], [ %i.cg, %bb.n ]
  %.sroa.9.0.extract.shift.i166 = and i32 %i.br, -16777216
  %.sroa.512.0.insert.ext.i167 = zext i8 %.sroa.512.0.i165 to i32
  %.sroa.512.0.insert.shift.i168 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i167, 16
  %.sroa.512.0.insert.insert.i169 = or disjoint i32 %.sroa.512.0.insert.shift.i168, %.sroa.9.0.extract.shift.i166
  %.sroa.3.0.insert.ext.i170 = zext i8 %.sroa.3.0.i163 to i32
  %.sroa.3.0.insert.shift.i171 = shl nuw nsw i32 %.sroa.3.0.insert.ext.i170, 8
  %.sroa.3.0.insert.insert.i172 = or disjoint i32 %.sroa.512.0.insert.insert.i169, %.sroa.3.0.insert.shift.i171
  %.sroa.011.0.insert.ext.i173 = zext i8 %.sroa.011.0.i164 to i32
  %.sroa.011.0.insert.insert.i174 = or disjoint i32 %.sroa.3.0.insert.insert.i172, %.sroa.011.0.insert.ext.i173
  tail call void @nk_fill_rect(ptr noundef nonnull %i.bs, <2 x float> %i.o, <2 x float> %i.q, float noundef %i.bu, i32 %.sroa.011.0.insert.insert.i174)
  %i.ch = load float, ptr %i.bt, align 8, !tbaa !1198
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8844
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !1199
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8584
  %i.cl = load float, ptr %i.ab, align 4, !tbaa !980 ; 4 uses
  %i.cm = load i32, ptr %i.ck, align 8            ; 5 uses
  %.sroa.5.0.extract.shift.i179 = lshr i32 %i.cm, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i180 = lshr i32 %i.cm, 16 ; 2 uses
  %i.cn = fcmp oeq float %i.cl, 1.000000e+00
  br i1 %i.cn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %nk_rgb_factor.exit178
  %.sroa.7.0.extract.trunc.i193 = trunc i32 %.sroa.7.0.extract.shift.i180 to i8
  %.sroa.5.0.extract.trunc.i194 = trunc i32 %.sroa.5.0.extract.shift.i179 to i8
  %.sroa.0.0.extract.trunc.i195 = trunc i32 %i.cm to i8
  br label %nk_rgb_factor.exit196

bb.p:                                             ; preds = %nk_rgb_factor.exit178
  %i.co = and i32 %i.cm, 255
  %i.cp = uitofp nneg i32 %i.co to float
  %i.cq = fmul float %i.cl, %i.cp
  %i.cr = fptoui float %i.cq to i8
  %i.cs = and i32 %.sroa.5.0.extract.shift.i179, 255
  %i.ct = uitofp nneg i32 %i.cs to float
  %i.cu = fmul float %i.cl, %i.ct
  %i.cv = fptoui float %i.cu to i8
  %i.cw = and i32 %.sroa.7.0.extract.shift.i180, 255
  %i.cx = uitofp nneg i32 %i.cw to float
  %i.cy = fmul float %i.cl, %i.cx
  %i.cz = fptoui float %i.cy to i8
  br label %nk_rgb_factor.exit196

nk_rgb_factor.exit196:                            ; preds = %bb.o, %bb.p
  %.sroa.3.0.i181 = phi i8 [ %.sroa.5.0.extract.trunc.i194, %bb.o ], [ %i.cv, %bb.p ]
  %.sroa.011.0.i182 = phi i8 [ %.sroa.0.0.extract.trunc.i195, %bb.o ], [ %i.cr, %bb.p ]
  %.sroa.512.0.i183 = phi i8 [ %.sroa.7.0.extract.trunc.i193, %bb.o ], [ %i.cz, %bb.p ]
  %.sroa.9.0.extract.shift.i184 = and i32 %i.cm, -16777216
  %.sroa.512.0.insert.ext.i185 = zext i8 %.sroa.512.0.i183 to i32
  %.sroa.512.0.insert.shift.i186 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i185, 16
  %.sroa.512.0.insert.insert.i187 = or disjoint i32 %.sroa.512.0.insert.shift.i186, %.sroa.9.0.extract.shift.i184
  %.sroa.3.0.insert.ext.i188 = zext i8 %.sroa.3.0.i181 to i32
  %.sroa.3.0.insert.shift.i189 = shl nuw nsw i32 %.sroa.3.0.insert.ext.i188, 8
  %.sroa.3.0.insert.insert.i190 = or disjoint i32 %.sroa.512.0.insert.insert.i187, %.sroa.3.0.insert.shift.i189
  %.sroa.011.0.insert.ext.i191 = zext i8 %.sroa.011.0.i182 to i32
  %.sroa.011.0.insert.insert.i192 = or disjoint i32 %.sroa.3.0.insert.insert.i190, %.sroa.011.0.insert.ext.i191
  tail call void @nk_stroke_rect(ptr noundef nonnull %i.bs, <2 x float> %i.o, <2 x float> %i.q, float noundef %i.ch, float noundef %i.cj, i32 %.sroa.011.0.insert.insert.i192)
  br label %bb.q

bb.q:                                             ; preds = %nk_rgb_factor.exit196, %nk_rgb_factor.exit160, %nk_rgb_factor.exit148, %nk_rgb_factor.exit136
  %i.da = phi i32 [ %i.br, %nk_rgb_factor.exit196 ], [ 0, %nk_rgb_factor.exit160 ], [ 0, %nk_rgb_factor.exit148 ], [ undef, %nk_rgb_factor.exit136 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #50
  %i.db = load i32, ptr %i.n, align 8, !tbaa !809 ; 3 uses
  %i.dc = and i32 %i.db, 16
  %.not116 = icmp eq i32 %i.dc, 0                 ; 2 uses
  %. = select i1 %i.r, i64 8840, i64 8832
  %.sink = select i1 %.not116, i64 %., i64 8836
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %.0105 = load i32, ptr %i.dd, align 4, !tbaa !10
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8860
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8864
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %foldExtExtBinop = fadd <2 x float> %i.o, %i.q
  %i.dh = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.di = fsub float %i.dh, %i.u
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8616 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8776
  %i.dn = load <2 x float>, ptr %i.dm, align 8, !tbaa !8 ; 2 uses
  %i.do = load float, ptr %i.df, align 8, !tbaa !1200
  %i.dp = load <2 x float>, ptr %i.de, align 4, !tbaa !8 ; 2 uses
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.do, float -2.000000e+00, float %i.u) ; 3 uses
  store float %i.dq, ptr %i.dg, align 4, !tbaa !130
  %i.dr = insertelement <2 x float> %i.o, float %i.di, i64 0 ; 2 uses
  %i.ds = fsub <2 x float> %i.dr, %i.dp           ; 2 uses
  %i.dt = fadd <2 x float> %i.dr, %i.dp           ; 2 uses
  %i.du = shufflevector <2 x float> %i.ds, <2 x float> %i.dt, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.dv = extractelement <2 x float> %i.ds, i64 0
  store float %i.dv, ptr %7, align 4, !tbaa !129
  %i.dw = extractelement <2 x float> %i.dt, i64 1
  store float %i.dw, ptr %i.dj, align 4, !tbaa !131
  store float %i.dq, ptr %i.dk, align 4, !tbaa !132
  %i.dx = fadd <2 x float> %i.du, %i.dn
  %i.dy = insertelement <2 x float> poison, float %i.dq, i64 0
  %i.dz = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ea = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dn, <2 x float> splat (float -2.000000e+00), <2 x float> %i.dz)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 4 uses
  %i.ec = load ptr, ptr %i.e, align 8, !tbaa !753
  %i.ed = call fastcc ptr @nk_draw_button(ptr noundef nonnull %i.eb, ptr noundef nonnull readonly %7, i32 noundef %i.db, ptr noundef nonnull readonly %i.dl) ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !751
  %i.ef = icmp eq i32 %i.ee, 0
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8744
  %.sroa.02.0.in.i = select i1 %i.ef, ptr %i.eg, ptr %i.eh
  %.sroa.02.0.i = load i32, ptr %.sroa.02.0.in.i, align 8
  %i.ei = and i32 %i.db, 32
  %.not22.i = icmp eq i32 %i.ei, 0
  %..i = select i1 %.not22.i, i64 132, i64 140
  %.sink.i = select i1 %.not116, i64 %..i, i64 136
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.sink.i
  %.sroa.04.0.i = load i32, ptr %i.ej, align 4    ; 5 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8764
  %i.el = load float, ptr %i.ek, align 4, !tbaa !920 ; 4 uses
  %.sroa.5.0.extract.shift.i.i = lshr i32 %.sroa.04.0.i, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i.i = lshr i32 %.sroa.04.0.i, 16 ; 2 uses
  %i.em = fcmp oeq float %i.el, 1.000000e+00
  br i1 %i.em, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.sroa.7.0.extract.trunc.i.i = trunc i32 %.sroa.7.0.extract.shift.i.i to i8
  %.sroa.5.0.extract.trunc.i.i = trunc i32 %.sroa.5.0.extract.shift.i.i to i8
  %.sroa.0.0.extract.trunc.i.i = trunc i32 %.sroa.04.0.i to i8
  br label %nk_draw_button_symbol.exit

bb.s:                                             ; preds = %bb.q
  %i.en = and i32 %.sroa.04.0.i, 255
  %i.eo = uitofp nneg i32 %i.en to float
  %i.ep = fmul float %i.el, %i.eo
  %i.eq = fptoui float %i.ep to i8
  %i.er = and i32 %.sroa.5.0.extract.shift.i.i, 255
  %i.es = uitofp nneg i32 %i.er to float
  %i.et = fmul float %i.el, %i.es
  %i.eu = fptoui float %i.et to i8
  %i.ev = and i32 %.sroa.7.0.extract.shift.i.i, 255
  %i.ew = uitofp nneg i32 %i.ev to float
  %i.ex = fmul float %i.el, %i.ew
  %i.ey = fptoui float %i.ex to i8
  br label %nk_draw_button_symbol.exit

nk_draw_button_symbol.exit:                       ; preds = %bb.r, %bb.s
  %.sroa.3.0.i.i = phi i8 [ %.sroa.5.0.extract.trunc.i.i, %bb.r ], [ %i.eu, %bb.s ]
  %.sroa.011.0.i.i = phi i8 [ %.sroa.0.0.extract.trunc.i.i, %bb.r ], [ %i.eq, %bb.s ]
  %.sroa.512.0.i.i = phi i8 [ %.sroa.7.0.extract.trunc.i.i, %bb.r ], [ %i.ey, %bb.s ]
  %.sroa.9.0.extract.shift.i.i = and i32 %.sroa.04.0.i, -16777216
  %.sroa.512.0.insert.ext.i.i = zext i8 %.sroa.512.0.i.i to i32
  %.sroa.512.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.512.0.insert.ext.i.i, 16
  %.sroa.512.0.insert.insert.i.i = or disjoint i32 %.sroa.512.0.insert.shift.i.i, %.sroa.9.0.extract.shift.i.i
  %.sroa.3.0.insert.ext.i.i = zext i8 %.sroa.3.0.i.i to i32
  %.sroa.3.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.3.0.insert.ext.i.i, 8
  %.sroa.3.0.insert.insert.i.i = or disjoint i32 %.sroa.512.0.insert.insert.i.i, %.sroa.3.0.insert.shift.i.i
  %.sroa.011.0.insert.ext.i.i = zext i8 %.sroa.011.0.i.i to i32
  %.sroa.011.0.insert.insert.i.i = or disjoint i32 %.sroa.3.0.insert.insert.i.i, %.sroa.011.0.insert.ext.i.i
  tail call fastcc void @nk_draw_symbol(ptr noundef nonnull %i.eb, i32 noundef %.0105, <2 x float> %i.dx, <2 x float> %i.ea, i32 %.sroa.02.0.i, i32 %.sroa.011.0.insert.insert.i.i, float noundef 1.000000e+00, ptr noundef %i.ec)
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 8852 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 8856
  %i.fb = load float, ptr %i.fa, align 8, !tbaa !1204
  %i.fc = load <2 x float>, ptr %i.ez, align 4, !tbaa !8
  %i.fd = fadd <2 x float> %i.o, %i.fc            ; 2 uses
  %i.fe = tail call float @llvm.fmuladd.f32(float %i.fb, float -2.000000e+00, float %i.u) ; 2 uses
  %i.ff = insertelement <2 x float> poison, float %i.fe, i64 0
  %.sroa.6.8.vec.insert = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fg = load ptr, ptr %i.e, align 8, !tbaa !753
  tail call fastcc void @nk_draw_symbol(ptr noundef %i.eb, i32 noundef %3, <2 x float> %i.fd, <2 x float> %.sroa.6.8.vec.insert, i32 %i.da, i32 %.sroa.011.0.insert.insert.i132, float noundef 1.000000e+00, ptr noundef %i.fg)
  store <2 x float> zeroinitializer, ptr %6, align 8
  %i.fh = extractelement <2 x float> %i.fd, i64 0
  %i.fi = fadd float %i.fh, %i.fe
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 8868
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !1202
  %i.fl = fadd float %i.fi, %i.fk
  %i.fm = load <2 x float>, ptr %i.ez, align 4, !tbaa !8 ; 3 uses
  %i.fn = insertelement <2 x float> %i.o, float %i.fl, i64 0
  %i.fo = fadd <2 x float> %i.fn, %i.fm           ; 2 uses
  %foldExtExtBinop220 = fsub <2 x float> %i.du, %i.fm
  %foldExtExtBinop222 = fsub <2 x float> %foldExtExtBinop220, %i.fo
  %i.fp = extractelement <2 x float> %i.fm, i64 1
  %i.fq = tail call float @llvm.fmuladd.f32(float %i.fp, float -2.000000e+00, float %i.u)
  %.sroa.613.12.vec.insert = insertelement <2 x float> %foldExtExtBinop222, float %i.fq, i64 1
  %i.fr = load ptr, ptr %i.e, align 8, !tbaa !753
  call fastcc void @nk_widget_text(ptr noundef nonnull %i.eb, <2 x float> %i.fo, <2 x float> %.sroa.613.12.vec.insert, ptr noundef %1, i32 noundef %2, ptr noundef %6, i32 noundef 17, ptr noundef %i.fr)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  %i.fs = load ptr, ptr %i.a, align 8, !tbaa !755 ; 2 uses
  %.not.i197 = icmp eq ptr %i.fs, null
  br i1 %.not.i197, label %nk_combo_begin.exit, label %bb.t

bb.t:                                             ; preds = %nk_draw_button_symbol.exit
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 168
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !756
  %.not44.i = icmp eq ptr %i.fu, null
  br i1 %.not44.i, label %nk_combo_begin.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !814 ; 2 uses
  %foldExtExtBinop224 = fadd <2 x float> %i.o, %i.q
  %i.fx = extractelement <2 x float> %foldExtExtBinop224, i64 1
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 9612
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !1203
  %i.ga = fsub float %i.fx, %i.fz
  %.sroa.013.4.vec.insert.i = insertelement <2 x float> %i.o, float %i.ga, i64 1
  %i.gb = getelementptr inbounds nuw i8, ptr %i.b, i64 424 ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !903 ; 3 uses
  %i.gd = add i32 %i.gc, 1
  store i32 %i.gd, ptr %i.gb, align 8, !tbaa !903
  %i.ge = icmp ne ptr %i.fw, null                 ; 3 uses
  br i1 %i.ge, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.gf = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !909
  %i.gh = icmp eq i32 %i.gg, %i.gc
  br i1 %i.gh, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.gi = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !908
  %i.gk = icmp eq i32 %i.gj, 32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.gl = phi i1 [ false, %bb.v ], [ false, %bb.u ], [ %i.gk, %bb.w ]
  %8 = icmp eq ptr %i.fw, null
  %or.cond45.i = select i1 %8, i1 true, i1 %i.gl
  %or.cond9.i = or i1 %i.r, %i.ge
  %or.cond46.i = and i1 %or.cond9.i, %or.cond45.i
  br i1 %or.cond46.i, label %bb.y, label %nk_combo_begin.exit

bb.y:                                             ; preds = %bb.x
  %or.cond.i = and i1 %i.r, %i.ge                 ; 2 uses
  %.sroa.3.0.i198 = select i1 %or.cond.i, <2 x float> zeroinitializer, <2 x float> %i.q
  %.sroa.0.0.i = select i1 %or.cond.i, <2 x float> zeroinitializer, <2 x float> %i.o
  %i.gm = tail call fastcc zeroext i1 @nk_nonblock_begin(ptr noundef nonnull %0, i32 noundef 0, <2 x float> %.sroa.013.4.vec.insert.i, <2 x float> %4, <2 x float> %.sroa.0.0.i, <2 x float> %.sroa.3.0.i198, i32 noundef 32)
  br i1 %i.gm, label %bb.z, label %nk_combo_begin.exit

bb.z:                                             ; preds = %bb.y
  %i.gn = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store i32 32, ptr %i.gn, align 8, !tbaa !908
  %i.go = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  store i32 %i.gc, ptr %i.go, align 8, !tbaa !909
  br label %nk_combo_begin.exit

nk_combo_begin.exit:                              ; preds = %bb.z, %bb.y, %bb.x, %bb.t, %nk_draw_button_symbol.exit, %bb.d, %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.b ], [ true, %bb.z ], [ false, %bb.x ], [ false, %nk_draw_button_symbol.exit ], [ false, %bb.t ], [ false, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_combo_begin_image(ptr noundef %0, ptr nofree noundef readonly byval(%struct.nk_image) align 8 captures(none) %1, <2 x float> %2) local_unnamed_addr #20 {
bb.a:
  %3 = alloca %struct.nk_rect, align 8            ; 5 uses
  %4 = alloca %struct.nk_rect, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_combo_begin.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !755  ; 12 uses
  %.not81 = icmp eq ptr %i.b, null
  br i1 %.not81, label %nk_combo_begin.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !756
  %.not82 = icmp eq ptr %i.d, null
  br i1 %.not82, label %nk_combo_begin.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.f = call i32 @nk_widget(ptr noundef nonnull %3, ptr noundef nonnull %0) ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %nk_combo_begin.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !756
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !845
  %i.k = and i32 %i.j, 4096
  %i.l = icmp ne i32 %i.k, 0
  %i.m = icmp ne i32 %i.f, 1
  %or.cond3 = or i1 %i.m, %i.l
  %i.n = select i1 %or.cond3, ptr null, ptr %0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 9880 ; 4 uses
  %i.p = load <2 x float>, ptr %3, align 8        ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load <2 x float>, ptr %i.q, align 8      ; 10 uses
  %i.s = tail call fastcc zeroext i1 @nk_button_behavior(ptr noundef %i.o, <2 x float> %i.p, <2 x float> %i.r, ptr noundef %i.n, i32 noundef 0) ; 3 uses
  %i.t = load i32, ptr %i.o, align 8, !tbaa !809  ; 2 uses
  %i.u = and i32 %i.t, 32
  %.not83 = icmp eq i32 %i.u, 0
  %i.v = extractelement <2 x float> %i.r, i64 1   ; 2 uses
  %i.w = extractelement <2 x float> %i.p, i64 1
  %i.x = and i32 %i.t, 16
  %.not84 = icmp eq i32 %i.x, 0
  %. = select i1 %.not84, i64 8464, i64 8504
  %.sink159 = select i1 %.not83, i64 %., i64 8544
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %.sink159 ; 4 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !751
  switch i32 %i.z, label %nk_rgb_factor.exit142 [
    i32 1, label %nk_rgb_factor.exit
    i32 2, label %nk_rgb_factor.exit100
    i32 0, label %bb.f
  ]

nk_rgb_factor.exit:                               ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8876
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !980 ; 2 uses
  %i.ae = fcmp oeq float %i.ad, 1.000000e+00
  %i.af = fmul float %i.ad, 2.550000e+02
  %i.ag = fptoui float %i.af to i8
  %i.ah = zext i8 %i.ag to i32
  %.sroa.512.0.insert.ext.i = select i1 %i.ae, i32 255, i32 %i.ah ; 3 uses
  %.sroa.512.0.insert.shift.i = shl nuw nsw i32 %.sroa.512.0.insert.ext.i, 16
  %.sroa.3.0.insert.shift.i = shl nuw nsw i32 %.sroa.512.0.insert.ext.i, 8
  %.sroa.512.0.insert.insert.i = or disjoint i32 %.sroa.512.0.insert.shift.i, %.sroa.3.0.insert.shift.i
  %.sroa.3.0.insert.insert.i = or disjoint i32 %.sroa.512.0.insert.insert.i, %.sroa.512.0.insert.ext.i
  %.sroa.011.0.insert.insert.i = or disjoint i32 %.sroa.3.0.insert.insert.i, -16777216
  tail call void @nk_draw_image(ptr noundef nonnull %i.aa, <2 x float> %i.p, <2 x float> %i.r, ptr noundef nonnull %i.ab, i32 %.sroa.011.0.insert.insert.i)
  br label %nk_rgb_factor.exit142

nk_rgb_factor.exit100:                            ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8876
  %i.al = load float, ptr %i.ak, align 4, !tbaa !980 ; 2 uses
  %i.am = fcmp oeq float %i.al, 1.000000e+00
  %i.an = fmul float %i.al, 2.550000e+02
  %i.ao = fptoui float %i.an to i8
  %i.ap = zext i8 %i.ao to i32
  %.sroa.512.0.insert.ext.i92 = select i1 %i.am, i32 255, i32 %i.ap ; 3 uses
  %.sroa.512.0.insert.shift.i93 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i92, 16
  %.sroa.3.0.insert.shift.i96 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i92, 8
  %.sroa.512.0.insert.insert.i94 = or disjoint i32 %.sroa.512.0.insert.shift.i93, %.sroa.3.0.insert.shift.i96
  %.sroa.3.0.insert.insert.i97 = or disjoint i32 %.sroa.512.0.insert.insert.i94, %.sroa.512.0.insert.ext.i92
  %.sroa.011.0.insert.insert.i99 = or disjoint i32 %.sroa.3.0.insert.insert.i97, -16777216
  tail call void @nk_draw_nine_slice(ptr noundef nonnull %i.ai, <2 x float> %i.p, <2 x float> %i.r, ptr noundef nonnull %i.aj, i32 %.sroa.011.0.insert.insert.i99)
  br label %nk_rgb_factor.exit142

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8848 ; 2 uses
  %i.as = load float, ptr %i.ar, align 8, !tbaa !1198
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8876 ; 2 uses
  %i.av = load float, ptr %i.au, align 4, !tbaa !980 ; 4 uses
  %i.aw = load i32, ptr %i.at, align 8            ; 5 uses
  %.sroa.5.0.extract.shift.i = lshr i32 %i.aw, 8  ; 2 uses
  %.sroa.7.0.extract.shift.i = lshr i32 %i.aw, 16 ; 2 uses
  %i.ax = fcmp oeq float %i.av, 1.000000e+00
  br i1 %i.ax, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.sroa.7.0.extract.trunc.i = trunc i32 %.sroa.7.0.extract.shift.i to i8
  %.sroa.5.0.extract.trunc.i = trunc i32 %.sroa.5.0.extract.shift.i to i8
  %.sroa.0.0.extract.trunc.i = trunc i32 %i.aw to i8
  br label %nk_rgb_factor.exit112

bb.h:                                             ; preds = %bb.f
  %i.ay = and i32 %i.aw, 255
  %i.az = uitofp nneg i32 %i.ay to float
  %i.ba = fmul float %i.av, %i.az
  %i.bb = fptoui float %i.ba to i8
  %i.bc = and i32 %.sroa.5.0.extract.shift.i, 255
  %i.bd = uitofp nneg i32 %i.bc to float
  %i.be = fmul float %i.av, %i.bd
  %i.bf = fptoui float %i.be to i8
  %i.bg = and i32 %.sroa.7.0.extract.shift.i, 255
  %i.bh = uitofp nneg i32 %i.bg to float
  %i.bi = fmul float %i.av, %i.bh
  %i.bj = fptoui float %i.bi to i8
  br label %nk_rgb_factor.exit112

nk_rgb_factor.exit112:                            ; preds = %bb.g, %bb.h
  %.sroa.3.0.i101 = phi i8 [ %.sroa.5.0.extract.trunc.i, %bb.g ], [ %i.bf, %bb.h ]
  %.sroa.011.0.i102 = phi i8 [ %.sroa.0.0.extract.trunc.i, %bb.g ], [ %i.bb, %bb.h ]
  %.sroa.512.0.i103 = phi i8 [ %.sroa.7.0.extract.trunc.i, %bb.g ], [ %i.bj, %bb.h ]
  %.sroa.9.0.extract.shift.i = and i32 %i.aw, -16777216
  %.sroa.512.0.insert.ext.i104 = zext i8 %.sroa.512.0.i103 to i32
  %.sroa.512.0.insert.shift.i105 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i104, 16
  %.sroa.512.0.insert.insert.i106 = or disjoint i32 %.sroa.512.0.insert.shift.i105, %.sroa.9.0.extract.shift.i
  %.sroa.3.0.insert.ext.i107 = zext i8 %.sroa.3.0.i101 to i32
  %.sroa.3.0.insert.shift.i108 = shl nuw nsw i32 %.sroa.3.0.insert.ext.i107, 8
  %.sroa.3.0.insert.insert.i109 = or disjoint i32 %.sroa.512.0.insert.insert.i106, %.sroa.3.0.insert.shift.i108
  %.sroa.011.0.insert.ext.i110 = zext i8 %.sroa.011.0.i102 to i32
  %.sroa.011.0.insert.insert.i111 = or disjoint i32 %.sroa.3.0.insert.insert.i109, %.sroa.011.0.insert.ext.i110
  tail call void @nk_fill_rect(ptr noundef nonnull %i.aq, <2 x float> %i.p, <2 x float> %i.r, float noundef %i.as, i32 %.sroa.011.0.insert.insert.i111)
  %i.bk = load float, ptr %i.ar, align 8, !tbaa !1198
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8844
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !1199
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8584
  %i.bo = load float, ptr %i.au, align 4, !tbaa !980 ; 4 uses
  %i.bp = load i32, ptr %i.bn, align 8            ; 5 uses
  %.sroa.5.0.extract.shift.i113 = lshr i32 %i.bp, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i114 = lshr i32 %i.bp, 16 ; 2 uses
  %i.bq = fcmp oeq float %i.bo, 1.000000e+00
  br i1 %i.bq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %nk_rgb_factor.exit112
  %.sroa.7.0.extract.trunc.i127 = trunc i32 %.sroa.7.0.extract.shift.i114 to i8
  %.sroa.5.0.extract.trunc.i128 = trunc i32 %.sroa.5.0.extract.shift.i113 to i8
  %.sroa.0.0.extract.trunc.i129 = trunc i32 %i.bp to i8
  br label %nk_rgb_factor.exit130

bb.j:                                             ; preds = %nk_rgb_factor.exit112
  %i.br = and i32 %i.bp, 255
  %i.bs = uitofp nneg i32 %i.br to float
  %i.bt = fmul float %i.bo, %i.bs
  %i.bu = fptoui float %i.bt to i8
  %i.bv = and i32 %.sroa.5.0.extract.shift.i113, 255
  %i.bw = uitofp nneg i32 %i.bv to float
  %i.bx = fmul float %i.bo, %i.bw
  %i.by = fptoui float %i.bx to i8
  %i.bz = and i32 %.sroa.7.0.extract.shift.i114, 255
  %i.ca = uitofp nneg i32 %i.bz to float
  %i.cb = fmul float %i.bo, %i.ca
  %i.cc = fptoui float %i.cb to i8
  br label %nk_rgb_factor.exit130

nk_rgb_factor.exit130:                            ; preds = %bb.i, %bb.j
  %.sroa.3.0.i115 = phi i8 [ %.sroa.5.0.extract.trunc.i128, %bb.i ], [ %i.by, %bb.j ]
  %.sroa.011.0.i116 = phi i8 [ %.sroa.0.0.extract.trunc.i129, %bb.i ], [ %i.bu, %bb.j ]
  %.sroa.512.0.i117 = phi i8 [ %.sroa.7.0.extract.trunc.i127, %bb.i ], [ %i.cc, %bb.j ]
  %.sroa.9.0.extract.shift.i118 = and i32 %i.bp, -16777216
  %.sroa.512.0.insert.ext.i119 = zext i8 %.sroa.512.0.i117 to i32
  %.sroa.512.0.insert.shift.i120 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i119, 16
  %.sroa.512.0.insert.insert.i121 = or disjoint i32 %.sroa.512.0.insert.shift.i120, %.sroa.9.0.extract.shift.i118
  %.sroa.3.0.insert.ext.i122 = zext i8 %.sroa.3.0.i115 to i32
  %.sroa.3.0.insert.shift.i123 = shl nuw nsw i32 %.sroa.3.0.insert.ext.i122, 8
  %.sroa.3.0.insert.insert.i124 = or disjoint i32 %.sroa.512.0.insert.insert.i121, %.sroa.3.0.insert.shift.i123
  %.sroa.011.0.insert.ext.i125 = zext i8 %.sroa.011.0.i116 to i32
  %.sroa.011.0.insert.insert.i126 = or disjoint i32 %.sroa.3.0.insert.insert.i124, %.sroa.011.0.insert.ext.i125
  tail call void @nk_stroke_rect(ptr noundef nonnull %i.aq, <2 x float> %i.p, <2 x float> %i.r, float noundef %i.bk, float noundef %i.bm, i32 %.sroa.011.0.insert.insert.i126)
  br label %nk_rgb_factor.exit142

nk_rgb_factor.exit142:                            ; preds = %nk_rgb_factor.exit130, %nk_rgb_factor.exit100, %nk_rgb_factor.exit, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  %i.cd = load i32, ptr %i.o, align 8, !tbaa !809
  %i.ce = and i32 %i.cd, 16
  %.not85 = icmp eq i32 %i.ce, 0
  %.161 = select i1 %i.s, i64 8840, i64 8832
  %.sink160 = select i1 %.not85, i64 %.161, i64 8836
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 %.sink160
  %.075 = load i32, ptr %i.cf, align 4, !tbaa !10 ; 2 uses
  %.not87 = icmp eq i32 %.075, 0                  ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8864
  %i.ch = load float, ptr %i.cg, align 8, !tbaa !1200 ; 3 uses
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.ch, float -2.000000e+00, float %i.v)
  %foldExtExtBinop = fadd <2 x float> %i.p, %i.r
  %i.cj = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ck = fsub float %i.cj, %i.v
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8776
  %i.cm = load <2 x float>, ptr %i.cl, align 8, !tbaa !8 ; 2 uses
  %i.cn = fadd float %i.ch, %i.w
  %i.co = fsub float %i.ck, %i.ch                 ; 2 uses
  %i.cp = insertelement <2 x float> poison, float %i.co, i64 0
  %i.cq = insertelement <2 x float> %i.cp, float %i.cn, i64 1
  %i.cr = fadd <2 x float> %i.cm, %i.cq
  %i.cs = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.ct = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cm, <2 x float> splat (float -2.000000e+00), <2 x float> %i.ct)
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8852
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.cx = load <2 x float>, ptr %i.cv, align 4, !tbaa !8 ; 3 uses
  %i.cy = extractelement <2 x float> %i.cx, i64 1
  %i.cz = fadd <2 x float> %i.p, %i.cx            ; 3 uses
  store <2 x float> %i.cz, ptr %4, align 8, !tbaa !8
  %i.da = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cx, <2 x float> splat (float -2.000000e+00), <2 x float> %i.r) ; 2 uses
  %i.db = extractelement <2 x float> %i.da, i64 1
  store float %i.db, ptr %i.cw, align 4, !tbaa !132
  %i.dc = fsub float %i.co, %i.cy
  %i.dd = extractelement <2 x float> %i.cz, i64 0
  %i.de = fsub float %i.dc, %i.dd
  %i.df = extractelement <2 x float> %i.da, i64 0
  %.sink = select i1 %.not87, float %i.df, float %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store float %.sink, ptr %i.dg, align 8, !tbaa !130
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8876
  %i.dj = load float, ptr %i.di, align 4, !tbaa !980 ; 2 uses
  %i.dk = fcmp oeq float %i.dj, 1.000000e+00
  %i.dl = fmul float %i.dj, 2.550000e+02
  %i.dm = fptoui float %i.dl to i8
  %i.dn = zext i8 %i.dm to i32
  %.sroa.512.0.insert.ext.i134 = select i1 %i.dk, i32 255, i32 %i.dn ; 3 uses
  %.sroa.512.0.insert.shift.i135 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i134, 16
  %.sroa.3.0.insert.shift.i138 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i134, 8
  %.sroa.512.0.insert.insert.i136 = or disjoint i32 %.sroa.512.0.insert.shift.i135, %.sroa.3.0.insert.shift.i138
  %.sroa.3.0.insert.insert.i139 = or disjoint i32 %.sroa.512.0.insert.insert.i136, %.sroa.512.0.insert.ext.i134
  %.sroa.011.0.insert.insert.i141 = or disjoint i32 %.sroa.3.0.insert.insert.i139, -16777216
  %i.do = load <2 x float>, ptr %i.dg, align 8
  call void @nk_draw_image(ptr noundef nonnull %i.dh, <2 x float> %i.cz, <2 x float> %i.do, ptr noundef nonnull %1, i32 %.sroa.011.0.insert.insert.i141)
  br i1 %.not87, label %bb.n, label %bb.k

bb.k:                                             ; preds = %nk_rgb_factor.exit142
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8616 ; 2 uses
  %i.dq = load i32, ptr %i.o, align 8, !tbaa !809 ; 3 uses
  %i.dr = load ptr, ptr %i.e, align 8, !tbaa !753
  %i.ds = call fastcc ptr @nk_draw_button(ptr noundef nonnull %i.dh, ptr noundef nonnull readonly %4, i32 noundef %i.dq, ptr noundef nonnull readonly %i.dp) ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !751
  %i.du = icmp eq i32 %i.dt, 0
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8744
  %.sroa.02.0.in.i = select i1 %i.du, ptr %i.dv, ptr %i.dw
  %.sroa.02.0.i = load i32, ptr %.sroa.02.0.in.i, align 8
  %i.dx = and i32 %i.dq, 16
  %.not.i = icmp eq i32 %i.dx, 0
  %i.dy = and i32 %i.dq, 32
  %.not22.i = icmp eq i32 %i.dy, 0
  %..i = select i1 %.not22.i, i64 132, i64 140
  %.sink.i = select i1 %.not.i, i64 %..i, i64 136
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.sink.i
  %.sroa.04.0.i = load i32, ptr %i.dz, align 4    ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8764
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !920 ; 4 uses
  %.sroa.5.0.extract.shift.i.i = lshr i32 %.sroa.04.0.i, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i.i = lshr i32 %.sroa.04.0.i, 16 ; 2 uses
  %i.ec = fcmp oeq float %i.eb, 1.000000e+00
  br i1 %i.ec, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.sroa.7.0.extract.trunc.i.i = trunc i32 %.sroa.7.0.extract.shift.i.i to i8
  %.sroa.5.0.extract.trunc.i.i = trunc i32 %.sroa.5.0.extract.shift.i.i to i8
  %.sroa.0.0.extract.trunc.i.i = trunc i32 %.sroa.04.0.i to i8
  br label %nk_draw_button_symbol.exit

bb.m:                                             ; preds = %bb.k
  %i.ed = and i32 %.sroa.04.0.i, 255
  %i.ee = uitofp nneg i32 %i.ed to float
  %i.ef = fmul float %i.eb, %i.ee
  %i.eg = fptoui float %i.ef to i8
  %i.eh = and i32 %.sroa.5.0.extract.shift.i.i, 255
  %i.ei = uitofp nneg i32 %i.eh to float
  %i.ej = fmul float %i.eb, %i.ei
  %i.ek = fptoui float %i.ej to i8
  %i.el = and i32 %.sroa.7.0.extract.shift.i.i, 255
  %i.em = uitofp nneg i32 %i.el to float
  %i.en = fmul float %i.eb, %i.em
  %i.eo = fptoui float %i.en to i8
  br label %nk_draw_button_symbol.exit

nk_draw_button_symbol.exit:                       ; preds = %bb.l, %bb.m
  %.sroa.3.0.i.i = phi i8 [ %.sroa.5.0.extract.trunc.i.i, %bb.l ], [ %i.ek, %bb.m ]
  %.sroa.011.0.i.i = phi i8 [ %.sroa.0.0.extract.trunc.i.i, %bb.l ], [ %i.eg, %bb.m ]
  %.sroa.512.0.i.i = phi i8 [ %.sroa.7.0.extract.trunc.i.i, %bb.l ], [ %i.eo, %bb.m ]
  %.sroa.9.0.extract.shift.i.i = and i32 %.sroa.04.0.i, -16777216
  %.sroa.512.0.insert.ext.i.i = zext i8 %.sroa.512.0.i.i to i32
  %.sroa.512.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.512.0.insert.ext.i.i, 16
  %.sroa.512.0.insert.insert.i.i = or disjoint i32 %.sroa.512.0.insert.shift.i.i, %.sroa.9.0.extract.shift.i.i
  %.sroa.3.0.insert.ext.i.i = zext i8 %.sroa.3.0.i.i to i32
  %.sroa.3.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.3.0.insert.ext.i.i, 8
  %.sroa.3.0.insert.insert.i.i = or disjoint i32 %.sroa.512.0.insert.insert.i.i, %.sroa.3.0.insert.shift.i.i
  %.sroa.011.0.insert.ext.i.i = zext i8 %.sroa.011.0.i.i to i32
  %.sroa.011.0.insert.insert.i.i = or disjoint i32 %.sroa.3.0.insert.insert.i.i, %.sroa.011.0.insert.ext.i.i
  tail call fastcc void @nk_draw_symbol(ptr noundef nonnull %i.dh, i32 noundef %.075, <2 x float> %i.cr, <2 x float> %i.cu, i32 %.sroa.02.0.i, i32 %.sroa.011.0.insert.insert.i.i, float noundef 1.000000e+00, ptr noundef %i.dr)
  br label %bb.n

bb.n:                                             ; preds = %nk_draw_button_symbol.exit, %nk_rgb_factor.exit142
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  %i.ep = load ptr, ptr %i.a, align 8, !tbaa !755 ; 2 uses
  %.not.i143 = icmp eq ptr %i.ep, null
  br i1 %.not.i143, label %nk_combo_begin.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 168
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !756
  %.not44.i = icmp eq ptr %i.er, null
  br i1 %.not44.i, label %nk_combo_begin.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !814 ; 2 uses
  %foldExtExtBinop163 = fadd <2 x float> %i.p, %i.r
  %i.eu = extractelement <2 x float> %foldExtExtBinop163, i64 1
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 9612
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !1203
  %i.ex = fsub float %i.eu, %i.ew
  %.sroa.013.4.vec.insert.i = insertelement <2 x float> %i.p, float %i.ex, i64 1
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 424 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !903 ; 3 uses
  %i.fa = add i32 %i.ez, 1
  store i32 %i.fa, ptr %i.ey, align 8, !tbaa !903
  %i.fb = icmp ne ptr %i.et, null                 ; 3 uses
  br i1 %i.fb, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !909
  %i.fe = icmp eq i32 %i.fd, %i.ez
  br i1 %i.fe, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ff = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !908
  %i.fh = icmp eq i32 %i.fg, 32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %i.fi = phi i1 [ false, %bb.q ], [ false, %bb.p ], [ %i.fh, %bb.r ]
  %5 = icmp eq ptr %i.et, null
  %or.cond45.i = select i1 %5, i1 true, i1 %i.fi
  %or.cond9.i = or i1 %i.s, %i.fb
  %or.cond46.i = and i1 %or.cond9.i, %or.cond45.i
  br i1 %or.cond46.i, label %bb.t, label %nk_combo_begin.exit

bb.t:                                             ; preds = %bb.s
  %or.cond.i = and i1 %i.s, %i.fb                 ; 2 uses
  %.sroa.3.0.i144 = select i1 %or.cond.i, <2 x float> zeroinitializer, <2 x float> %i.r
  %.sroa.0.0.i = select i1 %or.cond.i, <2 x float> zeroinitializer, <2 x float> %i.p
  %i.fj = tail call fastcc zeroext i1 @nk_nonblock_begin(ptr noundef nonnull %0, i32 noundef 0, <2 x float> %.sroa.013.4.vec.insert.i, <2 x float> %2, <2 x float> %.sroa.0.0.i, <2 x float> %.sroa.3.0.i144, i32 noundef 32)
  br i1 %i.fj, label %bb.u, label %nk_combo_begin.exit

bb.u:                                             ; preds = %bb.t
  %i.fk = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store i32 32, ptr %i.fk, align 8, !tbaa !908
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  store i32 %i.ez, ptr %i.fl, align 8, !tbaa !909
  br label %nk_combo_begin.exit

nk_combo_begin.exit:                              ; preds = %bb.u, %bb.t, %bb.s, %bb.o, %bb.n, %bb.d, %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ true, %bb.u ], [ false, %bb.s ], [ false, %bb.n ], [ false, %bb.o ], [ false, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_combo_begin_image_text(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly byval(%struct.nk_image) align 8 captures(none) %3, <2 x float> %4) local_unnamed_addr #20 {
bb.a:
  %5 = alloca %struct.nk_rect, align 8            ; 5 uses
  %6 = alloca %struct.nk_text, align 8            ; 8 uses
  %7 = alloca %struct.nk_rect, align 4            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_combo_begin.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !755  ; 13 uses
  %.not109 = icmp eq ptr %i.b, null
  br i1 %.not109, label %nk_combo_begin.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !756
  %.not110 = icmp eq ptr %i.d, null
  br i1 %.not110, label %nk_combo_begin.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.f = call i32 @nk_widget(ptr noundef nonnull %5, ptr noundef nonnull %0) ; 2 uses
  %.not111 = icmp eq i32 %i.f, 0
  br i1 %.not111, label %nk_combo_begin.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !756
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !845
  %i.j = and i32 %i.i, 4096
  %i.k = icmp ne i32 %i.j, 0
  %i.l = icmp ne i32 %i.f, 1
  %or.cond3 = or i1 %i.l, %i.k
  %i.m = select i1 %or.cond3, ptr null, ptr %0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 9880 ; 3 uses
  %i.o = load <2 x float>, ptr %5, align 8        ; 12 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = load <2 x float>, ptr %i.p, align 8      ; 9 uses
  %i.r = tail call fastcc zeroext i1 @nk_button_behavior(ptr noundef %i.n, <2 x float> %i.o, <2 x float> %i.q, ptr noundef %i.m, i32 noundef 0) ; 3 uses
  %i.s = load i32, ptr %i.n, align 8, !tbaa !809  ; 2 uses
  %i.t = and i32 %i.s, 32
  %.not112 = icmp eq i32 %i.t, 0                  ; 2 uses
  %i.u = extractelement <2 x float> %i.q, i64 1   ; 4 uses
  %i.v = and i32 %i.s, 16
  %.not113 = icmp eq i32 %i.v, 0                  ; 2 uses
  %.212 = select i1 %.not113, i64 8464, i64 8504
  %.213 = select i1 %.not113, i64 8588, i64 8592
  %.sink211 = select i1 %.not112, i64 %.212, i64 8544
  %.sink210 = select i1 %.not112, i64 %.213, i64 8596
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %.sink211 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %.sink210
  %i.y = load i32, ptr %i.x, align 4              ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8876 ; 3 uses
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !980 ; 9 uses
  %.sroa.5.0.extract.shift.i = lshr i32 %i.y, 8   ; 2 uses
  %.sroa.7.0.extract.shift.i = lshr i32 %i.y, 16  ; 2 uses
  %i.ac = fcmp oeq float %i.ab, 1.000000e+00      ; 4 uses
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.sroa.7.0.extract.trunc.i = trunc i32 %.sroa.7.0.extract.shift.i to i8
  %.sroa.5.0.extract.trunc.i = trunc i32 %.sroa.5.0.extract.shift.i to i8
  %.sroa.0.0.extract.trunc.i = trunc i32 %i.y to i8
  br label %nk_rgb_factor.exit

bb.g:                                             ; preds = %bb.e
  %i.ad = and i32 %i.y, 255
  %i.ae = uitofp nneg i32 %i.ad to float
  %i.af = fmul float %i.ab, %i.ae
  %i.ag = fptoui float %i.af to i8
  %i.ah = and i32 %.sroa.5.0.extract.shift.i, 255
  %i.ai = uitofp nneg i32 %i.ah to float
  %i.aj = fmul float %i.ab, %i.ai
  %i.ak = fptoui float %i.aj to i8
  %i.al = and i32 %.sroa.7.0.extract.shift.i, 255
  %i.am = uitofp nneg i32 %i.al to float
  %i.an = fmul float %i.ab, %i.am
  %i.ao = fptoui float %i.an to i8
  br label %nk_rgb_factor.exit

nk_rgb_factor.exit:                               ; preds = %bb.f, %bb.g
  %.sroa.3.0.i = phi i8 [ %.sroa.5.0.extract.trunc.i, %bb.f ], [ %i.ak, %bb.g ]
  %.sroa.011.0.i = phi i8 [ %.sroa.0.0.extract.trunc.i, %bb.f ], [ %i.ag, %bb.g ]
  %.sroa.512.0.i = phi i8 [ %.sroa.7.0.extract.trunc.i, %bb.f ], [ %i.ao, %bb.g ]
  %.sroa.9.0.extract.shift.i = and i32 %i.y, -16777216
  %.sroa.512.0.insert.ext.i = zext i8 %.sroa.512.0.i to i32
  %.sroa.512.0.insert.shift.i = shl nuw nsw i32 %.sroa.512.0.insert.ext.i, 16
  %.sroa.512.0.insert.insert.i = or disjoint i32 %.sroa.512.0.insert.shift.i, %.sroa.9.0.extract.shift.i
  %.sroa.3.0.insert.ext.i = zext i8 %.sroa.3.0.i to i32
  %.sroa.3.0.insert.shift.i = shl nuw nsw i32 %.sroa.3.0.insert.ext.i, 8
  %.sroa.3.0.insert.insert.i = or disjoint i32 %.sroa.512.0.insert.insert.i, %.sroa.3.0.insert.shift.i
  %.sroa.011.0.insert.ext.i = zext i8 %.sroa.011.0.i to i32
  %.sroa.011.0.insert.insert.i = or disjoint i32 %.sroa.3.0.insert.insert.i, %.sroa.011.0.insert.ext.i
  store i32 %.sroa.011.0.insert.insert.i, ptr %i.z, align 4
  %i.ap = load i32, ptr %i.w, align 8, !tbaa !751
  switch i32 %i.ap, label %bb.m [
    i32 1, label %nk_rgb_factor.exit129
    i32 2, label %nk_rgb_factor.exit141
    i32 0, label %bb.h
  ]

nk_rgb_factor.exit129:                            ; preds = %nk_rgb_factor.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.at = fmul float %i.ab, 2.550000e+02
  %i.au = fptoui float %i.at to i8
  %i.av = zext i8 %i.au to i32
  %.sroa.512.0.insert.ext.i121 = select i1 %i.ac, i32 255, i32 %i.av ; 3 uses
  %.sroa.512.0.insert.shift.i122 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i121, 16
  %.sroa.3.0.insert.shift.i125 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i121, 8
  %.sroa.512.0.insert.insert.i123 = or disjoint i32 %.sroa.512.0.insert.shift.i122, %.sroa.3.0.insert.shift.i125
  %.sroa.3.0.insert.insert.i126 = or disjoint i32 %.sroa.512.0.insert.insert.i123, %.sroa.512.0.insert.ext.i121
  %.sroa.011.0.insert.insert.i128 = or disjoint i32 %.sroa.3.0.insert.insert.i126, -16777216
  tail call void @nk_draw_image(ptr noundef nonnull %i.ar, <2 x float> %i.o, <2 x float> %i.q, ptr noundef nonnull %i.as, i32 %.sroa.011.0.insert.insert.i128)
  br label %bb.m

nk_rgb_factor.exit141:                            ; preds = %nk_rgb_factor.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ay = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.az = fmul float %i.ab, 2.550000e+02
  %i.ba = fptoui float %i.az to i8
  %i.bb = zext i8 %i.ba to i32
  %.sroa.512.0.insert.ext.i133 = select i1 %i.ac, i32 255, i32 %i.bb ; 3 uses
  %.sroa.512.0.insert.shift.i134 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i133, 16
  %.sroa.3.0.insert.shift.i137 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i133, 8
  %.sroa.512.0.insert.insert.i135 = or disjoint i32 %.sroa.512.0.insert.shift.i134, %.sroa.3.0.insert.shift.i137
  %.sroa.3.0.insert.insert.i138 = or disjoint i32 %.sroa.512.0.insert.insert.i135, %.sroa.512.0.insert.ext.i133
  %.sroa.011.0.insert.insert.i140 = or disjoint i32 %.sroa.3.0.insert.insert.i138, -16777216
  tail call void @nk_draw_nine_slice(ptr noundef nonnull %i.ax, <2 x float> %i.o, <2 x float> %i.q, ptr noundef nonnull %i.ay, i32 %.sroa.011.0.insert.insert.i140)
  br label %bb.m

bb.h:                                             ; preds = %nk_rgb_factor.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.be = load i32, ptr %i.bd, align 8            ; 6 uses
  store i32 %i.be, ptr %i.bc, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8848 ; 2 uses
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !1198
  %.sroa.5.0.extract.shift.i142 = lshr i32 %i.be, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i143 = lshr i32 %i.be, 16 ; 2 uses
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.sroa.7.0.extract.trunc.i156 = trunc i32 %.sroa.7.0.extract.shift.i143 to i8
  %.sroa.5.0.extract.trunc.i157 = trunc i32 %.sroa.5.0.extract.shift.i142 to i8
  %.sroa.0.0.extract.trunc.i158 = trunc i32 %i.be to i8
  br label %nk_rgb_factor.exit159

bb.j:                                             ; preds = %bb.h
  %i.bi = and i32 %i.be, 255
  %i.bj = uitofp nneg i32 %i.bi to float
  %i.bk = fmul float %i.ab, %i.bj
  %i.bl = fptoui float %i.bk to i8
  %i.bm = and i32 %.sroa.5.0.extract.shift.i142, 255
  %i.bn = uitofp nneg i32 %i.bm to float
  %i.bo = fmul float %i.ab, %i.bn
  %i.bp = fptoui float %i.bo to i8
  %i.bq = and i32 %.sroa.7.0.extract.shift.i143, 255
  %i.br = uitofp nneg i32 %i.bq to float
  %i.bs = fmul float %i.ab, %i.br
  %i.bt = fptoui float %i.bs to i8
  br label %nk_rgb_factor.exit159

nk_rgb_factor.exit159:                            ; preds = %bb.i, %bb.j
  %.sroa.3.0.i144 = phi i8 [ %.sroa.5.0.extract.trunc.i157, %bb.i ], [ %i.bp, %bb.j ]
end_hunk_4
begin_hunk_5_@nk_combo_begin_image_text:bb.a
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8584
  %i.by = load float, ptr %i.aa, align 4, !tbaa !980 ; 4 uses
  %i.bz = load i32, ptr %i.bx, align 8            ; 5 uses
  %.sroa.5.0.extract.shift.i160 = lshr i32 %i.bz, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i161 = lshr i32 %i.bz, 16 ; 2 uses
  %i.ca = fcmp oeq float %i.by, 1.000000e+00
  br i1 %i.ca, label %bb.k, label %bb.l

bb.k:                                             ; preds = %nk_rgb_factor.exit159
  %.sroa.7.0.extract.trunc.i174 = trunc i32 %.sroa.7.0.extract.shift.i161 to i8
  %.sroa.5.0.extract.trunc.i175 = trunc i32 %.sroa.5.0.extract.shift.i160 to i8
  %.sroa.0.0.extract.trunc.i176 = trunc i32 %i.bz to i8
  br label %nk_rgb_factor.exit177

bb.l:                                             ; preds = %nk_rgb_factor.exit159
  %i.cb = and i32 %i.bz, 255
  %i.cc = uitofp nneg i32 %i.cb to float
  %i.cd = fmul float %i.by, %i.cc
  %i.ce = fptoui float %i.cd to i8
  %i.cf = and i32 %.sroa.5.0.extract.shift.i160, 255
  %i.cg = uitofp nneg i32 %i.cf to float
  %i.ch = fmul float %i.by, %i.cg
  %i.ci = fptoui float %i.ch to i8
  %i.cj = and i32 %.sroa.7.0.extract.shift.i161, 255
  %i.ck = uitofp nneg i32 %i.cj to float
  %i.cl = fmul float %i.by, %i.ck
  %i.cm = fptoui float %i.cl to i8
  br label %nk_rgb_factor.exit177

nk_rgb_factor.exit177:                            ; preds = %bb.k, %bb.l
  %.sroa.3.0.i162 = phi i8 [ %.sroa.5.0.extract.trunc.i175, %bb.k ], [ %i.ci, %bb.l ]
  %.sroa.011.0.i163 = phi i8 [ %.sroa.0.0.extract.trunc.i176, %bb.k ], [ %i.ce, %bb.l ]
  %.sroa.512.0.i164 = phi i8 [ %.sroa.7.0.extract.trunc.i174, %bb.k ], [ %i.cm, %bb.l ]
  %.sroa.9.0.extract.shift.i165 = and i32 %i.bz, -16777216
  %.sroa.512.0.insert.ext.i166 = zext i8 %.sroa.512.0.i164 to i32
  %.sroa.512.0.insert.shift.i167 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i166, 16
  %.sroa.512.0.insert.insert.i168 = or disjoint i32 %.sroa.512.0.insert.shift.i167, %.sroa.9.0.extract.shift.i165
  %.sroa.3.0.insert.ext.i169 = zext i8 %.sroa.3.0.i162 to i32
  %.sroa.3.0.insert.shift.i170 = shl nuw nsw i32 %.sroa.3.0.insert.ext.i169, 8
  %.sroa.3.0.insert.insert.i171 = or disjoint i32 %.sroa.512.0.insert.insert.i168, %.sroa.3.0.insert.shift.i170
  %.sroa.011.0.insert.ext.i172 = zext i8 %.sroa.011.0.i163 to i32
  %.sroa.011.0.insert.insert.i173 = or disjoint i32 %.sroa.3.0.insert.insert.i171, %.sroa.011.0.insert.ext.i172
  tail call void @nk_stroke_rect(ptr noundef nonnull %i.bf, <2 x float> %i.o, <2 x float> %i.q, float noundef %i.bu, float noundef %i.bw, i32 %.sroa.011.0.insert.insert.i173)
  br label %bb.m

bb.m:                                             ; preds = %nk_rgb_factor.exit177, %nk_rgb_factor.exit141, %nk_rgb_factor.exit129, %nk_rgb_factor.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #50
  %i.cn = load i32, ptr %i.n, align 8, !tbaa !809 ; 3 uses
  %i.co = and i32 %i.cn, 16
  %.not114 = icmp eq i32 %i.co, 0                 ; 2 uses
  %. = select i1 %i.r, i64 8840, i64 8832
  %.sink = select i1 %.not114, i64 %., i64 8836
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %.0103 = load i32, ptr %i.cp, align 4, !tbaa !10 ; 2 uses
  %.not116 = icmp eq i32 %.0103, 0
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8860
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8864
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 8
  %foldExtExtBinop = fadd <2 x float> %i.o, %i.q
  %i.ct = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.cu = fsub float %i.ct, %i.u
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8776
  %i.cy = load <2 x float>, ptr %i.cx, align 8, !tbaa !8 ; 2 uses
  %i.cz = load float, ptr %i.cr, align 8, !tbaa !1200
  %i.da = load <2 x float>, ptr %i.cq, align 4, !tbaa !8 ; 2 uses
  %i.db = tail call float @llvm.fmuladd.f32(float %i.cz, float -2.000000e+00, float %i.u) ; 3 uses
  store float %i.db, ptr %i.cs, align 4, !tbaa !130
  %i.dc = insertelement <2 x float> %i.o, float %i.cu, i64 0 ; 2 uses
  %i.dd = fsub <2 x float> %i.dc, %i.da           ; 2 uses
  %i.de = fadd <2 x float> %i.dc, %i.da           ; 2 uses
  %i.df = shufflevector <2 x float> %i.dd, <2 x float> %i.de, <2 x i32> <i32 0, i32 3>
  %i.dg = extractelement <2 x float> %i.dd, i64 0 ; 2 uses
  store float %i.dg, ptr %7, align 4, !tbaa !129
  %i.dh = extractelement <2 x float> %i.de, i64 1
  store float %i.dh, ptr %i.cv, align 4, !tbaa !131
  store float %i.db, ptr %i.cw, align 4, !tbaa !132
  %i.di = fadd <2 x float> %i.df, %i.cy
  %i.dj = insertelement <2 x float> poison, float %i.db, i64 0
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> splat (float -2.000000e+00), <2 x float> %i.dk)
  br i1 %.not116, label %nk_rgb_factor.exit189, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8616 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.do = load ptr, ptr %i.e, align 8, !tbaa !753
  %i.dp = call fastcc ptr @nk_draw_button(ptr noundef nonnull %i.dn, ptr noundef nonnull readonly %7, i32 noundef %i.cn, ptr noundef nonnull readonly %i.dm) ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !751
  %i.dr = icmp eq i32 %i.dq, 0
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8744
  %.sroa.02.0.in.i = select i1 %i.dr, ptr %i.ds, ptr %i.dt
  %.sroa.02.0.i = load i32, ptr %.sroa.02.0.in.i, align 8
  %i.du = and i32 %i.cn, 32
  %.not22.i = icmp eq i32 %i.du, 0
  %..i = select i1 %.not22.i, i64 132, i64 140
  %.sink.i = select i1 %.not114, i64 %..i, i64 136
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.sink.i
  %.sroa.04.0.i = load i32, ptr %i.dv, align 4    ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8764
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !920 ; 4 uses
  %.sroa.5.0.extract.shift.i.i = lshr i32 %.sroa.04.0.i, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i.i = lshr i32 %.sroa.04.0.i, 16 ; 2 uses
  %i.dy = fcmp oeq float %i.dx, 1.000000e+00
  br i1 %i.dy, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.sroa.7.0.extract.trunc.i.i = trunc i32 %.sroa.7.0.extract.shift.i.i to i8
  %.sroa.5.0.extract.trunc.i.i = trunc i32 %.sroa.5.0.extract.shift.i.i to i8
  %.sroa.0.0.extract.trunc.i.i = trunc i32 %.sroa.04.0.i to i8
  br label %nk_draw_button_symbol.exit

bb.p:                                             ; preds = %bb.n
  %i.dz = and i32 %.sroa.04.0.i, 255
  %i.ea = uitofp nneg i32 %i.dz to float
  %i.eb = fmul float %i.dx, %i.ea
  %i.ec = fptoui float %i.eb to i8
  %i.ed = and i32 %.sroa.5.0.extract.shift.i.i, 255
  %i.ee = uitofp nneg i32 %i.ed to float
  %i.ef = fmul float %i.dx, %i.ee
  %i.eg = fptoui float %i.ef to i8
  %i.eh = and i32 %.sroa.7.0.extract.shift.i.i, 255
  %i.ei = uitofp nneg i32 %i.eh to float
  %i.ej = fmul float %i.dx, %i.ei
  %i.ek = fptoui float %i.ej to i8
  br label %nk_draw_button_symbol.exit

nk_draw_button_symbol.exit:                       ; preds = %bb.o, %bb.p
  %.sroa.3.0.i.i = phi i8 [ %.sroa.5.0.extract.trunc.i.i, %bb.o ], [ %i.eg, %bb.p ]
  %.sroa.011.0.i.i = phi i8 [ %.sroa.0.0.extract.trunc.i.i, %bb.o ], [ %i.ec, %bb.p ]
  %.sroa.512.0.i.i = phi i8 [ %.sroa.7.0.extract.trunc.i.i, %bb.o ], [ %i.ek, %bb.p ]
  %.sroa.9.0.extract.shift.i.i = and i32 %.sroa.04.0.i, -16777216
  %.sroa.512.0.insert.ext.i.i = zext i8 %.sroa.512.0.i.i to i32
  %.sroa.512.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.512.0.insert.ext.i.i, 16
  %.sroa.512.0.insert.insert.i.i = or disjoint i32 %.sroa.512.0.insert.shift.i.i, %.sroa.9.0.extract.shift.i.i
  %.sroa.3.0.insert.ext.i.i = zext i8 %.sroa.3.0.i.i to i32
  %.sroa.3.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.3.0.insert.ext.i.i, 8
  %.sroa.3.0.insert.insert.i.i = or disjoint i32 %.sroa.512.0.insert.insert.i.i, %.sroa.3.0.insert.shift.i.i
  %.sroa.011.0.insert.ext.i.i = zext i8 %.sroa.011.0.i.i to i32
  %.sroa.011.0.insert.insert.i.i = or disjoint i32 %.sroa.3.0.insert.insert.i.i, %.sroa.011.0.insert.ext.i.i
  tail call fastcc void @nk_draw_symbol(ptr noundef nonnull %i.dn, i32 noundef %.0103, <2 x float> %i.di, <2 x float> %i.dl, i32 %.sroa.02.0.i, i32 %.sroa.011.0.insert.insert.i.i, float noundef 1.000000e+00, ptr noundef %i.do)
  br label %nk_rgb_factor.exit189

nk_rgb_factor.exit189:                            ; preds = %nk_draw_button_symbol.exit, %bb.m
  %.209 = phi float [ %i.dg, %nk_draw_button_symbol.exit ], [ %i.ct, %bb.m ]
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 8852 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 8856
  %i.en = load float, ptr %i.em, align 8, !tbaa !1204
  %i.eo = load <2 x float>, ptr %i.el, align 4, !tbaa !8
  %i.ep = fadd <2 x float> %i.o, %i.eo            ; 2 uses
  %i.eq = tail call float @llvm.fmuladd.f32(float %i.en, float -2.000000e+00, float %i.u) ; 2 uses
  %i.er = insertelement <2 x float> poison, float %i.eq, i64 0
  %.sroa.6.8.vec.insert = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.et = load float, ptr %i.aa, align 4, !tbaa !980 ; 2 uses
  %i.eu = fcmp oeq float %i.et, 1.000000e+00
  %i.ev = fmul float %i.et, 2.550000e+02
  %i.ew = fptoui float %i.ev to i8
  %i.ex = zext i8 %i.ew to i32
  %.sroa.512.0.insert.ext.i181 = select i1 %i.eu, i32 255, i32 %i.ex ; 3 uses
  %.sroa.512.0.insert.shift.i182 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i181, 16
  %.sroa.3.0.insert.shift.i185 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i181, 8
  %.sroa.512.0.insert.insert.i183 = or disjoint i32 %.sroa.512.0.insert.shift.i182, %.sroa.3.0.insert.shift.i185
  %.sroa.3.0.insert.insert.i186 = or disjoint i32 %.sroa.512.0.insert.insert.i183, %.sroa.512.0.insert.ext.i181
  %.sroa.011.0.insert.insert.i188 = or disjoint i32 %.sroa.3.0.insert.insert.i186, -16777216
  call void @nk_draw_image(ptr noundef nonnull %i.es, <2 x float> %i.ep, <2 x float> %.sroa.6.8.vec.insert, ptr noundef nonnull %3, i32 %.sroa.011.0.insert.insert.i188)
  store <2 x float> zeroinitializer, ptr %6, align 8
  %i.ey = extractelement <2 x float> %i.ep, i64 0
  %i.ez = fadd float %i.ey, %i.eq
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 8868
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !1202
  %i.fc = fadd float %i.ez, %i.fb
  %i.fd = load <2 x float>, ptr %i.el, align 4, !tbaa !8 ; 3 uses
  %i.fe = insertelement <2 x float> %i.o, float %i.fc, i64 0
  %i.ff = fadd <2 x float> %i.fe, %i.fd           ; 2 uses
  %i.fg = extractelement <2 x float> %i.fd, i64 1
  %i.fh = tail call float @llvm.fmuladd.f32(float %i.fg, float -2.000000e+00, float %i.u)
  %i.fi = extractelement <2 x float> %i.fd, i64 0
  %i.fj = fsub float %.209, %i.fi
  %i.fk = extractelement <2 x float> %i.ff, i64 0
  %i.fl = fsub float %i.fj, %i.fk
  %i.fm = insertelement <2 x float> poison, float %i.fl, i64 0
  %.sroa.7.8.vec.insert21 = insertelement <2 x float> %i.fm, float %i.fh, i64 1
  %i.fn = load ptr, ptr %i.e, align 8, !tbaa !753
  call fastcc void @nk_widget_text(ptr noundef nonnull %i.es, <2 x float> %i.ff, <2 x float> %.sroa.7.8.vec.insert21, ptr noundef %1, i32 noundef %2, ptr noundef %6, i32 noundef 17, ptr noundef %i.fn)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  %i.fo = load ptr, ptr %i.a, align 8, !tbaa !755 ; 2 uses
  %.not.i190 = icmp eq ptr %i.fo, null
  br i1 %.not.i190, label %nk_combo_begin.exit, label %bb.q

bb.q:                                             ; preds = %nk_rgb_factor.exit189
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 168
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !756
  %.not44.i = icmp eq ptr %i.fq, null
  br i1 %.not44.i, label %nk_combo_begin.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fr = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !814 ; 2 uses
  %foldExtExtBinop215 = fadd <2 x float> %i.o, %i.q
  %i.ft = extractelement <2 x float> %foldExtExtBinop215, i64 1
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 9612
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !1203
  %i.fw = fsub float %i.ft, %i.fv
  %.sroa.013.4.vec.insert.i = insertelement <2 x float> %i.o, float %i.fw, i64 1
  %i.fx = getelementptr inbounds nuw i8, ptr %i.b, i64 424 ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !903 ; 3 uses
  %i.fz = add i32 %i.fy, 1
  store i32 %i.fz, ptr %i.fx, align 8, !tbaa !903
  %i.ga = icmp ne ptr %i.fs, null                 ; 3 uses
  br i1 %i.ga, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.gb = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !909
  %i.gd = icmp eq i32 %i.gc, %i.fy
  br i1 %i.gd, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !908
  %i.gg = icmp eq i32 %i.gf, 32
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.gh = phi i1 [ false, %bb.s ], [ false, %bb.r ], [ %i.gg, %bb.t ]
  %8 = icmp eq ptr %i.fs, null
  %or.cond45.i = select i1 %8, i1 true, i1 %i.gh
  %or.cond9.i = or i1 %i.r, %i.ga
  %or.cond46.i = and i1 %or.cond9.i, %or.cond45.i
  br i1 %or.cond46.i, label %bb.v, label %nk_combo_begin.exit

bb.v:                                             ; preds = %bb.u
  %or.cond.i = and i1 %i.r, %i.ga                 ; 2 uses
  %.sroa.3.0.i191 = select i1 %or.cond.i, <2 x float> zeroinitializer, <2 x float> %i.q
  %.sroa.0.0.i = select i1 %or.cond.i, <2 x float> zeroinitializer, <2 x float> %i.o
  %i.gi = tail call fastcc zeroext i1 @nk_nonblock_begin(ptr noundef nonnull %0, i32 noundef 0, <2 x float> %.sroa.013.4.vec.insert.i, <2 x float> %4, <2 x float> %.sroa.0.0.i, <2 x float> %.sroa.3.0.i191, i32 noundef 32)
  br i1 %i.gi, label %bb.w, label %nk_combo_begin.exit

bb.w:                                             ; preds = %bb.v
  %i.gj = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store i32 32, ptr %i.gj, align 8, !tbaa !908
  %i.gk = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  store i32 %i.fy, ptr %i.gk, align 8, !tbaa !909
  br label %nk_combo_begin.exit

nk_combo_begin.exit:                              ; preds = %bb.w, %bb.v, %bb.u, %bb.q, %nk_rgb_factor.exit189, %bb.d, %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.b ], [ true, %bb.w ], [ false, %bb.u ], [ false, %nk_rgb_factor.exit189 ], [ false, %bb.q ], [ false, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_combo_begin_symbol_label(ptr noundef %0, ptr noundef %1, i32 noundef %2, <2 x float> %3) local_unnamed_addr #20 {
bb.a:
  %.not5.i = icmp eq ptr %1, null
  br i1 %.not5.i, label %nk_strlen.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !tbaa !11
  %.not4.i3 = icmp eq i8 %i.a, 0
  br i1 %.not4.i3, label %nk_strlen.exit, label %.lr.ph.i.preheader6

.lr.ph.i.preheader6:                              ; preds = %.lr.ph.i.preheader
  %scevgep = getelementptr i8, ptr %1, i64 1
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep)
  %i.b = trunc i64 %strlen to i32
  %i.c = add i32 %i.b, 1
  br label %nk_strlen.exit

nk_strlen.exit:                                   ; preds = %.lr.ph.i.preheader6, %.lr.ph.i.preheader, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ 0, %.lr.ph.i.preheader ], [ %i.c, %.lr.ph.i.preheader6 ]
  %i.d = tail call zeroext i1 @nk_combo_begin_symbol_text(ptr noundef %0, ptr noundef %1, i32 noundef %.0.lcssa.i, i32 noundef %2, <2 x float> %3)
  ret i1 %i.d
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_combo_begin_image_label(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly byval(%struct.nk_image) align 8 captures(none) %2, <2 x float> %3) local_unnamed_addr #20 {
bb.a:
  %.not5.i = icmp eq ptr %1, null
  br i1 %.not5.i, label %nk_strlen.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !tbaa !11
  %.not4.i3 = icmp eq i8 %i.a, 0
  br i1 %.not4.i3, label %nk_strlen.exit, label %.lr.ph.i.preheader6

.lr.ph.i.preheader6:                              ; preds = %.lr.ph.i.preheader
  %scevgep = getelementptr i8, ptr %1, i64 1
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep)
  %i.b = trunc i64 %strlen to i32
  %i.c = add i32 %i.b, 1
  br label %nk_strlen.exit

nk_strlen.exit:                                   ; preds = %.lr.ph.i.preheader6, %.lr.ph.i.preheader, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ 0, %.lr.ph.i.preheader ], [ %i.c, %.lr.ph.i.preheader6 ]
  %i.d = tail call zeroext i1 @nk_combo_begin_image_text(ptr noundef %0, ptr noundef %1, i32 noundef %.0.lcssa.i, ptr noundef nonnull byval(%struct.nk_image) align 8 %2, <2 x float> %3)
  ret i1 %i.d
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_combo_item_text(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #20 {
bb.a:
  %4 = alloca %struct.nk_rect, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %nk_contextual_item_text.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !755  ; 3 uses
  %.not23.i = icmp eq ptr %i.b, null
  br i1 %.not23.i, label %nk_contextual_item_text.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !756
  %.not24.i = icmp eq ptr %i.d, null
  br i1 %.not24.i, label %nk_contextual_item_text.exit, label %nk_widget_fitting.exit.i

nk_widget_fitting.exit.i:                         ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.g = call i32 @nk_widget(ptr noundef nonnull %4, ptr noundef nonnull readonly %0)
  switch i32 %i.g, label %bb.d [
    i32 0, label %nk_contextual_item_text.exit
    i32 2, label %bb.e
  ]

bb.d:                                             ; preds = %nk_widget_fitting.exit.i
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !756
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !845
  %i.k = and i32 %i.j, 4096
  %.not26.i = icmp eq i32 %i.k, 0
  %spec.select.i = select i1 %.not26.i, ptr %0, ptr null
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %nk_widget_fitting.exit.i
  %i.l = phi ptr [ null, %nk_widget_fitting.exit.i ], [ %spec.select.i, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 9880
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !753
  %i.p = load <2 x float>, ptr %4, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load <2 x float>, ptr %i.q, align 8
  %i.s = tail call fastcc zeroext i1 @nk_do_button_text(ptr noundef %i.m, ptr noundef %i.n, <2 x float> %i.p, <2 x float> %i.r, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef %i.f, ptr noundef %i.l, ptr noundef %i.o)
  br i1 %i.s, label %bb.f, label %nk_contextual_item_text.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !755  ; 3 uses
  %.not5.i.i = icmp eq ptr %i.t, null
  br i1 %.not5.i.i, label %nk_contextual_item_text.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !756
  %.not6.i.i = icmp eq ptr %i.v, null
  br i1 %.not6.i.i, label %nk_contextual_item_text.exit, label %nk_popup_close.exit.i.i

nk_popup_close.exit.i.i:                          ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 72 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !312
  %i.y = or i32 %i.x, 8192
  store i32 %i.y, ptr %i.w, align 8, !tbaa !312
  br label %nk_contextual_item_text.exit

nk_contextual_item_text.exit:                     ; preds = %bb.a, %bb.b, %bb.c, %nk_widget_fitting.exit.i, %bb.e, %bb.f, %bb.g, %nk_popup_close.exit.i.i
  %.0.i = phi i1 [ false, %bb.e ], [ false, %nk_widget_fitting.exit.i ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.b ], [ true, %bb.f ], [ true, %bb.g ], [ true, %nk_popup_close.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  ret i1 %.0.i
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_combo_item_label(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #17 {
bb.a:
  %i.a = tail call zeroext i1 @nk_contextual_item_label(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  ret i1 %i.a
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_combo_item_image_text(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly byval(%struct.nk_image) align 8 captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #20 {
bb.a:
  %5 = alloca %struct.nk_rect, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %nk_contextual_item_image_text.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !755  ; 3 uses
  %.not23.i = icmp eq ptr %i.b, null
  br i1 %.not23.i, label %nk_contextual_item_image_text.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !756
  %.not24.i = icmp eq ptr %i.d, null
  br i1 %.not24.i, label %nk_contextual_item_image_text.exit, label %nk_widget_fitting.exit.i

nk_widget_fitting.exit.i:                         ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.g = call i32 @nk_widget(ptr noundef nonnull %5, ptr noundef nonnull readonly %0)
  switch i32 %i.g, label %bb.d [
    i32 0, label %nk_contextual_item_image_text.exit
    i32 2, label %bb.e
  ]

bb.d:                                             ; preds = %nk_widget_fitting.exit.i
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !756
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !845
  %i.k = and i32 %i.j, 4096
  %.not26.i = icmp eq i32 %i.k, 0
  %spec.select.i = select i1 %.not26.i, ptr %0, ptr null
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %nk_widget_fitting.exit.i
  %i.l = phi ptr [ null, %nk_widget_fitting.exit.i ], [ %spec.select.i, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 9880
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !753
  %i.p = load <2 x float>, ptr %5, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = load <2 x float>, ptr %i.q, align 8
end_hunk_5
