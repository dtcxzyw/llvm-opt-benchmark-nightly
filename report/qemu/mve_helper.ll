Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/mve_helper?download=true
inline.NumInlined: 1943
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 753
loop-unroll.NumUnrolled: 753
begin_hunk_0_@helper_mve_vldrd_sg_ud:bb.a
bb.e:                                             ; preds = %arm_to_core_mmu_idx.exit
  %i.p = and i16 %i.a, 1
  %.not25 = icmp eq i16 %i.p, 0
  br i1 %.not25, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr %2, align 4
  %i.r = add i32 %3, %i.q
  %i.s = zext i32 %i.r to i64
  %i.t = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = tail call i32 @cpu_ldl_mmu(ptr noundef nonnull %0, i64 noundef %i.s, i32 noundef %i.n, i64 noundef %i.u) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.w = phi i32 [ %i.v, %bb.f ], [ 0, %bb.e ]
  store i32 %i.w, ptr %1, align 4
  br label %bb.h

bb.h:                                             ; preds = %arm_to_core_mmu_idx.exit, %bb.g
  %i.x = and i16 %.0.i, 16
  %.not.1 = icmp eq i16 %i.x, 0
  br i1 %.not.1, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = and i16 %i.a, 16
  %.not25.1 = icmp eq i16 %i.y, 0
  br i1 %.not25.1, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = load i32, ptr %2, align 4
  %i.aa = add i32 %3, 4
  %i.ab = add i32 %i.aa, %i.z
  %i.ac = zext i32 %i.ab to i64
  %i.ad = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = tail call i32 @cpu_ldl_mmu(ptr noundef nonnull %0, i64 noundef %i.ac, i32 noundef %i.n, i64 noundef %i.ae) #12
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ag = phi i32 [ %i.af, %bb.j ], [ 0, %bb.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.ag, ptr %i.ah, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %i.ai = and i16 %.0.i, 256
  %.not.2 = icmp eq i16 %i.ai, 0
  br i1 %.not.2, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = and i16 %i.a, 256
  %.not25.2 = icmp eq i16 %i.aj, 0
  br i1 %.not25.2, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = add i32 %3, %i.al
  %i.an = zext i32 %i.am to i64
  %i.ao = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = tail call i32 @cpu_ldl_mmu(ptr noundef nonnull %0, i64 noundef %i.an, i32 noundef %i.n, i64 noundef %i.ap) #12
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ar = phi i32 [ %i.aq, %bb.n ], [ 0, %bb.m ]
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.ar, ptr %i.as, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %bb.o
  %i.at = and i16 %i.a, 4096
  %.not25.3 = icmp eq i16 %i.at, 0
  br i1 %.not25.3, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = add i32 %3, 4
  %i.ax = add i32 %i.aw, %i.av
  %i.ay = zext i32 %i.ax to i64
  %i.az = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = tail call i32 @cpu_ldl_mmu(ptr noundef nonnull %0, i64 noundef %i.ay, i32 noundef %i.n, i64 noundef %i.ba) #12
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.bc = phi i32 [ %i.bb, %bb.q ], [ 0, %bb.p ]
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.bc, ptr %i.bd, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4            ; 5 uses
  %.val.i = load i32, ptr %i.b, align 16          ; 4 uses
  %i.bg = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.s, label %mve_eci_mask.exit.i

bb.s:                                             ; preds = %bb.r
  %i.bh = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.bi = icmp ult i32 %.val.i, 96
  %switch.maskindex33 = trunc i32 %i.bh to i8
  %switch.shifted34 = lshr i8 55, %switch.maskindex33
  %switch.lobit35 = trunc i8 %switch.shifted34 to i1
  %or.cond38 = select i1 %i.bi, i1 %switch.lobit35, i1 false
  br i1 %or.cond38, label %switch.lookup32, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup32:                                  ; preds = %bb.s
  %i.bj = zext nneg i32 %i.bh to i64
  %switch.gep36 = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.bj
  %switch.load37 = load i16, ptr %switch.gep36, align 2
  %i.bk = icmp eq i32 %.val.i, 80
  %i.bl = select i1 %i.bk, i32 16, i32 0
  store i32 %i.bl, ptr %i.b, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup32, %bb.r
  %.0.i34.i = phi i16 [ %switch.load37, %switch.lookup32 ], [ -1, %bb.r ] ; 3 uses
  %i.bm = and i32 %i.bf, 16711680
  %.not.i27 = icmp eq i32 %i.bm, 0
  br i1 %.not.i27, label %mve_advance_vpt.exit, label %bb.u

bb.u:                                             ; preds = %mve_eci_mask.exit.i
  %i.bn = and i32 %i.bf, 983040
  %i.bo = icmp samesign ult i32 %i.bn, 589824
  %i.bp = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.bo, i16 %i.bp, i16 %.0.i34.i ; 2 uses
  %i.bq = and i32 %i.bf, 15728640
  %i.br = icmp samesign ult i32 %i.bq, 9437184
  %i.bs = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.br, i16 %i.bs, i16 %spec.select.i
  %i.bt = zext i16 %.1.i to i32
  %i.bu = xor i32 %i.bf, %i.bt                    ; 2 uses
  %i.bv = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.bv, 0
  %i.bw = and i32 %i.bu, -16711681
  %i.bx = shl i32 %i.bf, 1                        ; 2 uses
  %i.by = and i32 %i.bx, 917504
  %i.bz = or disjoint i32 %i.bw, %i.by
  %i.ca = and i32 %i.bu, -15728641
  %i.cb = select i1 %.not32.i, i32 %i.ca, i32 %i.bz
  %i.cc = and i32 %i.bx, 14680064
  %i.cd = or disjoint i32 %i.cb, %i.cc
  store i32 %i.cd, ptr %i.be, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.u
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vstrb_sg_ub(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0)
  %i.b = getelementptr i8, ptr %0, i64 560        ; 3 uses
  %.val = load i32, ptr %i.b, align 16            ; 3 uses
  %i.c = and i32 %.val, 15
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %mve_eci_mask.exit

bb.b:                                             ; preds = %bb.a
  %i.d = lshr exact i32 %.val, 4                  ; 2 uses
  %i.e = icmp ult i32 %.val, 96
  %switch.maskindex = trunc i32 %i.d to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond29 = select i1 %i.e, i1 %switch.lobit, i1 false
  br i1 %or.cond29, label %switch.lookup, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.b
  %i.f = zext nneg i32 %i.d to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.f
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %mve_eci_mask.exit

mve_eci_mask.exit:                                ; preds = %switch.lookup, %bb.a
  %.0.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.a ]
  %i.g = tail call i32 @arm_mmu_idx(ptr noundef nonnull %0) #12
  %i.h = and i32 %i.g, 31                         ; 2 uses
  %i.i = icmp samesign ult i32 %i.h, 22
  br i1 %i.i, label %arm_to_core_mmu_idx.exit, label %bb.d

bb.d:                                             ; preds = %mve_eci_mask.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.680, ptr noundef nonnull @.str.681, i32 noundef 1022, ptr noundef nonnull @__PRETTY_FUNCTION__.arm_to_core_mmu_idx) #11
  unreachable

arm_to_core_mmu_idx.exit:                         ; preds = %mve_eci_mask.exit
  %i.j = getelementptr i8, ptr %0, i64 344
  %.val24 = load i32, ptr %i.j, align 8
  %i.k = shl i32 %.val24, 6
  %i.l = and i32 %i.k, 512
  %i.m = or disjoint i32 %i.h, %i.l
  %i.n = or disjoint i32 %i.m, 7168               ; 16 uses
  %i.o = insertelement <2 x i16> poison, i16 %i.a, i64 0
  %i.p = insertelement <2 x i16> %i.o, i16 %.0.i, i64 1
  %.fr = freeze <2 x i16> %i.p                    ; 16 uses
  %4 = and <2 x i16> %.fr, splat (i16 1)
  %5 = icmp eq <2 x i16> %4, zeroinitializer
  %6 = bitcast <2 x i1> %5 to i2
  %or.cond.not = icmp eq i2 %6, 0
  br i1 %or.cond.not, label %7, label %15

7:                                                ; preds = %arm_to_core_mmu_idx.exit
  %8 = load i8, ptr %2, align 1
  %9 = zext i8 %8 to i32
  %10 = add i32 %3, %9
  %11 = zext i32 %10 to i64
  %12 = load i8, ptr %1, align 1
  %13 = tail call ptr @llvm.returnaddress.p0(i32 0)
  %14 = ptrtoint ptr %13 to i64
  tail call void @cpu_stb_mmu(ptr noundef nonnull %0, i64 noundef %11, i8 noundef zeroext %12, i32 noundef %i.n, i64 noundef %14) #12
  br label %15

15:                                               ; preds = %7, %arm_to_core_mmu_idx.exit
  %16 = and <2 x i16> %.fr, splat (i16 2)
  %17 = icmp eq <2 x i16> %16, zeroinitializer
  %18 = bitcast <2 x i1> %17 to i2
  %or.cond.not.1 = icmp eq i2 %18, 0
  br i1 %or.cond.not.1, label %19, label %29

19:                                               ; preds = %15
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = add i32 %3, %22
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %26 = load i8, ptr %25, align 1
  %27 = tail call ptr @llvm.returnaddress.p0(i32 0)
  %28 = ptrtoint ptr %27 to i64
  tail call void @cpu_stb_mmu(ptr noundef nonnull %0, i64 noundef %24, i8 noundef zeroext %26, i32 noundef %i.n, i64 noundef %28) #12
  br label %29

29:                                               ; preds = %19, %15
  %30 = and <2 x i16> %.fr, splat (i16 4)
  %31 = icmp eq <2 x i16> %30, zeroinitializer
  %32 = bitcast <2 x i1> %31 to i2
  %or.cond.not.2 = icmp eq i2 %32, 0
  br i1 %or.cond.not.2, label %33, label %43

33:                                               ; preds = %29
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 2
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = add i32 %3, %36
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %40 = load i8, ptr %39, align 1
  %41 = tail call ptr @llvm.returnaddress.p0(i32 0)
  %42 = ptrtoint ptr %41 to i64
  tail call void @cpu_stb_mmu(ptr noundef nonnull %0, i64 noundef %38, i8 noundef zeroext %40, i32 noundef %i.n, i64 noundef %42) #12
  br label %43

43:                                               ; preds = %33, %29
  %44 = and <2 x i16> %.fr, splat (i16 8)
  %45 = icmp eq <2 x i16> %44, zeroinitializer
  %46 = bitcast <2 x i1> %45 to i2
  %or.cond.not.3 = icmp eq i2 %46, 0
  br i1 %or.cond.not.3, label %47, label %57

47:                                               ; preds = %43
  %48 = getelementptr inbounds nuw i8, ptr %2, i64 3
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i32
  %51 = add i32 %3, %50
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %54 = load i8, ptr %53, align 1
  %55 = tail call ptr @llvm.returnaddress.p0(i32 0)
  %56 = ptrtoint ptr %55 to i64
  tail call void @cpu_stb_mmu(ptr noundef nonnull %0, i64 noundef %52, i8 noundef zeroext %54, i32 noundef %i.n, i64 noundef %56) #12
  br label %57

57:                                               ; preds = %47, %43
  %58 = and <2 x i16> %.fr, splat (i16 16)
  %59 = icmp eq <2 x i16> %58, zeroinitializer
  %60 = bitcast <2 x i1> %59 to i2
  %or.cond.not.4 = icmp eq i2 %60, 0
  br i1 %or.cond.not.4, label %61, label %71

61:                                               ; preds = %57
  %62 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i32
  %65 = add i32 %3, %64
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %68 = load i8, ptr %67, align 1
  %69 = tail call ptr @llvm.returnaddress.p0(i32 0)
  %70 = ptrtoint ptr %69 to i64
  tail call void @cpu_stb_mmu(ptr noundef nonnull %0, i64 noundef %66, i8 noundef zeroext %68, i32 noundef %i.n, i64 noundef %70) #12
  br label %71

71:                                               ; preds = %61, %57
  %72 = and <2 x i16> %.fr, splat (i16 32)
  %73 = icmp eq <2 x i16> %72, zeroinitializer
  %74 = bitcast <2 x i1> %73 to i2
  %or.cond.not.5 = icmp eq i2 %74, 0
  br i1 %or.cond.not.5, label %75, label %85

75:                                               ; preds = %71
  %76 = getelementptr inbounds nuw i8, ptr %2, i64 5
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %77 to i32
  %79 = add i32 %3, %78
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %82 = load i8, ptr %81, align 1
  %83 = tail call ptr @llvm.returnaddress.p0(i32 0)
  %84 = ptrtoint ptr %83 to i64
  tail call void @cpu_stb_mmu(ptr noundef nonnull %0, i64 noundef %80, i8 noundef zeroext %82, i32 noundef %i.n, i64 noundef %84) #12
  br label %85

85:                                               ; preds = %75, %71
  %86 = and <2 x i16> %.fr, splat (i16 64)
  %87 = icmp eq <2 x i16> %86, zeroinitializer
  %88 = bitcast <2 x i1> %87 to i2
  %or.cond.not.6 = icmp eq i2 %88, 0
  br i1 %or.cond.not.6, label %89, label %99

89:                                               ; preds = %85
  %90 = getelementptr inbounds nuw i8, ptr %2, i64 6
  %91 = load i8, ptr %90, align 1
  %92 = zext i8 %91 to i32
  %93 = add i32 %3, %92
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %96 = load i8, ptr %95, align 1
  %97 = tail call ptr @llvm.returnaddress.p0(i32 0)
  %98 = ptrtoint ptr %97 to i64
  tail call void @cpu_stb_mmu(ptr noundef nonnull %0, i64 noundef %94, i8 noundef zeroext %96, i32 noundef %i.n, i64 noundef %98) #12
  br label %99

99:                                               ; preds = %89, %85
  %100 = and <2 x i16> %.fr, splat (i16 128)
  %101 = icmp eq <2 x i16> %100, zeroinitializer
  %102 = bitcast <2 x i1> %101 to i2
  %or.cond.not.7 = icmp eq i2 %102, 0
  br i1 %or.cond.not.7, label %103, label %113

103:                                              ; preds = %99
  %104 = getelementptr inbounds nuw i8, ptr %2, i64 7
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i32
  %107 = add i32 %3, %106
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds nuw i8, ptr %1, i64 7
  %110 = load i8, ptr %109, align 1
  %111 = tail call ptr @llvm.returnaddress.p0(i32 0)
  %112 = ptrtoint ptr %111 to i64
  tail call void @cpu_stb_mmu(ptr noundef nonnull %0, i64 noundef %108, i8 noundef zeroext %110, i32 noundef %i.n, i64 noundef %112) #12
  br label %113

113:                                              ; preds = %103, %99
  %114 = and <2 x i16> %.fr, splat (i16 256)
  %115 = icmp eq <2 x i16> %114, zeroinitializer
  %116 = bitcast <2 x i1> %115 to i2
  %or.cond.not.8 = icmp eq i2 %116, 0
  br i1 %or.cond.not.8, label %117, label %127

117:                                              ; preds = %113
  %118 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %119 = load i8, ptr %118, align 1
  %120 = zext i8 %119 to i32
  %121 = add i32 %3, %120
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %124 = load i8, ptr %123, align 1
  %125 = tail call ptr @llvm.returnaddress.p0(i32 0)
  %126 = ptrtoint ptr %125 to i64
  tail call void @cpu_stb_mmu(ptr noundef nonnull %0, i64 noundef %122, i8 noundef zeroext %124, i32 noundef %i.n, i64 noundef %126) #12
  br label %127

127:                                              ; preds = %117, %113
  %128 = and <2 x i16> %.fr, splat (i16 512)
  %129 = icmp eq <2 x i16> %128, zeroinitializer
  %130 = bitcast <2 x i1> %129 to i2
  %or.cond.not.9 = icmp eq i2 %130, 0
  br i1 %or.cond.not.9, label %131, label %141

131:                                              ; preds = %127
  %132 = getelementptr inbounds nuw i8, ptr %2, i64 9
  %133 = load i8, ptr %132, align 1
  %134 = zext i8 %133 to i32
  %135 = add i32 %3, %134
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds nuw i8, ptr %1, i64 9
  %138 = load i8, ptr %137, align 1
  %139 = tail call ptr @llvm.returnaddress.p0(i32 0)
  %140 = ptrtoint ptr %139 to i64
  tail call void @cpu_stb_mmu(ptr noundef nonnull %0, i64 noundef %136, i8 noundef zeroext %138, i32 noundef %i.n, i64 noundef %140) #12
  br label %141

141:                                              ; preds = %131, %127
  %142 = and <2 x i16> %.fr, splat (i16 1024)
  %143 = icmp eq <2 x i16> %142, zeroinitializer
  %144 = bitcast <2 x i1> %143 to i2
  %or.cond.not.10 = icmp eq i2 %144, 0
  br i1 %or.cond.not.10, label %145, label %155

145:                                              ; preds = %141
  %146 = getelementptr inbounds nuw i8, ptr %2, i64 10
  %147 = load i8, ptr %146, align 1
  %148 = zext i8 %147 to i32
  %149 = add i32 %3, %148
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %152 = load i8, ptr %151, align 1
  %153 = tail call ptr @llvm.returnaddress.p0(i32 0)
  %154 = ptrtoint ptr %153 to i64
  tail call void @cpu_stb_mmu(ptr noundef nonnull %0, i64 noundef %150, i8 noundef zeroext %152, i32 noundef %i.n, i64 noundef %154) #12
  br label %155

155:                                              ; preds = %145, %141
  %156 = and <2 x i16> %.fr, splat (i16 2048)
  %157 = icmp eq <2 x i16> %156, zeroinitializer
  %158 = bitcast <2 x i1> %157 to i2
  %or.cond.not.11 = icmp eq i2 %158, 0
  br i1 %or.cond.not.11, label %159, label %169

159:                                              ; preds = %155
  %160 = getelementptr inbounds nuw i8, ptr %2, i64 11
  %161 = load i8, ptr %160, align 1
  %162 = zext i8 %161 to i32
  %163 = add i32 %3, %162
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds nuw i8, ptr %1, i64 11
  %166 = load i8, ptr %165, align 1
  %167 = tail call ptr @llvm.returnaddress.p0(i32 0)
  %168 = ptrtoint ptr %167 to i64
  tail call void @cpu_stb_mmu(ptr noundef nonnull %0, i64 noundef %164, i8 noundef zeroext %166, i32 noundef %i.n, i64 noundef %168) #12
  br label %169

169:                                              ; preds = %159, %155
  %170 = and <2 x i16> %.fr, splat (i16 4096)
  %171 = icmp eq <2 x i16> %170, zeroinitializer
  %172 = bitcast <2 x i1> %171 to i2
  %or.cond.not.12 = icmp eq i2 %172, 0
  br i1 %or.cond.not.12, label %173, label %183

173:                                              ; preds = %169
  %174 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %175 = load i8, ptr %174, align 1
  %176 = zext i8 %175 to i32
  %177 = add i32 %3, %176
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %180 = load i8, ptr %179, align 1
  %181 = tail call ptr @llvm.returnaddress.p0(i32 0)
  %182 = ptrtoint ptr %181 to i64
  tail call void @cpu_stb_mmu(ptr noundef nonnull %0, i64 noundef %178, i8 noundef zeroext %180, i32 noundef %i.n, i64 noundef %182) #12
  br label %183

183:                                              ; preds = %173, %169
  %184 = and <2 x i16> %.fr, splat (i16 8192)
  %185 = icmp eq <2 x i16> %184, zeroinitializer
  %186 = bitcast <2 x i1> %185 to i2
  %or.cond.not.13 = icmp eq i2 %186, 0
  br i1 %or.cond.not.13, label %bb.e, label %196

bb.e:                                             ; preds = %183
  %187 = getelementptr inbounds nuw i8, ptr %2, i64 13
  %188 = load i8, ptr %187, align 1
  %189 = zext i8 %188 to i32
  %190 = add i32 %3, %189
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds nuw i8, ptr %1, i64 13
  %193 = load i8, ptr %192, align 1
  %194 = tail call ptr @llvm.returnaddress.p0(i32 0)
  %195 = ptrtoint ptr %194 to i64
  tail call void @cpu_stb_mmu(ptr noundef nonnull %0, i64 noundef %191, i8 noundef zeroext %193, i32 noundef %i.n, i64 noundef %195) #12
  br label %196

196:                                              ; preds = %bb.e, %183
  %197 = and <2 x i16> %.fr, splat (i16 16384)
  %198 = icmp eq <2 x i16> %197, zeroinitializer
  %199 = bitcast <2 x i1> %198 to i2
  %or.cond.not.14 = icmp eq i2 %199, 0
  br i1 %or.cond.not.14, label %bb.f, label %bb.g

bb.f:                                             ; preds = %196
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext i8 %i.r to i32
  %i.t = add i32 %3, %i.s
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.w = load i8, ptr %i.v, align 1
  %i.x = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.y = ptrtoint ptr %i.x to i64
  tail call void @cpu_stb_mmu(ptr noundef nonnull %0, i64 noundef %i.u, i8 noundef zeroext %i.w, i32 noundef %i.n, i64 noundef %i.y) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %196
  %200 = icmp sgt <2 x i16> %.fr, splat (i16 -1)
  %201 = bitcast <2 x i1> %200 to i2
  %exitcond.not = icmp eq i2 %201, 0
  br i1 %exitcond.not, label %202, label %bb.h

202:                                              ; preds = %bb.g
  %203 = getelementptr inbounds nuw i8, ptr %2, i64 15
  %204 = load i8, ptr %203, align 1
  %205 = zext i8 %204 to i32
  %206 = add i32 %3, %205
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds nuw i8, ptr %1, i64 15
  %209 = load i8, ptr %208, align 1
  %210 = tail call ptr @llvm.returnaddress.p0(i32 0)
  %211 = ptrtoint ptr %210 to i64
  tail call void @cpu_stb_mmu(ptr noundef nonnull %0, i64 noundef %207, i8 noundef zeroext %209, i32 noundef %i.n, i64 noundef %211) #12
  br label %bb.h

bb.h:                                             ; preds = %202, %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4             ; 5 uses
  %.val.i = load i32, ptr %i.b, align 16          ; 4 uses
  %i.ab = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i, label %bb.i, label %mve_eci_mask.exit.i

bb.i:                                             ; preds = %bb.h
  %i.ac = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.ad = icmp ult i32 %.val.i, 96
  %switch.maskindex32 = trunc i32 %i.ac to i8
  %switch.shifted33 = lshr i8 55, %switch.maskindex32
  %switch.lobit34 = trunc i8 %switch.shifted33 to i1
  %or.cond37 = select i1 %i.ad, i1 %switch.lobit34, i1 false
  br i1 %or.cond37, label %switch.lookup31, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup31:                                  ; preds = %bb.i
  %i.ae = zext nneg i32 %i.ac to i64
  %switch.gep35 = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.ae
  %switch.load36 = load i16, ptr %switch.gep35, align 2
  %i.af = icmp eq i32 %.val.i, 80
  %i.ag = select i1 %i.af, i32 16, i32 0
  store i32 %i.ag, ptr %i.b, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup31, %bb.h
  %.0.i34.i = phi i16 [ %switch.load36, %switch.lookup31 ], [ -1, %bb.h ] ; 3 uses
  %i.ah = and i32 %i.aa, 16711680
  %.not.i25 = icmp eq i32 %i.ah, 0
  br i1 %.not.i25, label %mve_advance_vpt.exit, label %bb.k

bb.k:                                             ; preds = %mve_eci_mask.exit.i
  %i.ai = and i32 %i.aa, 983040
  %i.aj = icmp samesign ult i32 %i.ai, 589824
  %i.ak = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.aj, i16 %i.ak, i16 %.0.i34.i ; 2 uses
  %i.al = and i32 %i.aa, 15728640
  %i.am = icmp samesign ult i32 %i.al, 9437184
  %i.an = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.am, i16 %i.an, i16 %spec.select.i
  %i.ao = zext i16 %.1.i to i32
  %i.ap = xor i32 %i.aa, %i.ao                    ; 2 uses
  %i.aq = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.aq, 0
  %i.ar = and i32 %i.ap, -16711681
  %i.as = shl i32 %i.aa, 1                        ; 2 uses
  %i.at = and i32 %i.as, 917504
  %i.au = or disjoint i32 %i.ar, %i.at
  %i.av = and i32 %i.ap, -15728641
  %i.aw = select i1 %.not32.i, i32 %i.av, i32 %i.au
  %i.ax = and i32 %i.as, 14680064
  %i.ay = or disjoint i32 %i.aw, %i.ax
  store i32 %i.ay, ptr %i.z, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.k
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vstrb_sg_uh(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 8 uses
  %i.b = getelementptr i8, ptr %0, i64 560        ; 3 uses
  %.val = load i32, ptr %i.b, align 16            ; 3 uses
  %i.c = and i32 %.val, 15
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %mve_eci_mask.exit

bb.b:                                             ; preds = %bb.a
  %i.d = lshr exact i32 %.val, 4                  ; 2 uses
  %i.e = icmp ult i32 %.val, 96
  %switch.maskindex = trunc i32 %i.d to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond29 = select i1 %i.e, i1 %switch.lobit, i1 false
  br i1 %or.cond29, label %switch.lookup, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.b
  %i.f = zext nneg i32 %i.d to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.f
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %mve_eci_mask.exit

mve_eci_mask.exit:                                ; preds = %switch.lookup, %bb.a
  %.0.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.a ] ; 6 uses
  %i.g = tail call i32 @arm_mmu_idx(ptr noundef nonnull %0) #12
  %i.h = and i32 %i.g, 31                         ; 2 uses
  %i.i = icmp samesign ult i32 %i.h, 22
  br i1 %i.i, label %arm_to_core_mmu_idx.exit, label %bb.d

bb.d:                                             ; preds = %mve_eci_mask.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.680, ptr noundef nonnull @.str.681, i32 noundef 1022, ptr noundef nonnull @__PRETTY_FUNCTION__.arm_to_core_mmu_idx) #11
  unreachable

arm_to_core_mmu_idx.exit:                         ; preds = %mve_eci_mask.exit
  %i.j = getelementptr i8, ptr %0, i64 344
  %.val24 = load i32, ptr %i.j, align 8
  %i.k = shl i32 %.val24, 6
  %i.l = and i32 %i.k, 512
  %i.m = or disjoint i32 %i.h, %i.l
  %i.n = or disjoint i32 %i.m, 7168               ; 8 uses
  %i.o = and i16 %.0.i, 1
  %.not = icmp eq i16 %i.o, 0
  %i.p = and i16 %i.a, 1
  %.not23 = icmp eq i16 %i.p, 0
  %or.cond = select i1 %.not, i1 true, i1 %.not23
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %arm_to_core_mmu_idx.exit
  %i.q = load i16, ptr %2, align 2
  %i.r = zext i16 %i.q to i32
  %i.s = add i32 %3, %i.r
  %i.t = zext i32 %i.s to i64
  %i.u = load i16, ptr %1, align 2
  %i.v = trunc i16 %i.u to i8
  %i.w = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.x = ptrtoint ptr %i.w to i64
  tail call void @cpu_stb_mmu(ptr noundef nonnull %0, i64 noundef %i.t, i8 noundef zeroext %i.v, i32 noundef %i.n, i64 noundef %i.x) #12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %arm_to_core_mmu_idx.exit
  %i.y = and i16 %.0.i, 4
  %.not.1 = icmp eq i16 %i.y, 0
  %i.z = and i16 %i.a, 4
  %.not23.1 = icmp eq i16 %i.z, 0
  %or.cond.1 = select i1 %.not.1, i1 true, i1 %.not23.1
  br i1 %or.cond.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ab = load i16, ptr %i.aa, align 2
  %i.ac = zext i16 %i.ab to i32
  %i.ad = add i32 %3, %i.ac
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ag = load i16, ptr %i.af, align 2
  %i.ah = trunc i16 %i.ag to i8
  %i.ai = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.aj = ptrtoint ptr %i.ai to i64
  tail call void @cpu_stb_mmu(ptr noundef nonnull %0, i64 noundef %i.ae, i8 noundef zeroext %i.ah, i32 noundef %i.n, i64 noundef %i.aj) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ak = and i16 %.0.i, 16
  %.not.2 = icmp eq i16 %i.ak, 0
  %i.al = and i16 %i.a, 16
  %.not23.2 = icmp eq i16 %i.al, 0
  %or.cond.2 = select i1 %.not.2, i1 true, i1 %.not23.2
  br i1 %or.cond.2, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.an = load i16, ptr %i.am, align 2
  %i.ao = zext i16 %i.an to i32
  %i.ap = add i32 %3, %i.ao
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.as = load i16, ptr %i.ar, align 2
  %i.at = trunc i16 %i.as to i8
  %i.au = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.av = ptrtoint ptr %i.au to i64
  tail call void @cpu_stb_mmu(ptr noundef nonnull %0, i64 noundef %i.aq, i8 noundef zeroext %i.at, i32 noundef %i.n, i64 noundef %i.av) #12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aw = and i16 %.0.i, 64
  %.not.3 = icmp eq i16 %i.aw, 0
  %i.ax = and i16 %i.a, 64
  %.not23.3 = icmp eq i16 %i.ax, 0
  %or.cond.3 = select i1 %.not.3, i1 true, i1 %.not23.3
  br i1 %or.cond.3, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.az = load i16, ptr %i.ay, align 2
  %i.ba = zext i16 %i.az to i32
  %i.bb = add i32 %3, %i.ba
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.be = load i16, ptr %i.bd, align 2
  %i.bf = trunc i16 %i.be to i8
  %i.bg = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.bh = ptrtoint ptr %i.bg to i64
  tail call void @cpu_stb_mmu(ptr noundef nonnull %0, i64 noundef %i.bc, i8 noundef zeroext %i.bf, i32 noundef %i.n, i64 noundef %i.bh) #12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bi = and i16 %.0.i, 256
  %.not.4 = icmp eq i16 %i.bi, 0
  %i.bj = and i16 %i.a, 256
  %.not23.4 = icmp eq i16 %i.bj, 0
end_hunk_0
begin_hunk_1_@helper_mve_vfnegh:bb.a
  %i.r = zext nneg i16 %i.m to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %i.u = load i64, ptr %i.n, align 8
  %i.v = xor i64 %i.t, -1
  %i.w = and i64 %i.u, %i.v
  %i.x = and i64 %i.t, %i.q
  %i.y = or i64 %i.w, %i.x
  store i64 %i.y, ptr %i.n, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4             ; 5 uses
  %i.ab = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.ab, align 16         ; 4 uses
  %i.ac = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i, label %bb.b, label %mve_eci_mask.exit.i

bb.b:                                             ; preds = %bb.a
  %i.ad = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.ae = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.ad to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.ae, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.b
  %i.af = zext nneg i32 %i.ad to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.af
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.ag = icmp eq i32 %.val.i, 80
  %i.ah = select i1 %i.ag, i32 16, i32 0
  store i32 %i.ah, ptr %i.ab, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.a
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.a ] ; 3 uses
  %i.ai = and i32 %i.aa, 16711680
  %.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.d

bb.d:                                             ; preds = %mve_eci_mask.exit.i
  %i.aj = and i32 %i.aa, 983040
  %i.ak = icmp samesign ult i32 %i.aj, 589824
  %i.al = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.ak, i16 %i.al, i16 %.0.i34.i ; 2 uses
  %i.am = and i32 %i.aa, 15728640
  %i.an = icmp samesign ult i32 %i.am, 9437184
  %i.ao = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.an, i16 %i.ao, i16 %spec.select.i
  %i.ap = zext i16 %.1.i to i32
  %i.aq = xor i32 %i.aa, %i.ap                    ; 2 uses
  %i.ar = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.ar, 0
  %i.as = and i32 %i.aq, -16711681
  %i.at = shl i32 %i.aa, 1                        ; 2 uses
  %i.au = and i32 %i.at, 917504
  %i.av = or disjoint i32 %i.as, %i.au
  %i.aw = and i32 %i.aq, -15728641
  %i.ax = select i1 %.not32.i, i32 %i.aw, i32 %i.av
  %i.ay = and i32 %i.at, 14680064
  %i.az = or disjoint i32 %i.ax, %i.ay
  store i32 %i.az, ptr %i.z, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.d
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vfnegs(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 2 uses
  %i.b = load i64, ptr %2, align 8
  %i.c = xor i64 %i.b, -9223372034707292160
  %i.d = and i16 %i.a, 255
  %i.e = zext nneg i16 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = load i64, ptr %1, align 8
  %i.i = xor i64 %i.g, -1
  %i.j = and i64 %i.h, %i.i
  %i.k = and i64 %i.g, %i.c
  %i.l = or i64 %i.j, %i.k
  store i64 %i.l, ptr %1, align 8
  %i.m = lshr i16 %i.a, 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i64, ptr %i.o, align 8
  %i.q = xor i64 %i.p, -9223372034707292160
  %i.r = zext nneg i16 %i.m to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %i.u = load i64, ptr %i.n, align 8
  %i.v = xor i64 %i.t, -1
  %i.w = and i64 %i.u, %i.v
  %i.x = and i64 %i.t, %i.q
  %i.y = or i64 %i.w, %i.x
  store i64 %i.y, ptr %i.n, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4             ; 5 uses
  %i.ab = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.ab, align 16         ; 4 uses
  %i.ac = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i, label %bb.b, label %mve_eci_mask.exit.i

bb.b:                                             ; preds = %bb.a
  %i.ad = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.ae = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.ad to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.ae, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.b
  %i.af = zext nneg i32 %i.ad to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.af
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.ag = icmp eq i32 %.val.i, 80
  %i.ah = select i1 %i.ag, i32 16, i32 0
  store i32 %i.ah, ptr %i.ab, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.a
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.a ] ; 3 uses
  %i.ai = and i32 %i.aa, 16711680
  %.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.d

bb.d:                                             ; preds = %mve_eci_mask.exit.i
  %i.aj = and i32 %i.aa, 983040
  %i.ak = icmp samesign ult i32 %i.aj, 589824
  %i.al = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.ak, i16 %i.al, i16 %.0.i34.i ; 2 uses
  %i.am = and i32 %i.aa, 15728640
  %i.an = icmp samesign ult i32 %i.am, 9437184
  %i.ao = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.an, i16 %i.ao, i16 %spec.select.i
  %i.ap = zext i16 %.1.i to i32
  %i.aq = xor i32 %i.aa, %i.ap                    ; 2 uses
  %i.ar = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.ar, 0
  %i.as = and i32 %i.aq, -16711681
  %i.at = shl i32 %i.aa, 1                        ; 2 uses
  %i.au = and i32 %i.at, 917504
  %i.av = or disjoint i32 %i.as, %i.au
  %i.aw = and i32 %i.aq, -15728641
  %i.ax = select i1 %.not32.i, i32 %i.aw, i32 %i.av
  %i.ay = and i32 %i.at, 14680064
  %i.az = or disjoint i32 %i.ax, %i.ay
  store i32 %i.az, ptr %i.z, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.d
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqabsb(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0)
  br label %do_sat_bhs.exit

do_sat_bhs.exit:                                  ; preds = %bb.a, %mergemask_sb.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %mergemask_sb.exit ] ; 3 uses
  %.028 = phi i1 [ false, %bb.a ], [ %i.k, %mergemask_sb.exit ]
  %.02126 = phi i16 [ %i.a, %bb.a ], [ %i.l, %mergemask_sb.exit ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.c = load i8, ptr %i.b, align 1
  %i.d = tail call i8 @llvm.abs.i8(i8 %i.c, i1 false) ; 2 uses
  %.lobit = lshr i8 %i.d, 7
  %i.e = and i16 %.02126, 1
  %.not.i.i = icmp eq i16 %i.e, 0
  br i1 %.not.i.i, label %mergemask_sb.exit, label %bb.b

bb.b:                                             ; preds = %do_sat_bhs.exit
  %narrow = tail call i8 @llvm.umin.i8(i8 %i.d, i8 127)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %narrow, ptr %i.f, align 1
  br label %mergemask_sb.exit

mergemask_sb.exit:                                ; preds = %do_sat_bhs.exit, %bb.b
  %i.g = zext nneg i8 %.lobit to i16
  %i.h = and i16 %.02126, %i.g
  %i.i = zext i1 %.028 to i16
  %i.j = or i16 %i.h, %i.i
  %i.k = icmp ne i16 %i.j, 0                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.l = lshr i16 %.02126, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.c, label %do_sat_bhs.exit, !llvm.loop !12

bb.c:                                             ; preds = %mergemask_sb.exit
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.m, align 16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4              ; 5 uses
  %i.p = getelementptr i8, ptr %0, i64 560        ; 2 uses
  %.val.i = load i32, ptr %i.p, align 16          ; 4 uses
  %i.q = and i32 %.val.i, 15
  %.not.i.i23 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i23, label %bb.f, label %mve_eci_mask.exit.i

bb.f:                                             ; preds = %bb.e
  %i.r = lshr exact i32 %.val.i, 4                ; 2 uses
  %i.s = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.r to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.s, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.f
  %i.t = zext nneg i32 %i.r to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.t
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.u = icmp eq i32 %.val.i, 80
  %i.v = select i1 %i.u, i32 16, i32 0
  store i32 %i.v, ptr %i.p, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.e
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.e ] ; 3 uses
  %i.w = and i32 %i.o, 16711680
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.h

bb.h:                                             ; preds = %mve_eci_mask.exit.i
  %i.x = and i32 %i.o, 983040
  %i.y = icmp samesign ult i32 %i.x, 589824
  %i.z = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.y, i16 %i.z, i16 %.0.i34.i ; 2 uses
  %i.aa = and i32 %i.o, 15728640
  %i.ab = icmp samesign ult i32 %i.aa, 9437184
  %i.ac = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.ab, i16 %i.ac, i16 %spec.select.i
  %i.ad = zext i16 %.1.i to i32
  %i.ae = xor i32 %i.o, %i.ad                     ; 2 uses
  %i.af = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.af, 0
  %i.ag = and i32 %i.ae, -16711681
  %i.ah = shl i32 %i.o, 1                         ; 2 uses
  %i.ai = and i32 %i.ah, 917504
  %i.aj = or disjoint i32 %i.ag, %i.ai
  %i.ak = and i32 %i.ae, -15728641
  %i.al = select i1 %.not32.i, i32 %i.ak, i32 %i.aj
  %i.am = and i32 %i.ah, 14680064
  %i.an = or disjoint i32 %i.al, %i.am
  store i32 %i.an, ptr %i.n, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.h
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqabsh(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #0 {
do_sat_bhs.exit:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 9 uses
  %i.b = load i16, ptr %2, align 2
  %i.c = tail call i16 @llvm.abs.i16(i16 %i.b, i1 false) ; 2 uses
  %.lobit = lshr i16 %i.c, 15
  %narrow = tail call i16 @llvm.umin.i16(i16 %i.c, i16 32767)
  %i.d = and i16 %i.a, 255
  %i.e = zext nneg i16 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8
  %i.h = trunc i64 %i.g to i16                    ; 2 uses
  %i.i = load i16, ptr %1, align 2
  %i.j = xor i16 %i.h, -1
  %i.k = and i16 %i.i, %i.j
  %i.l = and i16 %narrow, %i.h
  %i.m = or i16 %i.k, %i.l
  store i16 %i.m, ptr %1, align 2
  %i.n = and i16 %.lobit, %i.a
  %i.o = lshr i16 %i.a, 2                         ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.r = load i16, ptr %i.q, align 2
  %i.s = tail call i16 @llvm.abs.i16(i16 %i.r, i1 false) ; 2 uses
  %.lobit.1 = lshr i16 %i.s, 15
  %narrow.1 = tail call i16 @llvm.umin.i16(i16 %i.s, i16 32767)
  %i.t = and i16 %i.o, 255
  %i.u = zext nneg i16 %i.t to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8
  %i.x = trunc i64 %i.w to i16                    ; 2 uses
  %i.y = load i16, ptr %i.p, align 2
  %i.z = xor i16 %i.x, -1
  %i.aa = and i16 %i.y, %i.z
  %i.ab = and i16 %narrow.1, %i.x
  %i.ac = or i16 %i.aa, %i.ab
  store i16 %i.ac, ptr %i.p, align 2
  %i.ad = and i16 %.lobit.1, %i.o
  %i.ae = or i16 %i.ad, %i.n
  %i.af = lshr i16 %i.a, 4                        ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ai = load i16, ptr %i.ah, align 2
  %i.aj = tail call i16 @llvm.abs.i16(i16 %i.ai, i1 false) ; 2 uses
  %.lobit.2 = lshr i16 %i.aj, 15
  %narrow.2 = tail call i16 @llvm.umin.i16(i16 %i.aj, i16 32767)
  %i.ak = and i16 %i.af, 255
  %i.al = zext nneg i16 %i.ak to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = trunc i64 %i.an to i16                  ; 2 uses
  %i.ap = load i16, ptr %i.ag, align 2
  %i.aq = xor i16 %i.ao, -1
  %i.ar = and i16 %i.ap, %i.aq
  %i.as = and i16 %narrow.2, %i.ao
  %i.at = or i16 %i.ar, %i.as
  store i16 %i.at, ptr %i.ag, align 2
  %i.au = and i16 %.lobit.2, %i.af
  %i.av = or i16 %i.au, %i.ae
  %i.aw = lshr i16 %i.a, 6                        ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.az = load i16, ptr %i.ay, align 2
  %i.ba = tail call i16 @llvm.abs.i16(i16 %i.az, i1 false) ; 2 uses
  %.lobit.3 = lshr i16 %i.ba, 15
  %narrow.3 = tail call i16 @llvm.umin.i16(i16 %i.ba, i16 32767)
  %i.bb = and i16 %i.aw, 255
  %i.bc = zext nneg i16 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = trunc i64 %i.be to i16                  ; 2 uses
  %i.bg = load i16, ptr %i.ax, align 2
  %i.bh = xor i16 %i.bf, -1
  %i.bi = and i16 %i.bg, %i.bh
  %i.bj = and i16 %narrow.3, %i.bf
  %i.bk = or i16 %i.bi, %i.bj
  store i16 %i.bk, ptr %i.ax, align 2
  %i.bl = and i16 %.lobit.3, %i.aw
  %i.bm = or i16 %i.bl, %i.av
  %i.bn = lshr i16 %i.a, 8                        ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bq = load i16, ptr %i.bp, align 2
  %i.br = tail call i16 @llvm.abs.i16(i16 %i.bq, i1 false) ; 2 uses
  %.lobit.4 = lshr i16 %i.br, 15
  %narrow.4 = tail call i16 @llvm.umin.i16(i16 %i.br, i16 32767)
  %i.bs = zext nneg i16 %i.bn to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = trunc i64 %i.bu to i16                  ; 2 uses
  %i.bw = load i16, ptr %i.bo, align 2
  %i.bx = xor i16 %i.bv, -1
  %i.by = and i16 %i.bw, %i.bx
  %i.bz = and i16 %narrow.4, %i.bv
  %i.ca = or i16 %i.by, %i.bz
  store i16 %i.ca, ptr %i.bo, align 2
  %i.cb = and i16 %.lobit.4, %i.bn
  %i.cc = or i16 %i.cb, %i.bm
  %i.cd = lshr i16 %i.a, 10                       ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.cg = load i16, ptr %i.cf, align 2
  %i.ch = tail call i16 @llvm.abs.i16(i16 %i.cg, i1 false) ; 2 uses
  %.lobit.5 = lshr i16 %i.ch, 15
  %narrow.5 = tail call i16 @llvm.umin.i16(i16 %i.ch, i16 32767)
  %i.ci = zext nneg i16 %i.cd to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = trunc i64 %i.ck to i16                  ; 2 uses
  %i.cm = load i16, ptr %i.ce, align 2
  %i.cn = xor i16 %i.cl, -1
  %i.co = and i16 %i.cm, %i.cn
  %i.cp = and i16 %narrow.5, %i.cl
  %i.cq = or i16 %i.co, %i.cp
  store i16 %i.cq, ptr %i.ce, align 2
  %i.cr = and i16 %.lobit.5, %i.cd
  %i.cs = or i16 %i.cr, %i.cc
  %i.ct = icmp ne i16 %i.cs, 0
  %i.cu = lshr i16 %i.a, 12                       ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.cx = load i16, ptr %i.cw, align 2
  %i.cy = tail call i16 @llvm.abs.i16(i16 %i.cx, i1 false) ; 2 uses
  %.lobit.6 = lshr i16 %i.cy, 15
  %narrow.6 = tail call i16 @llvm.umin.i16(i16 %i.cy, i16 32767)
end_hunk_1
begin_hunk_2_@helper_mve_vqabsh:do_sat_bhs.exit
  %i.ew = shl i32 %i.ed, 1                        ; 2 uses
  %i.ex = and i32 %i.ew, 917504
  %i.ey = or disjoint i32 %i.ev, %i.ex
  %i.ez = and i32 %i.et, -15728641
  %i.fa = select i1 %.not32.i, i32 %i.ez, i32 %i.ey
  %i.fb = and i32 %i.ew, 14680064
  %i.fc = or disjoint i32 %i.fa, %i.fb
  store i32 %i.fc, ptr %i.ec, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqabsw(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #0 {
do_sat_bhs.exit:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 5 uses
  %i.b = load i32, ptr %2, align 4
  %i.c = tail call i32 @llvm.abs.i32(i32 %i.b, i1 false) ; 2 uses
  %.lobit = lshr i32 %i.c, 31
  %spec.select = trunc nuw nsw i32 %.lobit to i16
  %narrow = tail call i32 @llvm.umin.i32(i32 %i.c, i32 2147483647)
  %i.d = and i16 %i.a, 255
  %i.e = zext nneg i16 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = load i32, ptr %1, align 4
  %i.j = xor i32 %i.h, -1
  %i.k = and i32 %i.i, %i.j
  %i.l = and i32 %narrow, %i.h
  %i.m = or i32 %i.k, %i.l
  store i32 %i.m, ptr %1, align 4
  %i.n = and i16 %i.a, %spec.select
  %i.o = lshr i16 %i.a, 4                         ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.r = load i32, ptr %i.q, align 4
  %i.s = tail call i32 @llvm.abs.i32(i32 %i.r, i1 false) ; 2 uses
  %.lobit.1 = lshr i32 %i.s, 31
  %spec.select.1 = trunc nuw nsw i32 %.lobit.1 to i16
  %narrow.1 = tail call i32 @llvm.umin.i32(i32 %i.s, i32 2147483647)
  %i.t = and i16 %i.o, 255
  %i.u = zext nneg i16 %i.t to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8
  %i.x = trunc i64 %i.w to i32                    ; 2 uses
  %i.y = load i32, ptr %i.p, align 4
  %i.z = xor i32 %i.x, -1
  %i.aa = and i32 %i.y, %i.z
  %i.ab = and i32 %narrow.1, %i.x
  %i.ac = or i32 %i.aa, %i.ab
  store i32 %i.ac, ptr %i.p, align 4
  %i.ad = and i16 %i.o, %spec.select.1
  %i.ae = or i16 %i.ad, %i.n
  %i.af = lshr i16 %i.a, 8                        ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = tail call i32 @llvm.abs.i32(i32 %i.ai, i1 false) ; 2 uses
  %.lobit.2 = lshr i32 %i.aj, 31
  %spec.select.2 = trunc nuw nsw i32 %.lobit.2 to i16
  %narrow.2 = tail call i32 @llvm.umin.i32(i32 %i.aj, i32 2147483647)
  %i.ak = zext nneg i16 %i.af to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8
  %i.an = trunc i64 %i.am to i32                  ; 2 uses
  %i.ao = load i32, ptr %i.ag, align 4
  %i.ap = xor i32 %i.an, -1
  %i.aq = and i32 %i.ao, %i.ap
  %i.ar = and i32 %narrow.2, %i.an
  %i.as = or i32 %i.aq, %i.ar
  store i32 %i.as, ptr %i.ag, align 4
  %i.at = and i16 %i.af, %spec.select.2
  %i.au = or i16 %i.at, %i.ae
  %i.av = lshr i16 %i.a, 12                       ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = tail call i32 @llvm.abs.i32(i32 %i.ay, i1 false) ; 2 uses
  %.lobit.3 = lshr i32 %i.az, 31
  %spec.select.3 = trunc nuw nsw i32 %.lobit.3 to i16
  %narrow.3 = tail call i32 @llvm.umin.i32(i32 %i.az, i32 2147483647)
  %i.ba = zext nneg i16 %i.av to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = trunc i64 %i.bc to i32                  ; 2 uses
  %i.be = load i32, ptr %i.aw, align 4
  %i.bf = xor i32 %i.bd, -1
  %i.bg = and i32 %i.be, %i.bf
  %i.bh = and i32 %narrow.3, %i.bd
  %i.bi = or i32 %i.bg, %i.bh
  store i32 %i.bi, ptr %i.aw, align 4
  %i.bj = and i16 %i.av, %spec.select.3
  %i.bk = or i16 %i.bj, %i.au
  %.not = icmp eq i16 %i.bk, 0
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %do_sat_bhs.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.bl, align 16
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_sat_bhs.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4            ; 5 uses
  %i.bo = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.bo, align 16         ; 4 uses
  %i.bp = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i, label %bb.c, label %mve_eci_mask.exit.i

bb.c:                                             ; preds = %bb.b
  %i.bq = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.br = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.bq to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.br, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.c
  %i.bs = zext nneg i32 %i.bq to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.bs
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.bt = icmp eq i32 %.val.i, 80
  %i.bu = select i1 %i.bt, i32 16, i32 0
  store i32 %i.bu, ptr %i.bo, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.b
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.b ] ; 3 uses
  %i.bv = and i32 %i.bn, 16711680
  %.not.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.e

bb.e:                                             ; preds = %mve_eci_mask.exit.i
  %i.bw = and i32 %i.bn, 983040
  %i.bx = icmp samesign ult i32 %i.bw, 589824
  %i.by = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.bx, i16 %i.by, i16 %.0.i34.i ; 2 uses
  %i.bz = and i32 %i.bn, 15728640
  %i.ca = icmp samesign ult i32 %i.bz, 9437184
  %i.cb = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.ca, i16 %i.cb, i16 %spec.select.i
  %i.cc = zext i16 %.1.i to i32
  %i.cd = xor i32 %i.bn, %i.cc                    ; 2 uses
  %i.ce = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.ce, 0
  %i.cf = and i32 %i.cd, -16711681
  %i.cg = shl i32 %i.bn, 1                        ; 2 uses
  %i.ch = and i32 %i.cg, 917504
  %i.ci = or disjoint i32 %i.cf, %i.ch
  %i.cj = and i32 %i.cd, -15728641
  %i.ck = select i1 %.not32.i, i32 %i.cj, i32 %i.ci
  %i.cl = and i32 %i.cg, 14680064
  %i.cm = or disjoint i32 %i.ck, %i.cl
  store i32 %i.cm, ptr %i.bm, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqnegb(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0)
  br label %do_sat_bhs.exit

do_sat_bhs.exit:                                  ; preds = %bb.a, %mergemask_sb.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %mergemask_sb.exit ] ; 3 uses
  %.023 = phi i1 [ false, %bb.a ], [ %i.k, %mergemask_sb.exit ]
  %.01721 = phi i16 [ %i.a, %bb.a ], [ %i.l, %mergemask_sb.exit ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.c = load i8, ptr %i.b, align 1               ; 2 uses
  %i.d = icmp eq i8 %i.c, -128
  %i.e = and i16 %.01721, 1                       ; 2 uses
  %.not.i.i = icmp eq i16 %i.e, 0
  br i1 %.not.i.i, label %mergemask_sb.exit, label %bb.b

bb.b:                                             ; preds = %do_sat_bhs.exit
  %i.f = tail call i8 @llvm.ssub.sat.i8(i8 0, i8 %i.c)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %i.f, ptr %i.g, align 1
  br label %mergemask_sb.exit

mergemask_sb.exit:                                ; preds = %do_sat_bhs.exit, %bb.b
  %i.h = select i1 %i.d, i16 %i.e, i16 0
  %i.i = zext i1 %.023 to i16
  %i.j = or i16 %i.h, %i.i
  %i.k = icmp ne i16 %i.j, 0                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.l = lshr i16 %.01721, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.c, label %do_sat_bhs.exit, !llvm.loop !13

bb.c:                                             ; preds = %mergemask_sb.exit
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.m, align 16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4              ; 5 uses
  %i.p = getelementptr i8, ptr %0, i64 560        ; 2 uses
  %.val.i = load i32, ptr %i.p, align 16          ; 4 uses
  %i.q = and i32 %.val.i, 15
  %.not.i.i18 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i18, label %bb.f, label %mve_eci_mask.exit.i

bb.f:                                             ; preds = %bb.e
  %i.r = lshr exact i32 %.val.i, 4                ; 2 uses
  %i.s = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.r to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.s, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.f
  %i.t = zext nneg i32 %i.r to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.t
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.u = icmp eq i32 %.val.i, 80
  %i.v = select i1 %i.u, i32 16, i32 0
  store i32 %i.v, ptr %i.p, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.e
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.e ] ; 3 uses
  %i.w = and i32 %i.o, 16711680
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.h

bb.h:                                             ; preds = %mve_eci_mask.exit.i
  %i.x = and i32 %i.o, 983040
  %i.y = icmp samesign ult i32 %i.x, 589824
  %i.z = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.y, i16 %i.z, i16 %.0.i34.i ; 2 uses
  %i.aa = and i32 %i.o, 15728640
  %i.ab = icmp samesign ult i32 %i.aa, 9437184
  %i.ac = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.ab, i16 %i.ac, i16 %spec.select.i
  %i.ad = zext i16 %.1.i to i32
  %i.ae = xor i32 %i.o, %i.ad                     ; 2 uses
  %i.af = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.af, 0
  %i.ag = and i32 %i.ae, -16711681
  %i.ah = shl i32 %i.o, 1                         ; 2 uses
  %i.ai = and i32 %i.ah, 917504
  %i.aj = or disjoint i32 %i.ag, %i.ai
  %i.ak = and i32 %i.ae, -15728641
  %i.al = select i1 %.not32.i, i32 %i.ak, i32 %i.aj
  %i.am = and i32 %i.ah, 14680064
  %i.an = or disjoint i32 %i.al, %i.am
  store i32 %i.an, ptr %i.n, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.h
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqnegh(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #0 {
do_sat_bhs.exit:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 9 uses
  %i.b = load i16, ptr %2, align 2                ; 2 uses
  %i.c = icmp eq i16 %i.b, -32768
  %i.d = tail call i16 @llvm.ssub.sat.i16(i16 0, i16 %i.b)
  %i.e = and i16 %i.a, 255
  %i.f = zext nneg i16 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8
  %i.i = trunc i64 %i.h to i16                    ; 2 uses
  %i.j = load i16, ptr %1, align 2
  %i.k = xor i16 %i.i, -1
  %i.l = and i16 %i.j, %i.k
  %i.m = and i16 %i.d, %i.i
  %i.n = or i16 %i.l, %i.m
  store i16 %i.n, ptr %1, align 2
  %i.o = trunc i16 %i.a to i1
  %i.p = and i1 %i.c, %i.o
  %i.q = lshr i16 %i.a, 2                         ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.t = load i16, ptr %i.s, align 2              ; 2 uses
  %i.u = icmp eq i16 %i.t, -32768
  %i.v = tail call i16 @llvm.ssub.sat.i16(i16 0, i16 %i.t)
  %i.w = and i16 %i.q, 255
  %i.x = zext nneg i16 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = trunc i64 %i.z to i16                   ; 2 uses
  %i.ab = load i16, ptr %i.r, align 2
  %i.ac = xor i16 %i.aa, -1
  %i.ad = and i16 %i.ab, %i.ac
  %i.ae = and i16 %i.v, %i.aa
  %i.af = or i16 %i.ad, %i.ae
  store i16 %i.af, ptr %i.r, align 2
  %i.ag = and i16 %i.q, 1
  %i.ah = select i1 %i.u, i16 %i.ag, i16 0
  %i.ai = zext i1 %i.p to i16
  %i.aj = or i16 %i.ah, %i.ai
  %i.ak = lshr i16 %i.a, 4                        ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.an = load i16, ptr %i.am, align 2            ; 2 uses
  %i.ao = icmp eq i16 %i.an, -32768
  %i.ap = tail call i16 @llvm.ssub.sat.i16(i16 0, i16 %i.an)
  %i.aq = and i16 %i.ak, 255
  %i.ar = zext nneg i16 %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8
  %i.au = trunc i64 %i.at to i16                  ; 2 uses
  %i.av = load i16, ptr %i.al, align 2
  %i.aw = xor i16 %i.au, -1
  %i.ax = and i16 %i.av, %i.aw
  %i.ay = and i16 %i.ap, %i.au
  %i.az = or i16 %i.ax, %i.ay
  store i16 %i.az, ptr %i.al, align 2
  %i.ba = and i16 %i.ak, 1
  %i.bb = select i1 %i.ao, i16 %i.ba, i16 0
  %i.bc = or i16 %i.bb, %i.aj
  %i.bd = lshr i16 %i.a, 6                        ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.bg = load i16, ptr %i.bf, align 2            ; 2 uses
  %i.bh = icmp eq i16 %i.bg, -32768
  %i.bi = tail call i16 @llvm.ssub.sat.i16(i16 0, i16 %i.bg)
  %i.bj = and i16 %i.bd, 255
  %i.bk = zext nneg i16 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = trunc i64 %i.bm to i16                  ; 2 uses
  %i.bo = load i16, ptr %i.be, align 2
  %i.bp = xor i16 %i.bn, -1
  %i.bq = and i16 %i.bo, %i.bp
  %i.br = and i16 %i.bi, %i.bn
  %i.bs = or i16 %i.bq, %i.br
  store i16 %i.bs, ptr %i.be, align 2
  %i.bt = and i16 %i.bd, 1
  %i.bu = select i1 %i.bh, i16 %i.bt, i16 0
  %i.bv = or i16 %i.bu, %i.bc
  %i.bw = lshr i16 %i.a, 8                        ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bz = load i16, ptr %i.by, align 2            ; 2 uses
  %i.ca = icmp eq i16 %i.bz, -32768
  %i.cb = tail call i16 @llvm.ssub.sat.i16(i16 0, i16 %i.bz)
  %i.cc = zext nneg i16 %i.bw to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = trunc i64 %i.ce to i16                  ; 2 uses
  %i.cg = load i16, ptr %i.bx, align 2
  %i.ch = xor i16 %i.cf, -1
  %i.ci = and i16 %i.cg, %i.ch
  %i.cj = and i16 %i.cb, %i.cf
  %i.ck = or i16 %i.ci, %i.cj
  store i16 %i.ck, ptr %i.bx, align 2
  %i.cl = and i16 %i.bw, 1
  %i.cm = select i1 %i.ca, i16 %i.cl, i16 0
  %i.cn = or i16 %i.cm, %i.bv
  %i.co = lshr i16 %i.a, 10                       ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.cr = load i16, ptr %i.cq, align 2            ; 2 uses
  %i.cs = icmp eq i16 %i.cr, -32768
  %i.ct = tail call i16 @llvm.ssub.sat.i16(i16 0, i16 %i.cr)
  %i.cu = zext nneg i16 %i.co to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8
  %i.cx = trunc i64 %i.cw to i16                  ; 2 uses
  %i.cy = load i16, ptr %i.cp, align 2
  %i.cz = xor i16 %i.cx, -1
  %i.da = and i16 %i.cy, %i.cz
  %i.db = and i16 %i.ct, %i.cx
  %i.dc = or i16 %i.da, %i.db
  store i16 %i.dc, ptr %i.cp, align 2
  %i.dd = and i16 %i.co, 1
  %i.de = select i1 %i.cs, i16 %i.dd, i16 0
  %i.df = or i16 %i.de, %i.cn
  %i.dg = icmp ne i16 %i.df, 0
  %i.dh = lshr i16 %i.a, 12                       ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.dk = load i16, ptr %i.dj, align 2            ; 2 uses
  %i.dl = icmp eq i16 %i.dk, -32768
  %i.dm = tail call i16 @llvm.ssub.sat.i16(i16 0, i16 %i.dk)
end_hunk_2
begin_hunk_3_@helper_mve_vmullpbw:bb.a
  store i64 %i.ab, ptr %i.o, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4            ; 5 uses
  %i.ae = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.ae, align 16         ; 4 uses
  %i.af = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i, label %bb.b, label %mve_eci_mask.exit.i

bb.b:                                             ; preds = %bb.a
  %i.ag = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.ah = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.ag to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.ah, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.b
  %i.ai = zext nneg i32 %i.ag to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.ai
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.aj = icmp eq i32 %.val.i, 80
  %i.ak = select i1 %i.aj, i32 16, i32 0
  store i32 %i.ak, ptr %i.ae, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.a
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.a ] ; 3 uses
  %i.al = and i32 %i.ad, 16711680
  %.not.i = icmp eq i32 %i.al, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.d

bb.d:                                             ; preds = %mve_eci_mask.exit.i
  %i.am = and i32 %i.ad, 983040
  %i.an = icmp samesign ult i32 %i.am, 589824
  %i.ao = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.an, i16 %i.ao, i16 %.0.i34.i ; 2 uses
  %i.ap = and i32 %i.ad, 15728640
  %i.aq = icmp samesign ult i32 %i.ap, 9437184
  %i.ar = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.aq, i16 %i.ar, i16 %spec.select.i
  %i.as = zext i16 %.1.i to i32
  %i.at = xor i32 %i.ad, %i.as                    ; 2 uses
  %i.au = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.au, 0
  %i.av = and i32 %i.at, -16711681
  %i.aw = shl i32 %i.ad, 1                        ; 2 uses
  %i.ax = and i32 %i.aw, 917504
  %i.ay = or disjoint i32 %i.av, %i.ax
  %i.az = and i32 %i.at, -15728641
  %i.ba = select i1 %.not32.i, i32 %i.az, i32 %i.ay
  %i.bb = and i32 %i.aw, 14680064
  %i.bc = or disjoint i32 %i.ba, %i.bb
  store i32 %i.bc, ptr %i.ac, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.d
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vmullptw(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 2 uses
  %i.b = load i64, ptr %2, align 8
  %i.c = load i64, ptr %3, align 8
  %i.d = tail call i64 @clmul_16x2_odd(i64 noundef %i.b, i64 noundef %i.c) #12
  %i.e = and i16 %i.a, 255
  %i.f = zext nneg i16 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = load i64, ptr %1, align 8
  %i.j = xor i64 %i.h, -1
  %i.k = and i64 %i.i, %i.j
  %i.l = and i64 %i.h, %i.d
  %i.m = or i64 %i.k, %i.l
  store i64 %i.m, ptr %1, align 8
  %i.n = lshr i16 %i.a, 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = load i64, ptr %i.r, align 8
  %i.t = tail call i64 @clmul_16x2_odd(i64 noundef %i.q, i64 noundef %i.s) #12
  %i.u = zext nneg i16 %i.n to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = load i64, ptr %i.o, align 8
  %i.y = xor i64 %i.w, -1
  %i.z = and i64 %i.x, %i.y
  %i.aa = and i64 %i.w, %i.t
  %i.ab = or i64 %i.z, %i.aa
  store i64 %i.ab, ptr %i.o, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4            ; 5 uses
  %i.ae = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.ae, align 16         ; 4 uses
  %i.af = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i, label %bb.b, label %mve_eci_mask.exit.i

bb.b:                                             ; preds = %bb.a
  %i.ag = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.ah = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.ag to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.ah, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.b
  %i.ai = zext nneg i32 %i.ag to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.ai
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.aj = icmp eq i32 %.val.i, 80
  %i.ak = select i1 %i.aj, i32 16, i32 0
  store i32 %i.ak, ptr %i.ae, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.a
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.a ] ; 3 uses
  %i.al = and i32 %i.ad, 16711680
  %.not.i = icmp eq i32 %i.al, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.d

bb.d:                                             ; preds = %mve_eci_mask.exit.i
  %i.am = and i32 %i.ad, 983040
  %i.an = icmp samesign ult i32 %i.am, 589824
  %i.ao = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.an, i16 %i.ao, i16 %.0.i34.i ; 2 uses
  %i.ap = and i32 %i.ad, 15728640
  %i.aq = icmp samesign ult i32 %i.ap, 9437184
  %i.ar = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.aq, i16 %i.ar, i16 %spec.select.i
  %i.as = zext i16 %.1.i to i32
  %i.at = xor i32 %i.ad, %i.as                    ; 2 uses
  %i.au = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.au, 0
  %i.av = and i32 %i.at, -16711681
  %i.aw = shl i32 %i.ad, 1                        ; 2 uses
  %i.ax = and i32 %i.aw, 917504
  %i.ay = or disjoint i32 %i.av, %i.ax
  %i.az = and i32 %i.at, -15728641
  %i.ba = select i1 %.not32.i, i32 %i.az, i32 %i.ay
  %i.bb = and i32 %i.aw, 14680064
  %i.bc = or disjoint i32 %i.ba, %i.bb
  store i32 %i.bc, ptr %i.ac, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.d
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqdmulhb(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0)
  br label %do_sat_bhw.exit

do_sat_bhw.exit:                                  ; preds = %bb.a, %mergemask_sb.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %mergemask_sb.exit ] ; 4 uses
  %.027 = phi i1 [ false, %bb.a ], [ %i.q, %mergemask_sb.exit ]
  %.02125 = phi i16 [ %i.a, %bb.a ], [ %i.r, %mergemask_sb.exit ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.c = load i8, ptr %i.b, align 1
  %i.d = sext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1
  %i.g = sext i8 %i.f to i64
  %i.h = mul nsw i64 %i.g, %i.d
  %i.i = ashr i64 %i.h, 7                         ; 2 uses
  %i.j = icmp sgt i64 %i.i, 127
  %i.k = and i16 %.02125, 1                       ; 2 uses
  %.not.i.i = icmp eq i16 %i.k, 0
  br i1 %.not.i.i, label %mergemask_sb.exit, label %bb.b

bb.b:                                             ; preds = %do_sat_bhw.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %spec.select24 = tail call i64 @llvm.smin.i64(i64 %i.i, i64 127)
  %i.m = trunc nsw i64 %spec.select24 to i8
  store i8 %i.m, ptr %i.l, align 1
  br label %mergemask_sb.exit

mergemask_sb.exit:                                ; preds = %do_sat_bhw.exit, %bb.b
  %i.n = select i1 %i.j, i16 %i.k, i16 0
  %i.o = zext i1 %.027 to i16
  %i.p = or i16 %i.n, %i.o
  %i.q = icmp ne i16 %i.p, 0                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = lshr i16 %.02125, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.c, label %do_sat_bhw.exit, !llvm.loop !14

bb.c:                                             ; preds = %mergemask_sb.exit
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.s, align 16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4              ; 5 uses
  %i.v = getelementptr i8, ptr %0, i64 560        ; 2 uses
  %.val.i = load i32, ptr %i.v, align 16          ; 4 uses
  %i.w = and i32 %.val.i, 15
  %.not.i.i22 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i22, label %bb.f, label %mve_eci_mask.exit.i

bb.f:                                             ; preds = %bb.e
  %i.x = lshr exact i32 %.val.i, 4                ; 2 uses
  %i.y = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.x to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.y, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.f
  %i.z = zext nneg i32 %i.x to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.z
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.aa = icmp eq i32 %.val.i, 80
  %i.ab = select i1 %i.aa, i32 16, i32 0
  store i32 %i.ab, ptr %i.v, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.e
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.e ] ; 3 uses
  %i.ac = and i32 %i.u, 16711680
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.h

bb.h:                                             ; preds = %mve_eci_mask.exit.i
  %i.ad = and i32 %i.u, 983040
  %i.ae = icmp samesign ult i32 %i.ad, 589824
  %i.af = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.ae, i16 %i.af, i16 %.0.i34.i ; 2 uses
  %i.ag = and i32 %i.u, 15728640
  %i.ah = icmp samesign ult i32 %i.ag, 9437184
  %i.ai = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.ah, i16 %i.ai, i16 %spec.select.i
  %i.aj = zext i16 %.1.i to i32
  %i.ak = xor i32 %i.u, %i.aj                     ; 2 uses
  %i.al = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.al, 0
  %i.am = and i32 %i.ak, -16711681
  %i.an = shl i32 %i.u, 1                         ; 2 uses
  %i.ao = and i32 %i.an, 917504
  %i.ap = or disjoint i32 %i.am, %i.ao
  %i.aq = and i32 %i.ak, -15728641
  %i.ar = select i1 %.not32.i, i32 %i.aq, i32 %i.ap
  %i.as = and i32 %i.an, 14680064
  %i.at = or disjoint i32 %i.ar, %i.as
  store i32 %i.at, ptr %i.t, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.h
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqdmulhh(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
do_sat_bhw.exit:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 9 uses
  %i.b = load i16, ptr %2, align 2
  %i.c = sext i16 %i.b to i64
  %i.d = load i16, ptr %3, align 2
  %i.e = sext i16 %i.d to i64
  %i.f = mul nsw i64 %i.e, %i.c
  %i.g = ashr i64 %i.f, 15                        ; 2 uses
  %i.h = icmp sgt i64 %i.g, 32767
  %spec.select23 = tail call i64 @llvm.smin.i64(i64 %i.g, i64 32767)
  %i.i = and i16 %i.a, 255
  %i.j = zext nneg i16 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = trunc i64 %i.l to i16
  %i.n = load i16, ptr %1, align 2
  %i.o = xor i16 %i.m, -1
  %i.p = and i16 %i.n, %i.o
  %i.q = and i64 %spec.select23, %i.l
  %i.r = trunc i64 %i.q to i16
  %i.s = or i16 %i.p, %i.r
  store i16 %i.s, ptr %1, align 2
  %i.t = trunc i16 %i.a to i1
  %i.u = and i1 %i.h, %i.t
  %i.v = lshr i16 %i.a, 2                         ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.x = load i16, ptr %i.w, align 2
  %i.y = sext i16 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.aa = load i16, ptr %i.z, align 2
  %i.ab = sext i16 %i.aa to i64
  %i.ac = mul nsw i64 %i.ab, %i.y
  %i.ad = ashr i64 %i.ac, 15                      ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, 32767
  %spec.select23.1 = tail call i64 @llvm.smin.i64(i64 %i.ad, i64 32767)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.ag = and i16 %i.v, 255
  %i.ah = zext nneg i16 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ak = trunc i64 %i.aj to i16
  %i.al = load i16, ptr %i.af, align 2
  %i.am = xor i16 %i.ak, -1
  %i.an = and i16 %i.al, %i.am
  %i.ao = and i64 %spec.select23.1, %i.aj
  %i.ap = trunc i64 %i.ao to i16
  %i.aq = or i16 %i.an, %i.ap
  store i16 %i.aq, ptr %i.af, align 2
  %i.ar = and i16 %i.v, 1
  %i.as = select i1 %i.ae, i16 %i.ar, i16 0
  %i.at = zext i1 %i.u to i16
  %i.au = or i16 %i.as, %i.at
  %i.av = lshr i16 %i.a, 4                        ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ax = load i16, ptr %i.aw, align 2
  %i.ay = sext i16 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ba = load i16, ptr %i.az, align 2
  %i.bb = sext i16 %i.ba to i64
  %i.bc = mul nsw i64 %i.bb, %i.ay
  %i.bd = ashr i64 %i.bc, 15                      ; 2 uses
  %i.be = icmp sgt i64 %i.bd, 32767
  %spec.select23.2 = tail call i64 @llvm.smin.i64(i64 %i.bd, i64 32767)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.bg = and i16 %i.av, 255
  %i.bh = zext nneg i16 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8            ; 2 uses
  %i.bk = trunc i64 %i.bj to i16
  %i.bl = load i16, ptr %i.bf, align 2
  %i.bm = xor i16 %i.bk, -1
  %i.bn = and i16 %i.bl, %i.bm
  %i.bo = and i64 %spec.select23.2, %i.bj
  %i.bp = trunc i64 %i.bo to i16
  %i.bq = or i16 %i.bn, %i.bp
  store i16 %i.bq, ptr %i.bf, align 2
  %i.br = and i16 %i.av, 1
  %i.bs = select i1 %i.be, i16 %i.br, i16 0
  %i.bt = or i16 %i.bs, %i.au
  %i.bu = lshr i16 %i.a, 6                        ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.bw = load i16, ptr %i.bv, align 2
  %i.bx = sext i16 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.bz = load i16, ptr %i.by, align 2
  %i.ca = sext i16 %i.bz to i64
  %i.cb = mul nsw i64 %i.ca, %i.bx
  %i.cc = ashr i64 %i.cb, 15                      ; 2 uses
  %i.cd = icmp sgt i64 %i.cc, 32767
  %spec.select23.3 = tail call i64 @llvm.smin.i64(i64 %i.cc, i64 32767)
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.cf = and i16 %i.bu, 255
  %i.cg = zext nneg i16 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8            ; 2 uses
  %i.cj = trunc i64 %i.ci to i16
  %i.ck = load i16, ptr %i.ce, align 2
  %i.cl = xor i16 %i.cj, -1
  %i.cm = and i16 %i.ck, %i.cl
  %i.cn = and i64 %spec.select23.3, %i.ci
  %i.co = trunc i64 %i.cn to i16
  %i.cp = or i16 %i.cm, %i.co
  store i16 %i.cp, ptr %i.ce, align 2
  %i.cq = and i16 %i.bu, 1
  %i.cr = select i1 %i.cd, i16 %i.cq, i16 0
  %i.cs = or i16 %i.cr, %i.bt
  %i.ct = lshr i16 %i.a, 8                        ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cv = load i16, ptr %i.cu, align 2
  %i.cw = sext i16 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cy = load i16, ptr %i.cx, align 2
  %i.cz = sext i16 %i.cy to i64
  %i.da = mul nsw i64 %i.cz, %i.cw
  %i.db = ashr i64 %i.da, 15                      ; 2 uses
  %i.dc = icmp sgt i64 %i.db, 32767
  %spec.select23.4 = tail call i64 @llvm.smin.i64(i64 %i.db, i64 32767)
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.de = zext nneg i16 %i.ct to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.de
  %i.dg = load i64, ptr %i.df, align 8            ; 2 uses
  %i.dh = trunc i64 %i.dg to i16
  %i.di = load i16, ptr %i.dd, align 2
  %i.dj = xor i16 %i.dh, -1
end_hunk_3
begin_hunk_4_@helper_mve_vqdmulhw:do_sat_bhw.exit
  %i.o = xor i32 %i.m, -1
  %i.p = and i32 %i.n, %i.o
  %i.q = and i64 %spec.select23, %i.l
  %i.r = trunc i64 %i.q to i32
  %i.s = or i32 %i.p, %i.r
  store i32 %i.s, ptr %1, align 4
  %i.t = trunc i16 %i.a to i1
  %i.u = and i1 %i.h, %i.t
  %i.v = lshr i16 %i.a, 4                         ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.x = load i32, ptr %i.w, align 4
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul nsw i64 %i.ab, %i.y
  %i.ad = ashr i64 %i.ac, 31                      ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, 2147483647
  %spec.select23.1 = tail call i64 @llvm.smin.i64(i64 %i.ad, i64 2147483647)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ag = and i16 %i.v, 255
  %i.ah = zext nneg i16 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ak = trunc i64 %i.aj to i32
  %i.al = load i32, ptr %i.af, align 4
  %i.am = xor i32 %i.ak, -1
  %i.an = and i32 %i.al, %i.am
  %i.ao = and i64 %spec.select23.1, %i.aj
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = or i32 %i.an, %i.ap
  store i32 %i.aq, ptr %i.af, align 4
  %i.ar = and i16 %i.v, 1
  %i.as = select i1 %i.ae, i16 %i.ar, i16 0
  %i.at = zext i1 %i.u to i16
  %i.au = or i16 %i.as, %i.at
  %i.av = lshr i16 %i.a, 8                        ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = sext i32 %i.ba to i64
  %i.bc = mul nsw i64 %i.bb, %i.ay
  %i.bd = ashr i64 %i.bc, 31                      ; 2 uses
  %i.be = icmp sgt i64 %i.bd, 2147483647
  %spec.select23.2 = tail call i64 @llvm.smin.i64(i64 %i.bd, i64 2147483647)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bg = zext nneg i16 %i.av to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8            ; 2 uses
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = load i32, ptr %i.bf, align 4
  %i.bl = xor i32 %i.bj, -1
  %i.bm = and i32 %i.bk, %i.bl
  %i.bn = and i64 %spec.select23.2, %i.bi
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = or i32 %i.bm, %i.bo
  store i32 %i.bp, ptr %i.bf, align 4
  %i.bq = and i16 %i.av, 1
  %i.br = select i1 %i.be, i16 %i.bq, i16 0
  %i.bs = or i16 %i.br, %i.au
  %i.bt = lshr i16 %i.a, 12                       ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = sext i32 %i.by to i64
  %i.ca = mul nsw i64 %i.bz, %i.bw
  %i.cb = ashr i64 %i.ca, 31                      ; 2 uses
  %i.cc = icmp sgt i64 %i.cb, 2147483647
  %spec.select23.3 = tail call i64 @llvm.smin.i64(i64 %i.cb, i64 2147483647)
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ce = zext nneg i16 %i.bt to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8            ; 2 uses
  %i.ch = trunc i64 %i.cg to i32
  %i.ci = load i32, ptr %i.cd, align 4
  %i.cj = xor i32 %i.ch, -1
  %i.ck = and i32 %i.ci, %i.cj
  %i.cl = and i64 %spec.select23.3, %i.cg
  %i.cm = trunc i64 %i.cl to i32
  %i.cn = or i32 %i.ck, %i.cm
  store i32 %i.cn, ptr %i.cd, align 4
  %i.co = and i16 %i.bt, 1
  %i.cp = select i1 %i.cc, i16 %i.co, i16 0
  %i.cq = or i16 %i.cp, %i.bs
  %.not = icmp eq i16 %i.cq, 0
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %do_sat_bhw.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.cr, align 16
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_sat_bhw.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4            ; 5 uses
  %i.cu = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.cu, align 16         ; 4 uses
  %i.cv = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.cv, 0
  br i1 %.not.i.i, label %bb.c, label %mve_eci_mask.exit.i

bb.c:                                             ; preds = %bb.b
  %i.cw = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.cx = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.cw to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.cx, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.c
  %i.cy = zext nneg i32 %i.cw to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.cy
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.cz = icmp eq i32 %.val.i, 80
  %i.da = select i1 %i.cz, i32 16, i32 0
  store i32 %i.da, ptr %i.cu, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.b
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.b ] ; 3 uses
  %i.db = and i32 %i.ct, 16711680
  %.not.i = icmp eq i32 %i.db, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.e

bb.e:                                             ; preds = %mve_eci_mask.exit.i
  %i.dc = and i32 %i.ct, 983040
  %i.dd = icmp samesign ult i32 %i.dc, 589824
  %i.de = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.dd, i16 %i.de, i16 %.0.i34.i ; 2 uses
  %i.df = and i32 %i.ct, 15728640
  %i.dg = icmp samesign ult i32 %i.df, 9437184
  %i.dh = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.dg, i16 %i.dh, i16 %spec.select.i
  %i.di = zext i16 %.1.i to i32
  %i.dj = xor i32 %i.ct, %i.di                    ; 2 uses
  %i.dk = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.dk, 0
  %i.dl = and i32 %i.dj, -16711681
  %i.dm = shl i32 %i.ct, 1                        ; 2 uses
  %i.dn = and i32 %i.dm, 917504
  %i.do = or disjoint i32 %i.dl, %i.dn
  %i.dp = and i32 %i.dj, -15728641
  %i.dq = select i1 %.not32.i, i32 %i.dp, i32 %i.do
  %i.dr = and i32 %i.dm, 14680064
  %i.ds = or disjoint i32 %i.dq, %i.dr
  store i32 %i.ds, ptr %i.cs, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqrdmulhb(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0)
  br label %do_sat_bhw.exit

do_sat_bhw.exit:                                  ; preds = %bb.a, %mergemask_sb.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %mergemask_sb.exit ] ; 4 uses
  %.027 = phi i1 [ false, %bb.a ], [ %i.r, %mergemask_sb.exit ]
  %.02125 = phi i16 [ %i.a, %bb.a ], [ %i.s, %mergemask_sb.exit ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.c = load i8, ptr %i.b, align 1
  %i.d = sext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1
  %i.g = sext i8 %i.f to i64
  %i.h = mul nsw i64 %i.g, %i.d
  %i.i = add nsw i64 %i.h, 64
  %i.j = ashr i64 %i.i, 7                         ; 2 uses
  %i.k = icmp sgt i64 %i.j, 127
  %i.l = and i16 %.02125, 1                       ; 2 uses
  %.not.i.i = icmp eq i16 %i.l, 0
  br i1 %.not.i.i, label %mergemask_sb.exit, label %bb.b

bb.b:                                             ; preds = %do_sat_bhw.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %spec.select24 = tail call i64 @llvm.smin.i64(i64 %i.j, i64 127)
  %i.n = trunc nsw i64 %spec.select24 to i8
  store i8 %i.n, ptr %i.m, align 1
  br label %mergemask_sb.exit

mergemask_sb.exit:                                ; preds = %do_sat_bhw.exit, %bb.b
  %i.o = select i1 %i.k, i16 %i.l, i16 0
  %i.p = zext i1 %.027 to i16
  %i.q = or i16 %i.o, %i.p
  %i.r = icmp ne i16 %i.q, 0                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = lshr i16 %.02125, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.c, label %do_sat_bhw.exit, !llvm.loop !15

bb.c:                                             ; preds = %mergemask_sb.exit
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.t, align 16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4              ; 5 uses
  %i.w = getelementptr i8, ptr %0, i64 560        ; 2 uses
  %.val.i = load i32, ptr %i.w, align 16          ; 4 uses
  %i.x = and i32 %.val.i, 15
  %.not.i.i22 = icmp eq i32 %i.x, 0
  br i1 %.not.i.i22, label %bb.f, label %mve_eci_mask.exit.i

bb.f:                                             ; preds = %bb.e
  %i.y = lshr exact i32 %.val.i, 4                ; 2 uses
  %i.z = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.y to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.z, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.f
  %i.aa = zext nneg i32 %i.y to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.aa
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.ab = icmp eq i32 %.val.i, 80
  %i.ac = select i1 %i.ab, i32 16, i32 0
  store i32 %i.ac, ptr %i.w, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.e
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.e ] ; 3 uses
  %i.ad = and i32 %i.v, 16711680
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.h

bb.h:                                             ; preds = %mve_eci_mask.exit.i
  %i.ae = and i32 %i.v, 983040
  %i.af = icmp samesign ult i32 %i.ae, 589824
  %i.ag = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.af, i16 %i.ag, i16 %.0.i34.i ; 2 uses
  %i.ah = and i32 %i.v, 15728640
  %i.ai = icmp samesign ult i32 %i.ah, 9437184
  %i.aj = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.ai, i16 %i.aj, i16 %spec.select.i
  %i.ak = zext i16 %.1.i to i32
  %i.al = xor i32 %i.v, %i.ak                     ; 2 uses
  %i.am = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.am, 0
  %i.an = and i32 %i.al, -16711681
  %i.ao = shl i32 %i.v, 1                         ; 2 uses
  %i.ap = and i32 %i.ao, 917504
  %i.aq = or disjoint i32 %i.an, %i.ap
  %i.ar = and i32 %i.al, -15728641
  %i.as = select i1 %.not32.i, i32 %i.ar, i32 %i.aq
  %i.at = and i32 %i.ao, 14680064
  %i.au = or disjoint i32 %i.as, %i.at
  store i32 %i.au, ptr %i.u, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.h
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqrdmulhh(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
do_sat_bhw.exit:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 9 uses
  %i.b = load i16, ptr %2, align 2
  %i.c = sext i16 %i.b to i64
  %i.d = load i16, ptr %3, align 2
  %i.e = sext i16 %i.d to i64
  %i.f = mul nsw i64 %i.e, %i.c
  %i.g = add nsw i64 %i.f, 16384
  %i.h = ashr i64 %i.g, 15                        ; 2 uses
  %i.i = icmp sgt i64 %i.h, 32767
  %spec.select23 = tail call i64 @llvm.smin.i64(i64 %i.h, i64 32767)
  %i.j = and i16 %i.a, 255
  %i.k = zext nneg i16 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = trunc i64 %i.m to i16
  %i.o = load i16, ptr %1, align 2
  %i.p = xor i16 %i.n, -1
  %i.q = and i16 %i.o, %i.p
  %i.r = and i64 %spec.select23, %i.m
  %i.s = trunc i64 %i.r to i16
  %i.t = or i16 %i.q, %i.s
  store i16 %i.t, ptr %1, align 2
  %i.u = trunc i16 %i.a to i1
  %i.v = and i1 %i.i, %i.u
  %i.w = lshr i16 %i.a, 2                         ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.y = load i16, ptr %i.x, align 2
  %i.z = sext i16 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ab = load i16, ptr %i.aa, align 2
  %i.ac = sext i16 %i.ab to i64
  %i.ad = mul nsw i64 %i.ac, %i.z
  %i.ae = add nsw i64 %i.ad, 16384
  %i.af = ashr i64 %i.ae, 15                      ; 2 uses
  %i.ag = icmp sgt i64 %i.af, 32767
  %spec.select23.1 = tail call i64 @llvm.smin.i64(i64 %i.af, i64 32767)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.ai = and i16 %i.w, 255
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8            ; 2 uses
  %i.am = trunc i64 %i.al to i16
  %i.an = load i16, ptr %i.ah, align 2
  %i.ao = xor i16 %i.am, -1
  %i.ap = and i16 %i.an, %i.ao
  %i.aq = and i64 %spec.select23.1, %i.al
  %i.ar = trunc i64 %i.aq to i16
  %i.as = or i16 %i.ap, %i.ar
  store i16 %i.as, ptr %i.ah, align 2
  %i.at = and i16 %i.w, 1
  %i.au = select i1 %i.ag, i16 %i.at, i16 0
  %i.av = zext i1 %i.v to i16
  %i.aw = or i16 %i.au, %i.av
  %i.ax = lshr i16 %i.a, 4                        ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.az = load i16, ptr %i.ay, align 2
  %i.ba = sext i16 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bc = load i16, ptr %i.bb, align 2
  %i.bd = sext i16 %i.bc to i64
  %i.be = mul nsw i64 %i.bd, %i.ba
  %i.bf = add nsw i64 %i.be, 16384
  %i.bg = ashr i64 %i.bf, 15                      ; 2 uses
  %i.bh = icmp sgt i64 %i.bg, 32767
  %spec.select23.2 = tail call i64 @llvm.smin.i64(i64 %i.bg, i64 32767)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.bj = and i16 %i.ax, 255
  %i.bk = zext nneg i16 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8            ; 2 uses
  %i.bn = trunc i64 %i.bm to i16
  %i.bo = load i16, ptr %i.bi, align 2
  %i.bp = xor i16 %i.bn, -1
  %i.bq = and i16 %i.bo, %i.bp
  %i.br = and i64 %spec.select23.2, %i.bm
  %i.bs = trunc i64 %i.br to i16
  %i.bt = or i16 %i.bq, %i.bs
  store i16 %i.bt, ptr %i.bi, align 2
  %i.bu = and i16 %i.ax, 1
  %i.bv = select i1 %i.bh, i16 %i.bu, i16 0
  %i.bw = or i16 %i.bv, %i.aw
  %i.bx = lshr i16 %i.a, 6                        ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.bz = load i16, ptr %i.by, align 2
  %i.ca = sext i16 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.cc = load i16, ptr %i.cb, align 2
  %i.cd = sext i16 %i.cc to i64
  %i.ce = mul nsw i64 %i.cd, %i.ca
  %i.cf = add nsw i64 %i.ce, 16384
  %i.cg = ashr i64 %i.cf, 15                      ; 2 uses
  %i.ch = icmp sgt i64 %i.cg, 32767
  %spec.select23.3 = tail call i64 @llvm.smin.i64(i64 %i.cg, i64 32767)
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.cj = and i16 %i.bx, 255
  %i.ck = zext nneg i16 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.ck
  %i.cm = load i64, ptr %i.cl, align 8            ; 2 uses
  %i.cn = trunc i64 %i.cm to i16
  %i.co = load i16, ptr %i.ci, align 2
  %i.cp = xor i16 %i.cn, -1
  %i.cq = and i16 %i.co, %i.cp
  %i.cr = and i64 %spec.select23.3, %i.cm
  %i.cs = trunc i64 %i.cr to i16
  %i.ct = or i16 %i.cq, %i.cs
  store i16 %i.ct, ptr %i.ci, align 2
  %i.cu = and i16 %i.bx, 1
  %i.cv = select i1 %i.ch, i16 %i.cu, i16 0
  %i.cw = or i16 %i.cv, %i.bw
  %i.cx = lshr i16 %i.a, 8                        ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cz = load i16, ptr %i.cy, align 2
  %i.da = sext i16 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dc = load i16, ptr %i.db, align 2
  %i.dd = sext i16 %i.dc to i64
  %i.de = mul nsw i64 %i.dd, %i.da
  %i.df = add nsw i64 %i.de, 16384
  %i.dg = ashr i64 %i.df, 15                      ; 2 uses
  %i.dh = icmp sgt i64 %i.dg, 32767
  %spec.select23.4 = tail call i64 @llvm.smin.i64(i64 %i.dg, i64 32767)
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dj = zext nneg i16 %i.cx to i64
end_hunk_4
begin_hunk_5_@helper_mve_vqrdmulhw:do_sat_bhw.exit
  %i.s = trunc i64 %i.r to i32
  %i.t = or i32 %i.q, %i.s
  store i32 %i.t, ptr %1, align 4
  %i.u = trunc i16 %i.a to i1
  %i.v = and i1 %i.i, %i.u
  %i.w = lshr i16 %i.a, 4                         ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.y = load i32, ptr %i.x, align 4
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = sext i32 %i.ab to i64
  %i.ad = mul nsw i64 %i.ac, %i.z
  %i.ae = add nsw i64 %i.ad, 1073741824
  %i.af = ashr i64 %i.ae, 31                      ; 2 uses
  %i.ag = icmp sgt i64 %i.af, 2147483647
  %spec.select23.1 = tail call i64 @llvm.smin.i64(i64 %i.af, i64 2147483647)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ai = and i16 %i.w, 255
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8            ; 2 uses
  %i.am = trunc i64 %i.al to i32
  %i.an = load i32, ptr %i.ah, align 4
  %i.ao = xor i32 %i.am, -1
  %i.ap = and i32 %i.an, %i.ao
  %i.aq = and i64 %spec.select23.1, %i.al
  %i.ar = trunc i64 %i.aq to i32
  %i.as = or i32 %i.ap, %i.ar
  store i32 %i.as, ptr %i.ah, align 4
  %i.at = and i16 %i.w, 1
  %i.au = select i1 %i.ag, i16 %i.at, i16 0
  %i.av = zext i1 %i.v to i16
  %i.aw = or i16 %i.au, %i.av
  %i.ax = lshr i16 %i.a, 8                        ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = sext i32 %i.bc to i64
  %i.be = mul nsw i64 %i.bd, %i.ba
  %i.bf = add nsw i64 %i.be, 1073741824
  %i.bg = ashr i64 %i.bf, 31                      ; 2 uses
  %i.bh = icmp sgt i64 %i.bg, 2147483647
  %spec.select23.2 = tail call i64 @llvm.smin.i64(i64 %i.bg, i64 2147483647)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bj = zext nneg i16 %i.ax to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bj
  %i.bl = load i64, ptr %i.bk, align 8            ; 2 uses
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = load i32, ptr %i.bi, align 4
  %i.bo = xor i32 %i.bm, -1
  %i.bp = and i32 %i.bn, %i.bo
  %i.bq = and i64 %spec.select23.2, %i.bl
  %i.br = trunc i64 %i.bq to i32
  %i.bs = or i32 %i.bp, %i.br
  store i32 %i.bs, ptr %i.bi, align 4
  %i.bt = and i16 %i.ax, 1
  %i.bu = select i1 %i.bh, i16 %i.bt, i16 0
  %i.bv = or i16 %i.bu, %i.aw
  %i.bw = lshr i16 %i.a, 12                       ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = sext i32 %i.cb to i64
  %i.cd = mul nsw i64 %i.cc, %i.bz
  %i.ce = add nsw i64 %i.cd, 1073741824
  %i.cf = ashr i64 %i.ce, 31                      ; 2 uses
  %i.cg = icmp sgt i64 %i.cf, 2147483647
  %spec.select23.3 = tail call i64 @llvm.smin.i64(i64 %i.cf, i64 2147483647)
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ci = zext nneg i16 %i.bw to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8            ; 2 uses
  %i.cl = trunc i64 %i.ck to i32
  %i.cm = load i32, ptr %i.ch, align 4
  %i.cn = xor i32 %i.cl, -1
  %i.co = and i32 %i.cm, %i.cn
  %i.cp = and i64 %spec.select23.3, %i.ck
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = or i32 %i.co, %i.cq
  store i32 %i.cr, ptr %i.ch, align 4
  %i.cs = and i16 %i.bw, 1
  %i.ct = select i1 %i.cg, i16 %i.cs, i16 0
  %i.cu = or i16 %i.ct, %i.bv
  %.not = icmp eq i16 %i.cu, 0
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %do_sat_bhw.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.cv, align 16
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_sat_bhw.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4            ; 5 uses
  %i.cy = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.cy, align 16         ; 4 uses
  %i.cz = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.cz, 0
  br i1 %.not.i.i, label %bb.c, label %mve_eci_mask.exit.i

bb.c:                                             ; preds = %bb.b
  %i.da = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.db = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.da to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.db, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.c
  %i.dc = zext nneg i32 %i.da to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.dc
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.dd = icmp eq i32 %.val.i, 80
  %i.de = select i1 %i.dd, i32 16, i32 0
  store i32 %i.de, ptr %i.cy, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.b
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.b ] ; 3 uses
  %i.df = and i32 %i.cx, 16711680
  %.not.i = icmp eq i32 %i.df, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.e

bb.e:                                             ; preds = %mve_eci_mask.exit.i
  %i.dg = and i32 %i.cx, 983040
  %i.dh = icmp samesign ult i32 %i.dg, 589824
  %i.di = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.dh, i16 %i.di, i16 %.0.i34.i ; 2 uses
  %i.dj = and i32 %i.cx, 15728640
  %i.dk = icmp samesign ult i32 %i.dj, 9437184
  %i.dl = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.dk, i16 %i.dl, i16 %spec.select.i
  %i.dm = zext i16 %.1.i to i32
  %i.dn = xor i32 %i.cx, %i.dm                    ; 2 uses
  %i.do = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.do, 0
  %i.dp = and i32 %i.dn, -16711681
  %i.dq = shl i32 %i.cx, 1                        ; 2 uses
  %i.dr = and i32 %i.dq, 917504
  %i.ds = or disjoint i32 %i.dp, %i.dr
  %i.dt = and i32 %i.dn, -15728641
  %i.du = select i1 %.not32.i, i32 %i.dt, i32 %i.ds
  %i.dv = and i32 %i.dq, 14680064
  %i.dw = or disjoint i32 %i.du, %i.dv
  store i32 %i.dw, ptr %i.cw, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqaddsb(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0)
  br label %do_sat_bhw.exit

do_sat_bhw.exit:                                  ; preds = %bb.a, %mergemask_sb.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %mergemask_sb.exit ] ; 4 uses
  %.027 = phi i1 [ false, %bb.a ], [ %i.p, %mergemask_sb.exit ]
  %.02125 = phi i16 [ %i.a, %bb.a ], [ %i.q, %mergemask_sb.exit ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.c = load i8, ptr %i.b, align 1
  %i.d = sext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1
  %i.g = sext i8 %i.f to i64
  %i.h = add nsw i64 %i.g, %i.d                   ; 2 uses
  %i.i = add nsw i64 %i.h, -128
  %narrow = icmp ult i64 %i.i, -256
  %i.j = and i16 %.02125, 1                       ; 2 uses
  %.not.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i, label %mergemask_sb.exit, label %bb.b

bb.b:                                             ; preds = %do_sat_bhw.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %spec.select24 = tail call i64 @llvm.smax.i64(i64 %i.h, i64 -128)
  %.0.in.i = tail call i64 @llvm.smin.i64(i64 %spec.select24, i64 127)
  %i.l = trunc nsw i64 %.0.in.i to i8
  store i8 %i.l, ptr %i.k, align 1
  br label %mergemask_sb.exit

mergemask_sb.exit:                                ; preds = %do_sat_bhw.exit, %bb.b
  %i.m = select i1 %narrow, i16 %i.j, i16 0
  %i.n = zext i1 %.027 to i16
  %i.o = or i16 %i.m, %i.n
  %i.p = icmp ne i16 %i.o, 0                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = lshr i16 %.02125, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.c, label %do_sat_bhw.exit, !llvm.loop !16

bb.c:                                             ; preds = %mergemask_sb.exit
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.r, align 16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4              ; 5 uses
  %i.u = getelementptr i8, ptr %0, i64 560        ; 2 uses
  %.val.i = load i32, ptr %i.u, align 16          ; 4 uses
  %i.v = and i32 %.val.i, 15
  %.not.i.i22 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i22, label %bb.f, label %mve_eci_mask.exit.i

bb.f:                                             ; preds = %bb.e
  %i.w = lshr exact i32 %.val.i, 4                ; 2 uses
  %i.x = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.w to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.x, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.f
  %i.y = zext nneg i32 %i.w to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.y
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.z = icmp eq i32 %.val.i, 80
  %i.aa = select i1 %i.z, i32 16, i32 0
  store i32 %i.aa, ptr %i.u, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.e
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.e ] ; 3 uses
  %i.ab = and i32 %i.t, 16711680
  %.not.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.h

bb.h:                                             ; preds = %mve_eci_mask.exit.i
  %i.ac = and i32 %i.t, 983040
  %i.ad = icmp samesign ult i32 %i.ac, 589824
  %i.ae = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.ad, i16 %i.ae, i16 %.0.i34.i ; 2 uses
  %i.af = and i32 %i.t, 15728640
  %i.ag = icmp samesign ult i32 %i.af, 9437184
  %i.ah = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.ag, i16 %i.ah, i16 %spec.select.i
  %i.ai = zext i16 %.1.i to i32
  %i.aj = xor i32 %i.t, %i.ai                     ; 2 uses
  %i.ak = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.ak, 0
  %i.al = and i32 %i.aj, -16711681
  %i.am = shl i32 %i.t, 1                         ; 2 uses
  %i.an = and i32 %i.am, 917504
  %i.ao = or disjoint i32 %i.al, %i.an
  %i.ap = and i32 %i.aj, -15728641
  %i.aq = select i1 %.not32.i, i32 %i.ap, i32 %i.ao
  %i.ar = and i32 %i.am, 14680064
  %i.as = or disjoint i32 %i.aq, %i.ar
  store i32 %i.as, ptr %i.s, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.h
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqaddsh(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
do_sat_bhw.exit:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 9 uses
  %i.b = load i16, ptr %2, align 2
  %i.c = sext i16 %i.b to i64
  %i.d = load i16, ptr %3, align 2
  %i.e = sext i16 %i.d to i64
  %i.f = add nsw i64 %i.e, %i.c                   ; 2 uses
  %spec.select23 = tail call i64 @llvm.smax.i64(i64 %i.f, i64 -32768)
  %i.g = add nsw i64 %i.f, -32768
  %narrow = icmp ult i64 %i.g, -65536
  %.0.in.i = tail call i64 @llvm.smin.i64(i64 %spec.select23, i64 32767)
  %i.h = and i16 %i.a, 255
  %i.i = zext nneg i16 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = trunc i64 %i.k to i16
  %i.m = load i16, ptr %1, align 2
  %i.n = xor i16 %i.l, -1
  %i.o = and i16 %i.m, %i.n
  %i.p = and i64 %.0.in.i, %i.k
  %i.q = trunc i64 %i.p to i16
  %i.r = or i16 %i.o, %i.q
  store i16 %i.r, ptr %1, align 2
  %i.s = trunc i16 %i.a to i1
  %i.t = and i1 %narrow, %i.s
  %i.u = lshr i16 %i.a, 2                         ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.w = load i16, ptr %i.v, align 2
  %i.x = sext i16 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = sext i16 %i.z to i64
  %i.ab = add nsw i64 %i.aa, %i.x                 ; 2 uses
  %spec.select23.1 = tail call i64 @llvm.smax.i64(i64 %i.ab, i64 -32768)
  %i.ac = add nsw i64 %i.ab, -32768
  %narrow.1 = icmp ult i64 %i.ac, -65536
  %.0.in.i.1 = tail call i64 @llvm.smin.i64(i64 %spec.select23.1, i64 32767)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.ae = and i16 %i.u, 255
  %i.af = zext nneg i16 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8            ; 2 uses
  %i.ai = trunc i64 %i.ah to i16
  %i.aj = load i16, ptr %i.ad, align 2
  %i.ak = xor i16 %i.ai, -1
  %i.al = and i16 %i.aj, %i.ak
  %i.am = and i64 %.0.in.i.1, %i.ah
  %i.an = trunc i64 %i.am to i16
  %i.ao = or i16 %i.al, %i.an
  store i16 %i.ao, ptr %i.ad, align 2
  %i.ap = and i16 %i.u, 1
  %i.aq = select i1 %narrow.1, i16 %i.ap, i16 0
  %i.ar = zext i1 %i.t to i16
  %i.as = or i16 %i.aq, %i.ar
  %i.at = lshr i16 %i.a, 4                        ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.av = load i16, ptr %i.au, align 2
  %i.aw = sext i16 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ay = load i16, ptr %i.ax, align 2
  %i.az = sext i16 %i.ay to i64
  %i.ba = add nsw i64 %i.az, %i.aw                ; 2 uses
  %spec.select23.2 = tail call i64 @llvm.smax.i64(i64 %i.ba, i64 -32768)
  %i.bb = add nsw i64 %i.ba, -32768
  %narrow.2 = icmp ult i64 %i.bb, -65536
  %.0.in.i.2 = tail call i64 @llvm.smin.i64(i64 %spec.select23.2, i64 32767)
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.bd = and i16 %i.at, 255
  %i.be = zext nneg i16 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8            ; 2 uses
  %i.bh = trunc i64 %i.bg to i16
  %i.bi = load i16, ptr %i.bc, align 2
  %i.bj = xor i16 %i.bh, -1
  %i.bk = and i16 %i.bi, %i.bj
  %i.bl = and i64 %.0.in.i.2, %i.bg
  %i.bm = trunc i64 %i.bl to i16
  %i.bn = or i16 %i.bk, %i.bm
  store i16 %i.bn, ptr %i.bc, align 2
  %i.bo = and i16 %i.at, 1
  %i.bp = select i1 %narrow.2, i16 %i.bo, i16 0
  %i.bq = or i16 %i.bp, %i.as
  %i.br = lshr i16 %i.a, 6                        ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.bt = load i16, ptr %i.bs, align 2
  %i.bu = sext i16 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.bw = load i16, ptr %i.bv, align 2
  %i.bx = sext i16 %i.bw to i64
  %i.by = add nsw i64 %i.bx, %i.bu                ; 2 uses
  %spec.select23.3 = tail call i64 @llvm.smax.i64(i64 %i.by, i64 -32768)
  %i.bz = add nsw i64 %i.by, -32768
  %narrow.3 = icmp ult i64 %i.bz, -65536
  %.0.in.i.3 = tail call i64 @llvm.smin.i64(i64 %spec.select23.3, i64 32767)
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.cb = and i16 %i.br, 255
  %i.cc = zext nneg i16 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8            ; 2 uses
  %i.cf = trunc i64 %i.ce to i16
  %i.cg = load i16, ptr %i.ca, align 2
  %i.ch = xor i16 %i.cf, -1
  %i.ci = and i16 %i.cg, %i.ch
  %i.cj = and i64 %.0.in.i.3, %i.ce
  %i.ck = trunc i64 %i.cj to i16
  %i.cl = or i16 %i.ci, %i.ck
  store i16 %i.cl, ptr %i.ca, align 2
  %i.cm = and i16 %i.br, 1
  %i.cn = select i1 %narrow.3, i16 %i.cm, i16 0
  %i.co = or i16 %i.cn, %i.bq
  %i.cp = lshr i16 %i.a, 8                        ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cr = load i16, ptr %i.cq, align 2
  %i.cs = sext i16 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cu = load i16, ptr %i.ct, align 2
  %i.cv = sext i16 %i.cu to i64
  %i.cw = add nsw i64 %i.cv, %i.cs                ; 2 uses
  %spec.select23.4 = tail call i64 @llvm.smax.i64(i64 %i.cw, i64 -32768)
  %i.cx = add nsw i64 %i.cw, -32768
  %narrow.4 = icmp ult i64 %i.cx, -65536
  %.0.in.i.4 = tail call i64 @llvm.smin.i64(i64 %spec.select23.4, i64 32767)
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cz = zext nneg i16 %i.cp to i64
end_hunk_5
begin_hunk_6_@helper_mve_vqadduw:do_sat_bhw.exit
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = trunc i64 %i.k to i32
  %i.m = load i32, ptr %1, align 4
  %i.n = xor i32 %i.l, -1
  %i.o = and i32 %i.m, %i.n
  %i.p = and i64 %spec.select23, %i.k
  %i.q = trunc nuw i64 %i.p to i32
  %i.r = or i32 %i.o, %i.q
  store i32 %i.r, ptr %1, align 4
  %i.s = trunc i16 %i.a to i1
  %i.t = and i1 %i.g, %i.s
  %i.u = lshr i16 %i.a, 4                         ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.w = load i32, ptr %i.v, align 4
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = zext i32 %i.z to i64
  %i.ab = add nuw nsw i64 %i.aa, %i.x             ; 2 uses
  %i.ac = icmp samesign ugt i64 %i.ab, 4294967295
  %spec.select23.1 = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 4294967295)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ae = and i16 %i.u, 255
  %i.af = zext nneg i16 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8            ; 2 uses
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = load i32, ptr %i.ad, align 4
  %i.ak = xor i32 %i.ai, -1
  %i.al = and i32 %i.aj, %i.ak
  %i.am = and i64 %spec.select23.1, %i.ah
  %i.an = trunc nuw i64 %i.am to i32
  %i.ao = or i32 %i.al, %i.an
  store i32 %i.ao, ptr %i.ad, align 4
  %i.ap = and i16 %i.u, 1
  %i.aq = select i1 %i.ac, i16 %i.ap, i16 0
  %i.ar = zext i1 %i.t to i16
  %i.as = or i16 %i.aq, %i.ar
  %i.at = lshr i16 %i.a, 8                        ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = zext i32 %i.ay to i64
  %i.ba = add nuw nsw i64 %i.az, %i.aw            ; 2 uses
  %i.bb = icmp samesign ugt i64 %i.ba, 4294967295
  %spec.select23.2 = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 4294967295)
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bd = zext nneg i16 %i.at to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bd
  %i.bf = load i64, ptr %i.be, align 8            ; 2 uses
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = load i32, ptr %i.bc, align 4
  %i.bi = xor i32 %i.bg, -1
  %i.bj = and i32 %i.bh, %i.bi
  %i.bk = and i64 %spec.select23.2, %i.bf
  %i.bl = trunc nuw i64 %i.bk to i32
  %i.bm = or i32 %i.bj, %i.bl
  store i32 %i.bm, ptr %i.bc, align 4
  %i.bn = and i16 %i.at, 1
  %i.bo = select i1 %i.bb, i16 %i.bn, i16 0
  %i.bp = or i16 %i.bo, %i.as
  %i.bq = lshr i16 %i.a, 12                       ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = zext i32 %i.bv to i64
  %i.bx = add nuw nsw i64 %i.bw, %i.bt            ; 2 uses
  %i.by = icmp samesign ugt i64 %i.bx, 4294967295
  %spec.select23.3 = tail call i64 @llvm.umin.i64(i64 %i.bx, i64 4294967295)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ca = zext nneg i16 %i.bq to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8            ; 2 uses
  %i.cd = trunc i64 %i.cc to i32
  %i.ce = load i32, ptr %i.bz, align 4
  %i.cf = xor i32 %i.cd, -1
  %i.cg = and i32 %i.ce, %i.cf
  %i.ch = and i64 %spec.select23.3, %i.cc
  %i.ci = trunc nuw i64 %i.ch to i32
  %i.cj = or i32 %i.cg, %i.ci
  store i32 %i.cj, ptr %i.bz, align 4
  %i.ck = and i16 %i.bq, 1
  %i.cl = select i1 %i.by, i16 %i.ck, i16 0
  %i.cm = or i16 %i.cl, %i.bp
  %.not = icmp eq i16 %i.cm, 0
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %do_sat_bhw.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.cn, align 16
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_sat_bhw.exit
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4            ; 5 uses
  %i.cq = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.cq, align 16         ; 4 uses
  %i.cr = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.cr, 0
  br i1 %.not.i.i, label %bb.c, label %mve_eci_mask.exit.i

bb.c:                                             ; preds = %bb.b
  %i.cs = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.ct = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.cs to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.ct, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.c
  %i.cu = zext nneg i32 %i.cs to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.cu
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.cv = icmp eq i32 %.val.i, 80
  %i.cw = select i1 %i.cv, i32 16, i32 0
  store i32 %i.cw, ptr %i.cq, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.b
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.b ] ; 3 uses
  %i.cx = and i32 %i.cp, 16711680
  %.not.i = icmp eq i32 %i.cx, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.e

bb.e:                                             ; preds = %mve_eci_mask.exit.i
  %i.cy = and i32 %i.cp, 983040
  %i.cz = icmp samesign ult i32 %i.cy, 589824
  %i.da = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.cz, i16 %i.da, i16 %.0.i34.i ; 2 uses
  %i.db = and i32 %i.cp, 15728640
  %i.dc = icmp samesign ult i32 %i.db, 9437184
  %i.dd = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.dc, i16 %i.dd, i16 %spec.select.i
  %i.de = zext i16 %.1.i to i32
  %i.df = xor i32 %i.cp, %i.de                    ; 2 uses
  %i.dg = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.dg, 0
  %i.dh = and i32 %i.df, -16711681
  %i.di = shl i32 %i.cp, 1                        ; 2 uses
  %i.dj = and i32 %i.di, 917504
  %i.dk = or disjoint i32 %i.dh, %i.dj
  %i.dl = and i32 %i.df, -15728641
  %i.dm = select i1 %.not32.i, i32 %i.dl, i32 %i.dk
  %i.dn = and i32 %i.di, 14680064
  %i.do = or disjoint i32 %i.dm, %i.dn
  store i32 %i.do, ptr %i.co, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqsubsb(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0)
  br label %do_sat_bhw.exit

do_sat_bhw.exit:                                  ; preds = %bb.a, %mergemask_sb.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %mergemask_sb.exit ] ; 4 uses
  %.027 = phi i1 [ false, %bb.a ], [ %i.p, %mergemask_sb.exit ]
  %.02125 = phi i16 [ %i.a, %bb.a ], [ %i.q, %mergemask_sb.exit ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.c = load i8, ptr %i.b, align 1
  %i.d = sext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1
  %i.g = sext i8 %i.f to i64
  %i.h = sub nsw i64 %i.d, %i.g                   ; 2 uses
  %i.i = add nsw i64 %i.h, -128
  %narrow = icmp ult i64 %i.i, -256
  %i.j = and i16 %.02125, 1                       ; 2 uses
  %.not.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i, label %mergemask_sb.exit, label %bb.b

bb.b:                                             ; preds = %do_sat_bhw.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %spec.select24 = tail call i64 @llvm.smax.i64(i64 %i.h, i64 -128)
  %.0.in.i = tail call i64 @llvm.smin.i64(i64 %spec.select24, i64 127)
  %i.l = trunc nsw i64 %.0.in.i to i8
  store i8 %i.l, ptr %i.k, align 1
  br label %mergemask_sb.exit

mergemask_sb.exit:                                ; preds = %do_sat_bhw.exit, %bb.b
  %i.m = select i1 %narrow, i16 %i.j, i16 0
  %i.n = zext i1 %.027 to i16
  %i.o = or i16 %i.m, %i.n
  %i.p = icmp ne i16 %i.o, 0                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = lshr i16 %.02125, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.c, label %do_sat_bhw.exit, !llvm.loop !17

bb.c:                                             ; preds = %mergemask_sb.exit
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.r, align 16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4              ; 5 uses
  %i.u = getelementptr i8, ptr %0, i64 560        ; 2 uses
  %.val.i = load i32, ptr %i.u, align 16          ; 4 uses
  %i.v = and i32 %.val.i, 15
  %.not.i.i22 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i22, label %bb.f, label %mve_eci_mask.exit.i

bb.f:                                             ; preds = %bb.e
  %i.w = lshr exact i32 %.val.i, 4                ; 2 uses
  %i.x = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.w to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.x, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.f
  %i.y = zext nneg i32 %i.w to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.y
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.z = icmp eq i32 %.val.i, 80
  %i.aa = select i1 %i.z, i32 16, i32 0
  store i32 %i.aa, ptr %i.u, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.e
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.e ] ; 3 uses
  %i.ab = and i32 %i.t, 16711680
  %.not.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.h

bb.h:                                             ; preds = %mve_eci_mask.exit.i
  %i.ac = and i32 %i.t, 983040
  %i.ad = icmp samesign ult i32 %i.ac, 589824
  %i.ae = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.ad, i16 %i.ae, i16 %.0.i34.i ; 2 uses
  %i.af = and i32 %i.t, 15728640
  %i.ag = icmp samesign ult i32 %i.af, 9437184
  %i.ah = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.ag, i16 %i.ah, i16 %spec.select.i
  %i.ai = zext i16 %.1.i to i32
  %i.aj = xor i32 %i.t, %i.ai                     ; 2 uses
  %i.ak = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.ak, 0
  %i.al = and i32 %i.aj, -16711681
  %i.am = shl i32 %i.t, 1                         ; 2 uses
  %i.an = and i32 %i.am, 917504
  %i.ao = or disjoint i32 %i.al, %i.an
  %i.ap = and i32 %i.aj, -15728641
  %i.aq = select i1 %.not32.i, i32 %i.ap, i32 %i.ao
  %i.ar = and i32 %i.am, 14680064
  %i.as = or disjoint i32 %i.aq, %i.ar
  store i32 %i.as, ptr %i.s, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.h
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqsubsh(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
do_sat_bhw.exit:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 9 uses
  %i.b = load i16, ptr %2, align 2
  %i.c = sext i16 %i.b to i64
  %i.d = load i16, ptr %3, align 2
  %i.e = sext i16 %i.d to i64
  %i.f = sub nsw i64 %i.c, %i.e                   ; 2 uses
  %spec.select23 = tail call i64 @llvm.smax.i64(i64 %i.f, i64 -32768)
  %i.g = add nsw i64 %i.f, -32768
  %narrow = icmp ult i64 %i.g, -65536
  %.0.in.i = tail call i64 @llvm.smin.i64(i64 %spec.select23, i64 32767)
  %i.h = and i16 %i.a, 255
  %i.i = zext nneg i16 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = trunc i64 %i.k to i16
  %i.m = load i16, ptr %1, align 2
  %i.n = xor i16 %i.l, -1
  %i.o = and i16 %i.m, %i.n
  %i.p = and i64 %.0.in.i, %i.k
  %i.q = trunc i64 %i.p to i16
  %i.r = or i16 %i.o, %i.q
  store i16 %i.r, ptr %1, align 2
  %i.s = trunc i16 %i.a to i1
  %i.t = and i1 %narrow, %i.s
  %i.u = lshr i16 %i.a, 2                         ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.w = load i16, ptr %i.v, align 2
  %i.x = sext i16 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = sext i16 %i.z to i64
  %i.ab = sub nsw i64 %i.x, %i.aa                 ; 2 uses
  %spec.select23.1 = tail call i64 @llvm.smax.i64(i64 %i.ab, i64 -32768)
  %i.ac = add nsw i64 %i.ab, -32768
  %narrow.1 = icmp ult i64 %i.ac, -65536
  %.0.in.i.1 = tail call i64 @llvm.smin.i64(i64 %spec.select23.1, i64 32767)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.ae = and i16 %i.u, 255
  %i.af = zext nneg i16 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8            ; 2 uses
  %i.ai = trunc i64 %i.ah to i16
  %i.aj = load i16, ptr %i.ad, align 2
  %i.ak = xor i16 %i.ai, -1
  %i.al = and i16 %i.aj, %i.ak
  %i.am = and i64 %.0.in.i.1, %i.ah
  %i.an = trunc i64 %i.am to i16
  %i.ao = or i16 %i.al, %i.an
  store i16 %i.ao, ptr %i.ad, align 2
  %i.ap = and i16 %i.u, 1
  %i.aq = select i1 %narrow.1, i16 %i.ap, i16 0
  %i.ar = zext i1 %i.t to i16
  %i.as = or i16 %i.aq, %i.ar
  %i.at = lshr i16 %i.a, 4                        ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.av = load i16, ptr %i.au, align 2
  %i.aw = sext i16 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ay = load i16, ptr %i.ax, align 2
  %i.az = sext i16 %i.ay to i64
  %i.ba = sub nsw i64 %i.aw, %i.az                ; 2 uses
  %spec.select23.2 = tail call i64 @llvm.smax.i64(i64 %i.ba, i64 -32768)
  %i.bb = add nsw i64 %i.ba, -32768
  %narrow.2 = icmp ult i64 %i.bb, -65536
  %.0.in.i.2 = tail call i64 @llvm.smin.i64(i64 %spec.select23.2, i64 32767)
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.bd = and i16 %i.at, 255
  %i.be = zext nneg i16 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8            ; 2 uses
  %i.bh = trunc i64 %i.bg to i16
  %i.bi = load i16, ptr %i.bc, align 2
  %i.bj = xor i16 %i.bh, -1
  %i.bk = and i16 %i.bi, %i.bj
  %i.bl = and i64 %.0.in.i.2, %i.bg
  %i.bm = trunc i64 %i.bl to i16
  %i.bn = or i16 %i.bk, %i.bm
  store i16 %i.bn, ptr %i.bc, align 2
  %i.bo = and i16 %i.at, 1
  %i.bp = select i1 %narrow.2, i16 %i.bo, i16 0
  %i.bq = or i16 %i.bp, %i.as
  %i.br = lshr i16 %i.a, 6                        ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.bt = load i16, ptr %i.bs, align 2
  %i.bu = sext i16 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.bw = load i16, ptr %i.bv, align 2
  %i.bx = sext i16 %i.bw to i64
  %i.by = sub nsw i64 %i.bu, %i.bx                ; 2 uses
  %spec.select23.3 = tail call i64 @llvm.smax.i64(i64 %i.by, i64 -32768)
  %i.bz = add nsw i64 %i.by, -32768
  %narrow.3 = icmp ult i64 %i.bz, -65536
  %.0.in.i.3 = tail call i64 @llvm.smin.i64(i64 %spec.select23.3, i64 32767)
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.cb = and i16 %i.br, 255
  %i.cc = zext nneg i16 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8            ; 2 uses
  %i.cf = trunc i64 %i.ce to i16
  %i.cg = load i16, ptr %i.ca, align 2
  %i.ch = xor i16 %i.cf, -1
  %i.ci = and i16 %i.cg, %i.ch
  %i.cj = and i64 %.0.in.i.3, %i.ce
  %i.ck = trunc i64 %i.cj to i16
  %i.cl = or i16 %i.ci, %i.ck
  store i16 %i.cl, ptr %i.ca, align 2
  %i.cm = and i16 %i.br, 1
  %i.cn = select i1 %narrow.3, i16 %i.cm, i16 0
  %i.co = or i16 %i.cn, %i.bq
  %i.cp = lshr i16 %i.a, 8                        ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cr = load i16, ptr %i.cq, align 2
  %i.cs = sext i16 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cu = load i16, ptr %i.ct, align 2
  %i.cv = sext i16 %i.cu to i64
  %i.cw = sub nsw i64 %i.cs, %i.cv                ; 2 uses
  %spec.select23.4 = tail call i64 @llvm.smax.i64(i64 %i.cw, i64 -32768)
  %i.cx = add nsw i64 %i.cw, -32768
  %narrow.4 = icmp ult i64 %i.cx, -65536
  %.0.in.i.4 = tail call i64 @llvm.smin.i64(i64 %spec.select23.4, i64 32767)
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cz = zext nneg i16 %i.cp to i64
end_hunk_6
begin_hunk_7_@helper_mve_vqsubuw:do_sat_bhw.exit
  %i.y = zext i32 %i.x to i64
  %i.z = sub nsw i64 %i.v, %i.y                   ; 2 uses
  %.lobit.1 = lshr i64 %i.z, 63
  %.022.1 = trunc nuw nsw i64 %.lobit.1 to i16
  %.0.in.i.1 = tail call i64 @llvm.smax.i64(i64 %i.z, i64 0)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ab = and i16 %i.s, 255
  %i.ac = zext nneg i16 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.af = trunc i64 %i.ae to i32
  %i.ag = load i32, ptr %i.aa, align 4
  %i.ah = xor i32 %i.af, -1
  %i.ai = and i32 %i.ag, %i.ah
  %i.aj = and i64 %.0.in.i.1, %i.ae
  %i.ak = trunc nuw i64 %i.aj to i32
  %i.al = or i32 %i.ai, %i.ak
  store i32 %i.al, ptr %i.aa, align 4
  %i.am = and i16 %i.s, %.022.1
  %i.an = or i16 %i.am, %i.r
  %i.ao = lshr i16 %i.a, 8                        ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.at = load i32, ptr %i.as, align 4
  %i.au = zext i32 %i.at to i64
  %i.av = sub nsw i64 %i.ar, %i.au                ; 2 uses
  %.lobit.2 = lshr i64 %i.av, 63
  %.022.2 = trunc nuw nsw i64 %.lobit.2 to i16
  %.0.in.i.2 = tail call i64 @llvm.smax.i64(i64 %i.av, i64 0)
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ax = zext nneg i16 %i.ao to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8            ; 2 uses
  %i.ba = trunc i64 %i.az to i32
  %i.bb = load i32, ptr %i.aw, align 4
  %i.bc = xor i32 %i.ba, -1
  %i.bd = and i32 %i.bb, %i.bc
  %i.be = and i64 %.0.in.i.2, %i.az
  %i.bf = trunc nuw i64 %i.be to i32
  %i.bg = or i32 %i.bd, %i.bf
  store i32 %i.bg, ptr %i.aw, align 4
  %i.bh = and i16 %i.ao, %.022.2
  %i.bi = or i16 %i.bh, %i.an
  %i.bj = lshr i16 %i.a, 12                       ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = zext i32 %i.bo to i64
  %i.bq = sub nsw i64 %i.bm, %i.bp                ; 2 uses
  %.lobit.3 = lshr i64 %i.bq, 63
  %.022.3 = trunc nuw nsw i64 %.lobit.3 to i16
  %.0.in.i.3 = tail call i64 @llvm.smax.i64(i64 %i.bq, i64 0)
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.bs = zext nneg i16 %i.bj to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8            ; 2 uses
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = load i32, ptr %i.br, align 4
  %i.bx = xor i32 %i.bv, -1
  %i.by = and i32 %i.bw, %i.bx
  %i.bz = and i64 %.0.in.i.3, %i.bu
  %i.ca = trunc nuw i64 %i.bz to i32
  %i.cb = or i32 %i.by, %i.ca
  store i32 %i.cb, ptr %i.br, align 4
  %i.cc = and i16 %i.bj, %.022.3
  %i.cd = or i16 %i.cc, %i.bi
  %.not = icmp eq i16 %i.cd, 0
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %do_sat_bhw.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.ce, align 16
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_sat_bhw.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4            ; 5 uses
  %i.ch = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.ch, align 16         ; 4 uses
  %i.ci = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i, label %bb.c, label %mve_eci_mask.exit.i

bb.c:                                             ; preds = %bb.b
  %i.cj = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.ck = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.cj to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.ck, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.c
  %i.cl = zext nneg i32 %i.cj to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.cl
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.cm = icmp eq i32 %.val.i, 80
  %i.cn = select i1 %i.cm, i32 16, i32 0
  store i32 %i.cn, ptr %i.ch, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.b
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.b ] ; 3 uses
  %i.co = and i32 %i.cg, 16711680
  %.not.i = icmp eq i32 %i.co, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.e

bb.e:                                             ; preds = %mve_eci_mask.exit.i
  %i.cp = and i32 %i.cg, 983040
  %i.cq = icmp samesign ult i32 %i.cp, 589824
  %i.cr = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.cq, i16 %i.cr, i16 %.0.i34.i ; 2 uses
  %i.cs = and i32 %i.cg, 15728640
  %i.ct = icmp samesign ult i32 %i.cs, 9437184
  %i.cu = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.ct, i16 %i.cu, i16 %spec.select.i
  %i.cv = zext i16 %.1.i to i32
  %i.cw = xor i32 %i.cg, %i.cv                    ; 2 uses
  %i.cx = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.cx, 0
  %i.cy = and i32 %i.cw, -16711681
  %i.cz = shl i32 %i.cg, 1                        ; 2 uses
  %i.da = and i32 %i.cz, 917504
  %i.db = or disjoint i32 %i.cy, %i.da
  %i.dc = and i32 %i.cw, -15728641
  %i.dd = select i1 %.not32.i, i32 %i.dc, i32 %i.db
  %i.de = and i32 %i.cz, 14680064
  %i.df = or disjoint i32 %i.dd, %i.de
  store i32 %i.df, ptr %i.cf, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vshlsb(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %mergemask_sb.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %mergemask_sb.exit ] ; 4 uses
  %.01417 = phi i16 [ %i.a, %bb.a ], [ %i.s, %mergemask_sb.exit ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.d = load i8, ptr %i.c, align 1
  %i.e = sext i8 %i.d to i32                      ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.g = load i8, ptr %i.f, align 1               ; 4 uses
  %i.h = sext i8 %i.g to i32                      ; 2 uses
  %.not.i = icmp sgt i8 %i.g, -8
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = ashr i32 %i.e, 31
  br label %do_sqrshl_bhs.exit

bb.d:                                             ; preds = %bb.b
  %i.j = icmp slt i8 %i.g, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = sub nsw i32 0, %i.h
  %i.l = ashr i32 %i.e, %i.k
  br label %do_sqrshl_bhs.exit

bb.f:                                             ; preds = %bb.d
  %i.m = icmp samesign ult i8 %i.g, 8
  br i1 %i.m, label %bb.g, label %do_sqrshl_bhs.exit

bb.g:                                             ; preds = %bb.f
  %i.n = shl nsw i32 %i.e, %i.h
  %i.o = shl i32 %i.n, 24
  %i.p = ashr exact i32 %i.o, 24
  br label %do_sqrshl_bhs.exit

do_sqrshl_bhs.exit:                               ; preds = %bb.f, %bb.c, %bb.e, %bb.g
  %.3.i = phi i32 [ %i.i, %bb.c ], [ %i.l, %bb.e ], [ %i.p, %bb.g ], [ 0, %bb.f ]
  %i.q = and i16 %.01417, 1
  %.not.i.i = icmp eq i16 %i.q, 0
  br i1 %.not.i.i, label %mergemask_sb.exit, label %bb.h

bb.h:                                             ; preds = %do_sqrshl_bhs.exit
  %i.r = trunc nsw i32 %.3.i to i8
  store i8 %i.r, ptr %i.b, align 1
  br label %mergemask_sb.exit

mergemask_sb.exit:                                ; preds = %do_sqrshl_bhs.exit, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = lshr i16 %.01417, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.i, label %bb.b, !llvm.loop !18

bb.i:                                             ; preds = %mergemask_sb.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4              ; 5 uses
  %i.v = getelementptr i8, ptr %0, i64 560        ; 2 uses
  %.val.i = load i32, ptr %i.v, align 16          ; 4 uses
  %i.w = and i32 %.val.i, 15
  %.not.i.i15 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i15, label %bb.j, label %mve_eci_mask.exit.i

bb.j:                                             ; preds = %bb.i
  %i.x = lshr exact i32 %.val.i, 4                ; 2 uses
  %i.y = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.x to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.y, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.j
  %i.z = zext nneg i32 %i.x to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.z
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.aa = icmp eq i32 %.val.i, 80
  %i.ab = select i1 %i.aa, i32 16, i32 0
  store i32 %i.ab, ptr %i.v, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.i
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.i ] ; 3 uses
  %i.ac = and i32 %i.u, 16711680
  %.not.i16 = icmp eq i32 %i.ac, 0
  br i1 %.not.i16, label %mve_advance_vpt.exit, label %bb.l

bb.l:                                             ; preds = %mve_eci_mask.exit.i
  %i.ad = and i32 %i.u, 983040
  %i.ae = icmp samesign ult i32 %i.ad, 589824
  %i.af = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.ae, i16 %i.af, i16 %.0.i34.i ; 2 uses
  %i.ag = and i32 %i.u, 15728640
  %i.ah = icmp samesign ult i32 %i.ag, 9437184
  %i.ai = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.ah, i16 %i.ai, i16 %spec.select.i
  %i.aj = zext i16 %.1.i to i32
  %i.ak = xor i32 %i.u, %i.aj                     ; 2 uses
  %i.al = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.al, 0
  %i.am = and i32 %i.ak, -16711681
  %i.an = shl i32 %i.u, 1                         ; 2 uses
  %i.ao = and i32 %i.an, 917504
  %i.ap = or disjoint i32 %i.am, %i.ao
  %i.aq = and i32 %i.ak, -15728641
  %i.ar = select i1 %.not32.i, i32 %i.aq, i32 %i.ap
  %i.as = and i32 %i.an, 14680064
  %i.at = or disjoint i32 %i.ar, %i.as
  store i32 %i.at, ptr %i.t, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.l
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vshlsh(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 8 uses
  %i.b = load i16, ptr %2, align 2
  %i.c = sext i16 %i.b to i32                     ; 3 uses
  %i.d = load i16, ptr %3, align 2
  %i.e = zext i16 %i.d to i32
  %sext = shl i32 %i.e, 24
  %i.f = ashr exact i32 %sext, 24                 ; 5 uses
  %.not.i = icmp sgt i32 %i.f, -16
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ashr i32 %i.c, 31
  br label %do_sqrshl_bhs.exit

bb.c:                                             ; preds = %bb.a
  %i.h = icmp slt i32 %i.f, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = sub nsw i32 0, %i.f
  %i.j = ashr i32 %i.c, %i.i
  br label %do_sqrshl_bhs.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp samesign ult i32 %i.f, 16
  br i1 %i.k, label %bb.f, label %do_sqrshl_bhs.exit

bb.f:                                             ; preds = %bb.e
  %i.l = shl nsw i32 %i.c, %i.f
  %i.m = shl i32 %i.l, 16
  %i.n = ashr exact i32 %i.m, 16
  br label %do_sqrshl_bhs.exit

do_sqrshl_bhs.exit:                               ; preds = %bb.e, %bb.b, %bb.d, %bb.f
  %.3.i = phi i32 [ %i.g, %bb.b ], [ %i.j, %bb.d ], [ %i.n, %bb.f ], [ 0, %bb.e ]
  %i.o = trunc nsw i32 %.3.i to i16
  %i.p = and i16 %i.a, 255
  %i.q = zext nneg i16 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8
  %i.t = trunc i64 %i.s to i16                    ; 2 uses
  %i.u = load i16, ptr %1, align 2
  %i.v = xor i16 %i.t, -1
  %i.w = and i16 %i.u, %i.v
  %i.x = and i16 %i.t, %i.o
  %i.y = or i16 %i.w, %i.x
  store i16 %i.y, ptr %1, align 2
  %i.z = lshr i16 %i.a, 2
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = sext i16 %i.ac to i32                   ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = zext i16 %i.af to i32
  %sext.1 = shl i32 %i.ag, 24
  %i.ah = ashr exact i32 %sext.1, 24              ; 5 uses
  %.not.i.1 = icmp sgt i32 %i.ah, -16
  br i1 %.not.i.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %do_sqrshl_bhs.exit
  %i.ai = ashr i32 %i.ad, 31
  br label %do_sqrshl_bhs.exit.1

bb.h:                                             ; preds = %do_sqrshl_bhs.exit
  %i.aj = icmp slt i32 %i.ah, 0
  br i1 %i.aj, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = icmp samesign ult i32 %i.ah, 16
  br i1 %i.ak, label %bb.j, label %do_sqrshl_bhs.exit.1

bb.j:                                             ; preds = %bb.i
  %i.al = shl nsw i32 %i.ad, %i.ah
  %i.am = shl i32 %i.al, 16
  %i.an = ashr exact i32 %i.am, 16
  br label %do_sqrshl_bhs.exit.1

bb.k:                                             ; preds = %bb.h
  %i.ao = sub nsw i32 0, %i.ah
  %i.ap = ashr i32 %i.ad, %i.ao
  br label %do_sqrshl_bhs.exit.1

do_sqrshl_bhs.exit.1:                             ; preds = %bb.k, %bb.j, %bb.i, %bb.g
  %.3.i.1 = phi i32 [ %i.ai, %bb.g ], [ %i.ap, %bb.k ], [ %i.an, %bb.j ], [ 0, %bb.i ]
  %i.aq = trunc nsw i32 %.3.i.1 to i16
  %i.ar = and i16 %i.z, 255
  %i.as = zext nneg i16 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8
  %i.av = trunc i64 %i.au to i16                  ; 2 uses
  %i.aw = load i16, ptr %i.aa, align 2
  %i.ax = xor i16 %i.av, -1
  %i.ay = and i16 %i.aw, %i.ax
  %i.az = and i16 %i.av, %i.aq
  %i.ba = or i16 %i.ay, %i.az
  store i16 %i.ba, ptr %i.aa, align 2
  %i.bb = lshr i16 %i.a, 4
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.be = load i16, ptr %i.bd, align 2
  %i.bf = sext i16 %i.be to i32                   ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bh = load i16, ptr %i.bg, align 2
  %i.bi = zext i16 %i.bh to i32
  %sext.2 = shl i32 %i.bi, 24
  %i.bj = ashr exact i32 %sext.2, 24              ; 5 uses
  %.not.i.2 = icmp sgt i32 %i.bj, -16
  br i1 %.not.i.2, label %bb.m, label %bb.l

bb.l:                                             ; preds = %do_sqrshl_bhs.exit.1
  %i.bk = ashr i32 %i.bf, 31
  br label %do_sqrshl_bhs.exit.2

bb.m:                                             ; preds = %do_sqrshl_bhs.exit.1
  %i.bl = icmp slt i32 %i.bj, 0
  br i1 %i.bl, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = icmp samesign ult i32 %i.bj, 16
  br i1 %i.bm, label %bb.o, label %do_sqrshl_bhs.exit.2

bb.o:                                             ; preds = %bb.n
  %i.bn = shl nsw i32 %i.bf, %i.bj
  %i.bo = shl i32 %i.bn, 16
  %i.bp = ashr exact i32 %i.bo, 16
  br label %do_sqrshl_bhs.exit.2

bb.p:                                             ; preds = %bb.m
  %i.bq = sub nsw i32 0, %i.bj
  %i.br = ashr i32 %i.bf, %i.bq
end_hunk_7
begin_hunk_8_@helper_mve_vshlsw:bb.a
  %i.ar = and i32 %.3.i.1, %i.an
  %i.as = or i32 %i.aq, %i.ar
  store i32 %i.as, ptr %i.w, align 4
  %i.at = lshr i16 %i.a, 8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aw = load i32, ptr %i.av, align 4            ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = shl i32 %i.ay, 24
  %i.ba = ashr exact i32 %i.az, 24                ; 5 uses
  %.not.i.2 = icmp sgt i32 %i.ba, -32
  br i1 %.not.i.2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %do_sqrshl_bhs.exit.1
  %i.bb = ashr i32 %i.aw, 31
  br label %do_sqrshl_bhs.exit.2

bb.k:                                             ; preds = %do_sqrshl_bhs.exit.1
  %i.bc = icmp slt i32 %i.ba, 0
  br i1 %i.bc, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = icmp samesign ult i32 %i.ba, 32
  %i.be = shl i32 %i.aw, %i.ba
  %spec.select.2 = select i1 %i.bd, i32 %i.be, i32 0
  br label %do_sqrshl_bhs.exit.2

bb.m:                                             ; preds = %bb.k
  %i.bf = sub nsw i32 0, %i.ba
  %i.bg = ashr i32 %i.aw, %i.bf
  br label %do_sqrshl_bhs.exit.2

do_sqrshl_bhs.exit.2:                             ; preds = %bb.m, %bb.l, %bb.j
  %.3.i.2 = phi i32 [ %i.bb, %bb.j ], [ %i.bg, %bb.m ], [ %spec.select.2, %bb.l ]
  %i.bh = zext nneg i16 %i.at to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = trunc i64 %i.bj to i32                  ; 2 uses
  %i.bl = load i32, ptr %i.au, align 4
  %i.bm = xor i32 %i.bk, -1
  %i.bn = and i32 %i.bl, %i.bm
  %i.bo = and i32 %.3.i.2, %i.bk
  %i.bp = or i32 %i.bn, %i.bo
  store i32 %i.bp, ptr %i.au, align 4
  %i.bq = lshr i16 %i.a, 12
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bt = load i32, ptr %i.bs, align 4            ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = shl i32 %i.bv, 24
  %i.bx = ashr exact i32 %i.bw, 24                ; 5 uses
  %.not.i.3 = icmp sgt i32 %i.bx, -32
  br i1 %.not.i.3, label %bb.o, label %bb.n

bb.n:                                             ; preds = %do_sqrshl_bhs.exit.2
  %i.by = ashr i32 %i.bt, 31
  br label %do_sqrshl_bhs.exit.3

bb.o:                                             ; preds = %do_sqrshl_bhs.exit.2
  %i.bz = icmp slt i32 %i.bx, 0
  br i1 %i.bz, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ca = icmp samesign ult i32 %i.bx, 32
  %i.cb = shl i32 %i.bt, %i.bx
  %spec.select.3 = select i1 %i.ca, i32 %i.cb, i32 0
  br label %do_sqrshl_bhs.exit.3

bb.q:                                             ; preds = %bb.o
  %i.cc = sub nsw i32 0, %i.bx
  %i.cd = ashr i32 %i.bt, %i.cc
  br label %do_sqrshl_bhs.exit.3

do_sqrshl_bhs.exit.3:                             ; preds = %bb.q, %bb.p, %bb.n
  %.3.i.3 = phi i32 [ %i.by, %bb.n ], [ %i.cd, %bb.q ], [ %spec.select.3, %bb.p ]
  %i.ce = zext nneg i16 %i.bq to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = trunc i64 %i.cg to i32                  ; 2 uses
  %i.ci = load i32, ptr %i.br, align 4
  %i.cj = xor i32 %i.ch, -1
  %i.ck = and i32 %i.ci, %i.cj
  %i.cl = and i32 %.3.i.3, %i.ch
  %i.cm = or i32 %i.ck, %i.cl
  store i32 %i.cm, ptr %i.br, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4            ; 5 uses
  %i.cp = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.cp, align 16         ; 4 uses
  %i.cq = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i, label %bb.r, label %mve_eci_mask.exit.i

bb.r:                                             ; preds = %do_sqrshl_bhs.exit.3
  %i.cr = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.cs = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.cr to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.cs, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.r
  %i.ct = zext nneg i32 %i.cr to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.ct
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.cu = icmp eq i32 %.val.i, 80
  %i.cv = select i1 %i.cu, i32 16, i32 0
  store i32 %i.cv, ptr %i.cp, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %do_sqrshl_bhs.exit.3
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %do_sqrshl_bhs.exit.3 ] ; 3 uses
  %i.cw = and i32 %i.co, 16711680
  %.not.i15 = icmp eq i32 %i.cw, 0
  br i1 %.not.i15, label %mve_advance_vpt.exit, label %bb.t

bb.t:                                             ; preds = %mve_eci_mask.exit.i
  %i.cx = and i32 %i.co, 983040
  %i.cy = icmp samesign ult i32 %i.cx, 589824
  %i.cz = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.cy, i16 %i.cz, i16 %.0.i34.i ; 2 uses
  %i.da = and i32 %i.co, 15728640
  %i.db = icmp samesign ult i32 %i.da, 9437184
  %i.dc = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.db, i16 %i.dc, i16 %spec.select.i
  %i.dd = zext i16 %.1.i to i32
  %i.de = xor i32 %i.co, %i.dd                    ; 2 uses
  %i.df = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.df, 0
  %i.dg = and i32 %i.de, -16711681
  %i.dh = shl i32 %i.co, 1                        ; 2 uses
  %i.di = and i32 %i.dh, 917504
  %i.dj = or disjoint i32 %i.dg, %i.di
  %i.dk = and i32 %i.de, -15728641
  %i.dl = select i1 %.not32.i, i32 %i.dk, i32 %i.dj
  %i.dm = and i32 %i.dh, 14680064
  %i.dn = or disjoint i32 %i.dl, %i.dm
  store i32 %i.dn, ptr %i.cn, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.t
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vshlub(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %mergemask_ub.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %mergemask_ub.exit ] ; 4 uses
  %.01417 = phi i16 [ %i.a, %bb.a ], [ %i.p, %mergemask_ub.exit ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i32                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.g = load i8, ptr %i.f, align 1               ; 4 uses
  %i.h = sext i8 %i.g to i32                      ; 2 uses
  %.not.i = icmp sgt i8 %i.g, -8
  br i1 %.not.i, label %bb.c, label %do_uqrshl_bhs.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp slt i8 %i.g, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = sub nsw i32 0, %i.h
  %i.k = lshr i32 %i.e, %i.j
  br label %do_uqrshl_bhs.exit

bb.e:                                             ; preds = %bb.c
  %i.l = icmp samesign ult i8 %i.g, 8
  %i.m = shl nuw nsw i32 %i.e, %i.h
  %spec.select = select i1 %i.l, i32 %i.m, i32 0
  br label %do_uqrshl_bhs.exit

do_uqrshl_bhs.exit:                               ; preds = %bb.e, %bb.b, %bb.d
  %.3.i = phi i32 [ 0, %bb.b ], [ %spec.select, %bb.e ], [ %i.k, %bb.d ]
  %i.n = and i16 %.01417, 1
  %.not.i15 = icmp eq i16 %i.n, 0
  br i1 %.not.i15, label %mergemask_ub.exit, label %bb.f

bb.f:                                             ; preds = %do_uqrshl_bhs.exit
  %i.o = trunc i32 %.3.i to i8
  store i8 %i.o, ptr %i.b, align 1
  br label %mergemask_ub.exit

mergemask_ub.exit:                                ; preds = %do_uqrshl_bhs.exit, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = lshr i16 %.01417, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.g, label %bb.b, !llvm.loop !19

bb.g:                                             ; preds = %mergemask_ub.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4              ; 5 uses
  %i.s = getelementptr i8, ptr %0, i64 560        ; 2 uses
  %.val.i = load i32, ptr %i.s, align 16          ; 4 uses
  %i.t = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i, label %bb.h, label %mve_eci_mask.exit.i

bb.h:                                             ; preds = %bb.g
  %i.u = lshr exact i32 %.val.i, 4                ; 2 uses
  %i.v = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.u to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.v, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.h
  %i.w = zext nneg i32 %i.u to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.w
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.x = icmp eq i32 %.val.i, 80
  %i.y = select i1 %i.x, i32 16, i32 0
  store i32 %i.y, ptr %i.s, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.g
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.g ] ; 3 uses
  %i.z = and i32 %i.r, 16711680
  %.not.i16 = icmp eq i32 %i.z, 0
  br i1 %.not.i16, label %mve_advance_vpt.exit, label %bb.j

bb.j:                                             ; preds = %mve_eci_mask.exit.i
  %i.aa = and i32 %i.r, 983040
  %i.ab = icmp samesign ult i32 %i.aa, 589824
  %i.ac = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.ab, i16 %i.ac, i16 %.0.i34.i ; 2 uses
  %i.ad = and i32 %i.r, 15728640
  %i.ae = icmp samesign ult i32 %i.ad, 9437184
  %i.af = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.ae, i16 %i.af, i16 %spec.select.i
  %i.ag = zext i16 %.1.i to i32
  %i.ah = xor i32 %i.r, %i.ag                     ; 2 uses
  %i.ai = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.ai, 0
  %i.aj = and i32 %i.ah, -16711681
  %i.ak = shl i32 %i.r, 1                         ; 2 uses
  %i.al = and i32 %i.ak, 917504
  %i.am = or disjoint i32 %i.aj, %i.al
  %i.an = and i32 %i.ah, -15728641
  %i.ao = select i1 %.not32.i, i32 %i.an, i32 %i.am
  %i.ap = and i32 %i.ak, 14680064
  %i.aq = or disjoint i32 %i.ao, %i.ap
  store i32 %i.aq, ptr %i.q, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.j
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vshluh(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 8 uses
  %i.b = load i16, ptr %2, align 2
  %i.c = zext i16 %i.b to i32                     ; 2 uses
  %i.d = load i16, ptr %3, align 2
  %i.e = zext i16 %i.d to i32
  %sext = shl i32 %i.e, 24
  %i.f = ashr exact i32 %sext, 24                 ; 5 uses
  %.not.i = icmp sgt i32 %i.f, -16
  br i1 %.not.i, label %bb.b, label %do_uqrshl_bhs.exit

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = sub nsw i32 0, %i.f
  %i.i = lshr i32 %i.c, %i.h
  br label %do_uqrshl_bhs.exit

bb.d:                                             ; preds = %bb.b
  %i.j = icmp samesign ult i32 %i.f, 16
  %i.k = shl nuw nsw i32 %i.c, %i.f
  %spec.select = select i1 %i.j, i32 %i.k, i32 0
  br label %do_uqrshl_bhs.exit

do_uqrshl_bhs.exit:                               ; preds = %bb.d, %bb.a, %bb.c
  %.3.i = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.d ], [ %i.i, %bb.c ]
  %i.l = trunc i32 %.3.i to i16
  %i.m = and i16 %i.a, 255
  %i.n = zext nneg i16 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.n
  %i.p = load i64, ptr %i.o, align 8
  %i.q = trunc i64 %i.p to i16                    ; 2 uses
  %i.r = load i16, ptr %1, align 2
  %i.s = xor i16 %i.q, -1
  %i.t = and i16 %i.r, %i.s
  %i.u = and i16 %i.q, %i.l
  %i.v = or i16 %i.t, %i.u
  store i16 %i.v, ptr %1, align 2
  %i.w = lshr i16 %i.a, 2
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = zext i16 %i.z to i32                    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = zext i16 %i.ac to i32
  %sext.1 = shl i32 %i.ad, 24
  %i.ae = ashr exact i32 %sext.1, 24              ; 5 uses
  %.not.i.1 = icmp sgt i32 %i.ae, -16
  br i1 %.not.i.1, label %bb.e, label %do_uqrshl_bhs.exit.1

bb.e:                                             ; preds = %do_uqrshl_bhs.exit
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = icmp samesign ult i32 %i.ae, 16
  %i.ah = shl nuw nsw i32 %i.aa, %i.ae
  %spec.select25 = select i1 %i.ag, i32 %i.ah, i32 0
  br label %do_uqrshl_bhs.exit.1

bb.g:                                             ; preds = %bb.e
  %i.ai = sub nsw i32 0, %i.ae
  %i.aj = lshr i32 %i.aa, %i.ai
  br label %do_uqrshl_bhs.exit.1

do_uqrshl_bhs.exit.1:                             ; preds = %bb.f, %bb.g, %do_uqrshl_bhs.exit
  %.3.i.1 = phi i32 [ 0, %do_uqrshl_bhs.exit ], [ %spec.select25, %bb.f ], [ %i.aj, %bb.g ]
  %i.ak = trunc i32 %.3.i.1 to i16
  %i.al = and i16 %i.w, 255
  %i.am = zext nneg i16 %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = trunc i64 %i.ao to i16                  ; 2 uses
  %i.aq = load i16, ptr %i.x, align 2
  %i.ar = xor i16 %i.ap, -1
  %i.as = and i16 %i.aq, %i.ar
  %i.at = and i16 %i.ap, %i.ak
  %i.au = or i16 %i.as, %i.at
  store i16 %i.au, ptr %i.x, align 2
  %i.av = lshr i16 %i.a, 4
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ay = load i16, ptr %i.ax, align 2
  %i.az = zext i16 %i.ay to i32                   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bb = load i16, ptr %i.ba, align 2
  %i.bc = zext i16 %i.bb to i32
  %sext.2 = shl i32 %i.bc, 24
  %i.bd = ashr exact i32 %sext.2, 24              ; 5 uses
  %.not.i.2 = icmp sgt i32 %i.bd, -16
  br i1 %.not.i.2, label %bb.h, label %do_uqrshl_bhs.exit.2

bb.h:                                             ; preds = %do_uqrshl_bhs.exit.1
  %i.be = icmp slt i32 %i.bd, 0
  br i1 %i.be, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = icmp samesign ult i32 %i.bd, 16
  %i.bg = shl nuw nsw i32 %i.az, %i.bd
  %spec.select26 = select i1 %i.bf, i32 %i.bg, i32 0
  br label %do_uqrshl_bhs.exit.2

bb.j:                                             ; preds = %bb.h
  %i.bh = sub nsw i32 0, %i.bd
  %i.bi = lshr i32 %i.az, %i.bh
  br label %do_uqrshl_bhs.exit.2

do_uqrshl_bhs.exit.2:                             ; preds = %bb.i, %bb.j, %do_uqrshl_bhs.exit.1
  %.3.i.2 = phi i32 [ 0, %do_uqrshl_bhs.exit.1 ], [ %spec.select26, %bb.i ], [ %i.bi, %bb.j ]
  %i.bj = trunc i32 %.3.i.2 to i16
  %i.bk = and i16 %i.av, 255
  %i.bl = zext nneg i16 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = trunc i64 %i.bn to i16                  ; 2 uses
  %i.bp = load i16, ptr %i.aw, align 2
  %i.bq = xor i16 %i.bo, -1
  %i.br = and i16 %i.bp, %i.bq
  %i.bs = and i16 %i.bo, %i.bj
  %i.bt = or i16 %i.br, %i.bs
  store i16 %i.bt, ptr %i.aw, align 2
  %i.bu = lshr i16 %i.a, 6
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.bx = load i16, ptr %i.bw, align 2
  %i.by = zext i16 %i.bx to i32                   ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.ca = load i16, ptr %i.bz, align 2
  %i.cb = zext i16 %i.ca to i32
end_hunk_8
begin_hunk_9_@helper_mve_vshluw:bb.a
  %i.ao = and i32 %i.am, %i.an
  %i.ap = and i32 %.3.i.1, %i.al
  %i.aq = or i32 %i.ao, %i.ap
  store i32 %i.aq, ptr %i.v, align 4
  %i.ar = lshr i16 %i.a, 8
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load i32, ptr %i.at, align 4            ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = shl i32 %i.aw, 24
  %i.ay = ashr exact i32 %i.ax, 24                ; 5 uses
  %.not.i.2 = icmp sgt i32 %i.ay, -32
  br i1 %.not.i.2, label %bb.h, label %do_uqrshl_bhs.exit.2

bb.h:                                             ; preds = %do_uqrshl_bhs.exit.1
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = icmp samesign ult i32 %i.ay, 32
  %i.bb = shl i32 %i.au, %i.ay
  %spec.select.2 = select i1 %i.ba, i32 %i.bb, i32 0
  br label %do_uqrshl_bhs.exit.2

bb.j:                                             ; preds = %bb.h
  %i.bc = sub nsw i32 0, %i.ay
  %i.bd = lshr i32 %i.au, %i.bc
  br label %do_uqrshl_bhs.exit.2

do_uqrshl_bhs.exit.2:                             ; preds = %bb.j, %bb.i, %do_uqrshl_bhs.exit.1
  %.3.i.2 = phi i32 [ 0, %do_uqrshl_bhs.exit.1 ], [ %spec.select.2, %bb.i ], [ %i.bd, %bb.j ]
  %i.be = zext nneg i16 %i.ar to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = trunc i64 %i.bg to i32                  ; 2 uses
  %i.bi = load i32, ptr %i.as, align 4
  %i.bj = xor i32 %i.bh, -1
  %i.bk = and i32 %i.bi, %i.bj
  %i.bl = and i32 %.3.i.2, %i.bh
  %i.bm = or i32 %i.bk, %i.bl
  store i32 %i.bm, ptr %i.as, align 4
  %i.bn = lshr i16 %i.a, 12
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bq = load i32, ptr %i.bp, align 4            ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = shl i32 %i.bs, 24
  %i.bu = ashr exact i32 %i.bt, 24                ; 5 uses
  %.not.i.3 = icmp sgt i32 %i.bu, -32
  br i1 %.not.i.3, label %bb.k, label %do_uqrshl_bhs.exit.3

bb.k:                                             ; preds = %do_uqrshl_bhs.exit.2
  %i.bv = icmp slt i32 %i.bu, 0
  br i1 %i.bv, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = icmp samesign ult i32 %i.bu, 32
  %i.bx = shl i32 %i.bq, %i.bu
  %spec.select.3 = select i1 %i.bw, i32 %i.bx, i32 0
  br label %do_uqrshl_bhs.exit.3

bb.m:                                             ; preds = %bb.k
  %i.by = sub nsw i32 0, %i.bu
  %i.bz = lshr i32 %i.bq, %i.by
  br label %do_uqrshl_bhs.exit.3

do_uqrshl_bhs.exit.3:                             ; preds = %bb.m, %bb.l, %do_uqrshl_bhs.exit.2
  %.3.i.3 = phi i32 [ 0, %do_uqrshl_bhs.exit.2 ], [ %spec.select.3, %bb.l ], [ %i.bz, %bb.m ]
  %i.ca = zext nneg i16 %i.bn to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = trunc i64 %i.cc to i32                  ; 2 uses
  %i.ce = load i32, ptr %i.bo, align 4
  %i.cf = xor i32 %i.cd, -1
  %i.cg = and i32 %i.ce, %i.cf
  %i.ch = and i32 %.3.i.3, %i.cd
  %i.ci = or i32 %i.cg, %i.ch
  store i32 %i.ci, ptr %i.bo, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4            ; 5 uses
  %i.cl = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.cl, align 16         ; 4 uses
  %i.cm = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.cm, 0
  br i1 %.not.i.i, label %bb.n, label %mve_eci_mask.exit.i

bb.n:                                             ; preds = %do_uqrshl_bhs.exit.3
  %i.cn = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.co = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.cn to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.co, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.n
  %i.cp = zext nneg i32 %i.cn to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.cp
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.cq = icmp eq i32 %.val.i, 80
  %i.cr = select i1 %i.cq, i32 16, i32 0
  store i32 %i.cr, ptr %i.cl, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %do_uqrshl_bhs.exit.3
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %do_uqrshl_bhs.exit.3 ] ; 3 uses
  %i.cs = and i32 %i.ck, 16711680
  %.not.i15 = icmp eq i32 %i.cs, 0
  br i1 %.not.i15, label %mve_advance_vpt.exit, label %bb.p

bb.p:                                             ; preds = %mve_eci_mask.exit.i
  %i.ct = and i32 %i.ck, 983040
  %i.cu = icmp samesign ult i32 %i.ct, 589824
  %i.cv = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.cu, i16 %i.cv, i16 %.0.i34.i ; 2 uses
  %i.cw = and i32 %i.ck, 15728640
  %i.cx = icmp samesign ult i32 %i.cw, 9437184
  %i.cy = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.cx, i16 %i.cy, i16 %spec.select.i
  %i.cz = zext i16 %.1.i to i32
  %i.da = xor i32 %i.ck, %i.cz                    ; 2 uses
  %i.db = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.db, 0
  %i.dc = and i32 %i.da, -16711681
  %i.dd = shl i32 %i.ck, 1                        ; 2 uses
  %i.de = and i32 %i.dd, 917504
  %i.df = or disjoint i32 %i.dc, %i.de
  %i.dg = and i32 %i.da, -15728641
  %i.dh = select i1 %.not32.i, i32 %i.dg, i32 %i.df
  %i.di = and i32 %i.dd, 14680064
  %i.dj = or disjoint i32 %i.dh, %i.di
  store i32 %i.dj, ptr %i.cj, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.p
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vrshlsb(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %mergemask_sb.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %mergemask_sb.exit ] ; 4 uses
  %.01417 = phi i16 [ %i.a, %bb.a ], [ %i.u, %mergemask_sb.exit ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.d = load i8, ptr %i.c, align 1
  %i.e = sext i8 %i.d to i32                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.g = load i8, ptr %i.f, align 1               ; 4 uses
  %i.h = sext i8 %i.g to i32                      ; 2 uses
  %.not.i = icmp sgt i8 %i.g, -8
  br i1 %.not.i, label %bb.c, label %do_sqrshl_bhs.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp slt i8 %i.g, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = xor i32 %i.h, -1
  %i.k = ashr i32 %i.e, %i.j                      ; 2 uses
  %i.l = ashr i32 %i.k, 1
  %i.m = and i32 %i.k, 1
  %i.n = add nsw i32 %i.l, %i.m
  br label %do_sqrshl_bhs.exit

bb.e:                                             ; preds = %bb.c
  %i.o = icmp samesign ult i8 %i.g, 8
  br i1 %i.o, label %bb.f, label %do_sqrshl_bhs.exit

bb.f:                                             ; preds = %bb.e
  %i.p = shl nsw i32 %i.e, %i.h
  %i.q = shl i32 %i.p, 24
  %i.r = ashr exact i32 %i.q, 24
  br label %do_sqrshl_bhs.exit

do_sqrshl_bhs.exit:                               ; preds = %bb.e, %bb.b, %bb.d, %bb.f
  %.3.i = phi i32 [ %i.r, %bb.f ], [ 0, %bb.b ], [ %i.n, %bb.d ], [ 0, %bb.e ]
  %i.s = and i16 %.01417, 1
  %.not.i.i = icmp eq i16 %i.s, 0
  br i1 %.not.i.i, label %mergemask_sb.exit, label %bb.g

bb.g:                                             ; preds = %do_sqrshl_bhs.exit
  %i.t = trunc nsw i32 %.3.i to i8
  store i8 %i.t, ptr %i.b, align 1
  br label %mergemask_sb.exit

mergemask_sb.exit:                                ; preds = %do_sqrshl_bhs.exit, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = lshr i16 %.01417, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.h, label %bb.b, !llvm.loop !20

bb.h:                                             ; preds = %mergemask_sb.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4              ; 5 uses
  %i.x = getelementptr i8, ptr %0, i64 560        ; 2 uses
  %.val.i = load i32, ptr %i.x, align 16          ; 4 uses
  %i.y = and i32 %.val.i, 15
  %.not.i.i15 = icmp eq i32 %i.y, 0
  br i1 %.not.i.i15, label %bb.i, label %mve_eci_mask.exit.i

bb.i:                                             ; preds = %bb.h
  %i.z = lshr exact i32 %.val.i, 4                ; 2 uses
  %i.aa = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.z to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.aa, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.i
  %i.ab = zext nneg i32 %i.z to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.ab
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.ac = icmp eq i32 %.val.i, 80
  %i.ad = select i1 %i.ac, i32 16, i32 0
  store i32 %i.ad, ptr %i.x, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.h
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.h ] ; 3 uses
  %i.ae = and i32 %i.w, 16711680
  %.not.i16 = icmp eq i32 %i.ae, 0
  br i1 %.not.i16, label %mve_advance_vpt.exit, label %bb.k

bb.k:                                             ; preds = %mve_eci_mask.exit.i
  %i.af = and i32 %i.w, 983040
  %i.ag = icmp samesign ult i32 %i.af, 589824
  %i.ah = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.ag, i16 %i.ah, i16 %.0.i34.i ; 2 uses
  %i.ai = and i32 %i.w, 15728640
  %i.aj = icmp samesign ult i32 %i.ai, 9437184
  %i.ak = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.aj, i16 %i.ak, i16 %spec.select.i
  %i.al = zext i16 %.1.i to i32
  %i.am = xor i32 %i.w, %i.al                     ; 2 uses
  %i.an = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.an, 0
  %i.ao = and i32 %i.am, -16711681
  %i.ap = shl i32 %i.w, 1                         ; 2 uses
  %i.aq = and i32 %i.ap, 917504
  %i.ar = or disjoint i32 %i.ao, %i.aq
  %i.as = and i32 %i.am, -15728641
  %i.at = select i1 %.not32.i, i32 %i.as, i32 %i.ar
  %i.au = and i32 %i.ap, 14680064
  %i.av = or disjoint i32 %i.at, %i.au
  store i32 %i.av, ptr %i.v, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.k
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vrshlsh(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 8 uses
  %i.b = load i16, ptr %2, align 2
  %i.c = sext i16 %i.b to i32                     ; 2 uses
  %i.d = load i16, ptr %3, align 2
  %i.e = zext i16 %i.d to i32
  %sext = shl i32 %i.e, 24
  %i.f = ashr exact i32 %sext, 24                 ; 5 uses
  %.not.i = icmp sgt i32 %i.f, -16
  br i1 %.not.i, label %bb.b, label %do_sqrshl_bhs.exit

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = xor i32 %i.f, -1
  %i.i = ashr i32 %i.c, %i.h                      ; 2 uses
  %i.j = ashr i32 %i.i, 1
  %i.k = and i32 %i.i, 1
  %i.l = add nsw i32 %i.j, %i.k
  br label %do_sqrshl_bhs.exit

bb.d:                                             ; preds = %bb.b
  %i.m = icmp samesign ult i32 %i.f, 16
  br i1 %i.m, label %bb.e, label %do_sqrshl_bhs.exit

bb.e:                                             ; preds = %bb.d
  %i.n = shl nsw i32 %i.c, %i.f
  %i.o = shl i32 %i.n, 16
  %i.p = ashr exact i32 %i.o, 16
  br label %do_sqrshl_bhs.exit

do_sqrshl_bhs.exit:                               ; preds = %bb.d, %bb.a, %bb.c, %bb.e
  %.3.i = phi i32 [ %i.p, %bb.e ], [ 0, %bb.a ], [ %i.l, %bb.c ], [ 0, %bb.d ]
  %i.q = trunc nsw i32 %.3.i to i16
  %i.r = and i16 %i.a, 255
  %i.s = zext nneg i16 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8
  %i.v = trunc i64 %i.u to i16                    ; 2 uses
  %i.w = load i16, ptr %1, align 2
  %i.x = xor i16 %i.v, -1
  %i.y = and i16 %i.w, %i.x
  %i.z = and i16 %i.v, %i.q
  %i.aa = or i16 %i.y, %i.z
  store i16 %i.aa, ptr %1, align 2
  %i.ab = lshr i16 %i.a, 2
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ae = load i16, ptr %i.ad, align 2
  %i.af = sext i16 %i.ae to i32                   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = zext i16 %i.ah to i32
  %sext.1 = shl i32 %i.ai, 24
  %i.aj = ashr exact i32 %sext.1, 24              ; 5 uses
  %.not.i.1 = icmp sgt i32 %i.aj, -16
  br i1 %.not.i.1, label %bb.f, label %do_sqrshl_bhs.exit.1

bb.f:                                             ; preds = %do_sqrshl_bhs.exit
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = icmp samesign ult i32 %i.aj, 16
  br i1 %i.al, label %bb.h, label %do_sqrshl_bhs.exit.1

bb.h:                                             ; preds = %bb.g
  %i.am = shl nsw i32 %i.af, %i.aj
  %i.an = shl i32 %i.am, 16
  %i.ao = ashr exact i32 %i.an, 16
  br label %do_sqrshl_bhs.exit.1

bb.i:                                             ; preds = %bb.f
  %i.ap = xor i32 %i.aj, -1
  %i.aq = ashr i32 %i.af, %i.ap                   ; 2 uses
  %i.ar = ashr i32 %i.aq, 1
  %i.as = and i32 %i.aq, 1
  %i.at = add nsw i32 %i.ar, %i.as
  br label %do_sqrshl_bhs.exit.1

do_sqrshl_bhs.exit.1:                             ; preds = %bb.i, %bb.h, %bb.g, %do_sqrshl_bhs.exit
  %.3.i.1 = phi i32 [ %i.ao, %bb.h ], [ 0, %do_sqrshl_bhs.exit ], [ %i.at, %bb.i ], [ 0, %bb.g ]
  %i.au = trunc nsw i32 %.3.i.1 to i16
  %i.av = and i16 %i.ab, 255
  %i.aw = zext nneg i16 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = trunc i64 %i.ay to i16                  ; 2 uses
  %i.ba = load i16, ptr %i.ac, align 2
  %i.bb = xor i16 %i.az, -1
  %i.bc = and i16 %i.ba, %i.bb
  %i.bd = and i16 %i.az, %i.au
  %i.be = or i16 %i.bc, %i.bd
  store i16 %i.be, ptr %i.ac, align 2
  %i.bf = lshr i16 %i.a, 4
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bi = load i16, ptr %i.bh, align 2
  %i.bj = sext i16 %i.bi to i32                   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bl = load i16, ptr %i.bk, align 2
  %i.bm = zext i16 %i.bl to i32
  %sext.2 = shl i32 %i.bm, 24
  %i.bn = ashr exact i32 %sext.2, 24              ; 5 uses
  %.not.i.2 = icmp sgt i32 %i.bn, -16
  br i1 %.not.i.2, label %bb.j, label %do_sqrshl_bhs.exit.2

bb.j:                                             ; preds = %do_sqrshl_bhs.exit.1
  %i.bo = icmp slt i32 %i.bn, 0
  br i1 %i.bo, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = icmp samesign ult i32 %i.bn, 16
  br i1 %i.bp, label %bb.l, label %do_sqrshl_bhs.exit.2

bb.l:                                             ; preds = %bb.k
  %i.bq = shl nsw i32 %i.bj, %i.bn
  %i.br = shl i32 %i.bq, 16
  %i.bs = ashr exact i32 %i.br, 16
  br label %do_sqrshl_bhs.exit.2

bb.m:                                             ; preds = %bb.j
  %i.bt = xor i32 %i.bn, -1
  %i.bu = ashr i32 %i.bj, %i.bt                   ; 2 uses
  %i.bv = ashr i32 %i.bu, 1
  %i.bw = and i32 %i.bu, 1
  %i.bx = add nsw i32 %i.bv, %i.bw
  br label %do_sqrshl_bhs.exit.2

do_sqrshl_bhs.exit.2:                             ; preds = %bb.m, %bb.l, %bb.k, %do_sqrshl_bhs.exit.1
end_hunk_9
begin_hunk_10_@helper_mve_vrshlsw:bb.a
  %i.av = and i32 %.3.i.1, %i.ar
  %i.aw = or i32 %i.au, %i.av
  store i32 %i.aw, ptr %i.y, align 4
  %i.ax = lshr i16 %i.a, 8
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ba = load i32, ptr %i.az, align 4            ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = shl i32 %i.bc, 24
  %i.be = ashr exact i32 %i.bd, 24                ; 5 uses
  %.not.i.2 = icmp sgt i32 %i.be, -32
  br i1 %.not.i.2, label %bb.h, label %do_sqrshl_bhs.exit.2

bb.h:                                             ; preds = %do_sqrshl_bhs.exit.1
  %i.bf = icmp slt i32 %i.be, 0
  br i1 %i.bf, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = icmp samesign ult i32 %i.be, 32
  %i.bh = shl i32 %i.ba, %i.be
  %spec.select.2 = select i1 %i.bg, i32 %i.bh, i32 0
  br label %do_sqrshl_bhs.exit.2

bb.j:                                             ; preds = %bb.h
  %i.bi = xor i32 %i.be, -1
  %i.bj = ashr i32 %i.ba, %i.bi                   ; 2 uses
  %i.bk = ashr i32 %i.bj, 1
  %i.bl = and i32 %i.bj, 1
  %i.bm = add nsw i32 %i.bk, %i.bl
  br label %do_sqrshl_bhs.exit.2

do_sqrshl_bhs.exit.2:                             ; preds = %bb.j, %bb.i, %do_sqrshl_bhs.exit.1
  %.3.i.2 = phi i32 [ %spec.select.2, %bb.i ], [ 0, %do_sqrshl_bhs.exit.1 ], [ %i.bm, %bb.j ]
  %i.bn = zext nneg i16 %i.ax to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = trunc i64 %i.bp to i32                  ; 2 uses
  %i.br = load i32, ptr %i.ay, align 4
  %i.bs = xor i32 %i.bq, -1
  %i.bt = and i32 %i.br, %i.bs
  %i.bu = and i32 %.3.i.2, %i.bq
  %i.bv = or i32 %i.bt, %i.bu
  store i32 %i.bv, ptr %i.ay, align 4
  %i.bw = lshr i16 %i.a, 12
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bz = load i32, ptr %i.by, align 4            ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = shl i32 %i.cb, 24
  %i.cd = ashr exact i32 %i.cc, 24                ; 5 uses
  %.not.i.3 = icmp sgt i32 %i.cd, -32
  br i1 %.not.i.3, label %bb.k, label %do_sqrshl_bhs.exit.3

bb.k:                                             ; preds = %do_sqrshl_bhs.exit.2
  %i.ce = icmp slt i32 %i.cd, 0
  br i1 %i.ce, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cf = icmp samesign ult i32 %i.cd, 32
  %i.cg = shl i32 %i.bz, %i.cd
  %spec.select.3 = select i1 %i.cf, i32 %i.cg, i32 0
  br label %do_sqrshl_bhs.exit.3

bb.m:                                             ; preds = %bb.k
  %i.ch = xor i32 %i.cd, -1
  %i.ci = ashr i32 %i.bz, %i.ch                   ; 2 uses
  %i.cj = ashr i32 %i.ci, 1
  %i.ck = and i32 %i.ci, 1
  %i.cl = add nsw i32 %i.cj, %i.ck
  br label %do_sqrshl_bhs.exit.3

do_sqrshl_bhs.exit.3:                             ; preds = %bb.m, %bb.l, %do_sqrshl_bhs.exit.2
  %.3.i.3 = phi i32 [ %spec.select.3, %bb.l ], [ 0, %do_sqrshl_bhs.exit.2 ], [ %i.cl, %bb.m ]
  %i.cm = zext nneg i16 %i.bw to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = trunc i64 %i.co to i32                  ; 2 uses
  %i.cq = load i32, ptr %i.bx, align 4
  %i.cr = xor i32 %i.cp, -1
  %i.cs = and i32 %i.cq, %i.cr
  %i.ct = and i32 %.3.i.3, %i.cp
  %i.cu = or i32 %i.cs, %i.ct
  store i32 %i.cu, ptr %i.bx, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4            ; 5 uses
  %i.cx = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.cx, align 16         ; 4 uses
  %i.cy = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.cy, 0
  br i1 %.not.i.i, label %bb.n, label %mve_eci_mask.exit.i

bb.n:                                             ; preds = %do_sqrshl_bhs.exit.3
  %i.cz = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.da = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.cz to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.da, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.n
  %i.db = zext nneg i32 %i.cz to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.db
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.dc = icmp eq i32 %.val.i, 80
  %i.dd = select i1 %i.dc, i32 16, i32 0
  store i32 %i.dd, ptr %i.cx, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %do_sqrshl_bhs.exit.3
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %do_sqrshl_bhs.exit.3 ] ; 3 uses
  %i.de = and i32 %i.cw, 16711680
  %.not.i15 = icmp eq i32 %i.de, 0
  br i1 %.not.i15, label %mve_advance_vpt.exit, label %bb.p

bb.p:                                             ; preds = %mve_eci_mask.exit.i
  %i.df = and i32 %i.cw, 983040
  %i.dg = icmp samesign ult i32 %i.df, 589824
  %i.dh = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.dg, i16 %i.dh, i16 %.0.i34.i ; 2 uses
  %i.di = and i32 %i.cw, 15728640
  %i.dj = icmp samesign ult i32 %i.di, 9437184
  %i.dk = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.dj, i16 %i.dk, i16 %spec.select.i
  %i.dl = zext i16 %.1.i to i32
  %i.dm = xor i32 %i.cw, %i.dl                    ; 2 uses
  %i.dn = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.dn, 0
  %i.do = and i32 %i.dm, -16711681
  %i.dp = shl i32 %i.cw, 1                        ; 2 uses
  %i.dq = and i32 %i.dp, 917504
  %i.dr = or disjoint i32 %i.do, %i.dq
  %i.ds = and i32 %i.dm, -15728641
  %i.dt = select i1 %.not32.i, i32 %i.ds, i32 %i.dr
  %i.du = and i32 %i.dp, 14680064
  %i.dv = or disjoint i32 %i.dt, %i.du
  store i32 %i.dv, ptr %i.cv, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.p
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vrshlub(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %mergemask_ub.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %mergemask_ub.exit ] ; 4 uses
  %.01417 = phi i16 [ %i.a, %bb.a ], [ %i.r, %mergemask_ub.exit ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i32                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.g = load i8, ptr %i.f, align 1               ; 4 uses
  %i.h = sext i8 %i.g to i32                      ; 2 uses
  %.not.i = icmp sgt i8 %i.g, -9
  br i1 %.not.i, label %bb.c, label %do_uqrshl_bhs.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp slt i8 %i.g, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = xor i32 %i.h, -1
  %i.k = lshr i32 %i.e, %i.j                      ; 2 uses
  %i.l = lshr i32 %i.k, 1
  %i.m = sub nsw i32 %i.k, %i.l
  br label %do_uqrshl_bhs.exit

bb.e:                                             ; preds = %bb.c
  %i.n = icmp samesign ult i8 %i.g, 8
  %i.o = shl nuw nsw i32 %i.e, %i.h
  %spec.select = select i1 %i.n, i32 %i.o, i32 0
  br label %do_uqrshl_bhs.exit

do_uqrshl_bhs.exit:                               ; preds = %bb.e, %bb.b, %bb.d
  %.3.i = phi i32 [ 0, %bb.b ], [ %i.m, %bb.d ], [ %spec.select, %bb.e ]
  %i.p = and i16 %.01417, 1
  %.not.i15 = icmp eq i16 %i.p, 0
  br i1 %.not.i15, label %mergemask_ub.exit, label %bb.f

bb.f:                                             ; preds = %do_uqrshl_bhs.exit
  %i.q = trunc i32 %.3.i to i8
  store i8 %i.q, ptr %i.b, align 1
  br label %mergemask_ub.exit

mergemask_ub.exit:                                ; preds = %do_uqrshl_bhs.exit, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = lshr i16 %.01417, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.g, label %bb.b, !llvm.loop !21

bb.g:                                             ; preds = %mergemask_ub.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4              ; 5 uses
  %i.u = getelementptr i8, ptr %0, i64 560        ; 2 uses
  %.val.i = load i32, ptr %i.u, align 16          ; 4 uses
  %i.v = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i, label %bb.h, label %mve_eci_mask.exit.i

bb.h:                                             ; preds = %bb.g
  %i.w = lshr exact i32 %.val.i, 4                ; 2 uses
  %i.x = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.w to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.x, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.h
  %i.y = zext nneg i32 %i.w to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.y
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.z = icmp eq i32 %.val.i, 80
  %i.aa = select i1 %i.z, i32 16, i32 0
  store i32 %i.aa, ptr %i.u, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.g
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.g ] ; 3 uses
  %i.ab = and i32 %i.t, 16711680
  %.not.i16 = icmp eq i32 %i.ab, 0
  br i1 %.not.i16, label %mve_advance_vpt.exit, label %bb.j

bb.j:                                             ; preds = %mve_eci_mask.exit.i
  %i.ac = and i32 %i.t, 983040
  %i.ad = icmp samesign ult i32 %i.ac, 589824
  %i.ae = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.ad, i16 %i.ae, i16 %.0.i34.i ; 2 uses
  %i.af = and i32 %i.t, 15728640
  %i.ag = icmp samesign ult i32 %i.af, 9437184
  %i.ah = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.ag, i16 %i.ah, i16 %spec.select.i
  %i.ai = zext i16 %.1.i to i32
  %i.aj = xor i32 %i.t, %i.ai                     ; 2 uses
  %i.ak = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.ak, 0
  %i.al = and i32 %i.aj, -16711681
  %i.am = shl i32 %i.t, 1                         ; 2 uses
  %i.an = and i32 %i.am, 917504
  %i.ao = or disjoint i32 %i.al, %i.an
  %i.ap = and i32 %i.aj, -15728641
  %i.aq = select i1 %.not32.i, i32 %i.ap, i32 %i.ao
  %i.ar = and i32 %i.am, 14680064
  %i.as = or disjoint i32 %i.aq, %i.ar
  store i32 %i.as, ptr %i.s, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.j
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vrshluh(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 8 uses
  %i.b = load i16, ptr %2, align 2
  %i.c = zext i16 %i.b to i32                     ; 2 uses
  %i.d = load i16, ptr %3, align 2
  %i.e = zext i16 %i.d to i32
  %sext = shl i32 %i.e, 24
  %i.f = ashr exact i32 %sext, 24                 ; 5 uses
  %.not.i = icmp sgt i32 %i.f, -17
  br i1 %.not.i, label %bb.b, label %do_uqrshl_bhs.exit

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = xor i32 %i.f, -1
  %i.i = lshr i32 %i.c, %i.h                      ; 2 uses
  %i.j = lshr i32 %i.i, 1
  %i.k = sub nsw i32 %i.i, %i.j
  br label %do_uqrshl_bhs.exit

bb.d:                                             ; preds = %bb.b
  %i.l = icmp samesign ult i32 %i.f, 16
  %i.m = shl nuw nsw i32 %i.c, %i.f
  %spec.select = select i1 %i.l, i32 %i.m, i32 0
  br label %do_uqrshl_bhs.exit

do_uqrshl_bhs.exit:                               ; preds = %bb.d, %bb.a, %bb.c
  %.3.i = phi i32 [ 0, %bb.a ], [ %i.k, %bb.c ], [ %spec.select, %bb.d ]
  %i.n = trunc i32 %.3.i to i16
  %i.o = and i16 %i.a, 255
  %i.p = zext nneg i16 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8
  %i.s = trunc i64 %i.r to i16                    ; 2 uses
  %i.t = load i16, ptr %1, align 2
  %i.u = xor i16 %i.s, -1
  %i.v = and i16 %i.t, %i.u
  %i.w = and i16 %i.s, %i.n
  %i.x = or i16 %i.v, %i.w
  store i16 %i.x, ptr %1, align 2
  %i.y = lshr i16 %i.a, 2
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ab = load i16, ptr %i.aa, align 2
  %i.ac = zext i16 %i.ab to i32                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ae = load i16, ptr %i.ad, align 2
  %i.af = zext i16 %i.ae to i32
  %sext.1 = shl i32 %i.af, 24
  %i.ag = ashr exact i32 %sext.1, 24              ; 5 uses
  %.not.i.1 = icmp sgt i32 %i.ag, -17
  br i1 %.not.i.1, label %bb.e, label %do_uqrshl_bhs.exit.1

bb.e:                                             ; preds = %do_uqrshl_bhs.exit
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp samesign ult i32 %i.ag, 16
  %i.aj = shl nuw nsw i32 %i.ac, %i.ag
  %spec.select25 = select i1 %i.ai, i32 %i.aj, i32 0
  br label %do_uqrshl_bhs.exit.1

bb.g:                                             ; preds = %bb.e
  %i.ak = xor i32 %i.ag, -1
  %i.al = lshr i32 %i.ac, %i.ak                   ; 2 uses
  %i.am = lshr i32 %i.al, 1
  %i.an = sub nsw i32 %i.al, %i.am
  br label %do_uqrshl_bhs.exit.1

do_uqrshl_bhs.exit.1:                             ; preds = %bb.f, %bb.g, %do_uqrshl_bhs.exit
  %.3.i.1 = phi i32 [ 0, %do_uqrshl_bhs.exit ], [ %i.an, %bb.g ], [ %spec.select25, %bb.f ]
  %i.ao = trunc i32 %.3.i.1 to i16
  %i.ap = and i16 %i.y, 255
  %i.aq = zext nneg i16 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = trunc i64 %i.as to i16                  ; 2 uses
  %i.au = load i16, ptr %i.z, align 2
  %i.av = xor i16 %i.at, -1
  %i.aw = and i16 %i.au, %i.av
  %i.ax = and i16 %i.at, %i.ao
  %i.ay = or i16 %i.aw, %i.ax
  store i16 %i.ay, ptr %i.z, align 2
  %i.az = lshr i16 %i.a, 4
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bc = load i16, ptr %i.bb, align 2
  %i.bd = zext i16 %i.bc to i32                   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bf = load i16, ptr %i.be, align 2
  %i.bg = zext i16 %i.bf to i32
  %sext.2 = shl i32 %i.bg, 24
  %i.bh = ashr exact i32 %sext.2, 24              ; 5 uses
  %.not.i.2 = icmp sgt i32 %i.bh, -17
  br i1 %.not.i.2, label %bb.h, label %do_uqrshl_bhs.exit.2

bb.h:                                             ; preds = %do_uqrshl_bhs.exit.1
  %i.bi = icmp slt i32 %i.bh, 0
  br i1 %i.bi, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = icmp samesign ult i32 %i.bh, 16
  %i.bk = shl nuw nsw i32 %i.bd, %i.bh
  %spec.select26 = select i1 %i.bj, i32 %i.bk, i32 0
  br label %do_uqrshl_bhs.exit.2

bb.j:                                             ; preds = %bb.h
  %i.bl = xor i32 %i.bh, -1
  %i.bm = lshr i32 %i.bd, %i.bl                   ; 2 uses
  %i.bn = lshr i32 %i.bm, 1
  %i.bo = sub nsw i32 %i.bm, %i.bn
  br label %do_uqrshl_bhs.exit.2

do_uqrshl_bhs.exit.2:                             ; preds = %bb.i, %bb.j, %do_uqrshl_bhs.exit.1
  %.3.i.2 = phi i32 [ 0, %do_uqrshl_bhs.exit.1 ], [ %i.bo, %bb.j ], [ %spec.select26, %bb.i ]
  %i.bp = trunc i32 %.3.i.2 to i16
  %i.bq = and i16 %i.az, 255
  %i.br = zext nneg i16 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = trunc i64 %i.bt to i16                  ; 2 uses
  %i.bv = load i16, ptr %i.ba, align 2
  %i.bw = xor i16 %i.bu, -1
  %i.bx = and i16 %i.bv, %i.bw
  %i.by = and i16 %i.bu, %i.bp
  %i.bz = or i16 %i.bx, %i.by
  store i16 %i.bz, ptr %i.ba, align 2
  %i.ca = lshr i16 %i.a, 6
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
end_hunk_10
begin_hunk_11_@helper_mve_vrshluw:bb.a
  %i.bf = shl i32 %i.ay, %i.bc
  %spec.select.2 = select i1 %i.be, i32 %i.bf, i32 0
  br label %do_uqrshl_bhs.exit.2

bb.j:                                             ; preds = %bb.h
  %i.bg = xor i32 %i.bc, -1
  %i.bh = lshr i32 %i.ay, %i.bg                   ; 2 uses
  %i.bi = lshr i32 %i.bh, 1
  %i.bj = sub i32 %i.bh, %i.bi
  br label %do_uqrshl_bhs.exit.2

do_uqrshl_bhs.exit.2:                             ; preds = %bb.j, %bb.i, %do_uqrshl_bhs.exit.1
  %.3.i.2 = phi i32 [ 0, %do_uqrshl_bhs.exit.1 ], [ %i.bj, %bb.j ], [ %spec.select.2, %bb.i ]
  %i.bk = zext nneg i16 %i.av to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = trunc i64 %i.bm to i32                  ; 2 uses
  %i.bo = load i32, ptr %i.aw, align 4
  %i.bp = xor i32 %i.bn, -1
  %i.bq = and i32 %i.bo, %i.bp
  %i.br = and i32 %.3.i.2, %i.bn
  %i.bs = or i32 %i.bq, %i.br
  store i32 %i.bs, ptr %i.aw, align 4
  %i.bt = lshr i16 %i.a, 12
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bw = load i32, ptr %i.bv, align 4            ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = shl i32 %i.by, 24
  %i.ca = ashr exact i32 %i.bz, 24                ; 5 uses
  %.not.i.3 = icmp sgt i32 %i.ca, -33
  br i1 %.not.i.3, label %bb.k, label %do_uqrshl_bhs.exit.3

bb.k:                                             ; preds = %do_uqrshl_bhs.exit.2
  %i.cb = icmp slt i32 %i.ca, 0
  br i1 %i.cb, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cc = icmp samesign ult i32 %i.ca, 32
  %i.cd = shl i32 %i.bw, %i.ca
  %spec.select.3 = select i1 %i.cc, i32 %i.cd, i32 0
  br label %do_uqrshl_bhs.exit.3

bb.m:                                             ; preds = %bb.k
  %i.ce = xor i32 %i.ca, -1
  %i.cf = lshr i32 %i.bw, %i.ce                   ; 2 uses
  %i.cg = lshr i32 %i.cf, 1
  %i.ch = sub i32 %i.cf, %i.cg
  br label %do_uqrshl_bhs.exit.3

do_uqrshl_bhs.exit.3:                             ; preds = %bb.m, %bb.l, %do_uqrshl_bhs.exit.2
  %.3.i.3 = phi i32 [ 0, %do_uqrshl_bhs.exit.2 ], [ %i.ch, %bb.m ], [ %spec.select.3, %bb.l ]
  %i.ci = zext nneg i16 %i.bt to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = trunc i64 %i.ck to i32                  ; 2 uses
  %i.cm = load i32, ptr %i.bu, align 4
  %i.cn = xor i32 %i.cl, -1
  %i.co = and i32 %i.cm, %i.cn
  %i.cp = and i32 %.3.i.3, %i.cl
  %i.cq = or i32 %i.co, %i.cp
  store i32 %i.cq, ptr %i.bu, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4            ; 5 uses
  %i.ct = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.ct, align 16         ; 4 uses
  %i.cu = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.cu, 0
  br i1 %.not.i.i, label %bb.n, label %mve_eci_mask.exit.i

bb.n:                                             ; preds = %do_uqrshl_bhs.exit.3
  %i.cv = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.cw = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.cv to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.cw, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.n
  %i.cx = zext nneg i32 %i.cv to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.cx
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.cy = icmp eq i32 %.val.i, 80
  %i.cz = select i1 %i.cy, i32 16, i32 0
  store i32 %i.cz, ptr %i.ct, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %do_uqrshl_bhs.exit.3
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %do_uqrshl_bhs.exit.3 ] ; 3 uses
  %i.da = and i32 %i.cs, 16711680
  %.not.i15 = icmp eq i32 %i.da, 0
  br i1 %.not.i15, label %mve_advance_vpt.exit, label %bb.p

bb.p:                                             ; preds = %mve_eci_mask.exit.i
  %i.db = and i32 %i.cs, 983040
  %i.dc = icmp samesign ult i32 %i.db, 589824
  %i.dd = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.dc, i16 %i.dd, i16 %.0.i34.i ; 2 uses
  %i.de = and i32 %i.cs, 15728640
  %i.df = icmp samesign ult i32 %i.de, 9437184
  %i.dg = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.df, i16 %i.dg, i16 %spec.select.i
  %i.dh = zext i16 %.1.i to i32
  %i.di = xor i32 %i.cs, %i.dh                    ; 2 uses
  %i.dj = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.dj, 0
  %i.dk = and i32 %i.di, -16711681
  %i.dl = shl i32 %i.cs, 1                        ; 2 uses
  %i.dm = and i32 %i.dl, 917504
  %i.dn = or disjoint i32 %i.dk, %i.dm
  %i.do = and i32 %i.di, -15728641
  %i.dp = select i1 %.not32.i, i32 %i.do, i32 %i.dn
  %i.dq = and i32 %i.dl, 14680064
  %i.dr = or disjoint i32 %i.dp, %i.dq
  store i32 %i.dr, ptr %i.cr, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.p
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqshlsb(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %mergemask_sb.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %mergemask_sb.exit ] ; 4 uses
  %.02330 = phi i1 [ false, %bb.a ], [ %i.y, %mergemask_sb.exit ]
  %.02528 = phi i16 [ %i.a, %bb.a ], [ %i.z, %mergemask_sb.exit ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.c = load i8, ptr %i.b, align 1               ; 3 uses
  %i.d = sext i8 %i.c to i32                      ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1               ; 4 uses
  %i.g = sext i8 %i.f to i32                      ; 2 uses
  %.not.i = icmp sgt i8 %i.f, -8
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = ashr i32 %i.d, 31
  br label %do_sqrshl_bhs.exit

bb.d:                                             ; preds = %bb.b
  %i.i = icmp slt i8 %i.f, 0
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = sub nsw i32 0, %i.g
  %i.k = ashr i32 %i.d, %i.j
  br label %do_sqrshl_bhs.exit

bb.f:                                             ; preds = %bb.d
  %i.l = icmp samesign ult i8 %i.f, 8
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = shl nsw i32 %i.d, %i.g                   ; 2 uses
  %i.n = add nsw i32 %i.m, 128
  %.not = icmp ult i32 %i.n, 256
  br i1 %.not, label %do_sqrshl_bhs.exit, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.o = icmp eq i8 %i.c, 0
  br i1 %i.o, label %do_sqrshl_bhs.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.p = icmp sgt i8 %i.c, -1
  %i.q = select i1 %i.p, i32 127, i32 128
  br label %do_sqrshl_bhs.exit

do_sqrshl_bhs.exit:                               ; preds = %bb.c, %bb.e, %bb.g, %bb.h, %bb.i
  %.not.not = phi i1 [ true, %bb.e ], [ false, %bb.i ], [ true, %bb.g ], [ true, %bb.h ], [ true, %bb.c ]
  %.3.i = phi i32 [ %i.k, %bb.e ], [ %i.q, %bb.i ], [ %i.m, %bb.g ], [ 0, %bb.h ], [ %i.h, %bb.c ]
  %i.r = and i16 %.02528, 1                       ; 2 uses
  %.not.i.i = icmp eq i16 %i.r, 0
  br i1 %.not.i.i, label %mergemask_sb.exit, label %bb.j

bb.j:                                             ; preds = %do_sqrshl_bhs.exit
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.t = trunc i32 %.3.i to i8
  store i8 %i.t, ptr %i.s, align 1
  br label %mergemask_sb.exit

mergemask_sb.exit:                                ; preds = %do_sqrshl_bhs.exit, %bb.j
  %i.u = zext nneg i16 %i.r to i32
  %i.v = select i1 %.not.not, i32 0, i32 %i.u
  %i.w = zext i1 %.02330 to i32
  %i.x = or i32 %i.v, %i.w
  %i.y = icmp ne i32 %i.x, 0                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.z = lshr i16 %.02528, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.k, label %bb.b, !llvm.loop !22

bb.k:                                             ; preds = %mergemask_sb.exit
  br i1 %i.y, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.aa, align 16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4            ; 5 uses
  %i.ad = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.ad, align 16         ; 4 uses
  %i.ae = and i32 %.val.i, 15
  %.not.i.i26 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i26, label %bb.n, label %mve_eci_mask.exit.i

bb.n:                                             ; preds = %bb.m
  %i.af = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.ag = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.af to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.ag, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.n
  %i.ah = zext nneg i32 %i.af to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.ah
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.ai = icmp eq i32 %.val.i, 80
  %i.aj = select i1 %i.ai, i32 16, i32 0
  store i32 %i.aj, ptr %i.ad, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.m
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.m ] ; 3 uses
  %i.ak = and i32 %i.ac, 16711680
  %.not.i27 = icmp eq i32 %i.ak, 0
  br i1 %.not.i27, label %mve_advance_vpt.exit, label %bb.p

bb.p:                                             ; preds = %mve_eci_mask.exit.i
  %i.al = and i32 %i.ac, 983040
  %i.am = icmp samesign ult i32 %i.al, 589824
  %i.an = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.am, i16 %i.an, i16 %.0.i34.i ; 2 uses
  %i.ao = and i32 %i.ac, 15728640
  %i.ap = icmp samesign ult i32 %i.ao, 9437184
  %i.aq = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.ap, i16 %i.aq, i16 %spec.select.i
  %i.ar = zext i16 %.1.i to i32
  %i.as = xor i32 %i.ac, %i.ar                    ; 2 uses
  %i.at = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.at, 0
  %i.au = and i32 %i.as, -16711681
  %i.av = shl i32 %i.ac, 1                        ; 2 uses
  %i.aw = and i32 %i.av, 917504
  %i.ax = or disjoint i32 %i.au, %i.aw
  %i.ay = and i32 %i.as, -15728641
  %i.az = select i1 %.not32.i, i32 %i.ay, i32 %i.ax
  %i.ba = and i32 %i.av, 14680064
  %i.bb = or disjoint i32 %i.az, %i.ba
  store i32 %i.bb, ptr %i.ab, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.p
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqshlsh(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 9 uses
  %i.b = load i16, ptr %2, align 2                ; 3 uses
  %i.c = sext i16 %i.b to i32                     ; 3 uses
  %i.d = load i16, ptr %3, align 2
  %i.e = zext i16 %i.d to i32
  %sext = shl i32 %i.e, 24
  %i.f = ashr exact i32 %sext, 24                 ; 5 uses
  %.not.i = icmp sgt i32 %i.f, -16
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ashr i32 %i.c, 31
  br label %do_sqrshl_bhs.exit

bb.c:                                             ; preds = %bb.a
  %i.h = icmp slt i32 %i.f, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = sub nsw i32 0, %i.f
  %i.j = ashr i32 %i.c, %i.i
  br label %do_sqrshl_bhs.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp samesign ult i32 %i.f, 16
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = shl nsw i32 %i.c, %i.f                   ; 2 uses
  %i.m = add nsw i32 %i.l, 32768
  %.not = icmp ult i32 %i.m, 65536
  br i1 %.not, label %do_sqrshl_bhs.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.n = icmp eq i16 %i.b, 0
  br i1 %i.n, label %do_sqrshl_bhs.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.o = icmp sgt i16 %i.b, -1
  %i.p = select i1 %i.o, i32 32767, i32 32768
  br label %do_sqrshl_bhs.exit

do_sqrshl_bhs.exit:                               ; preds = %bb.b, %bb.d, %bb.f, %bb.g, %bb.h
  %not..not.not = phi i1 [ false, %bb.d ], [ true, %bb.h ], [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.b ]
  %.3.i = phi i32 [ %i.j, %bb.d ], [ %i.p, %bb.h ], [ %i.l, %bb.f ], [ 0, %bb.g ], [ %i.g, %bb.b ]
  %i.q = trunc i32 %.3.i to i16
  %i.r = and i16 %i.a, 255
  %i.s = zext nneg i16 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8
  %i.v = trunc i64 %i.u to i16                    ; 2 uses
  %i.w = load i16, ptr %1, align 2
  %i.x = xor i16 %i.v, -1
  %i.y = and i16 %i.w, %i.x
  %i.z = and i16 %i.v, %i.q
  %i.aa = or i16 %i.y, %i.z
  store i16 %i.aa, ptr %1, align 2
  %i.ab = lshr i16 %i.a, 2                        ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ad = load i16, ptr %i.ac, align 2            ; 3 uses
  %i.ae = sext i16 %i.ad to i32                   ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ag = load i16, ptr %i.af, align 2
  %i.ah = zext i16 %i.ag to i32
  %sext.1 = shl i32 %i.ah, 24
  %i.ai = ashr exact i32 %sext.1, 24              ; 5 uses
  %.not.i.1 = icmp sgt i32 %i.ai, -16
  br i1 %.not.i.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %do_sqrshl_bhs.exit
  %i.aj = ashr i32 %i.ae, 31
  br label %do_sqrshl_bhs.exit.1

bb.j:                                             ; preds = %do_sqrshl_bhs.exit
  %i.ak = icmp slt i32 %i.ai, 0
  br i1 %i.ak, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = icmp samesign ult i32 %i.ai, 16
  br i1 %i.al, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = icmp eq i16 %i.ad, 0
  br i1 %i.am, label %do_sqrshl_bhs.exit.1, label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.an = shl nsw i32 %i.ae, %i.ai                ; 2 uses
  %i.ao = add nsw i32 %i.an, 32768
  %.not.1 = icmp ult i32 %i.ao, 65536
  br i1 %.not.1, label %do_sqrshl_bhs.exit.1, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ap = icmp sgt i16 %i.ad, -1
  %i.aq = select i1 %i.ap, i32 32767, i32 32768
  br label %do_sqrshl_bhs.exit.1

bb.o:                                             ; preds = %bb.j
  %i.ar = sub nsw i32 0, %i.ai
  %i.as = ashr i32 %i.ae, %i.ar
  br label %do_sqrshl_bhs.exit.1

do_sqrshl_bhs.exit.1:                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.i
  %.not.not.1 = phi i1 [ true, %bb.o ], [ false, %bb.n ], [ true, %bb.m ], [ true, %bb.l ], [ true, %bb.i ]
  %.3.i.1 = phi i32 [ %i.as, %bb.o ], [ %i.aq, %bb.n ], [ %i.an, %bb.m ], [ 0, %bb.l ], [ %i.aj, %bb.i ]
  %i.at = trunc i32 %.3.i.1 to i16
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.av = and i16 %i.ab, 255
  %i.aw = zext nneg i16 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = trunc i64 %i.ay to i16                  ; 2 uses
  %i.ba = load i16, ptr %i.au, align 2
  %i.bb = xor i16 %i.az, -1
  %i.bc = and i16 %i.ba, %i.bb
  %i.bd = and i16 %i.az, %i.at
  %i.be = or i16 %i.bc, %i.bd
  store i16 %i.be, ptr %i.au, align 2
  %i.bf = and i16 %i.ab, 1
  %i.bg = zext nneg i16 %i.bf to i32
  %spec.select = select i1 %.not.not.1, i32 0, i32 %i.bg
  %i.bh = and i16 %i.a, 1
  %i.bi = zext nneg i16 %i.bh to i32
  %i.bj = select i1 %not..not.not, i32 %i.bi, i32 0
end_hunk_11
begin_hunk_12_@helper_mve_vqshlsw:bb.a
  %i.cn = or i32 %spec.select33, %i.bi
  %i.co = lshr i16 %i.a, 12                       ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.cq = load i32, ptr %i.cp, align 4            ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = shl i32 %i.cs, 24
  %i.cu = ashr exact i32 %i.ct, 24                ; 6 uses
  %.not.i.3 = icmp sgt i32 %i.cu, -32
  br i1 %.not.i.3, label %bb.x, label %bb.w

bb.w:                                             ; preds = %do_sqrshl_bhs.exit.2
  %i.cv = ashr i32 %i.cq, 31
  br label %do_sqrshl_bhs.exit.3

bb.x:                                             ; preds = %do_sqrshl_bhs.exit.2
  %i.cw = icmp slt i32 %i.cu, 0
  br i1 %i.cw, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cx = icmp samesign ult i32 %i.cu, 32
  br i1 %i.cx, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cy = icmp eq i32 %i.cq, 0
  br i1 %i.cy, label %do_sqrshl_bhs.exit.3, label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.cz = shl i32 %i.cq, %i.cu                    ; 2 uses
  %i.da = ashr exact i32 %i.cz, %i.cu
  %i.db = icmp eq i32 %i.da, %i.cq
  br i1 %i.db, label %do_sqrshl_bhs.exit.3, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dc = icmp sgt i32 %i.cq, -1
  %i.dd = select i1 %i.dc, i32 2147483647, i32 -2147483648
  br label %do_sqrshl_bhs.exit.3

bb.ac:                                            ; preds = %bb.x
  %i.de = sub nsw i32 0, %i.cu
  %i.df = ashr i32 %i.cq, %i.de
  br label %do_sqrshl_bhs.exit.3

do_sqrshl_bhs.exit.3:                             ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.w
  %.not.not.3 = phi i1 [ true, %bb.ac ], [ true, %bb.aa ], [ false, %bb.ab ], [ true, %bb.z ], [ true, %bb.w ]
  %.3.i.3 = phi i32 [ %i.df, %bb.ac ], [ %i.cz, %bb.aa ], [ %i.dd, %bb.ab ], [ 0, %bb.z ], [ %i.cv, %bb.w ]
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.dh = zext nneg i16 %i.co to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.dh
  %i.dj = load i64, ptr %i.di, align 8
  %i.dk = trunc i64 %i.dj to i32                  ; 2 uses
  %i.dl = load i32, ptr %i.dg, align 4
  %i.dm = xor i32 %i.dk, -1
  %i.dn = and i32 %i.dl, %i.dm
  %i.do = and i32 %.3.i.3, %i.dk
  %i.dp = or i32 %i.dn, %i.do
  store i32 %i.dp, ptr %i.dg, align 4
  %i.dq = and i16 %i.co, 1
  %i.dr = zext nneg i16 %i.dq to i32
  %spec.select34 = select i1 %.not.not.3, i32 0, i32 %i.dr
  %i.ds = or i32 %spec.select34, %i.cn
  %.not = icmp eq i32 %i.ds, 0
  br i1 %.not, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %do_sqrshl_bhs.exit.3
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.dt, align 16
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %do_sqrshl_bhs.exit.3
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4            ; 5 uses
  %i.dw = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.dw, align 16         ; 4 uses
  %i.dx = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.dx, 0
  br i1 %.not.i.i, label %bb.af, label %mve_eci_mask.exit.i

bb.af:                                            ; preds = %bb.ae
  %i.dy = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.dz = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.dy to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.dz, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.af
  %i.ea = zext nneg i32 %i.dy to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.ea
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.eb = icmp eq i32 %.val.i, 80
  %i.ec = select i1 %i.eb, i32 16, i32 0
  store i32 %i.ec, ptr %i.dw, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.ae
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.ae ] ; 3 uses
  %i.ed = and i32 %i.dv, 16711680
  %.not.i26 = icmp eq i32 %i.ed, 0
  br i1 %.not.i26, label %mve_advance_vpt.exit, label %bb.ah

bb.ah:                                            ; preds = %mve_eci_mask.exit.i
  %i.ee = and i32 %i.dv, 983040
  %i.ef = icmp samesign ult i32 %i.ee, 589824
  %i.eg = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.ef, i16 %i.eg, i16 %.0.i34.i ; 2 uses
  %i.eh = and i32 %i.dv, 15728640
  %i.ei = icmp samesign ult i32 %i.eh, 9437184
  %i.ej = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.ei, i16 %i.ej, i16 %spec.select.i
  %i.ek = zext i16 %.1.i to i32
  %i.el = xor i32 %i.dv, %i.ek                    ; 2 uses
  %i.em = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.em, 0
  %i.en = and i32 %i.el, -16711681
  %i.eo = shl i32 %i.dv, 1                        ; 2 uses
  %i.ep = and i32 %i.eo, 917504
  %i.eq = or disjoint i32 %i.en, %i.ep
  %i.er = and i32 %i.el, -15728641
  %i.es = select i1 %.not32.i, i32 %i.er, i32 %i.eq
  %i.et = and i32 %i.eo, 14680064
  %i.eu = or disjoint i32 %i.es, %i.et
  store i32 %i.eu, ptr %i.du, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.ah
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqshlub(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %mergemask_ub.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %mergemask_ub.exit ] ; 4 uses
  %.02330 = phi i1 [ false, %bb.a ], [ %i.v, %mergemask_ub.exit ]
  %.02528 = phi i16 [ %i.a, %bb.a ], [ %i.w, %mergemask_ub.exit ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.c = load i8, ptr %i.b, align 1               ; 2 uses
  %i.d = zext i8 %i.c to i32                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1               ; 4 uses
  %i.g = sext i8 %i.f to i32                      ; 2 uses
  %.not.i = icmp sgt i8 %i.f, -8
  br i1 %.not.i, label %bb.c, label %do_uqrshl_bhs.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp slt i8 %i.f, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = sub nsw i32 0, %i.g
  %i.j = lshr i32 %i.d, %i.i
  br label %do_uqrshl_bhs.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp samesign ult i8 %i.f, 8
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = shl nuw nsw i32 %i.d, %i.g               ; 2 uses
  %i.m = icmp samesign ugt i32 %i.l, 255
  br i1 %i.m, label %bb.h, label %do_uqrshl_bhs.exit

bb.g:                                             ; preds = %bb.e
  %i.n = icmp eq i8 %i.c, 0
  br i1 %i.n, label %do_uqrshl_bhs.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br label %do_uqrshl_bhs.exit

do_uqrshl_bhs.exit:                               ; preds = %bb.b, %bb.d, %bb.f, %bb.g, %bb.h
  %.not.not = phi i1 [ true, %bb.d ], [ false, %bb.h ], [ true, %bb.f ], [ true, %bb.g ], [ true, %bb.b ]
  %.3.i = phi i32 [ %i.j, %bb.d ], [ 255, %bb.h ], [ %i.l, %bb.f ], [ 0, %bb.g ], [ 0, %bb.b ]
  %i.o = and i16 %.02528, 1                       ; 2 uses
  %.not.i26 = icmp eq i16 %i.o, 0
  br i1 %.not.i26, label %mergemask_ub.exit, label %bb.i

bb.i:                                             ; preds = %do_uqrshl_bhs.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.q = trunc nuw i32 %.3.i to i8
  store i8 %i.q, ptr %i.p, align 1
  br label %mergemask_ub.exit

mergemask_ub.exit:                                ; preds = %do_uqrshl_bhs.exit, %bb.i
  %i.r = zext nneg i16 %i.o to i32
  %i.s = select i1 %.not.not, i32 0, i32 %i.r
  %i.t = zext i1 %.02330 to i32
  %i.u = or i32 %i.s, %i.t
  %i.v = icmp ne i32 %i.u, 0                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = lshr i16 %.02528, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.j, label %bb.b, !llvm.loop !23

bb.j:                                             ; preds = %mergemask_ub.exit
  br i1 %i.v, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.x, align 16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4              ; 5 uses
  %i.aa = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.aa, align 16         ; 4 uses
  %i.ab = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i, label %bb.m, label %mve_eci_mask.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ac = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.ad = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.ac to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.ad, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.m
  %i.ae = zext nneg i32 %i.ac to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.ae
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.af = icmp eq i32 %.val.i, 80
  %i.ag = select i1 %i.af, i32 16, i32 0
  store i32 %i.ag, ptr %i.aa, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.l
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.l ] ; 3 uses
  %i.ah = and i32 %i.z, 16711680
  %.not.i27 = icmp eq i32 %i.ah, 0
  br i1 %.not.i27, label %mve_advance_vpt.exit, label %bb.o

bb.o:                                             ; preds = %mve_eci_mask.exit.i
  %i.ai = and i32 %i.z, 983040
  %i.aj = icmp samesign ult i32 %i.ai, 589824
  %i.ak = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.aj, i16 %i.ak, i16 %.0.i34.i ; 2 uses
  %i.al = and i32 %i.z, 15728640
  %i.am = icmp samesign ult i32 %i.al, 9437184
  %i.an = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.am, i16 %i.an, i16 %spec.select.i
  %i.ao = zext i16 %.1.i to i32
  %i.ap = xor i32 %i.z, %i.ao                     ; 2 uses
  %i.aq = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.aq, 0
  %i.ar = and i32 %i.ap, -16711681
  %i.as = shl i32 %i.z, 1                         ; 2 uses
  %i.at = and i32 %i.as, 917504
  %i.au = or disjoint i32 %i.ar, %i.at
  %i.av = and i32 %i.ap, -15728641
  %i.aw = select i1 %.not32.i, i32 %i.av, i32 %i.au
  %i.ax = and i32 %i.as, 14680064
  %i.ay = or disjoint i32 %i.aw, %i.ax
  store i32 %i.ay, ptr %i.y, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.o
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqshluh(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 9 uses
  %i.b = load i16, ptr %2, align 2                ; 2 uses
  %i.c = zext i16 %i.b to i32                     ; 2 uses
  %i.d = load i16, ptr %3, align 2
  %i.e = zext i16 %i.d to i32
  %sext = shl i32 %i.e, 24
  %i.f = ashr exact i32 %sext, 24                 ; 5 uses
  %.not.i = icmp sgt i32 %i.f, -16
  br i1 %.not.i, label %bb.b, label %do_uqrshl_bhs.exit

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = sub nsw i32 0, %i.f
  %i.i = lshr i32 %i.c, %i.h
  br label %do_uqrshl_bhs.exit

bb.d:                                             ; preds = %bb.b
  %i.j = icmp samesign ult i32 %i.f, 16
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = shl nuw nsw i32 %i.c, %i.f               ; 2 uses
  %i.l = icmp samesign ugt i32 %i.k, 65535
  br i1 %i.l, label %bb.g, label %do_uqrshl_bhs.exit

bb.f:                                             ; preds = %bb.d
  %i.m = icmp eq i16 %i.b, 0
  br i1 %i.m, label %do_uqrshl_bhs.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %do_uqrshl_bhs.exit

do_uqrshl_bhs.exit:                               ; preds = %bb.a, %bb.c, %bb.e, %bb.f, %bb.g
  %not..not.not = phi i1 [ false, %bb.c ], [ true, %bb.g ], [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.a ]
  %.3.i = phi i32 [ %i.i, %bb.c ], [ 65535, %bb.g ], [ %i.k, %bb.e ], [ 0, %bb.f ], [ 0, %bb.a ]
  %i.n = trunc nuw i32 %.3.i to i16
  %i.o = and i16 %i.a, 255
  %i.p = zext nneg i16 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8
  %i.s = trunc i64 %i.r to i16                    ; 2 uses
  %i.t = load i16, ptr %1, align 2
  %i.u = xor i16 %i.s, -1
  %i.v = and i16 %i.t, %i.u
  %i.w = and i16 %i.s, %i.n
  %i.x = or i16 %i.v, %i.w
  store i16 %i.x, ptr %1, align 2
  %i.y = lshr i16 %i.a, 2                         ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.aa = load i16, ptr %i.z, align 2             ; 2 uses
  %i.ab = zext i16 %i.aa to i32                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = zext i16 %i.ad to i32
  %sext.1 = shl i32 %i.ae, 24
  %i.af = ashr exact i32 %sext.1, 24              ; 5 uses
  %.not.i.1 = icmp sgt i32 %i.af, -16
  br i1 %.not.i.1, label %bb.h, label %do_uqrshl_bhs.exit.1

bb.h:                                             ; preds = %do_uqrshl_bhs.exit
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = icmp samesign ult i32 %i.af, 16
  br i1 %i.ah, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = icmp eq i16 %i.aa, 0
  br i1 %i.ai, label %do_uqrshl_bhs.exit.1, label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.aj = shl nuw nsw i32 %i.ab, %i.af            ; 2 uses
  %i.ak = icmp samesign ugt i32 %i.aj, 65535
  br i1 %i.ak, label %bb.l, label %do_uqrshl_bhs.exit.1

bb.l:                                             ; preds = %bb.k, %bb.j
  br label %do_uqrshl_bhs.exit.1

bb.m:                                             ; preds = %bb.h
  %i.al = sub nsw i32 0, %i.af
  %i.am = lshr i32 %i.ab, %i.al
  br label %do_uqrshl_bhs.exit.1

do_uqrshl_bhs.exit.1:                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %do_uqrshl_bhs.exit
  %.not.not.1 = phi i1 [ true, %bb.m ], [ false, %bb.l ], [ true, %bb.k ], [ true, %bb.j ], [ true, %do_uqrshl_bhs.exit ]
  %.3.i.1 = phi i32 [ %i.am, %bb.m ], [ 65535, %bb.l ], [ %i.aj, %bb.k ], [ 0, %bb.j ], [ 0, %do_uqrshl_bhs.exit ]
  %i.an = trunc nuw i32 %.3.i.1 to i16
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.ap = and i16 %i.y, 255
  %i.aq = zext nneg i16 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = trunc i64 %i.as to i16                  ; 2 uses
  %i.au = load i16, ptr %i.ao, align 2
  %i.av = xor i16 %i.at, -1
  %i.aw = and i16 %i.au, %i.av
  %i.ax = and i16 %i.at, %i.an
  %i.ay = or i16 %i.aw, %i.ax
  store i16 %i.ay, ptr %i.ao, align 2
  %i.az = and i16 %i.y, 1
  %i.ba = zext nneg i16 %i.az to i32
  %spec.select = select i1 %.not.not.1, i32 0, i32 %i.ba
  %i.bb = and i16 %i.a, 1
  %i.bc = zext nneg i16 %i.bb to i32
  %i.bd = select i1 %not..not.not, i32 %i.bc, i32 0
  %i.be = or i32 %spec.select, %i.bd
  %i.bf = lshr i16 %i.a, 4                        ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bh = load i16, ptr %i.bg, align 2            ; 2 uses
  %i.bi = zext i16 %i.bh to i32                   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bk = load i16, ptr %i.bj, align 2
  %i.bl = zext i16 %i.bk to i32
  %sext.2 = shl i32 %i.bl, 24
  %i.bm = ashr exact i32 %sext.2, 24              ; 5 uses
  %.not.i.2 = icmp sgt i32 %i.bm, -16
  br i1 %.not.i.2, label %bb.n, label %do_uqrshl_bhs.exit.2

bb.n:                                             ; preds = %do_uqrshl_bhs.exit.1
end_hunk_12
begin_hunk_13_@helper_mve_vqshluw:bb.a
  %i.ce = or i32 %spec.select33, %i.bc
  %i.cf = lshr i16 %i.a, 12                       ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ch = load i32, ptr %i.cg, align 4            ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = shl i32 %i.cj, 24
  %i.cl = ashr exact i32 %i.ck, 24                ; 6 uses
  %.not.i.3 = icmp sgt i32 %i.cl, -32
  br i1 %.not.i.3, label %bb.t, label %do_uqrshl_bhs.exit.3

bb.t:                                             ; preds = %do_uqrshl_bhs.exit.2
  %i.cm = icmp slt i32 %i.cl, 0
  br i1 %i.cm, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cn = icmp samesign ult i32 %i.cl, 32
  br i1 %i.cn, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.co = icmp eq i32 %i.ch, 0
  br i1 %i.co, label %do_uqrshl_bhs.exit.3, label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.cp = shl i32 %i.ch, %i.cl                    ; 2 uses
  %i.cq = lshr exact i32 %i.cp, %i.cl
  %i.cr = icmp eq i32 %i.cq, %i.ch
  br i1 %i.cr, label %do_uqrshl_bhs.exit.3, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  br label %do_uqrshl_bhs.exit.3

bb.y:                                             ; preds = %bb.t
  %i.cs = sub nsw i32 0, %i.cl
  %i.ct = lshr i32 %i.ch, %i.cs
  br label %do_uqrshl_bhs.exit.3

do_uqrshl_bhs.exit.3:                             ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %do_uqrshl_bhs.exit.2
  %.not.not.3 = phi i1 [ true, %bb.y ], [ true, %bb.w ], [ false, %bb.x ], [ true, %bb.v ], [ true, %do_uqrshl_bhs.exit.2 ]
  %.3.i.3 = phi i32 [ %i.ct, %bb.y ], [ %i.cp, %bb.w ], [ -1, %bb.x ], [ 0, %bb.v ], [ 0, %do_uqrshl_bhs.exit.2 ]
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.cv = zext nneg i16 %i.cf to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.cv
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = trunc i64 %i.cx to i32                  ; 2 uses
  %i.cz = load i32, ptr %i.cu, align 4
  %i.da = xor i32 %i.cy, -1
  %i.db = and i32 %i.cz, %i.da
  %i.dc = and i32 %.3.i.3, %i.cy
  %i.dd = or i32 %i.db, %i.dc
  store i32 %i.dd, ptr %i.cu, align 4
  %i.de = and i16 %i.cf, 1
  %i.df = zext nneg i16 %i.de to i32
  %spec.select34 = select i1 %.not.not.3, i32 0, i32 %i.df
  %i.dg = or i32 %spec.select34, %i.ce
  %.not = icmp eq i32 %i.dg, 0
  br i1 %.not, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %do_uqrshl_bhs.exit.3
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.dh, align 16
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %do_uqrshl_bhs.exit.3
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4            ; 5 uses
  %i.dk = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.dk, align 16         ; 4 uses
  %i.dl = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.dl, 0
  br i1 %.not.i.i, label %bb.ab, label %mve_eci_mask.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.dm = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.dn = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.dm to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.dn, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.ab
  %i.do = zext nneg i32 %i.dm to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.do
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.dp = icmp eq i32 %.val.i, 80
  %i.dq = select i1 %i.dp, i32 16, i32 0
  store i32 %i.dq, ptr %i.dk, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.aa
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.aa ] ; 3 uses
  %i.dr = and i32 %i.dj, 16711680
  %.not.i26 = icmp eq i32 %i.dr, 0
  br i1 %.not.i26, label %mve_advance_vpt.exit, label %bb.ad

bb.ad:                                            ; preds = %mve_eci_mask.exit.i
  %i.ds = and i32 %i.dj, 983040
  %i.dt = icmp samesign ult i32 %i.ds, 589824
  %i.du = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.dt, i16 %i.du, i16 %.0.i34.i ; 2 uses
  %i.dv = and i32 %i.dj, 15728640
  %i.dw = icmp samesign ult i32 %i.dv, 9437184
  %i.dx = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.dw, i16 %i.dx, i16 %spec.select.i
  %i.dy = zext i16 %.1.i to i32
  %i.dz = xor i32 %i.dj, %i.dy                    ; 2 uses
  %i.ea = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.ea, 0
  %i.eb = and i32 %i.dz, -16711681
  %i.ec = shl i32 %i.dj, 1                        ; 2 uses
  %i.ed = and i32 %i.ec, 917504
  %i.ee = or disjoint i32 %i.eb, %i.ed
  %i.ef = and i32 %i.dz, -15728641
  %i.eg = select i1 %.not32.i, i32 %i.ef, i32 %i.ee
  %i.eh = and i32 %i.ec, 14680064
  %i.ei = or disjoint i32 %i.eg, %i.eh
  store i32 %i.ei, ptr %i.di, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.ad
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqrshlsb(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %mergemask_sb.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %mergemask_sb.exit ] ; 4 uses
  %.02330 = phi i1 [ false, %bb.a ], [ %i.aa, %mergemask_sb.exit ]
  %.02528 = phi i16 [ %i.a, %bb.a ], [ %i.ab, %mergemask_sb.exit ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.c = load i8, ptr %i.b, align 1               ; 3 uses
  %i.d = sext i8 %i.c to i32                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1               ; 4 uses
  %i.g = sext i8 %i.f to i32                      ; 2 uses
  %.not.i = icmp sgt i8 %i.f, -8
  br i1 %.not.i, label %bb.c, label %do_sqrshl_bhs.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp slt i8 %i.f, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = xor i32 %i.g, -1
  %i.j = ashr i32 %i.d, %i.i                      ; 2 uses
  %i.k = ashr i32 %i.j, 1
  %i.l = and i32 %i.j, 1
  %i.m = add nsw i32 %i.k, %i.l
  br label %do_sqrshl_bhs.exit

bb.e:                                             ; preds = %bb.c
  %i.n = icmp samesign ult i8 %i.f, 8
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = shl nsw i32 %i.d, %i.g                   ; 2 uses
  %i.p = add nsw i32 %i.o, 128
  %.not = icmp ult i32 %i.p, 256
  br i1 %.not, label %do_sqrshl_bhs.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.q = icmp eq i8 %i.c, 0
  br i1 %i.q, label %do_sqrshl_bhs.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = icmp sgt i8 %i.c, -1
  %i.s = select i1 %i.r, i32 127, i32 128
  br label %do_sqrshl_bhs.exit

do_sqrshl_bhs.exit:                               ; preds = %bb.b, %bb.d, %bb.f, %bb.g, %bb.h
  %.not.not = phi i1 [ true, %bb.d ], [ false, %bb.h ], [ true, %bb.f ], [ true, %bb.g ], [ true, %bb.b ]
  %.3.i = phi i32 [ %i.m, %bb.d ], [ %i.s, %bb.h ], [ %i.o, %bb.f ], [ 0, %bb.g ], [ 0, %bb.b ]
  %i.t = and i16 %.02528, 1                       ; 2 uses
  %.not.i.i = icmp eq i16 %i.t, 0
  br i1 %.not.i.i, label %mergemask_sb.exit, label %bb.i

bb.i:                                             ; preds = %do_sqrshl_bhs.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.v = trunc i32 %.3.i to i8
  store i8 %i.v, ptr %i.u, align 1
  br label %mergemask_sb.exit

mergemask_sb.exit:                                ; preds = %do_sqrshl_bhs.exit, %bb.i
  %i.w = zext nneg i16 %i.t to i32
  %i.x = select i1 %.not.not, i32 0, i32 %i.w
  %i.y = zext i1 %.02330 to i32
  %i.z = or i32 %i.x, %i.y
  %i.aa = icmp ne i32 %i.z, 0                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = lshr i16 %.02528, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.j, label %bb.b, !llvm.loop !24

bb.j:                                             ; preds = %mergemask_sb.exit
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.ac, align 16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4            ; 5 uses
  %i.af = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.af, align 16         ; 4 uses
  %i.ag = and i32 %.val.i, 15
  %.not.i.i26 = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i26, label %bb.m, label %mve_eci_mask.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ah = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.ai = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.ah to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.ai, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.m
  %i.aj = zext nneg i32 %i.ah to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.aj
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.ak = icmp eq i32 %.val.i, 80
  %i.al = select i1 %i.ak, i32 16, i32 0
  store i32 %i.al, ptr %i.af, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.l
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.l ] ; 3 uses
  %i.am = and i32 %i.ae, 16711680
  %.not.i27 = icmp eq i32 %i.am, 0
  br i1 %.not.i27, label %mve_advance_vpt.exit, label %bb.o

bb.o:                                             ; preds = %mve_eci_mask.exit.i
  %i.an = and i32 %i.ae, 983040
  %i.ao = icmp samesign ult i32 %i.an, 589824
  %i.ap = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.ao, i16 %i.ap, i16 %.0.i34.i ; 2 uses
  %i.aq = and i32 %i.ae, 15728640
  %i.ar = icmp samesign ult i32 %i.aq, 9437184
  %i.as = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.ar, i16 %i.as, i16 %spec.select.i
  %i.at = zext i16 %.1.i to i32
  %i.au = xor i32 %i.ae, %i.at                    ; 2 uses
  %i.av = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.av, 0
  %i.aw = and i32 %i.au, -16711681
  %i.ax = shl i32 %i.ae, 1                        ; 2 uses
  %i.ay = and i32 %i.ax, 917504
  %i.az = or disjoint i32 %i.aw, %i.ay
  %i.ba = and i32 %i.au, -15728641
  %i.bb = select i1 %.not32.i, i32 %i.ba, i32 %i.az
  %i.bc = and i32 %i.ax, 14680064
  %i.bd = or disjoint i32 %i.bb, %i.bc
  store i32 %i.bd, ptr %i.ad, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.o
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqrshlsh(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 9 uses
  %i.b = load i16, ptr %2, align 2                ; 3 uses
  %i.c = sext i16 %i.b to i32                     ; 2 uses
  %i.d = load i16, ptr %3, align 2
  %i.e = zext i16 %i.d to i32
  %sext = shl i32 %i.e, 24
  %i.f = ashr exact i32 %sext, 24                 ; 5 uses
  %.not.i = icmp sgt i32 %i.f, -16
  br i1 %.not.i, label %bb.b, label %do_sqrshl_bhs.exit

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = xor i32 %i.f, -1
  %i.i = ashr i32 %i.c, %i.h                      ; 2 uses
  %i.j = ashr i32 %i.i, 1
  %i.k = and i32 %i.i, 1
  %i.l = add nsw i32 %i.j, %i.k
  br label %do_sqrshl_bhs.exit

bb.d:                                             ; preds = %bb.b
  %i.m = icmp samesign ult i32 %i.f, 16
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = shl nsw i32 %i.c, %i.f                   ; 2 uses
  %i.o = add nsw i32 %i.n, 32768
  %.not = icmp ult i32 %i.o, 65536
  br i1 %.not, label %do_sqrshl_bhs.exit, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.p = icmp eq i16 %i.b, 0
  br i1 %i.p, label %do_sqrshl_bhs.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = icmp sgt i16 %i.b, -1
  %i.r = select i1 %i.q, i32 32767, i32 32768
  br label %do_sqrshl_bhs.exit

do_sqrshl_bhs.exit:                               ; preds = %bb.a, %bb.c, %bb.e, %bb.f, %bb.g
  %not..not.not = phi i1 [ false, %bb.c ], [ true, %bb.g ], [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.a ]
  %.3.i = phi i32 [ %i.l, %bb.c ], [ %i.r, %bb.g ], [ %i.n, %bb.e ], [ 0, %bb.f ], [ 0, %bb.a ]
  %i.s = trunc i32 %.3.i to i16
  %i.t = and i16 %i.a, 255
  %i.u = zext nneg i16 %i.t to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8
  %i.x = trunc i64 %i.w to i16                    ; 2 uses
  %i.y = load i16, ptr %1, align 2
  %i.z = xor i16 %i.x, -1
  %i.aa = and i16 %i.y, %i.z
  %i.ab = and i16 %i.x, %i.s
  %i.ac = or i16 %i.aa, %i.ab
  store i16 %i.ac, ptr %1, align 2
  %i.ad = lshr i16 %i.a, 2                        ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.af = load i16, ptr %i.ae, align 2            ; 3 uses
  %i.ag = sext i16 %i.af to i32                   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ai = load i16, ptr %i.ah, align 2
  %i.aj = zext i16 %i.ai to i32
  %sext.1 = shl i32 %i.aj, 24
  %i.ak = ashr exact i32 %sext.1, 24              ; 5 uses
  %.not.i.1 = icmp sgt i32 %i.ak, -16
  br i1 %.not.i.1, label %bb.h, label %do_sqrshl_bhs.exit.1

bb.h:                                             ; preds = %do_sqrshl_bhs.exit
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = icmp samesign ult i32 %i.ak, 16
  br i1 %i.am, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = icmp eq i16 %i.af, 0
  br i1 %i.an, label %do_sqrshl_bhs.exit.1, label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ao = shl nsw i32 %i.ag, %i.ak                ; 2 uses
  %i.ap = add nsw i32 %i.ao, 32768
  %.not.1 = icmp ult i32 %i.ap, 65536
  br i1 %.not.1, label %do_sqrshl_bhs.exit.1, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aq = icmp sgt i16 %i.af, -1
  %i.ar = select i1 %i.aq, i32 32767, i32 32768
  br label %do_sqrshl_bhs.exit.1

bb.m:                                             ; preds = %bb.h
  %i.as = xor i32 %i.ak, -1
  %i.at = ashr i32 %i.ag, %i.as                   ; 2 uses
  %i.au = ashr i32 %i.at, 1
  %i.av = and i32 %i.at, 1
  %i.aw = add nsw i32 %i.au, %i.av
  br label %do_sqrshl_bhs.exit.1

do_sqrshl_bhs.exit.1:                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %do_sqrshl_bhs.exit
  %.not.not.1 = phi i1 [ true, %bb.m ], [ false, %bb.l ], [ true, %bb.k ], [ true, %bb.j ], [ true, %do_sqrshl_bhs.exit ]
  %.3.i.1 = phi i32 [ %i.aw, %bb.m ], [ %i.ar, %bb.l ], [ %i.ao, %bb.k ], [ 0, %bb.j ], [ 0, %do_sqrshl_bhs.exit ]
  %i.ax = trunc i32 %.3.i.1 to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.az = and i16 %i.ad, 255
  %i.ba = zext nneg i16 %i.az to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = trunc i64 %i.bc to i16                  ; 2 uses
  %i.be = load i16, ptr %i.ay, align 2
  %i.bf = xor i16 %i.bd, -1
  %i.bg = and i16 %i.be, %i.bf
  %i.bh = and i16 %i.bd, %i.ax
  %i.bi = or i16 %i.bg, %i.bh
  store i16 %i.bi, ptr %i.ay, align 2
  %i.bj = and i16 %i.ad, 1
  %i.bk = zext nneg i16 %i.bj to i32
  %spec.select = select i1 %.not.not.1, i32 0, i32 %i.bk
  %i.bl = and i16 %i.a, 1
  %i.bm = zext nneg i16 %i.bl to i32
  %i.bn = select i1 %not..not.not, i32 %i.bm, i32 0
  %i.bo = or i32 %spec.select, %i.bn
  %i.bp = lshr i16 %i.a, 4                        ; 2 uses
end_hunk_13
begin_hunk_14_@helper_mve_vqrshlsw:bb.a
  %i.cu = lshr i16 %i.a, 12                       ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.cw = load i32, ptr %i.cv, align 4            ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.cy = load i32, ptr %i.cx, align 4
  %i.cz = shl i32 %i.cy, 24
  %i.da = ashr exact i32 %i.cz, 24                ; 6 uses
  %.not.i.3 = icmp sgt i32 %i.da, -32
  br i1 %.not.i.3, label %bb.t, label %do_sqrshl_bhs.exit.3

bb.t:                                             ; preds = %do_sqrshl_bhs.exit.2
  %i.db = icmp slt i32 %i.da, 0
  br i1 %i.db, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dc = icmp samesign ult i32 %i.da, 32
  br i1 %i.dc, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dd = icmp eq i32 %i.cw, 0
  br i1 %i.dd, label %do_sqrshl_bhs.exit.3, label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.de = shl i32 %i.cw, %i.da                    ; 2 uses
  %i.df = ashr exact i32 %i.de, %i.da
  %i.dg = icmp eq i32 %i.df, %i.cw
  br i1 %i.dg, label %do_sqrshl_bhs.exit.3, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.dh = icmp sgt i32 %i.cw, -1
  %i.di = select i1 %i.dh, i32 2147483647, i32 -2147483648
  br label %do_sqrshl_bhs.exit.3

bb.y:                                             ; preds = %bb.t
  %i.dj = xor i32 %i.da, -1
  %i.dk = ashr i32 %i.cw, %i.dj                   ; 2 uses
  %i.dl = ashr i32 %i.dk, 1
  %i.dm = and i32 %i.dk, 1
  %i.dn = add nsw i32 %i.dl, %i.dm
  br label %do_sqrshl_bhs.exit.3

do_sqrshl_bhs.exit.3:                             ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %do_sqrshl_bhs.exit.2
  %.not.not.3 = phi i1 [ true, %bb.y ], [ true, %bb.w ], [ false, %bb.x ], [ true, %bb.v ], [ true, %do_sqrshl_bhs.exit.2 ]
  %.3.i.3 = phi i32 [ %i.dn, %bb.y ], [ %i.de, %bb.w ], [ %i.di, %bb.x ], [ 0, %bb.v ], [ 0, %do_sqrshl_bhs.exit.2 ]
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.dp = zext nneg i16 %i.cu to i64
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.dp
  %i.dr = load i64, ptr %i.dq, align 8
  %i.ds = trunc i64 %i.dr to i32                  ; 2 uses
  %i.dt = load i32, ptr %i.do, align 4
  %i.du = xor i32 %i.ds, -1
  %i.dv = and i32 %i.dt, %i.du
  %i.dw = and i32 %.3.i.3, %i.ds
  %i.dx = or i32 %i.dv, %i.dw
  store i32 %i.dx, ptr %i.do, align 4
  %i.dy = and i16 %i.cu, 1
  %i.dz = zext nneg i16 %i.dy to i32
  %spec.select34 = select i1 %.not.not.3, i32 0, i32 %i.dz
  %i.ea = or i32 %spec.select34, %i.ct
  %.not = icmp eq i32 %i.ea, 0
  br i1 %.not, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %do_sqrshl_bhs.exit.3
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.eb, align 16
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %do_sqrshl_bhs.exit.3
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4            ; 5 uses
  %i.ee = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.ee, align 16         ; 4 uses
  %i.ef = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.ef, 0
  br i1 %.not.i.i, label %bb.ab, label %mve_eci_mask.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.eg = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.eh = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.eg to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.eh, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.ab
  %i.ei = zext nneg i32 %i.eg to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.ei
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.ej = icmp eq i32 %.val.i, 80
  %i.ek = select i1 %i.ej, i32 16, i32 0
  store i32 %i.ek, ptr %i.ee, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.aa
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.aa ] ; 3 uses
  %i.el = and i32 %i.ed, 16711680
  %.not.i26 = icmp eq i32 %i.el, 0
  br i1 %.not.i26, label %mve_advance_vpt.exit, label %bb.ad

bb.ad:                                            ; preds = %mve_eci_mask.exit.i
  %i.em = and i32 %i.ed, 983040
  %i.en = icmp samesign ult i32 %i.em, 589824
  %i.eo = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.en, i16 %i.eo, i16 %.0.i34.i ; 2 uses
  %i.ep = and i32 %i.ed, 15728640
  %i.eq = icmp samesign ult i32 %i.ep, 9437184
  %i.er = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.eq, i16 %i.er, i16 %spec.select.i
  %i.es = zext i16 %.1.i to i32
  %i.et = xor i32 %i.ed, %i.es                    ; 2 uses
  %i.eu = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.eu, 0
  %i.ev = and i32 %i.et, -16711681
  %i.ew = shl i32 %i.ed, 1                        ; 2 uses
  %i.ex = and i32 %i.ew, 917504
  %i.ey = or disjoint i32 %i.ev, %i.ex
  %i.ez = and i32 %i.et, -15728641
  %i.fa = select i1 %.not32.i, i32 %i.ez, i32 %i.ey
  %i.fb = and i32 %i.ew, 14680064
  %i.fc = or disjoint i32 %i.fa, %i.fb
  store i32 %i.fc, ptr %i.ec, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.ad
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqrshlub(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %mergemask_ub.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %mergemask_ub.exit ] ; 4 uses
  %.02330 = phi i1 [ false, %bb.a ], [ %i.x, %mergemask_ub.exit ]
  %.02528 = phi i16 [ %i.a, %bb.a ], [ %i.y, %mergemask_ub.exit ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.c = load i8, ptr %i.b, align 1               ; 2 uses
  %i.d = zext i8 %i.c to i32                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1               ; 4 uses
  %i.g = sext i8 %i.f to i32                      ; 2 uses
  %.not.i = icmp sgt i8 %i.f, -9
  br i1 %.not.i, label %bb.c, label %do_uqrshl_bhs.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp slt i8 %i.f, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = xor i32 %i.g, -1
  %i.j = lshr i32 %i.d, %i.i                      ; 2 uses
  %i.k = lshr i32 %i.j, 1
  %i.l = sub nsw i32 %i.j, %i.k
  br label %do_uqrshl_bhs.exit

bb.e:                                             ; preds = %bb.c
  %i.m = icmp samesign ult i8 %i.f, 8
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = shl nuw nsw i32 %i.d, %i.g               ; 2 uses
  %i.o = icmp samesign ugt i32 %i.n, 255
  br i1 %i.o, label %bb.h, label %do_uqrshl_bhs.exit

bb.g:                                             ; preds = %bb.e
  %i.p = icmp eq i8 %i.c, 0
  br i1 %i.p, label %do_uqrshl_bhs.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br label %do_uqrshl_bhs.exit

do_uqrshl_bhs.exit:                               ; preds = %bb.b, %bb.d, %bb.f, %bb.g, %bb.h
  %.not.not = phi i1 [ true, %bb.d ], [ false, %bb.h ], [ true, %bb.f ], [ true, %bb.g ], [ true, %bb.b ]
  %.3.i = phi i32 [ %i.l, %bb.d ], [ 255, %bb.h ], [ %i.n, %bb.f ], [ 0, %bb.g ], [ 0, %bb.b ]
  %i.q = and i16 %.02528, 1                       ; 2 uses
  %.not.i26 = icmp eq i16 %i.q, 0
  br i1 %.not.i26, label %mergemask_ub.exit, label %bb.i

bb.i:                                             ; preds = %do_uqrshl_bhs.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.s = trunc i32 %.3.i to i8
  store i8 %i.s, ptr %i.r, align 1
  br label %mergemask_ub.exit

mergemask_ub.exit:                                ; preds = %do_uqrshl_bhs.exit, %bb.i
  %i.t = zext nneg i16 %i.q to i32
  %i.u = select i1 %.not.not, i32 0, i32 %i.t
  %i.v = zext i1 %.02330 to i32
  %i.w = or i32 %i.u, %i.v
  %i.x = icmp ne i32 %i.w, 0                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.y = lshr i16 %.02528, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.j, label %bb.b, !llvm.loop !25

bb.j:                                             ; preds = %mergemask_ub.exit
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.z, align 16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4            ; 5 uses
  %i.ac = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.ac, align 16         ; 4 uses
  %i.ad = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i, label %bb.m, label %mve_eci_mask.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ae = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.af = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.ae to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.af, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.m
  %i.ag = zext nneg i32 %i.ae to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.ag
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.ah = icmp eq i32 %.val.i, 80
  %i.ai = select i1 %i.ah, i32 16, i32 0
  store i32 %i.ai, ptr %i.ac, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.l
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.l ] ; 3 uses
  %i.aj = and i32 %i.ab, 16711680
  %.not.i27 = icmp eq i32 %i.aj, 0
  br i1 %.not.i27, label %mve_advance_vpt.exit, label %bb.o

bb.o:                                             ; preds = %mve_eci_mask.exit.i
  %i.ak = and i32 %i.ab, 983040
  %i.al = icmp samesign ult i32 %i.ak, 589824
  %i.am = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.al, i16 %i.am, i16 %.0.i34.i ; 2 uses
  %i.an = and i32 %i.ab, 15728640
  %i.ao = icmp samesign ult i32 %i.an, 9437184
  %i.ap = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.ao, i16 %i.ap, i16 %spec.select.i
  %i.aq = zext i16 %.1.i to i32
  %i.ar = xor i32 %i.ab, %i.aq                    ; 2 uses
  %i.as = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.as, 0
  %i.at = and i32 %i.ar, -16711681
  %i.au = shl i32 %i.ab, 1                        ; 2 uses
  %i.av = and i32 %i.au, 917504
  %i.aw = or disjoint i32 %i.at, %i.av
  %i.ax = and i32 %i.ar, -15728641
  %i.ay = select i1 %.not32.i, i32 %i.ax, i32 %i.aw
  %i.az = and i32 %i.au, 14680064
  %i.ba = or disjoint i32 %i.ay, %i.az
  store i32 %i.ba, ptr %i.aa, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.o
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqrshluh(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 9 uses
  %i.b = load i16, ptr %2, align 2                ; 2 uses
  %i.c = zext i16 %i.b to i32                     ; 2 uses
  %i.d = load i16, ptr %3, align 2
  %i.e = zext i16 %i.d to i32
  %sext = shl i32 %i.e, 24
  %i.f = ashr exact i32 %sext, 24                 ; 5 uses
  %.not.i = icmp sgt i32 %i.f, -17
  br i1 %.not.i, label %bb.b, label %do_uqrshl_bhs.exit

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = xor i32 %i.f, -1
  %i.i = lshr i32 %i.c, %i.h                      ; 2 uses
  %i.j = lshr i32 %i.i, 1
  %i.k = sub nsw i32 %i.i, %i.j
  br label %do_uqrshl_bhs.exit

bb.d:                                             ; preds = %bb.b
  %i.l = icmp samesign ult i32 %i.f, 16
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = shl nuw nsw i32 %i.c, %i.f               ; 2 uses
  %i.n = icmp samesign ugt i32 %i.m, 65535
  br i1 %i.n, label %bb.g, label %do_uqrshl_bhs.exit

bb.f:                                             ; preds = %bb.d
  %i.o = icmp eq i16 %i.b, 0
  br i1 %i.o, label %do_uqrshl_bhs.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %do_uqrshl_bhs.exit

do_uqrshl_bhs.exit:                               ; preds = %bb.a, %bb.c, %bb.e, %bb.f, %bb.g
  %not..not.not = phi i1 [ false, %bb.c ], [ true, %bb.g ], [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.a ]
  %.3.i = phi i32 [ %i.k, %bb.c ], [ 65535, %bb.g ], [ %i.m, %bb.e ], [ 0, %bb.f ], [ 0, %bb.a ]
  %i.p = trunc i32 %.3.i to i16
  %i.q = and i16 %i.a, 255
  %i.r = zext nneg i16 %i.q to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8
  %i.u = trunc i64 %i.t to i16                    ; 2 uses
  %i.v = load i16, ptr %1, align 2
  %i.w = xor i16 %i.u, -1
  %i.x = and i16 %i.v, %i.w
  %i.y = and i16 %i.u, %i.p
  %i.z = or i16 %i.x, %i.y
  store i16 %i.z, ptr %1, align 2
  %i.aa = lshr i16 %i.a, 2                        ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ac = load i16, ptr %i.ab, align 2            ; 2 uses
  %i.ad = zext i16 %i.ac to i32                   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = zext i16 %i.af to i32
  %sext.1 = shl i32 %i.ag, 24
  %i.ah = ashr exact i32 %sext.1, 24              ; 5 uses
  %.not.i.1 = icmp sgt i32 %i.ah, -17
  br i1 %.not.i.1, label %bb.h, label %do_uqrshl_bhs.exit.1

bb.h:                                             ; preds = %do_uqrshl_bhs.exit
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = icmp samesign ult i32 %i.ah, 16
  br i1 %i.aj, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = icmp eq i16 %i.ac, 0
  br i1 %i.ak, label %do_uqrshl_bhs.exit.1, label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.al = shl nuw nsw i32 %i.ad, %i.ah            ; 2 uses
  %i.am = icmp samesign ugt i32 %i.al, 65535
  br i1 %i.am, label %bb.l, label %do_uqrshl_bhs.exit.1

bb.l:                                             ; preds = %bb.k, %bb.j
  br label %do_uqrshl_bhs.exit.1

bb.m:                                             ; preds = %bb.h
  %i.an = xor i32 %i.ah, -1
  %i.ao = lshr i32 %i.ad, %i.an                   ; 2 uses
  %i.ap = lshr i32 %i.ao, 1
  %i.aq = sub nsw i32 %i.ao, %i.ap
  br label %do_uqrshl_bhs.exit.1

do_uqrshl_bhs.exit.1:                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %do_uqrshl_bhs.exit
  %.not.not.1 = phi i1 [ true, %bb.m ], [ false, %bb.l ], [ true, %bb.k ], [ true, %bb.j ], [ true, %do_uqrshl_bhs.exit ]
  %.3.i.1 = phi i32 [ %i.aq, %bb.m ], [ 65535, %bb.l ], [ %i.al, %bb.k ], [ 0, %bb.j ], [ 0, %do_uqrshl_bhs.exit ]
  %i.ar = trunc i32 %.3.i.1 to i16
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.at = and i16 %i.aa, 255
  %i.au = zext nneg i16 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = trunc i64 %i.aw to i16                  ; 2 uses
  %i.ay = load i16, ptr %i.as, align 2
  %i.az = xor i16 %i.ax, -1
  %i.ba = and i16 %i.ay, %i.az
  %i.bb = and i16 %i.ax, %i.ar
  %i.bc = or i16 %i.ba, %i.bb
  store i16 %i.bc, ptr %i.as, align 2
  %i.bd = and i16 %i.aa, 1
  %i.be = zext nneg i16 %i.bd to i32
  %spec.select = select i1 %.not.not.1, i32 0, i32 %i.be
  %i.bf = and i16 %i.a, 1
  %i.bg = zext nneg i16 %i.bf to i32
  %i.bh = select i1 %not..not.not, i32 %i.bg, i32 0
  %i.bi = or i32 %spec.select, %i.bh
  %i.bj = lshr i16 %i.a, 4                        ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bl = load i16, ptr %i.bk, align 2            ; 2 uses
  %i.bm = zext i16 %i.bl to i32                   ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bo = load i16, ptr %i.bn, align 2
  %i.bp = zext i16 %i.bo to i32
  %sext.2 = shl i32 %i.bp, 24
  %i.bq = ashr exact i32 %sext.2, 24              ; 5 uses
end_hunk_14
begin_hunk_15_@helper_mve_vqrshluw:bb.a
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = trunc i64 %i.cb to i32                  ; 2 uses
  %i.cd = load i32, ptr %i.by, align 4
  %i.ce = xor i32 %i.cc, -1
  %i.cf = and i32 %i.cd, %i.ce
  %i.cg = and i32 %.3.i.2, %i.cc
  %i.ch = or i32 %i.cf, %i.cg
  store i32 %i.ch, ptr %i.by, align 4
  %i.ci = and i16 %i.bh, 1
  %i.cj = zext nneg i16 %i.ci to i32
  %spec.select33 = select i1 %.not.not.2, i32 0, i32 %i.cj
  %i.ck = or i32 %spec.select33, %i.bg
  %i.cl = lshr i16 %i.a, 12                       ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.cn = load i32, ptr %i.cm, align 4            ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = shl i32 %i.cp, 24
  %i.cr = ashr exact i32 %i.cq, 24                ; 6 uses
  %.not.i.3 = icmp sgt i32 %i.cr, -33
  br i1 %.not.i.3, label %bb.t, label %do_uqrshl_bhs.exit.3

bb.t:                                             ; preds = %do_uqrshl_bhs.exit.2
  %i.cs = icmp slt i32 %i.cr, 0
  br i1 %i.cs, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ct = icmp samesign ult i32 %i.cr, 32
  br i1 %i.ct, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cu = icmp eq i32 %i.cn, 0
  br i1 %i.cu, label %do_uqrshl_bhs.exit.3, label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.cv = shl i32 %i.cn, %i.cr                    ; 2 uses
  %i.cw = lshr exact i32 %i.cv, %i.cr
  %i.cx = icmp eq i32 %i.cw, %i.cn
  br i1 %i.cx, label %do_uqrshl_bhs.exit.3, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  br label %do_uqrshl_bhs.exit.3

bb.y:                                             ; preds = %bb.t
  %i.cy = xor i32 %i.cr, -1
  %i.cz = lshr i32 %i.cn, %i.cy                   ; 2 uses
  %i.da = lshr i32 %i.cz, 1
  %i.db = sub i32 %i.cz, %i.da
  br label %do_uqrshl_bhs.exit.3

do_uqrshl_bhs.exit.3:                             ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %do_uqrshl_bhs.exit.2
  %.not.not.3 = phi i1 [ true, %bb.y ], [ true, %bb.w ], [ false, %bb.x ], [ true, %bb.v ], [ true, %do_uqrshl_bhs.exit.2 ]
  %.3.i.3 = phi i32 [ %i.db, %bb.y ], [ %i.cv, %bb.w ], [ -1, %bb.x ], [ 0, %bb.v ], [ 0, %do_uqrshl_bhs.exit.2 ]
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.dd = zext nneg i16 %i.cl to i64
  %i.de = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8
  %i.dg = trunc i64 %i.df to i32                  ; 2 uses
  %i.dh = load i32, ptr %i.dc, align 4
  %i.di = xor i32 %i.dg, -1
  %i.dj = and i32 %i.dh, %i.di
  %i.dk = and i32 %.3.i.3, %i.dg
  %i.dl = or i32 %i.dj, %i.dk
  store i32 %i.dl, ptr %i.dc, align 4
  %i.dm = and i16 %i.cl, 1
  %i.dn = zext nneg i16 %i.dm to i32
  %spec.select34 = select i1 %.not.not.3, i32 0, i32 %i.dn
  %i.do = or i32 %spec.select34, %i.ck
  %.not = icmp eq i32 %i.do, 0
  br i1 %.not, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %do_uqrshl_bhs.exit.3
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.dp, align 16
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %do_uqrshl_bhs.exit.3
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4            ; 5 uses
  %i.ds = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.ds, align 16         ; 4 uses
  %i.dt = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.dt, 0
  br i1 %.not.i.i, label %bb.ab, label %mve_eci_mask.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.du = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.dv = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.du to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.dv, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.ab
  %i.dw = zext nneg i32 %i.du to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.dw
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.dx = icmp eq i32 %.val.i, 80
  %i.dy = select i1 %i.dx, i32 16, i32 0
  store i32 %i.dy, ptr %i.ds, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.aa
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.aa ] ; 3 uses
  %i.dz = and i32 %i.dr, 16711680
  %.not.i26 = icmp eq i32 %i.dz, 0
  br i1 %.not.i26, label %mve_advance_vpt.exit, label %bb.ad

bb.ad:                                            ; preds = %mve_eci_mask.exit.i
  %i.ea = and i32 %i.dr, 983040
  %i.eb = icmp samesign ult i32 %i.ea, 589824
  %i.ec = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.eb, i16 %i.ec, i16 %.0.i34.i ; 2 uses
  %i.ed = and i32 %i.dr, 15728640
  %i.ee = icmp samesign ult i32 %i.ed, 9437184
  %i.ef = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.ee, i16 %i.ef, i16 %spec.select.i
  %i.eg = zext i16 %.1.i to i32
  %i.eh = xor i32 %i.dr, %i.eg                    ; 2 uses
  %i.ei = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.ei, 0
  %i.ej = and i32 %i.eh, -16711681
  %i.ek = shl i32 %i.dr, 1                        ; 2 uses
  %i.el = and i32 %i.ek, 917504
  %i.em = or disjoint i32 %i.ej, %i.el
  %i.en = and i32 %i.eh, -15728641
  %i.eo = select i1 %.not32.i, i32 %i.en, i32 %i.em
  %i.ep = and i32 %i.ek, 14680064
  %i.eq = or disjoint i32 %i.eo, %i.ep
  store i32 %i.eq, ptr %i.dq, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.ad
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqdmladhb(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.d ] ; 6 uses
  %.032 = phi i1 [ false, %bb.a ], [ %.1, %bb.d ] ; 2 uses
  %.02630 = phi i16 [ %i.a, %bb.a ], [ %i.ae, %bb.d ] ; 3 uses
  %i.b = and i64 %indvars.iv, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %do_vqdmladh_b.exit, label %bb.d

do_vqdmladh_b.exit:                               ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.e = load i8, ptr %i.d, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.g = load i8, ptr %i.f, align 1
  %i.h = or disjoint i64 %indvars.iv, 1           ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 %i.h
  %i.l = load i8, ptr %i.k, align 1
  %i.m = sext i8 %i.e to i64
  %i.n = sext i8 %i.g to i64
  %i.o = mul nsw i64 %i.n, %i.m
  %i.p = sext i8 %i.j to i64
  %i.q = sext i8 %i.l to i64
  %i.r = mul nsw i64 %i.q, %i.p
  %i.s = add nsw i64 %i.r, %i.o                   ; 3 uses
  %i.t = add nsw i64 %i.s, -16384
  %narrow = icmp ult i64 %i.t, -32768
  %i.u = and i16 %.02630, 1
  %.not.i.i = icmp eq i16 %i.u, 0
  br i1 %.not.i.i, label %mergemask_sb.exit, label %bb.c

bb.c:                                             ; preds = %do_vqdmladh_b.exit
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.w = icmp sgt i64 %i.s, 16383
  %i.x = tail call i64 @llvm.smax.i64(i64 %i.s, i64 -16384)
  %i.y = lshr i64 %i.x, 7
  %i.z = trunc i64 %i.y to i8
  %i.aa = select i1 %i.w, i8 127, i8 %i.z
  store i8 %i.aa, ptr %i.v, align 1
  br label %mergemask_sb.exit

mergemask_sb.exit:                                ; preds = %do_vqdmladh_b.exit, %bb.c
  %i.ab = trunc i16 %.02630 to i1
  %i.ac = select i1 %narrow, i1 %i.ab, i1 false
  %i.ad = or i1 %.032, %i.ac
  br label %bb.d

bb.d:                                             ; preds = %mergemask_sb.exit, %bb.b
  %.1 = phi i1 [ %i.ad, %mergemask_sb.exit ], [ %.032, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = lshr i16 %.02630, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.e, label %bb.b, !llvm.loop !26

bb.e:                                             ; preds = %bb.d
  br i1 %.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.af, align 16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4            ; 5 uses
  %i.ai = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.ai, align 16         ; 4 uses
  %i.aj = and i32 %.val.i, 15
  %.not.i.i27 = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i27, label %bb.h, label %mve_eci_mask.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ak = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.al = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.ak to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.al, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.h
  %i.am = zext nneg i32 %i.ak to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.am
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.an = icmp eq i32 %.val.i, 80
  %i.ao = select i1 %i.an, i32 16, i32 0
  store i32 %i.ao, ptr %i.ai, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.g
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.g ] ; 3 uses
  %i.ap = and i32 %i.ah, 16711680
  %.not.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.j

bb.j:                                             ; preds = %mve_eci_mask.exit.i
  %i.aq = and i32 %i.ah, 983040
  %i.ar = icmp samesign ult i32 %i.aq, 589824
  %i.as = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.ar, i16 %i.as, i16 %.0.i34.i ; 2 uses
  %i.at = and i32 %i.ah, 15728640
  %i.au = icmp samesign ult i32 %i.at, 9437184
  %i.av = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.au, i16 %i.av, i16 %spec.select.i
  %i.aw = zext i16 %.1.i to i32
  %i.ax = xor i32 %i.ah, %i.aw                    ; 2 uses
  %i.ay = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.ay, 0
  %i.az = and i32 %i.ax, -16711681
  %i.ba = shl i32 %i.ah, 1                        ; 2 uses
  %i.bb = and i32 %i.ba, 917504
  %i.bc = or disjoint i32 %i.az, %i.bb
  %i.bd = and i32 %i.ax, -15728641
  %i.be = select i1 %.not32.i, i32 %i.bd, i32 %i.bc
  %i.bf = and i32 %i.ba, 14680064
  %i.bg = or disjoint i32 %i.be, %i.bf
  store i32 %i.bg, ptr %i.ag, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.j
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqdmladhh(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 5 uses
  %i.b = load i16, ptr %2, align 2
  %i.c = load i16, ptr %3, align 2
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.e = load i16, ptr %i.d, align 2
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.g = load i16, ptr %i.f, align 2
  %i.h = sext i16 %i.b to i64
  %i.i = sext i16 %i.c to i64
  %i.j = mul nsw i64 %i.i, %i.h
  %i.k = sext i16 %i.e to i64
  %i.l = sext i16 %i.g to i64
  %i.m = mul nsw i64 %i.l, %i.k
  %i.n = add nsw i64 %i.m, %i.j                   ; 3 uses
  %i.o = icmp sgt i64 %i.n, 1073741823
  %i.p = tail call i64 @llvm.smax.i64(i64 %i.n, i64 -1073741824)
  %i.q = add nsw i64 %i.n, -1073741824
  %narrow = icmp ult i64 %i.q, -2147483648
  %i.r = lshr i64 %i.p, 15
  %i.s = trunc i64 %i.r to i16
  %i.t = select i1 %i.o, i16 32767, i16 %i.s
  %i.u = and i16 %i.a, 255
  %i.v = zext nneg i16 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8
  %i.y = trunc i64 %i.x to i16                    ; 2 uses
  %i.z = load i16, ptr %1, align 2
  %i.aa = xor i16 %i.y, -1
  %i.ab = and i16 %i.z, %i.aa
  %i.ac = and i16 %i.t, %i.y
  %i.ad = or i16 %i.ac, %i.ab
  store i16 %i.ad, ptr %1, align 2
  %i.ae = trunc i16 %i.a to i1
  %i.af = and i1 %narrow, %i.ae
  %i.ag = lshr i16 %i.a, 4                        ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ai = load i16, ptr %i.ah, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.am = load i16, ptr %i.al, align 2
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.ao = load i16, ptr %i.an, align 2
  %i.ap = sext i16 %i.ai to i64
  %i.aq = sext i16 %i.ak to i64
  %i.ar = mul nsw i64 %i.aq, %i.ap
  %i.as = sext i16 %i.am to i64
  %i.at = sext i16 %i.ao to i64
  %i.au = mul nsw i64 %i.at, %i.as
  %i.av = add nsw i64 %i.au, %i.ar                ; 3 uses
  %i.aw = icmp sgt i64 %i.av, 1073741823
  %i.ax = tail call i64 @llvm.smax.i64(i64 %i.av, i64 -1073741824)
  %i.ay = add nsw i64 %i.av, -1073741824
  %narrow.2 = icmp ult i64 %i.ay, -2147483648
  %i.az = lshr i64 %i.ax, 15
  %i.ba = trunc i64 %i.az to i16
  %i.bb = select i1 %i.aw, i16 32767, i16 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.bd = and i16 %i.ag, 255
  %i.be = zext nneg i16 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = trunc i64 %i.bg to i16                  ; 2 uses
  %i.bi = load i16, ptr %i.bc, align 2
  %i.bj = xor i16 %i.bh, -1
  %i.bk = and i16 %i.bi, %i.bj
  %i.bl = and i16 %i.bb, %i.bh
  %i.bm = or i16 %i.bl, %i.bk
  store i16 %i.bm, ptr %i.bc, align 2
  %i.bn = trunc i16 %i.ag to i1
  %i.bo = and i1 %narrow.2, %i.bn
  %i.bp = or i1 %i.af, %i.bo
  %i.bq = lshr i16 %i.a, 8                        ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bs = load i16, ptr %i.br, align 2
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bu = load i16, ptr %i.bt, align 2
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bw = load i16, ptr %i.bv, align 2
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.by = load i16, ptr %i.bx, align 2
  %i.bz = sext i16 %i.bs to i64
  %i.ca = sext i16 %i.bu to i64
  %i.cb = mul nsw i64 %i.ca, %i.bz
  %i.cc = sext i16 %i.bw to i64
  %i.cd = sext i16 %i.by to i64
  %i.ce = mul nsw i64 %i.cd, %i.cc
  %i.cf = add nsw i64 %i.ce, %i.cb                ; 3 uses
  %i.cg = icmp sgt i64 %i.cf, 1073741823
  %i.ch = tail call i64 @llvm.smax.i64(i64 %i.cf, i64 -1073741824)
  %i.ci = add nsw i64 %i.cf, -1073741824
  %narrow.4 = icmp ult i64 %i.ci, -2147483648
  %i.cj = lshr i64 %i.ch, 15
  %i.ck = trunc i64 %i.cj to i16
  %i.cl = select i1 %i.cg, i16 32767, i16 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cn = zext nneg i16 %i.bq to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.cn
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = trunc i64 %i.cp to i16                  ; 2 uses
  %i.cr = load i16, ptr %i.cm, align 2
  %i.cs = xor i16 %i.cq, -1
  %i.ct = and i16 %i.cr, %i.cs
  %i.cu = and i16 %i.cl, %i.cq
  %i.cv = or i16 %i.cu, %i.ct
  store i16 %i.cv, ptr %i.cm, align 2
  %i.cw = trunc i16 %i.bq to i1
  %i.cx = and i1 %narrow.4, %i.cw
  %i.cy = or i1 %i.bp, %i.cx
  %i.cz = lshr i16 %i.a, 12                       ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.db = load i16, ptr %i.da, align 2
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.dd = load i16, ptr %i.dc, align 2
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.df = load i16, ptr %i.de, align 2
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.dh = load i16, ptr %i.dg, align 2
  %i.di = sext i16 %i.db to i64
  %i.dj = sext i16 %i.dd to i64
  %i.dk = mul nsw i64 %i.dj, %i.di
  %i.dl = sext i16 %i.df to i64
  %i.dm = sext i16 %i.dh to i64
end_hunk_15
begin_hunk_16_@helper_mve_vqdmladhw:bb.a

bb.e:                                             ; preds = %bb.d, %bb.c
  %.027 = phi i1 [ true, %bb.c ], [ false, %bb.d ]
  %.0.i = phi i32 [ %i.u, %bb.c ], [ %i.w, %bb.d ]
  %i.x = and i16 %i.a, 255
  %i.y = zext nneg i16 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = trunc i64 %i.aa to i32                  ; 2 uses
  %i.ac = load i32, ptr %1, align 4
  %i.ad = xor i32 %i.ab, -1
  %i.ae = and i32 %i.ac, %i.ad
  %i.af = and i32 %.0.i, %i.ab
  %i.ag = or i32 %i.ae, %i.af
  store i32 %i.ag, ptr %1, align 4
  %i.ah = trunc i16 %i.a to i1
  %i.ai = and i1 %.027, %i.ah
  %i.aj = lshr i16 %i.a, 8                        ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = sext i32 %i.al to i64
  %i.at = sext i32 %i.an to i64
  %i.au = mul nsw i64 %i.at, %i.as
  %i.av = sext i32 %i.ap to i64
  %i.aw = sext i32 %i.ar to i64
  %i.ax = mul nsw i64 %i.aw, %i.av
  %i.ay = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.au, i64 %i.ax) ; 2 uses
  %i.az = extractvalue { i64, i1 } %i.ay, 1
  %i.ba = extractvalue { i64, i1 } %i.ay, 0       ; 3 uses
  br i1 %i.az, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bb = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ba, i64 %i.ba) ; 2 uses
  %i.bc = extractvalue { i64, i1 } %i.bb, 1
  %i.bd = extractvalue { i64, i1 } %i.bb, 0       ; 2 uses
  br i1 %i.bc, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.be = lshr i64 %i.bd, 32
  %i.bf = trunc nuw i64 %i.be to i32
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  %.011.i.2 = phi i64 [ %i.ba, %bb.e ], [ %i.bd, %bb.f ]
  %i.bg = icmp slt i64 %.011.i.2, 0
  %i.bh = select i1 %i.bg, i32 2147483647, i32 -2147483648
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.027.2 = phi i1 [ true, %bb.h ], [ false, %bb.g ]
  %.0.i.2 = phi i32 [ %i.bh, %bb.h ], [ %i.bf, %bb.g ]
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bj = zext nneg i16 %i.aj to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bj
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = trunc i64 %i.bl to i32                  ; 2 uses
  %i.bn = load i32, ptr %i.bi, align 4
  %i.bo = xor i32 %i.bm, -1
  %i.bp = and i32 %i.bn, %i.bo
  %i.bq = and i32 %.0.i.2, %i.bm
  %i.br = or i32 %i.bp, %i.bq
  store i32 %i.br, ptr %i.bi, align 4
  %i.bs = trunc i16 %i.aj to i1
  %i.bt = and i1 %.027.2, %i.bs
  %i.bu = or i1 %i.ai, %i.bt
  br i1 %i.bu, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.bv, align 16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4            ; 5 uses
  %i.by = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.by, align 16         ; 4 uses
  %i.bz = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.bz, 0
  br i1 %.not.i.i, label %bb.l, label %mve_eci_mask.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ca = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.cb = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.ca to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.cb, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.l
  %i.cc = zext nneg i32 %i.ca to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.cc
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.cd = icmp eq i32 %.val.i, 80
  %i.ce = select i1 %i.cd, i32 16, i32 0
  store i32 %i.ce, ptr %i.by, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.k
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.k ] ; 3 uses
  %i.cf = and i32 %i.bx, 16711680
  %.not.i = icmp eq i32 %i.cf, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.n

bb.n:                                             ; preds = %mve_eci_mask.exit.i
  %i.cg = and i32 %i.bx, 983040
  %i.ch = icmp samesign ult i32 %i.cg, 589824
  %i.ci = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.ch, i16 %i.ci, i16 %.0.i34.i ; 2 uses
  %i.cj = and i32 %i.bx, 15728640
  %i.ck = icmp samesign ult i32 %i.cj, 9437184
  %i.cl = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.ck, i16 %i.cl, i16 %spec.select.i
  %i.cm = zext i16 %.1.i to i32
  %i.cn = xor i32 %i.bx, %i.cm                    ; 2 uses
  %i.co = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.co, 0
  %i.cp = and i32 %i.cn, -16711681
  %i.cq = shl i32 %i.bx, 1                        ; 2 uses
  %i.cr = and i32 %i.cq, 917504
  %i.cs = or disjoint i32 %i.cp, %i.cr
  %i.ct = and i32 %i.cn, -15728641
  %i.cu = select i1 %.not32.i, i32 %i.ct, i32 %i.cs
  %i.cv = and i32 %i.cq, 14680064
  %i.cw = or disjoint i32 %i.cu, %i.cv
  store i32 %i.cw, ptr %i.bw, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.n
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqdmladhxb(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.d ] ; 5 uses
  %.032 = phi i1 [ false, %bb.a ], [ %.1, %bb.d ] ; 2 uses
  %.02630 = phi i16 [ %i.a, %bb.a ], [ %i.ac, %bb.d ] ; 3 uses
  %i.b = and i64 %indvars.iv, 1
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.d, label %do_vqdmladh_b.exit

do_vqdmladh_b.exit:                               ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv ; 2 uses
  %i.d = load i8, ptr %i.c, align 1
  %i.e = getelementptr i8, ptr %3, i64 %indvars.iv ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -1
  %i.g = load i8, ptr %i.f, align 1
  %i.h = getelementptr i8, ptr %i.c, i64 -1
  %i.i = load i8, ptr %i.h, align 1
  %i.j = load i8, ptr %i.e, align 1
  %i.k = sext i8 %i.d to i64
  %i.l = sext i8 %i.g to i64
  %i.m = mul nsw i64 %i.l, %i.k
  %i.n = sext i8 %i.i to i64
  %i.o = sext i8 %i.j to i64
  %i.p = mul nsw i64 %i.o, %i.n
  %i.q = add nsw i64 %i.p, %i.m                   ; 3 uses
  %i.r = add nsw i64 %i.q, -16384
  %narrow = icmp ult i64 %i.r, -32768
  %i.s = and i16 %.02630, 1
  %.not.i.i = icmp eq i16 %i.s, 0
  br i1 %.not.i.i, label %mergemask_sb.exit, label %bb.c

bb.c:                                             ; preds = %do_vqdmladh_b.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.u = icmp sgt i64 %i.q, 16383
  %i.v = tail call i64 @llvm.smax.i64(i64 %i.q, i64 -16384)
  %i.w = lshr i64 %i.v, 7
  %i.x = trunc i64 %i.w to i8
  %i.y = select i1 %i.u, i8 127, i8 %i.x
  store i8 %i.y, ptr %i.t, align 1
  br label %mergemask_sb.exit

mergemask_sb.exit:                                ; preds = %do_vqdmladh_b.exit, %bb.c
  %i.z = trunc i16 %.02630 to i1
  %i.aa = select i1 %narrow, i1 %i.z, i1 false
  %i.ab = or i1 %.032, %i.aa
  br label %bb.d

bb.d:                                             ; preds = %mergemask_sb.exit, %bb.b
  %.1 = phi i1 [ %i.ab, %mergemask_sb.exit ], [ %.032, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ac = lshr i16 %.02630, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.e, label %bb.b, !llvm.loop !27

bb.e:                                             ; preds = %bb.d
  br i1 %.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.ad, align 16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4            ; 5 uses
  %i.ag = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.ag, align 16         ; 4 uses
  %i.ah = and i32 %.val.i, 15
  %.not.i.i27 = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i27, label %bb.h, label %mve_eci_mask.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ai = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.aj = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.ai to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.aj, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.h
  %i.ak = zext nneg i32 %i.ai to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.ak
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.al = icmp eq i32 %.val.i, 80
  %i.am = select i1 %i.al, i32 16, i32 0
  store i32 %i.am, ptr %i.ag, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.g
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.g ] ; 3 uses
  %i.an = and i32 %i.af, 16711680
  %.not.i = icmp eq i32 %i.an, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.j

bb.j:                                             ; preds = %mve_eci_mask.exit.i
  %i.ao = and i32 %i.af, 983040
  %i.ap = icmp samesign ult i32 %i.ao, 589824
  %i.aq = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.ap, i16 %i.aq, i16 %.0.i34.i ; 2 uses
  %i.ar = and i32 %i.af, 15728640
  %i.as = icmp samesign ult i32 %i.ar, 9437184
  %i.at = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.as, i16 %i.at, i16 %spec.select.i
  %i.au = zext i16 %.1.i to i32
  %i.av = xor i32 %i.af, %i.au                    ; 2 uses
  %i.aw = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.aw, 0
  %i.ax = and i32 %i.av, -16711681
  %i.ay = shl i32 %i.af, 1                        ; 2 uses
  %i.az = and i32 %i.ay, 917504
  %i.ba = or disjoint i32 %i.ax, %i.az
  %i.bb = and i32 %i.av, -15728641
  %i.bc = select i1 %.not32.i, i32 %i.bb, i32 %i.ba
  %i.bd = and i32 %i.ay, 14680064
  %i.be = or disjoint i32 %i.bc, %i.bd
  store i32 %i.be, ptr %i.ae, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.j
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqdmladhxh(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 4 uses
  %i.b = lshr i16 %i.a, 2                         ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.d = load i16, ptr %i.c, align 2
  %i.e = getelementptr i8, ptr %3, i64 2
  %i.f = load i16, ptr %3, align 2
  %i.g = load i16, ptr %2, align 2
  %i.h = load i16, ptr %i.e, align 2
  %i.i = sext i16 %i.d to i64
  %i.j = sext i16 %i.f to i64
  %i.k = mul nsw i64 %i.j, %i.i
  %i.l = sext i16 %i.g to i64
  %i.m = sext i16 %i.h to i64
  %i.n = mul nsw i64 %i.m, %i.l
  %i.o = add nsw i64 %i.n, %i.k                   ; 3 uses
  %i.p = icmp sgt i64 %i.o, 1073741823
  %i.q = tail call i64 @llvm.smax.i64(i64 %i.o, i64 -1073741824)
  %i.r = add nsw i64 %i.o, -1073741824
  %narrow.1 = icmp ult i64 %i.r, -2147483648
  %i.s = lshr i64 %i.q, 15
  %i.t = trunc i64 %i.s to i16
  %i.u = select i1 %i.p, i16 32767, i16 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.w = and i16 %i.b, 255
  %i.x = zext nneg i16 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = trunc i64 %i.z to i16                   ; 2 uses
  %i.ab = load i16, ptr %i.v, align 2
  %i.ac = xor i16 %i.aa, -1
  %i.ad = and i16 %i.ab, %i.ac
  %i.ae = and i16 %i.u, %i.aa
  %i.af = or i16 %i.ae, %i.ad
  store i16 %i.af, ptr %i.v, align 2
  %i.ag = trunc i16 %i.b to i1
  %i.ah = and i1 %narrow.1, %i.ag
  %i.ai = lshr i16 %i.a, 6                        ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = getelementptr i8, ptr %3, i64 6
  %i.am = getelementptr i8, ptr %3, i64 4
  %i.an = load i16, ptr %i.am, align 2
  %i.ao = getelementptr i8, ptr %2, i64 4
  %i.ap = load i16, ptr %i.ao, align 2
  %i.aq = load i16, ptr %i.al, align 2
  %i.ar = sext i16 %i.ak to i64
  %i.as = sext i16 %i.an to i64
  %i.at = mul nsw i64 %i.as, %i.ar
  %i.au = sext i16 %i.ap to i64
  %i.av = sext i16 %i.aq to i64
  %i.aw = mul nsw i64 %i.av, %i.au
  %i.ax = add nsw i64 %i.aw, %i.at                ; 3 uses
  %i.ay = icmp sgt i64 %i.ax, 1073741823
  %i.az = tail call i64 @llvm.smax.i64(i64 %i.ax, i64 -1073741824)
  %i.ba = add nsw i64 %i.ax, -1073741824
  %narrow.3 = icmp ult i64 %i.ba, -2147483648
  %i.bb = lshr i64 %i.az, 15
  %i.bc = trunc i64 %i.bb to i16
  %i.bd = select i1 %i.ay, i16 32767, i16 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.bf = and i16 %i.ai, 255
  %i.bg = zext nneg i16 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = trunc i64 %i.bi to i16                  ; 2 uses
  %i.bk = load i16, ptr %i.be, align 2
  %i.bl = xor i16 %i.bj, -1
  %i.bm = and i16 %i.bk, %i.bl
  %i.bn = and i16 %i.bd, %i.bj
  %i.bo = or i16 %i.bn, %i.bm
  store i16 %i.bo, ptr %i.be, align 2
  %i.bp = trunc i16 %i.ai to i1
  %i.bq = and i1 %narrow.3, %i.bp
  %i.br = or i1 %i.ah, %i.bq
  %i.bs = lshr i16 %i.a, 10                       ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bu = load i16, ptr %i.bt, align 2
  %i.bv = getelementptr i8, ptr %3, i64 10
  %i.bw = getelementptr i8, ptr %3, i64 8
  %i.bx = load i16, ptr %i.bw, align 2
  %i.by = getelementptr i8, ptr %2, i64 8
  %i.bz = load i16, ptr %i.by, align 2
  %i.ca = load i16, ptr %i.bv, align 2
  %i.cb = sext i16 %i.bu to i64
  %i.cc = sext i16 %i.bx to i64
  %i.cd = mul nsw i64 %i.cc, %i.cb
  %i.ce = sext i16 %i.bz to i64
  %i.cf = sext i16 %i.ca to i64
  %i.cg = mul nsw i64 %i.cf, %i.ce
  %i.ch = add nsw i64 %i.cg, %i.cd                ; 3 uses
  %i.ci = icmp sgt i64 %i.ch, 1073741823
  %i.cj = tail call i64 @llvm.smax.i64(i64 %i.ch, i64 -1073741824)
  %i.ck = add nsw i64 %i.ch, -1073741824
  %narrow.5 = icmp ult i64 %i.ck, -2147483648
  %i.cl = lshr i64 %i.cj, 15
  %i.cm = trunc i64 %i.cl to i16
  %i.cn = select i1 %i.ci, i16 32767, i16 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.cp = zext nneg i16 %i.bs to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.cp
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = trunc i64 %i.cr to i16                  ; 2 uses
  %i.ct = load i16, ptr %i.co, align 2
  %i.cu = xor i16 %i.cs, -1
  %i.cv = and i16 %i.ct, %i.cu
  %i.cw = and i16 %i.cn, %i.cs
  %i.cx = or i16 %i.cw, %i.cv
  store i16 %i.cx, ptr %i.co, align 2
  %i.cy = trunc i16 %i.bs to i1
  %i.cz = and i1 %narrow.5, %i.cy
  %i.da = or i1 %i.br, %i.cz
  %i.db = lshr i16 %i.a, 14                       ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.dd = load i16, ptr %i.dc, align 2
  %i.de = getelementptr i8, ptr %3, i64 14
  %i.df = getelementptr i8, ptr %3, i64 12
  %i.dg = load i16, ptr %i.df, align 2
  %i.dh = getelementptr i8, ptr %2, i64 12
  %i.di = load i16, ptr %i.dh, align 2
  %i.dj = load i16, ptr %i.de, align 2
  %i.dk = sext i16 %i.dd to i64
  %i.dl = sext i16 %i.dg to i64
  %i.dm = mul nsw i64 %i.dl, %i.dk
end_hunk_16
begin_hunk_17_@helper_mve_vqdmladhxw:bb.a
  %i.z = and i16 %i.b, 255
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = trunc i64 %i.ac to i32                  ; 2 uses
  %i.ae = load i32, ptr %i.y, align 4
  %i.af = xor i32 %i.ad, -1
  %i.ag = and i32 %i.ae, %i.af
  %i.ah = and i32 %.0.i.1, %i.ad
  %i.ai = or i32 %i.ag, %i.ah
  store i32 %i.ai, ptr %i.y, align 4
  %i.aj = trunc i16 %i.b to i1
  %i.ak = and i1 %.027.1, %i.aj
  %i.al = lshr i16 %i.a, 12                       ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = getelementptr i8, ptr %3, i64 12
  %i.ap = getelementptr i8, ptr %3, i64 8
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = getelementptr i8, ptr %2, i64 8
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = load i32, ptr %i.ao, align 4
  %i.au = sext i32 %i.an to i64
  %i.av = sext i32 %i.aq to i64
  %i.aw = mul nsw i64 %i.av, %i.au
  %i.ax = sext i32 %i.as to i64
  %i.ay = sext i32 %i.at to i64
  %i.az = mul nsw i64 %i.ay, %i.ax
  %i.ba = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.aw, i64 %i.az) ; 2 uses
  %i.bb = extractvalue { i64, i1 } %i.ba, 1
  %i.bc = extractvalue { i64, i1 } %i.ba, 0       ; 3 uses
  br i1 %i.bb, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bc, i64 %i.bc) ; 2 uses
  %i.be = extractvalue { i64, i1 } %i.bd, 1
  %i.bf = extractvalue { i64, i1 } %i.bd, 0       ; 2 uses
  br i1 %i.be, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = lshr i64 %i.bf, 32
  %i.bh = trunc nuw i64 %i.bg to i32
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  %.011.i.3 = phi i64 [ %i.bc, %bb.e ], [ %i.bf, %bb.f ]
  %i.bi = icmp slt i64 %.011.i.3, 0
  %i.bj = select i1 %i.bi, i32 2147483647, i32 -2147483648
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.027.3 = phi i1 [ true, %bb.h ], [ false, %bb.g ]
  %.0.i.3 = phi i32 [ %i.bj, %bb.h ], [ %i.bh, %bb.g ]
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.bl = zext nneg i16 %i.al to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = trunc i64 %i.bn to i32                  ; 2 uses
  %i.bp = load i32, ptr %i.bk, align 4
  %i.bq = xor i32 %i.bo, -1
  %i.br = and i32 %i.bp, %i.bq
  %i.bs = and i32 %.0.i.3, %i.bo
  %i.bt = or i32 %i.br, %i.bs
  store i32 %i.bt, ptr %i.bk, align 4
  %i.bu = trunc i16 %i.al to i1
  %i.bv = and i1 %.027.3, %i.bu
  %i.bw = or i1 %i.ak, %i.bv
  br i1 %i.bw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.bx, align 16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4            ; 5 uses
  %i.ca = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.ca, align 16         ; 4 uses
  %i.cb = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.cb, 0
  br i1 %.not.i.i, label %bb.l, label %mve_eci_mask.exit.i

bb.l:                                             ; preds = %bb.k
  %i.cc = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.cd = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.cc to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.cd, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.l
  %i.ce = zext nneg i32 %i.cc to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.ce
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.cf = icmp eq i32 %.val.i, 80
  %i.cg = select i1 %i.cf, i32 16, i32 0
  store i32 %i.cg, ptr %i.ca, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.k
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.k ] ; 3 uses
  %i.ch = and i32 %i.bz, 16711680
  %.not.i = icmp eq i32 %i.ch, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.n

bb.n:                                             ; preds = %mve_eci_mask.exit.i
  %i.ci = and i32 %i.bz, 983040
  %i.cj = icmp samesign ult i32 %i.ci, 589824
  %i.ck = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.cj, i16 %i.ck, i16 %.0.i34.i ; 2 uses
  %i.cl = and i32 %i.bz, 15728640
  %i.cm = icmp samesign ult i32 %i.cl, 9437184
  %i.cn = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.cm, i16 %i.cn, i16 %spec.select.i
  %i.co = zext i16 %.1.i to i32
  %i.cp = xor i32 %i.bz, %i.co                    ; 2 uses
  %i.cq = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.cq, 0
  %i.cr = and i32 %i.cp, -16711681
  %i.cs = shl i32 %i.bz, 1                        ; 2 uses
  %i.ct = and i32 %i.cs, 917504
  %i.cu = or disjoint i32 %i.cr, %i.ct
  %i.cv = and i32 %i.cp, -15728641
  %i.cw = select i1 %.not32.i, i32 %i.cv, i32 %i.cu
  %i.cx = and i32 %i.cs, 14680064
  %i.cy = or disjoint i32 %i.cw, %i.cx
  store i32 %i.cy, ptr %i.by, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.n
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqrdmladhb(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.d ] ; 6 uses
  %.032 = phi i1 [ false, %bb.a ], [ %.1, %bb.d ] ; 2 uses
  %.02630 = phi i16 [ %i.a, %bb.a ], [ %i.ah, %bb.d ] ; 3 uses
  %i.b = and i64 %indvars.iv, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %do_vqdmladh_b.exit, label %bb.d

do_vqdmladh_b.exit:                               ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.e = load i8, ptr %i.d, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.g = load i8, ptr %i.f, align 1
  %i.h = or disjoint i64 %indvars.iv, 1           ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 %i.h
  %i.l = load i8, ptr %i.k, align 1
  %i.m = sext i8 %i.e to i64
  %i.n = sext i8 %i.g to i64
  %i.o = mul nsw i64 %i.n, %i.m
  %i.p = sext i8 %i.j to i64
  %i.q = sext i8 %i.l to i64
  %i.r = mul nsw i64 %i.q, %i.p
  %i.s = add nsw i64 %i.r, %i.o                   ; 4 uses
  %i.t = add nsw i64 %i.s, -16320
  %narrow = icmp ult i64 %i.t, -32768
  %i.u = and i16 %.02630, 1
  %.not.i.i = icmp eq i16 %i.u, 0
  br i1 %.not.i.i, label %mergemask_sb.exit, label %bb.c

bb.c:                                             ; preds = %do_vqdmladh_b.exit
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.w = icmp sgt i64 %i.s, 16319
  %i.x = shl nsw i64 %i.s, 1
  %i.y = add nsw i64 %i.x, 128
  %i.z = lshr i64 %i.y, 8
  %i.aa = icmp slt i64 %i.s, -16448
  %i.ab = trunc i64 %i.z to i8
  %i.ac = select i1 %i.aa, i8 -128, i8 %i.ab
  %i.ad = select i1 %i.w, i8 127, i8 %i.ac
  store i8 %i.ad, ptr %i.v, align 1
  br label %mergemask_sb.exit

mergemask_sb.exit:                                ; preds = %do_vqdmladh_b.exit, %bb.c
  %i.ae = trunc i16 %.02630 to i1
  %i.af = select i1 %narrow, i1 %i.ae, i1 false
  %i.ag = or i1 %.032, %i.af
  br label %bb.d

bb.d:                                             ; preds = %mergemask_sb.exit, %bb.b
  %.1 = phi i1 [ %i.ag, %mergemask_sb.exit ], [ %.032, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = lshr i16 %.02630, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.e, label %bb.b, !llvm.loop !28

bb.e:                                             ; preds = %bb.d
  br i1 %.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.ai, align 16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4            ; 5 uses
  %i.al = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.al, align 16         ; 4 uses
  %i.am = and i32 %.val.i, 15
  %.not.i.i27 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i27, label %bb.h, label %mve_eci_mask.exit.i

bb.h:                                             ; preds = %bb.g
  %i.an = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.ao = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.an to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.ao, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.h
  %i.ap = zext nneg i32 %i.an to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.ap
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.aq = icmp eq i32 %.val.i, 80
  %i.ar = select i1 %i.aq, i32 16, i32 0
  store i32 %i.ar, ptr %i.al, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.g
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.g ] ; 3 uses
  %i.as = and i32 %i.ak, 16711680
  %.not.i = icmp eq i32 %i.as, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.j

bb.j:                                             ; preds = %mve_eci_mask.exit.i
  %i.at = and i32 %i.ak, 983040
  %i.au = icmp samesign ult i32 %i.at, 589824
  %i.av = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.au, i16 %i.av, i16 %.0.i34.i ; 2 uses
  %i.aw = and i32 %i.ak, 15728640
  %i.ax = icmp samesign ult i32 %i.aw, 9437184
  %i.ay = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.ax, i16 %i.ay, i16 %spec.select.i
  %i.az = zext i16 %.1.i to i32
  %i.ba = xor i32 %i.ak, %i.az                    ; 2 uses
  %i.bb = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.bb, 0
  %i.bc = and i32 %i.ba, -16711681
  %i.bd = shl i32 %i.ak, 1                        ; 2 uses
  %i.be = and i32 %i.bd, 917504
  %i.bf = or disjoint i32 %i.bc, %i.be
  %i.bg = and i32 %i.ba, -15728641
  %i.bh = select i1 %.not32.i, i32 %i.bg, i32 %i.bf
  %i.bi = and i32 %i.bd, 14680064
  %i.bj = or disjoint i32 %i.bh, %i.bi
  store i32 %i.bj, ptr %i.aj, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.j
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqrdmladhh(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 5 uses
  %i.b = load i16, ptr %2, align 2
  %i.c = load i16, ptr %3, align 2
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.e = load i16, ptr %i.d, align 2
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.g = load i16, ptr %i.f, align 2
  %i.h = sext i16 %i.b to i64
  %i.i = sext i16 %i.c to i64
  %i.j = mul nsw i64 %i.i, %i.h
  %i.k = sext i16 %i.e to i64
  %i.l = sext i16 %i.g to i64
  %i.m = mul nsw i64 %i.l, %i.k
  %i.n = add nsw i64 %i.m, %i.j                   ; 4 uses
  %i.o = shl nsw i64 %i.n, 1
  %i.p = add nsw i64 %i.o, 32768
  %i.q = icmp sgt i64 %i.n, 1073725439
  %i.r = icmp slt i64 %i.n, -1073758208
  %i.s = add nsw i64 %i.n, -1073725440
  %narrow = icmp ult i64 %i.s, -2147483648
  %i.t = lshr i64 %i.p, 16
  %i.u = trunc i64 %i.t to i16
  %i.v = select i1 %i.r, i16 -32768, i16 %i.u
  %i.w = select i1 %i.q, i16 32767, i16 %i.v
  %i.x = and i16 %i.a, 255
  %i.y = zext nneg i16 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = trunc i64 %i.aa to i16                  ; 2 uses
  %i.ac = load i16, ptr %1, align 2
  %i.ad = xor i16 %i.ab, -1
  %i.ae = and i16 %i.ac, %i.ad
  %i.af = and i16 %i.w, %i.ab
  %i.ag = or i16 %i.af, %i.ae
  store i16 %i.ag, ptr %1, align 2
  %i.ah = trunc i16 %i.a to i1
  %i.ai = and i1 %narrow, %i.ah
  %i.aj = lshr i16 %i.a, 4                        ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.al = load i16, ptr %i.ak, align 2
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.an = load i16, ptr %i.am, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ap = load i16, ptr %i.ao, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.ar = load i16, ptr %i.aq, align 2
  %i.as = sext i16 %i.al to i64
  %i.at = sext i16 %i.an to i64
  %i.au = mul nsw i64 %i.at, %i.as
  %i.av = sext i16 %i.ap to i64
  %i.aw = sext i16 %i.ar to i64
  %i.ax = mul nsw i64 %i.aw, %i.av
  %i.ay = add nsw i64 %i.ax, %i.au                ; 4 uses
  %i.az = shl nsw i64 %i.ay, 1
  %i.ba = add nsw i64 %i.az, 32768
  %i.bb = icmp sgt i64 %i.ay, 1073725439
  %i.bc = icmp slt i64 %i.ay, -1073758208
  %i.bd = add nsw i64 %i.ay, -1073725440
  %narrow.2 = icmp ult i64 %i.bd, -2147483648
  %i.be = lshr i64 %i.ba, 16
  %i.bf = trunc i64 %i.be to i16
  %i.bg = select i1 %i.bc, i16 -32768, i16 %i.bf
  %i.bh = select i1 %i.bb, i16 32767, i16 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.bj = and i16 %i.aj, 255
  %i.bk = zext nneg i16 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = trunc i64 %i.bm to i16                  ; 2 uses
  %i.bo = load i16, ptr %i.bi, align 2
  %i.bp = xor i16 %i.bn, -1
  %i.bq = and i16 %i.bo, %i.bp
  %i.br = and i16 %i.bh, %i.bn
  %i.bs = or i16 %i.br, %i.bq
  store i16 %i.bs, ptr %i.bi, align 2
  %i.bt = trunc i16 %i.aj to i1
  %i.bu = and i1 %narrow.2, %i.bt
  %i.bv = or i1 %i.ai, %i.bu
  %i.bw = lshr i16 %i.a, 8                        ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.by = load i16, ptr %i.bx, align 2
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ca = load i16, ptr %i.bz, align 2
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.cc = load i16, ptr %i.cb, align 2
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.ce = load i16, ptr %i.cd, align 2
  %i.cf = sext i16 %i.by to i64
  %i.cg = sext i16 %i.ca to i64
  %i.ch = mul nsw i64 %i.cg, %i.cf
  %i.ci = sext i16 %i.cc to i64
  %i.cj = sext i16 %i.ce to i64
  %i.ck = mul nsw i64 %i.cj, %i.ci
  %i.cl = add nsw i64 %i.ck, %i.ch                ; 4 uses
  %i.cm = shl nsw i64 %i.cl, 1
  %i.cn = add nsw i64 %i.cm, 32768
  %i.co = icmp sgt i64 %i.cl, 1073725439
  %i.cp = icmp slt i64 %i.cl, -1073758208
  %i.cq = add nsw i64 %i.cl, -1073725440
  %narrow.4 = icmp ult i64 %i.cq, -2147483648
  %i.cr = lshr i64 %i.cn, 16
  %i.cs = trunc i64 %i.cr to i16
  %i.ct = select i1 %i.cp, i16 -32768, i16 %i.cs
  %i.cu = select i1 %i.co, i16 32767, i16 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cw = zext nneg i16 %i.bw to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.cw
  %i.cy = load i64, ptr %i.cx, align 8
  %i.cz = trunc i64 %i.cy to i16                  ; 2 uses
  %i.da = load i16, ptr %i.cv, align 2
  %i.db = xor i16 %i.cz, -1
  %i.dc = and i16 %i.da, %i.db
  %i.dd = and i16 %i.cu, %i.cz
  %i.de = or i16 %i.dd, %i.dc
  store i16 %i.de, ptr %i.cv, align 2
  %i.df = trunc i16 %i.bw to i1
  %i.dg = and i1 %narrow.4, %i.df
  %i.dh = or i1 %i.bv, %i.dg
  %i.di = lshr i16 %i.a, 12                       ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.dk = load i16, ptr %i.dj, align 2
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.dm = load i16, ptr %i.dl, align 2
end_hunk_17
begin_hunk_18_@helper_mve_vqrdmladhw:bb.a
  %i.af = load i32, ptr %1, align 4
  %i.ag = xor i32 %i.ae, -1
  %i.ah = and i32 %i.af, %i.ag
  %i.ai = and i32 %.0.i, %i.ae
  %i.aj = or i32 %i.ah, %i.ai
  store i32 %i.aj, ptr %1, align 4
  %i.ak = trunc i16 %i.a to i1
  %i.al = and i1 %.027, %i.ak
  %i.am = lshr i16 %i.a, 8                        ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.au = load i32, ptr %i.at, align 4
  %i.av = sext i32 %i.ao to i64
  %i.aw = sext i32 %i.aq to i64
  %i.ax = mul nsw i64 %i.aw, %i.av
  %i.ay = sext i32 %i.as to i64
  %i.az = sext i32 %i.au to i64
  %i.ba = mul nsw i64 %i.az, %i.ay
  %i.bb = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ax, i64 %i.ba) ; 2 uses
  %i.bc = extractvalue { i64, i1 } %i.bb, 1
  %i.bd = extractvalue { i64, i1 } %i.bb, 0       ; 2 uses
  br i1 %i.bc, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.be = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bd, i64 1073741824) ; 2 uses
  %i.bf = extractvalue { i64, i1 } %i.be, 1
  %i.bg = extractvalue { i64, i1 } %i.be, 0       ; 3 uses
  br i1 %i.bf, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bg, i64 %i.bg) ; 2 uses
  %i.bi = extractvalue { i64, i1 } %i.bh, 1
  %i.bj = extractvalue { i64, i1 } %i.bh, 0       ; 2 uses
  br i1 %i.bi, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = lshr i64 %i.bj, 32
  %i.bl = trunc nuw i64 %i.bk to i32
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.011.i.2 = phi i64 [ %i.bd, %bb.f ], [ %i.bg, %bb.g ], [ %i.bj, %bb.h ]
  %i.bm = icmp slt i64 %.011.i.2, 0
  %i.bn = select i1 %i.bm, i32 2147483647, i32 -2147483648
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.027.2 = phi i1 [ true, %bb.j ], [ false, %bb.i ]
  %.0.i.2 = phi i32 [ %i.bn, %bb.j ], [ %i.bl, %bb.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bp = zext nneg i16 %i.am to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = trunc i64 %i.br to i32                  ; 2 uses
  %i.bt = load i32, ptr %i.bo, align 4
  %i.bu = xor i32 %i.bs, -1
  %i.bv = and i32 %i.bt, %i.bu
  %i.bw = and i32 %.0.i.2, %i.bs
  %i.bx = or i32 %i.bv, %i.bw
  store i32 %i.bx, ptr %i.bo, align 4
  %i.by = trunc i16 %i.am to i1
  %i.bz = and i1 %.027.2, %i.by
  %i.ca = or i1 %i.al, %i.bz
  br i1 %i.ca, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.cb, align 16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4            ; 5 uses
  %i.ce = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.ce, align 16         ; 4 uses
  %i.cf = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.cf, 0
  br i1 %.not.i.i, label %bb.n, label %mve_eci_mask.exit.i

bb.n:                                             ; preds = %bb.m
  %i.cg = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.ch = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.cg to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.ch, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.n
  %i.ci = zext nneg i32 %i.cg to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.ci
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.cj = icmp eq i32 %.val.i, 80
  %i.ck = select i1 %i.cj, i32 16, i32 0
  store i32 %i.ck, ptr %i.ce, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.m
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.m ] ; 3 uses
  %i.cl = and i32 %i.cd, 16711680
  %.not.i = icmp eq i32 %i.cl, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.p

bb.p:                                             ; preds = %mve_eci_mask.exit.i
  %i.cm = and i32 %i.cd, 983040
  %i.cn = icmp samesign ult i32 %i.cm, 589824
  %i.co = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.cn, i16 %i.co, i16 %.0.i34.i ; 2 uses
  %i.cp = and i32 %i.cd, 15728640
  %i.cq = icmp samesign ult i32 %i.cp, 9437184
  %i.cr = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.cq, i16 %i.cr, i16 %spec.select.i
  %i.cs = zext i16 %.1.i to i32
  %i.ct = xor i32 %i.cd, %i.cs                    ; 2 uses
  %i.cu = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.cu, 0
  %i.cv = and i32 %i.ct, -16711681
  %i.cw = shl i32 %i.cd, 1                        ; 2 uses
  %i.cx = and i32 %i.cw, 917504
  %i.cy = or disjoint i32 %i.cv, %i.cx
  %i.cz = and i32 %i.ct, -15728641
  %i.da = select i1 %.not32.i, i32 %i.cz, i32 %i.cy
  %i.db = and i32 %i.cw, 14680064
  %i.dc = or disjoint i32 %i.da, %i.db
  store i32 %i.dc, ptr %i.cc, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.p
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqrdmladhxb(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.d ] ; 5 uses
  %.032 = phi i1 [ false, %bb.a ], [ %.1, %bb.d ] ; 2 uses
  %.02630 = phi i16 [ %i.a, %bb.a ], [ %i.af, %bb.d ] ; 3 uses
  %i.b = and i64 %indvars.iv, 1
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.d, label %do_vqdmladh_b.exit

do_vqdmladh_b.exit:                               ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv ; 2 uses
  %i.d = load i8, ptr %i.c, align 1
  %i.e = getelementptr i8, ptr %3, i64 %indvars.iv ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -1
  %i.g = load i8, ptr %i.f, align 1
  %i.h = getelementptr i8, ptr %i.c, i64 -1
  %i.i = load i8, ptr %i.h, align 1
  %i.j = load i8, ptr %i.e, align 1
  %i.k = sext i8 %i.d to i64
  %i.l = sext i8 %i.g to i64
  %i.m = mul nsw i64 %i.l, %i.k
  %i.n = sext i8 %i.i to i64
  %i.o = sext i8 %i.j to i64
  %i.p = mul nsw i64 %i.o, %i.n
  %i.q = add nsw i64 %i.p, %i.m                   ; 4 uses
  %i.r = add nsw i64 %i.q, -16320
  %narrow = icmp ult i64 %i.r, -32768
  %i.s = and i16 %.02630, 1
  %.not.i.i = icmp eq i16 %i.s, 0
  br i1 %.not.i.i, label %mergemask_sb.exit, label %bb.c

bb.c:                                             ; preds = %do_vqdmladh_b.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.u = icmp sgt i64 %i.q, 16319
  %i.v = shl nsw i64 %i.q, 1
  %i.w = add nsw i64 %i.v, 128
  %i.x = lshr i64 %i.w, 8
  %i.y = icmp slt i64 %i.q, -16448
  %i.z = trunc i64 %i.x to i8
  %i.aa = select i1 %i.y, i8 -128, i8 %i.z
  %i.ab = select i1 %i.u, i8 127, i8 %i.aa
  store i8 %i.ab, ptr %i.t, align 1
  br label %mergemask_sb.exit

mergemask_sb.exit:                                ; preds = %do_vqdmladh_b.exit, %bb.c
  %i.ac = trunc i16 %.02630 to i1
  %i.ad = select i1 %narrow, i1 %i.ac, i1 false
  %i.ae = or i1 %.032, %i.ad
  br label %bb.d

bb.d:                                             ; preds = %mergemask_sb.exit, %bb.b
  %.1 = phi i1 [ %i.ae, %mergemask_sb.exit ], [ %.032, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.af = lshr i16 %.02630, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.e, label %bb.b, !llvm.loop !29

bb.e:                                             ; preds = %bb.d
  br i1 %.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.ag, align 16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4            ; 5 uses
  %i.aj = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.aj, align 16         ; 4 uses
  %i.ak = and i32 %.val.i, 15
  %.not.i.i27 = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i27, label %bb.h, label %mve_eci_mask.exit.i

bb.h:                                             ; preds = %bb.g
  %i.al = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.am = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.al to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.am, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.h
  %i.an = zext nneg i32 %i.al to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.an
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.ao = icmp eq i32 %.val.i, 80
  %i.ap = select i1 %i.ao, i32 16, i32 0
  store i32 %i.ap, ptr %i.aj, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.g
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.g ] ; 3 uses
  %i.aq = and i32 %i.ai, 16711680
  %.not.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.j

bb.j:                                             ; preds = %mve_eci_mask.exit.i
  %i.ar = and i32 %i.ai, 983040
  %i.as = icmp samesign ult i32 %i.ar, 589824
  %i.at = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.as, i16 %i.at, i16 %.0.i34.i ; 2 uses
  %i.au = and i32 %i.ai, 15728640
  %i.av = icmp samesign ult i32 %i.au, 9437184
  %i.aw = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.av, i16 %i.aw, i16 %spec.select.i
  %i.ax = zext i16 %.1.i to i32
  %i.ay = xor i32 %i.ai, %i.ax                    ; 2 uses
  %i.az = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.az, 0
  %i.ba = and i32 %i.ay, -16711681
  %i.bb = shl i32 %i.ai, 1                        ; 2 uses
  %i.bc = and i32 %i.bb, 917504
  %i.bd = or disjoint i32 %i.ba, %i.bc
  %i.be = and i32 %i.ay, -15728641
  %i.bf = select i1 %.not32.i, i32 %i.be, i32 %i.bd
  %i.bg = and i32 %i.bb, 14680064
  %i.bh = or disjoint i32 %i.bf, %i.bg
  store i32 %i.bh, ptr %i.ah, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.j
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqrdmladhxh(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 4 uses
  %i.b = lshr i16 %i.a, 2                         ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.d = load i16, ptr %i.c, align 2
  %i.e = getelementptr i8, ptr %3, i64 2
  %i.f = load i16, ptr %3, align 2
  %i.g = load i16, ptr %2, align 2
  %i.h = load i16, ptr %i.e, align 2
  %i.i = sext i16 %i.d to i64
  %i.j = sext i16 %i.f to i64
  %i.k = mul nsw i64 %i.j, %i.i
  %i.l = sext i16 %i.g to i64
  %i.m = sext i16 %i.h to i64
  %i.n = mul nsw i64 %i.m, %i.l
  %i.o = add nsw i64 %i.n, %i.k                   ; 4 uses
  %i.p = shl nsw i64 %i.o, 1
  %i.q = add nsw i64 %i.p, 32768
  %i.r = icmp sgt i64 %i.o, 1073725439
  %i.s = icmp slt i64 %i.o, -1073758208
  %i.t = add nsw i64 %i.o, -1073725440
  %narrow.1 = icmp ult i64 %i.t, -2147483648
  %i.u = lshr i64 %i.q, 16
  %i.v = trunc i64 %i.u to i16
  %i.w = select i1 %i.s, i16 -32768, i16 %i.v
  %i.x = select i1 %i.r, i16 32767, i16 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.z = and i16 %i.b, 255
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = trunc i64 %i.ac to i16                  ; 2 uses
  %i.ae = load i16, ptr %i.y, align 2
  %i.af = xor i16 %i.ad, -1
  %i.ag = and i16 %i.ae, %i.af
  %i.ah = and i16 %i.x, %i.ad
  %i.ai = or i16 %i.ah, %i.ag
  store i16 %i.ai, ptr %i.y, align 2
  %i.aj = trunc i16 %i.b to i1
  %i.ak = and i1 %narrow.1, %i.aj
  %i.al = lshr i16 %i.a, 6                        ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.an = load i16, ptr %i.am, align 2
  %i.ao = getelementptr i8, ptr %3, i64 6
  %i.ap = getelementptr i8, ptr %3, i64 4
  %i.aq = load i16, ptr %i.ap, align 2
  %i.ar = getelementptr i8, ptr %2, i64 4
  %i.as = load i16, ptr %i.ar, align 2
  %i.at = load i16, ptr %i.ao, align 2
  %i.au = sext i16 %i.an to i64
  %i.av = sext i16 %i.aq to i64
  %i.aw = mul nsw i64 %i.av, %i.au
  %i.ax = sext i16 %i.as to i64
  %i.ay = sext i16 %i.at to i64
  %i.az = mul nsw i64 %i.ay, %i.ax
  %i.ba = add nsw i64 %i.az, %i.aw                ; 4 uses
  %i.bb = shl nsw i64 %i.ba, 1
  %i.bc = add nsw i64 %i.bb, 32768
  %i.bd = icmp sgt i64 %i.ba, 1073725439
  %i.be = icmp slt i64 %i.ba, -1073758208
  %i.bf = add nsw i64 %i.ba, -1073725440
  %narrow.3 = icmp ult i64 %i.bf, -2147483648
  %i.bg = lshr i64 %i.bc, 16
  %i.bh = trunc i64 %i.bg to i16
  %i.bi = select i1 %i.be, i16 -32768, i16 %i.bh
  %i.bj = select i1 %i.bd, i16 32767, i16 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.bl = and i16 %i.al, 255
  %i.bm = zext nneg i16 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = trunc i64 %i.bo to i16                  ; 2 uses
  %i.bq = load i16, ptr %i.bk, align 2
  %i.br = xor i16 %i.bp, -1
  %i.bs = and i16 %i.bq, %i.br
  %i.bt = and i16 %i.bj, %i.bp
  %i.bu = or i16 %i.bt, %i.bs
  store i16 %i.bu, ptr %i.bk, align 2
  %i.bv = trunc i16 %i.al to i1
  %i.bw = and i1 %narrow.3, %i.bv
  %i.bx = or i1 %i.ak, %i.bw
  %i.by = lshr i16 %i.a, 10                       ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ca = load i16, ptr %i.bz, align 2
  %i.cb = getelementptr i8, ptr %3, i64 10
  %i.cc = getelementptr i8, ptr %3, i64 8
  %i.cd = load i16, ptr %i.cc, align 2
  %i.ce = getelementptr i8, ptr %2, i64 8
  %i.cf = load i16, ptr %i.ce, align 2
  %i.cg = load i16, ptr %i.cb, align 2
  %i.ch = sext i16 %i.ca to i64
  %i.ci = sext i16 %i.cd to i64
  %i.cj = mul nsw i64 %i.ci, %i.ch
  %i.ck = sext i16 %i.cf to i64
  %i.cl = sext i16 %i.cg to i64
  %i.cm = mul nsw i64 %i.cl, %i.ck
  %i.cn = add nsw i64 %i.cm, %i.cj                ; 4 uses
  %i.co = shl nsw i64 %i.cn, 1
  %i.cp = add nsw i64 %i.co, 32768
  %i.cq = icmp sgt i64 %i.cn, 1073725439
  %i.cr = icmp slt i64 %i.cn, -1073758208
  %i.cs = add nsw i64 %i.cn, -1073725440
  %narrow.5 = icmp ult i64 %i.cs, -2147483648
  %i.ct = lshr i64 %i.cp, 16
  %i.cu = trunc i64 %i.ct to i16
  %i.cv = select i1 %i.cr, i16 -32768, i16 %i.cu
  %i.cw = select i1 %i.cq, i16 32767, i16 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.cy = zext nneg i16 %i.by to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.cy
  %i.da = load i64, ptr %i.cz, align 8
  %i.db = trunc i64 %i.da to i16                  ; 2 uses
  %i.dc = load i16, ptr %i.cx, align 2
  %i.dd = xor i16 %i.db, -1
  %i.de = and i16 %i.dc, %i.dd
  %i.df = and i16 %i.cw, %i.db
  %i.dg = or i16 %i.df, %i.de
  store i16 %i.dg, ptr %i.cx, align 2
  %i.dh = trunc i16 %i.by to i1
  %i.di = and i1 %narrow.5, %i.dh
  %i.dj = or i1 %i.bx, %i.di
  %i.dk = lshr i16 %i.a, 14                       ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.dm = load i16, ptr %i.dl, align 2
end_hunk_18
begin_hunk_19_@helper_mve_vqrdmladhxw:bb.a
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = trunc i64 %i.af to i32                  ; 2 uses
  %i.ah = load i32, ptr %i.ab, align 4
  %i.ai = xor i32 %i.ag, -1
  %i.aj = and i32 %i.ah, %i.ai
  %i.ak = and i32 %.0.i.1, %i.ag
  %i.al = or i32 %i.aj, %i.ak
  store i32 %i.al, ptr %i.ab, align 4
  %i.am = trunc i16 %i.b to i1
  %i.an = and i1 %.027.1, %i.am
  %i.ao = lshr i16 %i.a, 12                       ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = getelementptr i8, ptr %3, i64 12
  %i.as = getelementptr i8, ptr %3, i64 8
  %i.at = load i32, ptr %i.as, align 4
  %i.au = getelementptr i8, ptr %2, i64 8
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = load i32, ptr %i.ar, align 4
  %i.ax = sext i32 %i.aq to i64
  %i.ay = sext i32 %i.at to i64
  %i.az = mul nsw i64 %i.ay, %i.ax
  %i.ba = sext i32 %i.av to i64
  %i.bb = sext i32 %i.aw to i64
  %i.bc = mul nsw i64 %i.bb, %i.ba
  %i.bd = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.az, i64 %i.bc) ; 2 uses
  %i.be = extractvalue { i64, i1 } %i.bd, 1
  %i.bf = extractvalue { i64, i1 } %i.bd, 0       ; 2 uses
  br i1 %i.be, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bf, i64 1073741824) ; 2 uses
  %i.bh = extractvalue { i64, i1 } %i.bg, 1
  %i.bi = extractvalue { i64, i1 } %i.bg, 0       ; 3 uses
  br i1 %i.bh, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bi, i64 %i.bi) ; 2 uses
  %i.bk = extractvalue { i64, i1 } %i.bj, 1
  %i.bl = extractvalue { i64, i1 } %i.bj, 0       ; 2 uses
  br i1 %i.bk, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = lshr i64 %i.bl, 32
  %i.bn = trunc nuw i64 %i.bm to i32
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.011.i.3 = phi i64 [ %i.bf, %bb.f ], [ %i.bi, %bb.g ], [ %i.bl, %bb.h ]
  %i.bo = icmp slt i64 %.011.i.3, 0
  %i.bp = select i1 %i.bo, i32 2147483647, i32 -2147483648
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.027.3 = phi i1 [ true, %bb.j ], [ false, %bb.i ]
  %.0.i.3 = phi i32 [ %i.bp, %bb.j ], [ %i.bn, %bb.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.br = zext nneg i16 %i.ao to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = trunc i64 %i.bt to i32                  ; 2 uses
  %i.bv = load i32, ptr %i.bq, align 4
  %i.bw = xor i32 %i.bu, -1
  %i.bx = and i32 %i.bv, %i.bw
  %i.by = and i32 %.0.i.3, %i.bu
  %i.bz = or i32 %i.bx, %i.by
  store i32 %i.bz, ptr %i.bq, align 4
  %i.ca = trunc i16 %i.ao to i1
  %i.cb = and i1 %.027.3, %i.ca
  %i.cc = or i1 %i.an, %i.cb
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.cd, align 16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4            ; 5 uses
  %i.cg = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.cg, align 16         ; 4 uses
  %i.ch = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.ch, 0
  br i1 %.not.i.i, label %bb.n, label %mve_eci_mask.exit.i

bb.n:                                             ; preds = %bb.m
  %i.ci = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.cj = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.ci to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.cj, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.n
  %i.ck = zext nneg i32 %i.ci to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.ck
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.cl = icmp eq i32 %.val.i, 80
  %i.cm = select i1 %i.cl, i32 16, i32 0
  store i32 %i.cm, ptr %i.cg, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.m
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.m ] ; 3 uses
  %i.cn = and i32 %i.cf, 16711680
  %.not.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.p

bb.p:                                             ; preds = %mve_eci_mask.exit.i
  %i.co = and i32 %i.cf, 983040
  %i.cp = icmp samesign ult i32 %i.co, 589824
  %i.cq = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.cp, i16 %i.cq, i16 %.0.i34.i ; 2 uses
  %i.cr = and i32 %i.cf, 15728640
  %i.cs = icmp samesign ult i32 %i.cr, 9437184
  %i.ct = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.cs, i16 %i.ct, i16 %spec.select.i
  %i.cu = zext i16 %.1.i to i32
  %i.cv = xor i32 %i.cf, %i.cu                    ; 2 uses
  %i.cw = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.cw, 0
  %i.cx = and i32 %i.cv, -16711681
  %i.cy = shl i32 %i.cf, 1                        ; 2 uses
  %i.cz = and i32 %i.cy, 917504
  %i.da = or disjoint i32 %i.cx, %i.cz
  %i.db = and i32 %i.cv, -15728641
  %i.dc = select i1 %.not32.i, i32 %i.db, i32 %i.da
  %i.dd = and i32 %i.cy, 14680064
  %i.de = or disjoint i32 %i.dc, %i.dd
  store i32 %i.de, ptr %i.ce, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.p
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqdmlsdhb(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.d ] ; 6 uses
  %.032 = phi i1 [ false, %bb.a ], [ %.1, %bb.d ] ; 2 uses
  %.02630 = phi i16 [ %i.a, %bb.a ], [ %i.ae, %bb.d ] ; 3 uses
  %i.b = and i64 %indvars.iv, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %do_vqdmlsdh_b.exit, label %bb.d

do_vqdmlsdh_b.exit:                               ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.e = load i8, ptr %i.d, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.g = load i8, ptr %i.f, align 1
  %i.h = or disjoint i64 %indvars.iv, 1           ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 %i.h
  %i.l = load i8, ptr %i.k, align 1
  %i.m = sext i8 %i.e to i64
  %i.n = sext i8 %i.g to i64
  %i.o = mul nsw i64 %i.n, %i.m
  %i.p = sext i8 %i.j to i64
  %i.q = sext i8 %i.l to i64
  %i.r = mul nsw i64 %i.q, %i.p
  %i.s = sub nsw i64 %i.o, %i.r                   ; 3 uses
  %i.t = add nsw i64 %i.s, -16384
  %narrow = icmp ult i64 %i.t, -32768
  %i.u = and i16 %.02630, 1
  %.not.i.i = icmp eq i16 %i.u, 0
  br i1 %.not.i.i, label %mergemask_sb.exit, label %bb.c

bb.c:                                             ; preds = %do_vqdmlsdh_b.exit
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.w = icmp sgt i64 %i.s, 16383
  %i.x = tail call i64 @llvm.smax.i64(i64 %i.s, i64 -16384)
  %i.y = lshr i64 %i.x, 7
  %i.z = trunc i64 %i.y to i8
  %i.aa = select i1 %i.w, i8 127, i8 %i.z
  store i8 %i.aa, ptr %i.v, align 1
  br label %mergemask_sb.exit

mergemask_sb.exit:                                ; preds = %do_vqdmlsdh_b.exit, %bb.c
  %i.ab = trunc i16 %.02630 to i1
  %i.ac = select i1 %narrow, i1 %i.ab, i1 false
  %i.ad = or i1 %.032, %i.ac
  br label %bb.d

bb.d:                                             ; preds = %mergemask_sb.exit, %bb.b
  %.1 = phi i1 [ %i.ad, %mergemask_sb.exit ], [ %.032, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = lshr i16 %.02630, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.e, label %bb.b, !llvm.loop !30

bb.e:                                             ; preds = %bb.d
  br i1 %.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.af, align 16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4            ; 5 uses
  %i.ai = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.ai, align 16         ; 4 uses
  %i.aj = and i32 %.val.i, 15
  %.not.i.i27 = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i27, label %bb.h, label %mve_eci_mask.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ak = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.al = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.ak to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.al, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.h
  %i.am = zext nneg i32 %i.ak to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.am
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.an = icmp eq i32 %.val.i, 80
  %i.ao = select i1 %i.an, i32 16, i32 0
  store i32 %i.ao, ptr %i.ai, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.g
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.g ] ; 3 uses
  %i.ap = and i32 %i.ah, 16711680
  %.not.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.j

bb.j:                                             ; preds = %mve_eci_mask.exit.i
  %i.aq = and i32 %i.ah, 983040
  %i.ar = icmp samesign ult i32 %i.aq, 589824
  %i.as = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.ar, i16 %i.as, i16 %.0.i34.i ; 2 uses
  %i.at = and i32 %i.ah, 15728640
  %i.au = icmp samesign ult i32 %i.at, 9437184
  %i.av = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.au, i16 %i.av, i16 %spec.select.i
  %i.aw = zext i16 %.1.i to i32
  %i.ax = xor i32 %i.ah, %i.aw                    ; 2 uses
  %i.ay = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.ay, 0
  %i.az = and i32 %i.ax, -16711681
  %i.ba = shl i32 %i.ah, 1                        ; 2 uses
  %i.bb = and i32 %i.ba, 917504
  %i.bc = or disjoint i32 %i.az, %i.bb
  %i.bd = and i32 %i.ax, -15728641
  %i.be = select i1 %.not32.i, i32 %i.bd, i32 %i.bc
  %i.bf = and i32 %i.ba, 14680064
  %i.bg = or disjoint i32 %i.be, %i.bf
  store i32 %i.bg, ptr %i.ag, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.j
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqdmlsdhh(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 5 uses
  %i.b = load i16, ptr %2, align 2
  %i.c = load i16, ptr %3, align 2
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.e = load i16, ptr %i.d, align 2
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.g = load i16, ptr %i.f, align 2
  %i.h = sext i16 %i.b to i64
  %i.i = sext i16 %i.c to i64
  %i.j = mul nsw i64 %i.i, %i.h
  %i.k = sext i16 %i.e to i64
  %i.l = sext i16 %i.g to i64
  %i.m = mul nsw i64 %i.l, %i.k
  %i.n = sub nsw i64 %i.j, %i.m                   ; 3 uses
  %i.o = icmp sgt i64 %i.n, 1073741823
  %i.p = tail call i64 @llvm.smax.i64(i64 %i.n, i64 -1073741824)
  %i.q = add nsw i64 %i.n, -1073741824
  %narrow = icmp ult i64 %i.q, -2147483648
  %i.r = lshr i64 %i.p, 15
  %i.s = trunc i64 %i.r to i16
  %i.t = select i1 %i.o, i16 32767, i16 %i.s
  %i.u = and i16 %i.a, 255
  %i.v = zext nneg i16 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8
  %i.y = trunc i64 %i.x to i16                    ; 2 uses
  %i.z = load i16, ptr %1, align 2
  %i.aa = xor i16 %i.y, -1
  %i.ab = and i16 %i.z, %i.aa
  %i.ac = and i16 %i.t, %i.y
  %i.ad = or i16 %i.ac, %i.ab
  store i16 %i.ad, ptr %1, align 2
  %i.ae = trunc i16 %i.a to i1
  %i.af = and i1 %narrow, %i.ae
  %i.ag = lshr i16 %i.a, 4                        ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ai = load i16, ptr %i.ah, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.am = load i16, ptr %i.al, align 2
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.ao = load i16, ptr %i.an, align 2
  %i.ap = sext i16 %i.ai to i64
  %i.aq = sext i16 %i.ak to i64
  %i.ar = mul nsw i64 %i.aq, %i.ap
  %i.as = sext i16 %i.am to i64
  %i.at = sext i16 %i.ao to i64
  %i.au = mul nsw i64 %i.at, %i.as
  %i.av = sub nsw i64 %i.ar, %i.au                ; 3 uses
  %i.aw = icmp sgt i64 %i.av, 1073741823
  %i.ax = tail call i64 @llvm.smax.i64(i64 %i.av, i64 -1073741824)
  %i.ay = add nsw i64 %i.av, -1073741824
  %narrow.2 = icmp ult i64 %i.ay, -2147483648
  %i.az = lshr i64 %i.ax, 15
  %i.ba = trunc i64 %i.az to i16
  %i.bb = select i1 %i.aw, i16 32767, i16 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.bd = and i16 %i.ag, 255
  %i.be = zext nneg i16 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = trunc i64 %i.bg to i16                  ; 2 uses
  %i.bi = load i16, ptr %i.bc, align 2
  %i.bj = xor i16 %i.bh, -1
  %i.bk = and i16 %i.bi, %i.bj
  %i.bl = and i16 %i.bb, %i.bh
  %i.bm = or i16 %i.bl, %i.bk
  store i16 %i.bm, ptr %i.bc, align 2
  %i.bn = trunc i16 %i.ag to i1
  %i.bo = and i1 %narrow.2, %i.bn
  %i.bp = or i1 %i.af, %i.bo
  %i.bq = lshr i16 %i.a, 8                        ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bs = load i16, ptr %i.br, align 2
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bu = load i16, ptr %i.bt, align 2
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bw = load i16, ptr %i.bv, align 2
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.by = load i16, ptr %i.bx, align 2
  %i.bz = sext i16 %i.bs to i64
  %i.ca = sext i16 %i.bu to i64
  %i.cb = mul nsw i64 %i.ca, %i.bz
  %i.cc = sext i16 %i.bw to i64
  %i.cd = sext i16 %i.by to i64
  %i.ce = mul nsw i64 %i.cd, %i.cc
  %i.cf = sub nsw i64 %i.cb, %i.ce                ; 3 uses
  %i.cg = icmp sgt i64 %i.cf, 1073741823
  %i.ch = tail call i64 @llvm.smax.i64(i64 %i.cf, i64 -1073741824)
  %i.ci = add nsw i64 %i.cf, -1073741824
  %narrow.4 = icmp ult i64 %i.ci, -2147483648
  %i.cj = lshr i64 %i.ch, 15
  %i.ck = trunc i64 %i.cj to i16
  %i.cl = select i1 %i.cg, i16 32767, i16 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cn = zext nneg i16 %i.bq to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.cn
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = trunc i64 %i.cp to i16                  ; 2 uses
  %i.cr = load i16, ptr %i.cm, align 2
  %i.cs = xor i16 %i.cq, -1
  %i.ct = and i16 %i.cr, %i.cs
  %i.cu = and i16 %i.cl, %i.cq
  %i.cv = or i16 %i.cu, %i.ct
  store i16 %i.cv, ptr %i.cm, align 2
  %i.cw = trunc i16 %i.bq to i1
  %i.cx = and i1 %narrow.4, %i.cw
  %i.cy = or i1 %i.bp, %i.cx
  %i.cz = lshr i16 %i.a, 12                       ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.db = load i16, ptr %i.da, align 2
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.dd = load i16, ptr %i.dc, align 2
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.df = load i16, ptr %i.de, align 2
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.dh = load i16, ptr %i.dg, align 2
  %i.di = sext i16 %i.db to i64
  %i.dj = sext i16 %i.dd to i64
  %i.dk = mul nsw i64 %i.dj, %i.di
  %i.dl = sext i16 %i.df to i64
  %i.dm = sext i16 %i.dh to i64
end_hunk_19
begin_hunk_20_@helper_mve_vqdmlsdhw:bb.a
  %i.c = load i32, ptr %3, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %i.h = sext i32 %i.b to i64
  %i.i = sext i32 %i.c to i64
  %i.j = mul nsw i64 %i.i, %i.h
  %i.k = sext i32 %i.e to i64
  %i.l = sext i32 %i.g to i64
  %i.m = mul nsw i64 %i.l, %i.k
  %i.n = sub nsw i64 %i.j, %i.m                   ; 2 uses
  %i.o = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.n, i64 %i.n) ; 2 uses
  %i.p = extractvalue { i64, i1 } %i.o, 1         ; 2 uses
  %i.q = extractvalue { i64, i1 } %i.o, 0         ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  %i.s = select i1 %i.r, i32 2147483647, i32 -2147483648
  %i.t = lshr i64 %i.q, 32
  %i.u = trunc nuw i64 %i.t to i32
  %.0.i = select i1 %i.p, i32 %i.s, i32 %i.u
  %i.v = and i16 %i.a, 255
  %i.w = zext nneg i16 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8
  %i.z = trunc i64 %i.y to i32                    ; 2 uses
  %i.aa = load i32, ptr %1, align 4
  %i.ab = xor i32 %i.z, -1
  %i.ac = and i32 %i.aa, %i.ab
  %i.ad = and i32 %.0.i, %i.z
  %i.ae = or i32 %i.ad, %i.ac
  store i32 %i.ae, ptr %1, align 4
  %i.af = trunc i16 %i.a to i1
  %i.ag = and i1 %i.p, %i.af
  %i.ah = lshr i16 %i.a, 8                        ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = sext i32 %i.aj to i64
  %i.ar = sext i32 %i.al to i64
  %i.as = mul nsw i64 %i.ar, %i.aq
  %i.at = sext i32 %i.an to i64
  %i.au = sext i32 %i.ap to i64
  %i.av = mul nsw i64 %i.au, %i.at
  %i.aw = sub nsw i64 %i.as, %i.av                ; 2 uses
  %i.ax = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.aw, i64 %i.aw) ; 2 uses
  %i.ay = extractvalue { i64, i1 } %i.ax, 1       ; 2 uses
  %i.az = extractvalue { i64, i1 } %i.ax, 0       ; 2 uses
  %i.ba = icmp slt i64 %i.az, 0
  %i.bb = select i1 %i.ba, i32 2147483647, i32 -2147483648
  %i.bc = lshr i64 %i.az, 32
  %i.bd = trunc nuw i64 %i.bc to i32
  %.0.i.2 = select i1 %i.ay, i32 %i.bb, i32 %i.bd
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bf = zext nneg i16 %i.ah to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = trunc i64 %i.bh to i32                  ; 2 uses
  %i.bj = load i32, ptr %i.be, align 4
  %i.bk = xor i32 %i.bi, -1
  %i.bl = and i32 %i.bj, %i.bk
  %i.bm = and i32 %.0.i.2, %i.bi
  %i.bn = or i32 %i.bm, %i.bl
  store i32 %i.bn, ptr %i.be, align 4
  %i.bo = trunc i16 %i.ah to i1
  %i.bp = and i1 %i.ay, %i.bo
  %i.bq = or i1 %i.ag, %i.bp
  br i1 %i.bq, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.br, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4            ; 5 uses
  %i.bu = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.bu, align 16         ; 4 uses
  %i.bv = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i, label %bb.d, label %mve_eci_mask.exit.i

bb.d:                                             ; preds = %bb.c
  %i.bw = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.bx = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.bw to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.bx, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.d
  %i.by = zext nneg i32 %i.bw to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.by
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.bz = icmp eq i32 %.val.i, 80
  %i.ca = select i1 %i.bz, i32 16, i32 0
  store i32 %i.ca, ptr %i.bu, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.c
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.c ] ; 3 uses
  %i.cb = and i32 %i.bt, 16711680
  %.not.i = icmp eq i32 %i.cb, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.f

bb.f:                                             ; preds = %mve_eci_mask.exit.i
  %i.cc = and i32 %i.bt, 983040
  %i.cd = icmp samesign ult i32 %i.cc, 589824
  %i.ce = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.cd, i16 %i.ce, i16 %.0.i34.i ; 2 uses
  %i.cf = and i32 %i.bt, 15728640
  %i.cg = icmp samesign ult i32 %i.cf, 9437184
  %i.ch = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.cg, i16 %i.ch, i16 %spec.select.i
  %i.ci = zext i16 %.1.i to i32
  %i.cj = xor i32 %i.bt, %i.ci                    ; 2 uses
  %i.ck = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.ck, 0
  %i.cl = and i32 %i.cj, -16711681
  %i.cm = shl i32 %i.bt, 1                        ; 2 uses
  %i.cn = and i32 %i.cm, 917504
  %i.co = or disjoint i32 %i.cl, %i.cn
  %i.cp = and i32 %i.cj, -15728641
  %i.cq = select i1 %.not32.i, i32 %i.cp, i32 %i.co
  %i.cr = and i32 %i.cm, 14680064
  %i.cs = or disjoint i32 %i.cq, %i.cr
  store i32 %i.cs, ptr %i.bs, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.f
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqdmlsdhxb(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.d ] ; 5 uses
  %.032 = phi i1 [ false, %bb.a ], [ %.1, %bb.d ] ; 2 uses
  %.02630 = phi i16 [ %i.a, %bb.a ], [ %i.ac, %bb.d ] ; 3 uses
  %i.b = and i64 %indvars.iv, 1
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.d, label %do_vqdmlsdh_b.exit

do_vqdmlsdh_b.exit:                               ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv ; 2 uses
  %i.d = load i8, ptr %i.c, align 1
  %i.e = getelementptr i8, ptr %3, i64 %indvars.iv ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -1
  %i.g = load i8, ptr %i.f, align 1
  %i.h = getelementptr i8, ptr %i.c, i64 -1
  %i.i = load i8, ptr %i.h, align 1
  %i.j = load i8, ptr %i.e, align 1
  %i.k = sext i8 %i.d to i64
  %i.l = sext i8 %i.g to i64
  %i.m = mul nsw i64 %i.l, %i.k
  %i.n = sext i8 %i.i to i64
  %i.o = sext i8 %i.j to i64
  %i.p = mul nsw i64 %i.o, %i.n
  %i.q = sub nsw i64 %i.m, %i.p                   ; 3 uses
  %i.r = add nsw i64 %i.q, -16384
  %narrow = icmp ult i64 %i.r, -32768
  %i.s = and i16 %.02630, 1
  %.not.i.i = icmp eq i16 %i.s, 0
  br i1 %.not.i.i, label %mergemask_sb.exit, label %bb.c

bb.c:                                             ; preds = %do_vqdmlsdh_b.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.u = icmp sgt i64 %i.q, 16383
  %i.v = tail call i64 @llvm.smax.i64(i64 %i.q, i64 -16384)
  %i.w = lshr i64 %i.v, 7
  %i.x = trunc i64 %i.w to i8
  %i.y = select i1 %i.u, i8 127, i8 %i.x
  store i8 %i.y, ptr %i.t, align 1
  br label %mergemask_sb.exit

mergemask_sb.exit:                                ; preds = %do_vqdmlsdh_b.exit, %bb.c
  %i.z = trunc i16 %.02630 to i1
  %i.aa = select i1 %narrow, i1 %i.z, i1 false
  %i.ab = or i1 %.032, %i.aa
  br label %bb.d

bb.d:                                             ; preds = %mergemask_sb.exit, %bb.b
  %.1 = phi i1 [ %i.ab, %mergemask_sb.exit ], [ %.032, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ac = lshr i16 %.02630, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.e, label %bb.b, !llvm.loop !31

bb.e:                                             ; preds = %bb.d
  br i1 %.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.ad, align 16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4            ; 5 uses
  %i.ag = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.ag, align 16         ; 4 uses
  %i.ah = and i32 %.val.i, 15
  %.not.i.i27 = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i27, label %bb.h, label %mve_eci_mask.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ai = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.aj = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.ai to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.aj, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.h
  %i.ak = zext nneg i32 %i.ai to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.ak
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.al = icmp eq i32 %.val.i, 80
  %i.am = select i1 %i.al, i32 16, i32 0
  store i32 %i.am, ptr %i.ag, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.g
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.g ] ; 3 uses
  %i.an = and i32 %i.af, 16711680
  %.not.i = icmp eq i32 %i.an, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.j

bb.j:                                             ; preds = %mve_eci_mask.exit.i
  %i.ao = and i32 %i.af, 983040
  %i.ap = icmp samesign ult i32 %i.ao, 589824
  %i.aq = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.ap, i16 %i.aq, i16 %.0.i34.i ; 2 uses
  %i.ar = and i32 %i.af, 15728640
  %i.as = icmp samesign ult i32 %i.ar, 9437184
  %i.at = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.as, i16 %i.at, i16 %spec.select.i
  %i.au = zext i16 %.1.i to i32
  %i.av = xor i32 %i.af, %i.au                    ; 2 uses
  %i.aw = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.aw, 0
  %i.ax = and i32 %i.av, -16711681
  %i.ay = shl i32 %i.af, 1                        ; 2 uses
  %i.az = and i32 %i.ay, 917504
  %i.ba = or disjoint i32 %i.ax, %i.az
  %i.bb = and i32 %i.av, -15728641
  %i.bc = select i1 %.not32.i, i32 %i.bb, i32 %i.ba
  %i.bd = and i32 %i.ay, 14680064
  %i.be = or disjoint i32 %i.bc, %i.bd
  store i32 %i.be, ptr %i.ae, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.j
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqdmlsdhxh(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 4 uses
  %i.b = lshr i16 %i.a, 2                         ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.d = load i16, ptr %i.c, align 2
  %i.e = getelementptr i8, ptr %3, i64 2
  %i.f = load i16, ptr %3, align 2
  %i.g = load i16, ptr %2, align 2
  %i.h = load i16, ptr %i.e, align 2
  %i.i = sext i16 %i.d to i64
  %i.j = sext i16 %i.f to i64
  %i.k = mul nsw i64 %i.j, %i.i
  %i.l = sext i16 %i.g to i64
  %i.m = sext i16 %i.h to i64
  %i.n = mul nsw i64 %i.m, %i.l
  %i.o = sub nsw i64 %i.k, %i.n                   ; 3 uses
  %i.p = icmp sgt i64 %i.o, 1073741823
  %i.q = tail call i64 @llvm.smax.i64(i64 %i.o, i64 -1073741824)
  %i.r = add nsw i64 %i.o, -1073741824
  %narrow.1 = icmp ult i64 %i.r, -2147483648
  %i.s = lshr i64 %i.q, 15
  %i.t = trunc i64 %i.s to i16
  %i.u = select i1 %i.p, i16 32767, i16 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.w = and i16 %i.b, 255
  %i.x = zext nneg i16 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = trunc i64 %i.z to i16                   ; 2 uses
  %i.ab = load i16, ptr %i.v, align 2
  %i.ac = xor i16 %i.aa, -1
  %i.ad = and i16 %i.ab, %i.ac
  %i.ae = and i16 %i.u, %i.aa
  %i.af = or i16 %i.ae, %i.ad
  store i16 %i.af, ptr %i.v, align 2
  %i.ag = trunc i16 %i.b to i1
  %i.ah = and i1 %narrow.1, %i.ag
  %i.ai = lshr i16 %i.a, 6                        ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = getelementptr i8, ptr %3, i64 6
  %i.am = getelementptr i8, ptr %3, i64 4
  %i.an = load i16, ptr %i.am, align 2
  %i.ao = getelementptr i8, ptr %2, i64 4
  %i.ap = load i16, ptr %i.ao, align 2
  %i.aq = load i16, ptr %i.al, align 2
  %i.ar = sext i16 %i.ak to i64
  %i.as = sext i16 %i.an to i64
  %i.at = mul nsw i64 %i.as, %i.ar
  %i.au = sext i16 %i.ap to i64
  %i.av = sext i16 %i.aq to i64
  %i.aw = mul nsw i64 %i.av, %i.au
  %i.ax = sub nsw i64 %i.at, %i.aw                ; 3 uses
  %i.ay = icmp sgt i64 %i.ax, 1073741823
  %i.az = tail call i64 @llvm.smax.i64(i64 %i.ax, i64 -1073741824)
  %i.ba = add nsw i64 %i.ax, -1073741824
  %narrow.3 = icmp ult i64 %i.ba, -2147483648
  %i.bb = lshr i64 %i.az, 15
  %i.bc = trunc i64 %i.bb to i16
  %i.bd = select i1 %i.ay, i16 32767, i16 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.bf = and i16 %i.ai, 255
  %i.bg = zext nneg i16 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = trunc i64 %i.bi to i16                  ; 2 uses
  %i.bk = load i16, ptr %i.be, align 2
  %i.bl = xor i16 %i.bj, -1
  %i.bm = and i16 %i.bk, %i.bl
  %i.bn = and i16 %i.bd, %i.bj
  %i.bo = or i16 %i.bn, %i.bm
  store i16 %i.bo, ptr %i.be, align 2
  %i.bp = trunc i16 %i.ai to i1
  %i.bq = and i1 %narrow.3, %i.bp
  %i.br = or i1 %i.ah, %i.bq
  %i.bs = lshr i16 %i.a, 10                       ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bu = load i16, ptr %i.bt, align 2
  %i.bv = getelementptr i8, ptr %3, i64 10
  %i.bw = getelementptr i8, ptr %3, i64 8
  %i.bx = load i16, ptr %i.bw, align 2
  %i.by = getelementptr i8, ptr %2, i64 8
  %i.bz = load i16, ptr %i.by, align 2
  %i.ca = load i16, ptr %i.bv, align 2
  %i.cb = sext i16 %i.bu to i64
  %i.cc = sext i16 %i.bx to i64
  %i.cd = mul nsw i64 %i.cc, %i.cb
  %i.ce = sext i16 %i.bz to i64
  %i.cf = sext i16 %i.ca to i64
  %i.cg = mul nsw i64 %i.cf, %i.ce
  %i.ch = sub nsw i64 %i.cd, %i.cg                ; 3 uses
  %i.ci = icmp sgt i64 %i.ch, 1073741823
  %i.cj = tail call i64 @llvm.smax.i64(i64 %i.ch, i64 -1073741824)
  %i.ck = add nsw i64 %i.ch, -1073741824
  %narrow.5 = icmp ult i64 %i.ck, -2147483648
  %i.cl = lshr i64 %i.cj, 15
  %i.cm = trunc i64 %i.cl to i16
  %i.cn = select i1 %i.ci, i16 32767, i16 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.cp = zext nneg i16 %i.bs to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.cp
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = trunc i64 %i.cr to i16                  ; 2 uses
  %i.ct = load i16, ptr %i.co, align 2
  %i.cu = xor i16 %i.cs, -1
  %i.cv = and i16 %i.ct, %i.cu
  %i.cw = and i16 %i.cn, %i.cs
  %i.cx = or i16 %i.cw, %i.cv
  store i16 %i.cx, ptr %i.co, align 2
  %i.cy = trunc i16 %i.bs to i1
  %i.cz = and i1 %narrow.5, %i.cy
  %i.da = or i1 %i.br, %i.cz
  %i.db = lshr i16 %i.a, 14                       ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.dd = load i16, ptr %i.dc, align 2
  %i.de = getelementptr i8, ptr %3, i64 14
  %i.df = getelementptr i8, ptr %3, i64 12
  %i.dg = load i16, ptr %i.df, align 2
  %i.dh = getelementptr i8, ptr %2, i64 12
  %i.di = load i16, ptr %i.dh, align 2
  %i.dj = load i16, ptr %i.de, align 2
  %i.dk = sext i16 %i.dd to i64
  %i.dl = sext i16 %i.dg to i64
  %i.dm = mul nsw i64 %i.dl, %i.dk
end_hunk_20
begin_hunk_21_@helper_mve_vqdmlsdhxw:bb.a
  %i.i = sext i32 %i.d to i64
  %i.j = sext i32 %i.f to i64
  %i.k = mul nsw i64 %i.j, %i.i
  %i.l = sext i32 %i.g to i64
  %i.m = sext i32 %i.h to i64
  %i.n = mul nsw i64 %i.m, %i.l
  %i.o = sub nsw i64 %i.k, %i.n                   ; 2 uses
  %i.p = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.o, i64 %i.o) ; 2 uses
  %i.q = extractvalue { i64, i1 } %i.p, 1         ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.p, 0         ; 2 uses
  %i.s = icmp slt i64 %i.r, 0
  %i.t = select i1 %i.s, i32 2147483647, i32 -2147483648
  %i.u = lshr i64 %i.r, 32
  %i.v = trunc nuw i64 %i.u to i32
  %.0.i.1 = select i1 %i.q, i32 %i.t, i32 %i.v
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.x = and i16 %i.b, 255
  %i.y = zext nneg i16 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = trunc i64 %i.aa to i32                  ; 2 uses
  %i.ac = load i32, ptr %i.w, align 4
  %i.ad = xor i32 %i.ab, -1
  %i.ae = and i32 %i.ac, %i.ad
  %i.af = and i32 %.0.i.1, %i.ab
  %i.ag = or i32 %i.af, %i.ae
  store i32 %i.ag, ptr %i.w, align 4
  %i.ah = trunc i16 %i.b to i1
  %i.ai = and i1 %i.q, %i.ah
  %i.aj = lshr i16 %i.a, 12                       ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = getelementptr i8, ptr %3, i64 12
  %i.an = getelementptr i8, ptr %3, i64 8
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = getelementptr i8, ptr %2, i64 8
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = load i32, ptr %i.am, align 4
  %i.as = sext i32 %i.al to i64
  %i.at = sext i32 %i.ao to i64
  %i.au = mul nsw i64 %i.at, %i.as
  %i.av = sext i32 %i.aq to i64
  %i.aw = sext i32 %i.ar to i64
  %i.ax = mul nsw i64 %i.aw, %i.av
  %i.ay = sub nsw i64 %i.au, %i.ax                ; 2 uses
  %i.az = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ay, i64 %i.ay) ; 2 uses
  %i.ba = extractvalue { i64, i1 } %i.az, 1       ; 2 uses
  %i.bb = extractvalue { i64, i1 } %i.az, 0       ; 2 uses
  %i.bc = icmp slt i64 %i.bb, 0
  %i.bd = select i1 %i.bc, i32 2147483647, i32 -2147483648
  %i.be = lshr i64 %i.bb, 32
  %i.bf = trunc nuw i64 %i.be to i32
  %.0.i.3 = select i1 %i.ba, i32 %i.bd, i32 %i.bf
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.bh = zext nneg i16 %i.aj to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = trunc i64 %i.bj to i32                  ; 2 uses
  %i.bl = load i32, ptr %i.bg, align 4
  %i.bm = xor i32 %i.bk, -1
  %i.bn = and i32 %i.bl, %i.bm
  %i.bo = and i32 %.0.i.3, %i.bk
  %i.bp = or i32 %i.bo, %i.bn
  store i32 %i.bp, ptr %i.bg, align 4
  %i.bq = trunc i16 %i.aj to i1
  %i.br = and i1 %i.ba, %i.bq
  %i.bs = or i1 %i.ai, %i.br
  br i1 %i.bs, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.bt, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4            ; 5 uses
  %i.bw = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.bw, align 16         ; 4 uses
  %i.bx = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.bx, 0
  br i1 %.not.i.i, label %bb.d, label %mve_eci_mask.exit.i

bb.d:                                             ; preds = %bb.c
  %i.by = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.bz = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.by to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.bz, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.d
  %i.ca = zext nneg i32 %i.by to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.ca
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.cb = icmp eq i32 %.val.i, 80
  %i.cc = select i1 %i.cb, i32 16, i32 0
  store i32 %i.cc, ptr %i.bw, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.c
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.c ] ; 3 uses
  %i.cd = and i32 %i.bv, 16711680
  %.not.i = icmp eq i32 %i.cd, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.f

bb.f:                                             ; preds = %mve_eci_mask.exit.i
  %i.ce = and i32 %i.bv, 983040
  %i.cf = icmp samesign ult i32 %i.ce, 589824
  %i.cg = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.cf, i16 %i.cg, i16 %.0.i34.i ; 2 uses
  %i.ch = and i32 %i.bv, 15728640
  %i.ci = icmp samesign ult i32 %i.ch, 9437184
  %i.cj = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.ci, i16 %i.cj, i16 %spec.select.i
  %i.ck = zext i16 %.1.i to i32
  %i.cl = xor i32 %i.bv, %i.ck                    ; 2 uses
  %i.cm = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.cm, 0
  %i.cn = and i32 %i.cl, -16711681
  %i.co = shl i32 %i.bv, 1                        ; 2 uses
  %i.cp = and i32 %i.co, 917504
  %i.cq = or disjoint i32 %i.cn, %i.cp
  %i.cr = and i32 %i.cl, -15728641
  %i.cs = select i1 %.not32.i, i32 %i.cr, i32 %i.cq
  %i.ct = and i32 %i.co, 14680064
  %i.cu = or disjoint i32 %i.cs, %i.ct
  store i32 %i.cu, ptr %i.bu, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.f
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqrdmlsdhb(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.d ] ; 6 uses
  %.032 = phi i1 [ false, %bb.a ], [ %.1, %bb.d ] ; 2 uses
  %.02630 = phi i16 [ %i.a, %bb.a ], [ %i.ah, %bb.d ] ; 3 uses
  %i.b = and i64 %indvars.iv, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %do_vqdmlsdh_b.exit, label %bb.d

do_vqdmlsdh_b.exit:                               ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.e = load i8, ptr %i.d, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.g = load i8, ptr %i.f, align 1
  %i.h = or disjoint i64 %indvars.iv, 1           ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 %i.h
  %i.l = load i8, ptr %i.k, align 1
  %i.m = sext i8 %i.e to i64
  %i.n = sext i8 %i.g to i64
  %i.o = mul nsw i64 %i.n, %i.m
  %i.p = sext i8 %i.j to i64
  %i.q = sext i8 %i.l to i64
  %i.r = mul nsw i64 %i.q, %i.p
  %i.s = sub nsw i64 %i.o, %i.r                   ; 4 uses
  %i.t = add nsw i64 %i.s, -16320
  %narrow = icmp ult i64 %i.t, -32768
  %i.u = and i16 %.02630, 1
  %.not.i.i = icmp eq i16 %i.u, 0
  br i1 %.not.i.i, label %mergemask_sb.exit, label %bb.c

bb.c:                                             ; preds = %do_vqdmlsdh_b.exit
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.w = icmp sgt i64 %i.s, 16319
  %i.x = shl nsw i64 %i.s, 1
  %i.y = add nsw i64 %i.x, 128
  %i.z = lshr i64 %i.y, 8
  %i.aa = icmp slt i64 %i.s, -16448
  %i.ab = trunc i64 %i.z to i8
  %i.ac = select i1 %i.aa, i8 -128, i8 %i.ab
  %i.ad = select i1 %i.w, i8 127, i8 %i.ac
  store i8 %i.ad, ptr %i.v, align 1
  br label %mergemask_sb.exit

mergemask_sb.exit:                                ; preds = %do_vqdmlsdh_b.exit, %bb.c
  %i.ae = trunc i16 %.02630 to i1
  %i.af = select i1 %narrow, i1 %i.ae, i1 false
  %i.ag = or i1 %.032, %i.af
  br label %bb.d

bb.d:                                             ; preds = %mergemask_sb.exit, %bb.b
  %.1 = phi i1 [ %i.ag, %mergemask_sb.exit ], [ %.032, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = lshr i16 %.02630, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.e, label %bb.b, !llvm.loop !32

bb.e:                                             ; preds = %bb.d
  br i1 %.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.ai, align 16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4            ; 5 uses
  %i.al = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.al, align 16         ; 4 uses
  %i.am = and i32 %.val.i, 15
  %.not.i.i27 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i27, label %bb.h, label %mve_eci_mask.exit.i

bb.h:                                             ; preds = %bb.g
  %i.an = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.ao = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.an to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.ao, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.h
  %i.ap = zext nneg i32 %i.an to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.ap
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.aq = icmp eq i32 %.val.i, 80
  %i.ar = select i1 %i.aq, i32 16, i32 0
  store i32 %i.ar, ptr %i.al, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.g
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.g ] ; 3 uses
  %i.as = and i32 %i.ak, 16711680
  %.not.i = icmp eq i32 %i.as, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.j

bb.j:                                             ; preds = %mve_eci_mask.exit.i
  %i.at = and i32 %i.ak, 983040
  %i.au = icmp samesign ult i32 %i.at, 589824
  %i.av = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.au, i16 %i.av, i16 %.0.i34.i ; 2 uses
  %i.aw = and i32 %i.ak, 15728640
  %i.ax = icmp samesign ult i32 %i.aw, 9437184
  %i.ay = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.ax, i16 %i.ay, i16 %spec.select.i
  %i.az = zext i16 %.1.i to i32
  %i.ba = xor i32 %i.ak, %i.az                    ; 2 uses
  %i.bb = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.bb, 0
  %i.bc = and i32 %i.ba, -16711681
  %i.bd = shl i32 %i.ak, 1                        ; 2 uses
  %i.be = and i32 %i.bd, 917504
  %i.bf = or disjoint i32 %i.bc, %i.be
  %i.bg = and i32 %i.ba, -15728641
  %i.bh = select i1 %.not32.i, i32 %i.bg, i32 %i.bf
  %i.bi = and i32 %i.bd, 14680064
  %i.bj = or disjoint i32 %i.bh, %i.bi
  store i32 %i.bj, ptr %i.aj, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.j
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqrdmlsdhh(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 5 uses
  %i.b = load i16, ptr %2, align 2
  %i.c = load i16, ptr %3, align 2
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.e = load i16, ptr %i.d, align 2
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.g = load i16, ptr %i.f, align 2
  %i.h = sext i16 %i.b to i64
  %i.i = sext i16 %i.c to i64
  %i.j = mul nsw i64 %i.i, %i.h
  %i.k = sext i16 %i.e to i64
  %i.l = sext i16 %i.g to i64
  %i.m = mul nsw i64 %i.l, %i.k
  %i.n = sub nsw i64 %i.j, %i.m                   ; 4 uses
  %i.o = shl nsw i64 %i.n, 1
  %i.p = add nsw i64 %i.o, 32768
  %i.q = icmp sgt i64 %i.n, 1073725439
  %i.r = icmp slt i64 %i.n, -1073758208
  %i.s = add nsw i64 %i.n, -1073725440
  %narrow = icmp ult i64 %i.s, -2147483648
  %i.t = lshr i64 %i.p, 16
  %i.u = trunc i64 %i.t to i16
  %i.v = select i1 %i.r, i16 -32768, i16 %i.u
  %i.w = select i1 %i.q, i16 32767, i16 %i.v
  %i.x = and i16 %i.a, 255
  %i.y = zext nneg i16 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = trunc i64 %i.aa to i16                  ; 2 uses
  %i.ac = load i16, ptr %1, align 2
  %i.ad = xor i16 %i.ab, -1
  %i.ae = and i16 %i.ac, %i.ad
  %i.af = and i16 %i.w, %i.ab
  %i.ag = or i16 %i.af, %i.ae
  store i16 %i.ag, ptr %1, align 2
  %i.ah = trunc i16 %i.a to i1
  %i.ai = and i1 %narrow, %i.ah
  %i.aj = lshr i16 %i.a, 4                        ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.al = load i16, ptr %i.ak, align 2
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.an = load i16, ptr %i.am, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ap = load i16, ptr %i.ao, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.ar = load i16, ptr %i.aq, align 2
  %i.as = sext i16 %i.al to i64
  %i.at = sext i16 %i.an to i64
  %i.au = mul nsw i64 %i.at, %i.as
  %i.av = sext i16 %i.ap to i64
  %i.aw = sext i16 %i.ar to i64
  %i.ax = mul nsw i64 %i.aw, %i.av
  %i.ay = sub nsw i64 %i.au, %i.ax                ; 4 uses
  %i.az = shl nsw i64 %i.ay, 1
  %i.ba = add nsw i64 %i.az, 32768
  %i.bb = icmp sgt i64 %i.ay, 1073725439
  %i.bc = icmp slt i64 %i.ay, -1073758208
  %i.bd = add nsw i64 %i.ay, -1073725440
  %narrow.2 = icmp ult i64 %i.bd, -2147483648
  %i.be = lshr i64 %i.ba, 16
  %i.bf = trunc i64 %i.be to i16
  %i.bg = select i1 %i.bc, i16 -32768, i16 %i.bf
  %i.bh = select i1 %i.bb, i16 32767, i16 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.bj = and i16 %i.aj, 255
  %i.bk = zext nneg i16 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = trunc i64 %i.bm to i16                  ; 2 uses
  %i.bo = load i16, ptr %i.bi, align 2
  %i.bp = xor i16 %i.bn, -1
  %i.bq = and i16 %i.bo, %i.bp
  %i.br = and i16 %i.bh, %i.bn
  %i.bs = or i16 %i.br, %i.bq
  store i16 %i.bs, ptr %i.bi, align 2
  %i.bt = trunc i16 %i.aj to i1
  %i.bu = and i1 %narrow.2, %i.bt
  %i.bv = or i1 %i.ai, %i.bu
  %i.bw = lshr i16 %i.a, 8                        ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.by = load i16, ptr %i.bx, align 2
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ca = load i16, ptr %i.bz, align 2
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.cc = load i16, ptr %i.cb, align 2
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.ce = load i16, ptr %i.cd, align 2
  %i.cf = sext i16 %i.by to i64
  %i.cg = sext i16 %i.ca to i64
  %i.ch = mul nsw i64 %i.cg, %i.cf
  %i.ci = sext i16 %i.cc to i64
  %i.cj = sext i16 %i.ce to i64
  %i.ck = mul nsw i64 %i.cj, %i.ci
  %i.cl = sub nsw i64 %i.ch, %i.ck                ; 4 uses
  %i.cm = shl nsw i64 %i.cl, 1
  %i.cn = add nsw i64 %i.cm, 32768
  %i.co = icmp sgt i64 %i.cl, 1073725439
  %i.cp = icmp slt i64 %i.cl, -1073758208
  %i.cq = add nsw i64 %i.cl, -1073725440
  %narrow.4 = icmp ult i64 %i.cq, -2147483648
  %i.cr = lshr i64 %i.cn, 16
  %i.cs = trunc i64 %i.cr to i16
  %i.ct = select i1 %i.cp, i16 -32768, i16 %i.cs
  %i.cu = select i1 %i.co, i16 32767, i16 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cw = zext nneg i16 %i.bw to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.cw
  %i.cy = load i64, ptr %i.cx, align 8
  %i.cz = trunc i64 %i.cy to i16                  ; 2 uses
  %i.da = load i16, ptr %i.cv, align 2
  %i.db = xor i16 %i.cz, -1
  %i.dc = and i16 %i.da, %i.db
  %i.dd = and i16 %i.cu, %i.cz
  %i.de = or i16 %i.dd, %i.dc
  store i16 %i.de, ptr %i.cv, align 2
  %i.df = trunc i16 %i.bw to i1
  %i.dg = and i1 %narrow.4, %i.df
  %i.dh = or i1 %i.bv, %i.dg
  %i.di = lshr i16 %i.a, 12                       ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.dk = load i16, ptr %i.dj, align 2
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.dm = load i16, ptr %i.dl, align 2
end_hunk_21
begin_hunk_22_@helper_mve_vqrdmlsdhw:bb.a
  %i.h = sext i32 %i.b to i64
  %i.i = sext i32 %i.c to i64
  %i.j = mul nsw i64 %i.i, %i.h
  %i.k = sext i32 %i.e to i64
  %i.l = sext i32 %i.g to i64
  %i.m = mul nsw i64 %i.l, %i.k
  %i.n = sub nsw i64 %i.j, %i.m
  %i.o = add nsw i64 %i.n, 1073741824             ; 2 uses
  %i.p = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.o, i64 %i.o) ; 2 uses
  %i.q = extractvalue { i64, i1 } %i.p, 1         ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.p, 0         ; 2 uses
  %i.s = icmp slt i64 %i.r, 0
  %i.t = select i1 %i.s, i32 2147483647, i32 -2147483648
  %i.u = lshr i64 %i.r, 32
  %i.v = trunc nuw i64 %i.u to i32
  %.0.i = select i1 %i.q, i32 %i.t, i32 %i.v
  %i.w = and i16 %i.a, 255
  %i.x = zext nneg i16 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = trunc i64 %i.z to i32                   ; 2 uses
  %i.ab = load i32, ptr %1, align 4
  %i.ac = xor i32 %i.aa, -1
  %i.ad = and i32 %i.ab, %i.ac
  %i.ae = and i32 %.0.i, %i.aa
  %i.af = or i32 %i.ae, %i.ad
  store i32 %i.af, ptr %1, align 4
  %i.ag = trunc i16 %i.a to i1
  %i.ah = and i1 %i.q, %i.ag
  %i.ai = lshr i16 %i.a, 8                        ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.am = load i32, ptr %i.al, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = sext i32 %i.ak to i64
  %i.as = sext i32 %i.am to i64
  %i.at = mul nsw i64 %i.as, %i.ar
  %i.au = sext i32 %i.ao to i64
  %i.av = sext i32 %i.aq to i64
  %i.aw = mul nsw i64 %i.av, %i.au
  %i.ax = sub nsw i64 %i.at, %i.aw
  %i.ay = add nsw i64 %i.ax, 1073741824           ; 2 uses
  %i.az = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ay, i64 %i.ay) ; 2 uses
  %i.ba = extractvalue { i64, i1 } %i.az, 1       ; 2 uses
  %i.bb = extractvalue { i64, i1 } %i.az, 0       ; 2 uses
  %i.bc = icmp slt i64 %i.bb, 0
  %i.bd = select i1 %i.bc, i32 2147483647, i32 -2147483648
  %i.be = lshr i64 %i.bb, 32
  %i.bf = trunc nuw i64 %i.be to i32
  %.0.i.2 = select i1 %i.ba, i32 %i.bd, i32 %i.bf
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bh = zext nneg i16 %i.ai to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = trunc i64 %i.bj to i32                  ; 2 uses
  %i.bl = load i32, ptr %i.bg, align 4
  %i.bm = xor i32 %i.bk, -1
  %i.bn = and i32 %i.bl, %i.bm
  %i.bo = and i32 %.0.i.2, %i.bk
  %i.bp = or i32 %i.bo, %i.bn
  store i32 %i.bp, ptr %i.bg, align 4
  %i.bq = trunc i16 %i.ai to i1
  %i.br = and i1 %i.ba, %i.bq
  %i.bs = or i1 %i.ah, %i.br
  br i1 %i.bs, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.bt, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4            ; 5 uses
  %i.bw = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.bw, align 16         ; 4 uses
  %i.bx = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.bx, 0
  br i1 %.not.i.i, label %bb.d, label %mve_eci_mask.exit.i

bb.d:                                             ; preds = %bb.c
  %i.by = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.bz = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.by to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.bz, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.d
  %i.ca = zext nneg i32 %i.by to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.ca
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.cb = icmp eq i32 %.val.i, 80
  %i.cc = select i1 %i.cb, i32 16, i32 0
  store i32 %i.cc, ptr %i.bw, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.c
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.c ] ; 3 uses
  %i.cd = and i32 %i.bv, 16711680
  %.not.i = icmp eq i32 %i.cd, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.f

bb.f:                                             ; preds = %mve_eci_mask.exit.i
  %i.ce = and i32 %i.bv, 983040
  %i.cf = icmp samesign ult i32 %i.ce, 589824
  %i.cg = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.cf, i16 %i.cg, i16 %.0.i34.i ; 2 uses
  %i.ch = and i32 %i.bv, 15728640
  %i.ci = icmp samesign ult i32 %i.ch, 9437184
  %i.cj = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.ci, i16 %i.cj, i16 %spec.select.i
  %i.ck = zext i16 %.1.i to i32
  %i.cl = xor i32 %i.bv, %i.ck                    ; 2 uses
  %i.cm = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.cm, 0
  %i.cn = and i32 %i.cl, -16711681
  %i.co = shl i32 %i.bv, 1                        ; 2 uses
  %i.cp = and i32 %i.co, 917504
  %i.cq = or disjoint i32 %i.cn, %i.cp
  %i.cr = and i32 %i.cl, -15728641
  %i.cs = select i1 %.not32.i, i32 %i.cr, i32 %i.cq
  %i.ct = and i32 %i.co, 14680064
  %i.cu = or disjoint i32 %i.cs, %i.ct
  store i32 %i.cu, ptr %i.bu, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.f
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqrdmlsdhxb(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.d ] ; 5 uses
  %.032 = phi i1 [ false, %bb.a ], [ %.1, %bb.d ] ; 2 uses
  %.02630 = phi i16 [ %i.a, %bb.a ], [ %i.af, %bb.d ] ; 3 uses
  %i.b = and i64 %indvars.iv, 1
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.d, label %do_vqdmlsdh_b.exit

do_vqdmlsdh_b.exit:                               ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv ; 2 uses
  %i.d = load i8, ptr %i.c, align 1
  %i.e = getelementptr i8, ptr %3, i64 %indvars.iv ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -1
  %i.g = load i8, ptr %i.f, align 1
  %i.h = getelementptr i8, ptr %i.c, i64 -1
  %i.i = load i8, ptr %i.h, align 1
  %i.j = load i8, ptr %i.e, align 1
  %i.k = sext i8 %i.d to i64
  %i.l = sext i8 %i.g to i64
  %i.m = mul nsw i64 %i.l, %i.k
  %i.n = sext i8 %i.i to i64
  %i.o = sext i8 %i.j to i64
  %i.p = mul nsw i64 %i.o, %i.n
  %i.q = sub nsw i64 %i.m, %i.p                   ; 4 uses
  %i.r = add nsw i64 %i.q, -16320
  %narrow = icmp ult i64 %i.r, -32768
  %i.s = and i16 %.02630, 1
  %.not.i.i = icmp eq i16 %i.s, 0
  br i1 %.not.i.i, label %mergemask_sb.exit, label %bb.c

bb.c:                                             ; preds = %do_vqdmlsdh_b.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.u = icmp sgt i64 %i.q, 16319
  %i.v = shl nsw i64 %i.q, 1
  %i.w = add nsw i64 %i.v, 128
  %i.x = lshr i64 %i.w, 8
  %i.y = icmp slt i64 %i.q, -16448
  %i.z = trunc i64 %i.x to i8
  %i.aa = select i1 %i.y, i8 -128, i8 %i.z
  %i.ab = select i1 %i.u, i8 127, i8 %i.aa
  store i8 %i.ab, ptr %i.t, align 1
  br label %mergemask_sb.exit

mergemask_sb.exit:                                ; preds = %do_vqdmlsdh_b.exit, %bb.c
  %i.ac = trunc i16 %.02630 to i1
  %i.ad = select i1 %narrow, i1 %i.ac, i1 false
  %i.ae = or i1 %.032, %i.ad
  br label %bb.d

bb.d:                                             ; preds = %mergemask_sb.exit, %bb.b
  %.1 = phi i1 [ %i.ae, %mergemask_sb.exit ], [ %.032, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.af = lshr i16 %.02630, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.e, label %bb.b, !llvm.loop !33

bb.e:                                             ; preds = %bb.d
  br i1 %.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.ag, align 16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4            ; 5 uses
  %i.aj = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.aj, align 16         ; 4 uses
  %i.ak = and i32 %.val.i, 15
  %.not.i.i27 = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i27, label %bb.h, label %mve_eci_mask.exit.i

bb.h:                                             ; preds = %bb.g
  %i.al = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.am = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.al to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.am, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.h
  %i.an = zext nneg i32 %i.al to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.an
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.ao = icmp eq i32 %.val.i, 80
  %i.ap = select i1 %i.ao, i32 16, i32 0
  store i32 %i.ap, ptr %i.aj, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.g
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.g ] ; 3 uses
  %i.aq = and i32 %i.ai, 16711680
  %.not.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.j

bb.j:                                             ; preds = %mve_eci_mask.exit.i
  %i.ar = and i32 %i.ai, 983040
  %i.as = icmp samesign ult i32 %i.ar, 589824
  %i.at = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.as, i16 %i.at, i16 %.0.i34.i ; 2 uses
  %i.au = and i32 %i.ai, 15728640
  %i.av = icmp samesign ult i32 %i.au, 9437184
  %i.aw = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.av, i16 %i.aw, i16 %spec.select.i
  %i.ax = zext i16 %.1.i to i32
  %i.ay = xor i32 %i.ai, %i.ax                    ; 2 uses
  %i.az = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.az, 0
  %i.ba = and i32 %i.ay, -16711681
  %i.bb = shl i32 %i.ai, 1                        ; 2 uses
  %i.bc = and i32 %i.bb, 917504
  %i.bd = or disjoint i32 %i.ba, %i.bc
  %i.be = and i32 %i.ay, -15728641
  %i.bf = select i1 %.not32.i, i32 %i.be, i32 %i.bd
  %i.bg = and i32 %i.bb, 14680064
  %i.bh = or disjoint i32 %i.bf, %i.bg
  store i32 %i.bh, ptr %i.ah, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.j
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqrdmlsdhxh(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 4 uses
  %i.b = lshr i16 %i.a, 2                         ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.d = load i16, ptr %i.c, align 2
  %i.e = getelementptr i8, ptr %3, i64 2
  %i.f = load i16, ptr %3, align 2
  %i.g = load i16, ptr %2, align 2
  %i.h = load i16, ptr %i.e, align 2
  %i.i = sext i16 %i.d to i64
  %i.j = sext i16 %i.f to i64
  %i.k = mul nsw i64 %i.j, %i.i
  %i.l = sext i16 %i.g to i64
  %i.m = sext i16 %i.h to i64
  %i.n = mul nsw i64 %i.m, %i.l
  %i.o = sub nsw i64 %i.k, %i.n                   ; 4 uses
  %i.p = shl nsw i64 %i.o, 1
  %i.q = add nsw i64 %i.p, 32768
  %i.r = icmp sgt i64 %i.o, 1073725439
  %i.s = icmp slt i64 %i.o, -1073758208
  %i.t = add nsw i64 %i.o, -1073725440
  %narrow.1 = icmp ult i64 %i.t, -2147483648
  %i.u = lshr i64 %i.q, 16
  %i.v = trunc i64 %i.u to i16
  %i.w = select i1 %i.s, i16 -32768, i16 %i.v
  %i.x = select i1 %i.r, i16 32767, i16 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.z = and i16 %i.b, 255
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = trunc i64 %i.ac to i16                  ; 2 uses
  %i.ae = load i16, ptr %i.y, align 2
  %i.af = xor i16 %i.ad, -1
  %i.ag = and i16 %i.ae, %i.af
  %i.ah = and i16 %i.x, %i.ad
  %i.ai = or i16 %i.ah, %i.ag
  store i16 %i.ai, ptr %i.y, align 2
  %i.aj = trunc i16 %i.b to i1
  %i.ak = and i1 %narrow.1, %i.aj
  %i.al = lshr i16 %i.a, 6                        ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.an = load i16, ptr %i.am, align 2
  %i.ao = getelementptr i8, ptr %3, i64 6
  %i.ap = getelementptr i8, ptr %3, i64 4
  %i.aq = load i16, ptr %i.ap, align 2
  %i.ar = getelementptr i8, ptr %2, i64 4
  %i.as = load i16, ptr %i.ar, align 2
  %i.at = load i16, ptr %i.ao, align 2
  %i.au = sext i16 %i.an to i64
  %i.av = sext i16 %i.aq to i64
  %i.aw = mul nsw i64 %i.av, %i.au
  %i.ax = sext i16 %i.as to i64
  %i.ay = sext i16 %i.at to i64
  %i.az = mul nsw i64 %i.ay, %i.ax
  %i.ba = sub nsw i64 %i.aw, %i.az                ; 4 uses
  %i.bb = shl nsw i64 %i.ba, 1
  %i.bc = add nsw i64 %i.bb, 32768
  %i.bd = icmp sgt i64 %i.ba, 1073725439
  %i.be = icmp slt i64 %i.ba, -1073758208
  %i.bf = add nsw i64 %i.ba, -1073725440
  %narrow.3 = icmp ult i64 %i.bf, -2147483648
  %i.bg = lshr i64 %i.bc, 16
  %i.bh = trunc i64 %i.bg to i16
  %i.bi = select i1 %i.be, i16 -32768, i16 %i.bh
  %i.bj = select i1 %i.bd, i16 32767, i16 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.bl = and i16 %i.al, 255
  %i.bm = zext nneg i16 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = trunc i64 %i.bo to i16                  ; 2 uses
  %i.bq = load i16, ptr %i.bk, align 2
  %i.br = xor i16 %i.bp, -1
  %i.bs = and i16 %i.bq, %i.br
  %i.bt = and i16 %i.bj, %i.bp
  %i.bu = or i16 %i.bt, %i.bs
  store i16 %i.bu, ptr %i.bk, align 2
  %i.bv = trunc i16 %i.al to i1
  %i.bw = and i1 %narrow.3, %i.bv
  %i.bx = or i1 %i.ak, %i.bw
  %i.by = lshr i16 %i.a, 10                       ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ca = load i16, ptr %i.bz, align 2
  %i.cb = getelementptr i8, ptr %3, i64 10
  %i.cc = getelementptr i8, ptr %3, i64 8
  %i.cd = load i16, ptr %i.cc, align 2
  %i.ce = getelementptr i8, ptr %2, i64 8
  %i.cf = load i16, ptr %i.ce, align 2
  %i.cg = load i16, ptr %i.cb, align 2
  %i.ch = sext i16 %i.ca to i64
  %i.ci = sext i16 %i.cd to i64
  %i.cj = mul nsw i64 %i.ci, %i.ch
  %i.ck = sext i16 %i.cf to i64
  %i.cl = sext i16 %i.cg to i64
  %i.cm = mul nsw i64 %i.cl, %i.ck
  %i.cn = sub nsw i64 %i.cj, %i.cm                ; 4 uses
  %i.co = shl nsw i64 %i.cn, 1
  %i.cp = add nsw i64 %i.co, 32768
  %i.cq = icmp sgt i64 %i.cn, 1073725439
  %i.cr = icmp slt i64 %i.cn, -1073758208
  %i.cs = add nsw i64 %i.cn, -1073725440
  %narrow.5 = icmp ult i64 %i.cs, -2147483648
  %i.ct = lshr i64 %i.cp, 16
  %i.cu = trunc i64 %i.ct to i16
  %i.cv = select i1 %i.cr, i16 -32768, i16 %i.cu
  %i.cw = select i1 %i.cq, i16 32767, i16 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.cy = zext nneg i16 %i.by to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.cy
  %i.da = load i64, ptr %i.cz, align 8
  %i.db = trunc i64 %i.da to i16                  ; 2 uses
  %i.dc = load i16, ptr %i.cx, align 2
  %i.dd = xor i16 %i.db, -1
  %i.de = and i16 %i.dc, %i.dd
  %i.df = and i16 %i.cw, %i.db
  %i.dg = or i16 %i.df, %i.de
  store i16 %i.dg, ptr %i.cx, align 2
  %i.dh = trunc i16 %i.by to i1
  %i.di = and i1 %narrow.5, %i.dh
  %i.dj = or i1 %i.bx, %i.di
  %i.dk = lshr i16 %i.a, 14                       ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.dm = load i16, ptr %i.dl, align 2
end_hunk_22
begin_hunk_23_@helper_mve_vhsubu_scalarh:bb.a
  %i.ey = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.ex, i16 %i.ey, i16 %spec.select.i
  %i.ez = zext i16 %.1.i to i32
  %i.fa = xor i32 %i.ek, %i.ez                    ; 2 uses
  %i.fb = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.fb, 0
  %i.fc = and i32 %i.fa, -16711681
  %i.fd = shl i32 %i.ek, 1                        ; 2 uses
  %i.fe = and i32 %i.fd, 917504
  %i.ff = or disjoint i32 %i.fc, %i.fe
  %i.fg = and i32 %i.fa, -15728641
  %i.fh = select i1 %.not32.i, i32 %i.fg, i32 %i.ff
  %i.fi = and i32 %i.fd, 14680064
  %i.fj = or disjoint i32 %i.fh, %i.fi
  store i32 %i.fj, ptr %i.ej, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.d
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vhsubu_scalarw(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 4 uses
  %i.b = zext i32 %3 to i64                       ; 4 uses
  %i.c = load i32, ptr %2, align 4
  %i.d = zext i32 %i.c to i64
  %i.e = sub nsw i64 %i.d, %i.b
  %i.f = lshr i64 %i.e, 1
  %i.g = and i16 %i.a, 255
  %i.h = zext nneg i16 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = trunc i64 %i.j to i32
  %i.l = load i32, ptr %1, align 4
  %i.m = xor i32 %i.k, -1
  %i.n = and i32 %i.l, %i.m
  %i.o = and i64 %i.f, %i.j
  %i.p = trunc i64 %i.o to i32
  %i.q = or i32 %i.n, %i.p
  store i32 %i.q, ptr %1, align 4
  %i.r = lshr i16 %i.a, 4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.u = load i32, ptr %i.t, align 4
  %i.v = zext i32 %i.u to i64
  %i.w = sub nsw i64 %i.v, %i.b
  %i.x = lshr i64 %i.w, 1
  %i.y = and i16 %i.r, 255
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = load i32, ptr %i.s, align 4
  %i.ae = xor i32 %i.ac, -1
  %i.af = and i32 %i.ad, %i.ae
  %i.ag = and i64 %i.x, %i.ab
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = or i32 %i.af, %i.ah
  store i32 %i.ai, ptr %i.s, align 4
  %i.aj = lshr i16 %i.a, 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.am = load i32, ptr %i.al, align 4
  %i.an = zext i32 %i.am to i64
  %i.ao = sub nsw i64 %i.an, %i.b
  %i.ap = lshr i64 %i.ao, 1
  %i.aq = zext nneg i16 %i.aj to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8            ; 2 uses
  %i.at = trunc i64 %i.as to i32
  %i.au = load i32, ptr %i.ak, align 4
  %i.av = xor i32 %i.at, -1
  %i.aw = and i32 %i.au, %i.av
  %i.ax = and i64 %i.ap, %i.as
  %i.ay = trunc i64 %i.ax to i32
  %i.az = or i32 %i.aw, %i.ay
  store i32 %i.az, ptr %i.ak, align 4
  %i.ba = lshr i16 %i.a, 12
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = zext i32 %i.bd to i64
  %i.bf = sub nsw i64 %i.be, %i.b
  %i.bg = lshr i64 %i.bf, 1
  %i.bh = zext nneg i16 %i.ba to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8            ; 2 uses
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = load i32, ptr %i.bb, align 4
  %i.bm = xor i32 %i.bk, -1
  %i.bn = and i32 %i.bl, %i.bm
  %i.bo = and i64 %i.bg, %i.bj
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = or i32 %i.bn, %i.bp
  store i32 %i.bq, ptr %i.bb, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4            ; 5 uses
  %i.bt = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.bt, align 16         ; 4 uses
  %i.bu = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i, label %bb.b, label %mve_eci_mask.exit.i

bb.b:                                             ; preds = %bb.a
  %i.bv = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.bw = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.bv to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.bw, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.b
  %i.bx = zext nneg i32 %i.bv to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.bx
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.by = icmp eq i32 %.val.i, 80
  %i.bz = select i1 %i.by, i32 16, i32 0
  store i32 %i.bz, ptr %i.bt, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.a
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.a ] ; 3 uses
  %i.ca = and i32 %i.bs, 16711680
  %.not.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.d

bb.d:                                             ; preds = %mve_eci_mask.exit.i
  %i.cb = and i32 %i.bs, 983040
  %i.cc = icmp samesign ult i32 %i.cb, 589824
  %i.cd = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.cc, i16 %i.cd, i16 %.0.i34.i ; 2 uses
  %i.ce = and i32 %i.bs, 15728640
  %i.cf = icmp samesign ult i32 %i.ce, 9437184
  %i.cg = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.cf, i16 %i.cg, i16 %spec.select.i
  %i.ch = zext i16 %.1.i to i32
  %i.ci = xor i32 %i.bs, %i.ch                    ; 2 uses
  %i.cj = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.cj, 0
  %i.ck = and i32 %i.ci, -16711681
  %i.cl = shl i32 %i.bs, 1                        ; 2 uses
  %i.cm = and i32 %i.cl, 917504
  %i.cn = or disjoint i32 %i.ck, %i.cm
  %i.co = and i32 %i.ci, -15728641
  %i.cp = select i1 %.not32.i, i32 %i.co, i32 %i.cn
  %i.cq = and i32 %i.cl, 14680064
  %i.cr = or disjoint i32 %i.cp, %i.cq
  store i32 %i.cr, ptr %i.br, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.d
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqadds_scalarb(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = zext i32 %3 to i64
  %i.b = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0)
  %sext = shl i64 %i.a, 56
  %i.c = ashr exact i64 %sext, 56
  br label %do_sat_bhw.exit

do_sat_bhw.exit:                                  ; preds = %bb.a, %mergemask_sb.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %mergemask_sb.exit ] ; 3 uses
  %.025 = phi i1 [ false, %bb.a ], [ %i.o, %mergemask_sb.exit ]
  %.01923 = phi i16 [ %i.b, %bb.a ], [ %i.p, %mergemask_sb.exit ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.e = load i8, ptr %i.d, align 1
  %i.f = sext i8 %i.e to i64
  %i.g = add nsw i64 %i.c, %i.f                   ; 2 uses
  %i.h = add nsw i64 %i.g, -128
  %narrow = icmp ult i64 %i.h, -256
  %i.i = and i16 %.01923, 1                       ; 2 uses
  %.not.i.i = icmp eq i16 %i.i, 0
  br i1 %.not.i.i, label %mergemask_sb.exit, label %bb.b

bb.b:                                             ; preds = %do_sat_bhw.exit
  %spec.select22 = tail call i64 @llvm.smax.i64(i64 %i.g, i64 -128)
  %.0.in.i = tail call i64 @llvm.smin.i64(i64 %spec.select22, i64 127)
  %i.j = trunc nsw i64 %.0.in.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %i.j, ptr %i.k, align 1
  br label %mergemask_sb.exit

mergemask_sb.exit:                                ; preds = %do_sat_bhw.exit, %bb.b
  %i.l = select i1 %narrow, i16 %i.i, i16 0
  %i.m = zext i1 %.025 to i16
  %i.n = or i16 %i.l, %i.m
  %i.o = icmp ne i16 %i.n, 0                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = lshr i16 %.01923, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.c, label %do_sat_bhw.exit, !llvm.loop !34

bb.c:                                             ; preds = %mergemask_sb.exit
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.q, align 16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4              ; 5 uses
  %i.t = getelementptr i8, ptr %0, i64 560        ; 2 uses
  %.val.i = load i32, ptr %i.t, align 16          ; 4 uses
  %i.u = and i32 %.val.i, 15
  %.not.i.i20 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i20, label %bb.f, label %mve_eci_mask.exit.i

bb.f:                                             ; preds = %bb.e
  %i.v = lshr exact i32 %.val.i, 4                ; 2 uses
  %i.w = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.v to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.w, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.f
  %i.x = zext nneg i32 %i.v to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.x
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.y = icmp eq i32 %.val.i, 80
  %i.z = select i1 %i.y, i32 16, i32 0
  store i32 %i.z, ptr %i.t, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.e
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.e ] ; 3 uses
  %i.aa = and i32 %i.s, 16711680
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.h

bb.h:                                             ; preds = %mve_eci_mask.exit.i
  %i.ab = and i32 %i.s, 983040
  %i.ac = icmp samesign ult i32 %i.ab, 589824
  %i.ad = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.ac, i16 %i.ad, i16 %.0.i34.i ; 2 uses
  %i.ae = and i32 %i.s, 15728640
  %i.af = icmp samesign ult i32 %i.ae, 9437184
  %i.ag = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.af, i16 %i.ag, i16 %spec.select.i
  %i.ah = zext i16 %.1.i to i32
  %i.ai = xor i32 %i.s, %i.ah                     ; 2 uses
  %i.aj = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.aj, 0
  %i.ak = and i32 %i.ai, -16711681
  %i.al = shl i32 %i.s, 1                         ; 2 uses
  %i.am = and i32 %i.al, 917504
  %i.an = or disjoint i32 %i.ak, %i.am
  %i.ao = and i32 %i.ai, -15728641
  %i.ap = select i1 %.not32.i, i32 %i.ao, i32 %i.an
  %i.aq = and i32 %i.al, 14680064
  %i.ar = or disjoint i32 %i.ap, %i.aq
  store i32 %i.ar, ptr %i.r, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.h
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqadds_scalarh(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #0 {
do_sat_bhw.exit:
  %i.a = zext i32 %3 to i64
  %i.b = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 9 uses
  %sext = shl i64 %i.a, 48
  %i.c = ashr exact i64 %sext, 48                 ; 8 uses
  %i.d = load i16, ptr %2, align 2
  %i.e = sext i16 %i.d to i64
  %i.f = add nsw i64 %i.c, %i.e                   ; 2 uses
  %spec.select21 = tail call i64 @llvm.smax.i64(i64 %i.f, i64 -32768)
  %i.g = add nsw i64 %i.f, -32768
  %narrow = icmp ult i64 %i.g, -65536
  %.0.in.i = tail call i64 @llvm.smin.i64(i64 %spec.select21, i64 32767)
  %i.h = and i16 %i.b, 255
  %i.i = zext nneg i16 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = trunc i64 %i.k to i16
  %i.m = load i16, ptr %1, align 2
  %i.n = xor i16 %i.l, -1
  %i.o = and i16 %i.m, %i.n
  %i.p = and i64 %.0.in.i, %i.k
  %i.q = trunc i64 %i.p to i16
  %i.r = or i16 %i.o, %i.q
  store i16 %i.r, ptr %1, align 2
  %i.s = trunc i16 %i.b to i1
  %i.t = and i1 %narrow, %i.s
  %i.u = lshr i16 %i.b, 2                         ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.x = load i16, ptr %i.w, align 2
  %i.y = sext i16 %i.x to i64
  %i.z = add nsw i64 %i.c, %i.y                   ; 2 uses
  %spec.select21.1 = tail call i64 @llvm.smax.i64(i64 %i.z, i64 -32768)
  %i.aa = add nsw i64 %i.z, -32768
  %narrow.1 = icmp ult i64 %i.aa, -65536
  %.0.in.i.1 = tail call i64 @llvm.smin.i64(i64 %spec.select21.1, i64 32767)
  %i.ab = and i16 %i.u, 255
  %i.ac = zext nneg i16 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.af = trunc i64 %i.ae to i16
  %i.ag = load i16, ptr %i.v, align 2
  %i.ah = xor i16 %i.af, -1
  %i.ai = and i16 %i.ag, %i.ah
  %i.aj = and i64 %.0.in.i.1, %i.ae
  %i.ak = trunc i64 %i.aj to i16
  %i.al = or i16 %i.ai, %i.ak
  store i16 %i.al, ptr %i.v, align 2
  %i.am = and i16 %i.u, 1
  %i.an = select i1 %narrow.1, i16 %i.am, i16 0
  %i.ao = zext i1 %i.t to i16
  %i.ap = or i16 %i.an, %i.ao
  %i.aq = lshr i16 %i.b, 4                        ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.at = load i16, ptr %i.as, align 2
  %i.au = sext i16 %i.at to i64
  %i.av = add nsw i64 %i.c, %i.au                 ; 2 uses
  %spec.select21.2 = tail call i64 @llvm.smax.i64(i64 %i.av, i64 -32768)
  %i.aw = add nsw i64 %i.av, -32768
  %narrow.2 = icmp ult i64 %i.aw, -65536
  %.0.in.i.2 = tail call i64 @llvm.smin.i64(i64 %spec.select21.2, i64 32767)
  %i.ax = and i16 %i.aq, 255
  %i.ay = zext nneg i16 %i.ax to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8            ; 2 uses
  %i.bb = trunc i64 %i.ba to i16
  %i.bc = load i16, ptr %i.ar, align 2
  %i.bd = xor i16 %i.bb, -1
  %i.be = and i16 %i.bc, %i.bd
  %i.bf = and i64 %.0.in.i.2, %i.ba
  %i.bg = trunc i64 %i.bf to i16
  %i.bh = or i16 %i.be, %i.bg
  store i16 %i.bh, ptr %i.ar, align 2
  %i.bi = and i16 %i.aq, 1
  %i.bj = select i1 %narrow.2, i16 %i.bi, i16 0
  %i.bk = or i16 %i.bj, %i.ap
  %i.bl = lshr i16 %i.b, 6                        ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.bo = load i16, ptr %i.bn, align 2
  %i.bp = sext i16 %i.bo to i64
  %i.bq = add nsw i64 %i.c, %i.bp                 ; 2 uses
  %spec.select21.3 = tail call i64 @llvm.smax.i64(i64 %i.bq, i64 -32768)
  %i.br = add nsw i64 %i.bq, -32768
  %narrow.3 = icmp ult i64 %i.br, -65536
  %.0.in.i.3 = tail call i64 @llvm.smin.i64(i64 %spec.select21.3, i64 32767)
  %i.bs = and i16 %i.bl, 255
  %i.bt = zext nneg i16 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8            ; 2 uses
  %i.bw = trunc i64 %i.bv to i16
  %i.bx = load i16, ptr %i.bm, align 2
  %i.by = xor i16 %i.bw, -1
  %i.bz = and i16 %i.bx, %i.by
  %i.ca = and i64 %.0.in.i.3, %i.bv
  %i.cb = trunc i64 %i.ca to i16
  %i.cc = or i16 %i.bz, %i.cb
  store i16 %i.cc, ptr %i.bm, align 2
  %i.cd = and i16 %i.bl, 1
  %i.ce = select i1 %narrow.3, i16 %i.cd, i16 0
  %i.cf = or i16 %i.ce, %i.bk
  %i.cg = lshr i16 %i.b, 8                        ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cj = load i16, ptr %i.ci, align 2
  %i.ck = sext i16 %i.cj to i64
  %i.cl = add nsw i64 %i.c, %i.ck                 ; 2 uses
  %spec.select21.4 = tail call i64 @llvm.smax.i64(i64 %i.cl, i64 -32768)
  %i.cm = add nsw i64 %i.cl, -32768
  %narrow.4 = icmp ult i64 %i.cm, -65536
  %.0.in.i.4 = tail call i64 @llvm.smin.i64(i64 %spec.select21.4, i64 32767)
  %i.cn = zext nneg i16 %i.cg to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.cn
  %i.cp = load i64, ptr %i.co, align 8            ; 2 uses
  %i.cq = trunc i64 %i.cp to i16
  %i.cr = load i16, ptr %i.ch, align 2
  %i.cs = xor i16 %i.cq, -1
  %i.ct = and i16 %i.cr, %i.cs
  %i.cu = and i64 %.0.in.i.4, %i.cp
  %i.cv = trunc i64 %i.cu to i16
  %i.cw = or i16 %i.ct, %i.cv
  store i16 %i.cw, ptr %i.ch, align 2
  %i.cx = and i16 %i.cg, 1
end_hunk_23
begin_hunk_24_@helper_mve_vqaddu_scalarw:do_sat_bhw.exit
  %i.b = zext i32 %3 to i64                       ; 4 uses
  %i.c = load i32, ptr %2, align 4
  %i.d = zext i32 %i.c to i64
  %i.e = add nuw nsw i64 %i.d, %i.b               ; 2 uses
  %i.f = icmp samesign ugt i64 %i.e, 4294967295
  %spec.select21 = tail call i64 @llvm.umin.i64(i64 %i.e, i64 4294967295)
  %i.g = and i16 %i.a, 255
  %i.h = zext nneg i16 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = trunc i64 %i.j to i32
  %i.l = load i32, ptr %1, align 4
  %i.m = xor i32 %i.k, -1
  %i.n = and i32 %i.l, %i.m
  %i.o = and i64 %spec.select21, %i.j
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = or i32 %i.n, %i.p
  store i32 %i.q, ptr %1, align 4
  %i.r = trunc i16 %i.a to i1
  %i.s = and i1 %i.f, %i.r
  %i.t = lshr i16 %i.a, 4                         ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.w = load i32, ptr %i.v, align 4
  %i.x = zext i32 %i.w to i64
  %i.y = add nuw nsw i64 %i.x, %i.b               ; 2 uses
  %i.z = icmp samesign ugt i64 %i.y, 4294967295
  %spec.select21.1 = tail call i64 @llvm.umin.i64(i64 %i.y, i64 4294967295)
  %i.aa = and i16 %i.t, 255
  %i.ab = zext nneg i16 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = trunc i64 %i.ad to i32
  %i.af = load i32, ptr %i.u, align 4
  %i.ag = xor i32 %i.ae, -1
  %i.ah = and i32 %i.af, %i.ag
  %i.ai = and i64 %spec.select21.1, %i.ad
  %i.aj = trunc nuw i64 %i.ai to i32
  %i.ak = or i32 %i.ah, %i.aj
  store i32 %i.ak, ptr %i.u, align 4
  %i.al = and i16 %i.t, 1
  %i.am = select i1 %i.z, i16 %i.al, i16 0
  %i.an = zext i1 %i.s to i16
  %i.ao = or i16 %i.am, %i.an
  %i.ap = lshr i16 %i.a, 8                        ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = zext i32 %i.as to i64
  %i.au = add nuw nsw i64 %i.at, %i.b             ; 2 uses
  %i.av = icmp samesign ugt i64 %i.au, 4294967295
  %spec.select21.2 = tail call i64 @llvm.umin.i64(i64 %i.au, i64 4294967295)
  %i.aw = zext nneg i16 %i.ap to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8            ; 2 uses
  %i.az = trunc i64 %i.ay to i32
  %i.ba = load i32, ptr %i.aq, align 4
  %i.bb = xor i32 %i.az, -1
  %i.bc = and i32 %i.ba, %i.bb
  %i.bd = and i64 %spec.select21.2, %i.ay
  %i.be = trunc nuw i64 %i.bd to i32
  %i.bf = or i32 %i.bc, %i.be
  store i32 %i.bf, ptr %i.aq, align 4
  %i.bg = and i16 %i.ap, 1
  %i.bh = select i1 %i.av, i16 %i.bg, i16 0
  %i.bi = or i16 %i.bh, %i.ao
  %i.bj = lshr i16 %i.a, 12                       ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = zext i32 %i.bm to i64
  %i.bo = add nuw nsw i64 %i.bn, %i.b             ; 2 uses
  %i.bp = icmp samesign ugt i64 %i.bo, 4294967295
  %spec.select21.3 = tail call i64 @llvm.umin.i64(i64 %i.bo, i64 4294967295)
  %i.bq = zext nneg i16 %i.bj to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bq
  %i.bs = load i64, ptr %i.br, align 8            ; 2 uses
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = load i32, ptr %i.bk, align 4
  %i.bv = xor i32 %i.bt, -1
  %i.bw = and i32 %i.bu, %i.bv
  %i.bx = and i64 %spec.select21.3, %i.bs
  %i.by = trunc nuw i64 %i.bx to i32
  %i.bz = or i32 %i.bw, %i.by
  store i32 %i.bz, ptr %i.bk, align 4
  %i.ca = and i16 %i.bj, 1
  %i.cb = select i1 %i.bp, i16 %i.ca, i16 0
  %i.cc = or i16 %i.cb, %i.bi
  %.not = icmp eq i16 %i.cc, 0
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %do_sat_bhw.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.cd, align 16
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_sat_bhw.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4            ; 5 uses
  %i.cg = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.cg, align 16         ; 4 uses
  %i.ch = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.ch, 0
  br i1 %.not.i.i, label %bb.c, label %mve_eci_mask.exit.i

bb.c:                                             ; preds = %bb.b
  %i.ci = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.cj = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.ci to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.cj, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.c
  %i.ck = zext nneg i32 %i.ci to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.ck
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.cl = icmp eq i32 %.val.i, 80
  %i.cm = select i1 %i.cl, i32 16, i32 0
  store i32 %i.cm, ptr %i.cg, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.b
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.b ] ; 3 uses
  %i.cn = and i32 %i.cf, 16711680
  %.not.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.e

bb.e:                                             ; preds = %mve_eci_mask.exit.i
  %i.co = and i32 %i.cf, 983040
  %i.cp = icmp samesign ult i32 %i.co, 589824
  %i.cq = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.cp, i16 %i.cq, i16 %.0.i34.i ; 2 uses
  %i.cr = and i32 %i.cf, 15728640
  %i.cs = icmp samesign ult i32 %i.cr, 9437184
  %i.ct = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.cs, i16 %i.ct, i16 %spec.select.i
  %i.cu = zext i16 %.1.i to i32
  %i.cv = xor i32 %i.cf, %i.cu                    ; 2 uses
  %i.cw = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.cw, 0
  %i.cx = and i32 %i.cv, -16711681
  %i.cy = shl i32 %i.cf, 1                        ; 2 uses
  %i.cz = and i32 %i.cy, 917504
  %i.da = or disjoint i32 %i.cx, %i.cz
  %i.db = and i32 %i.cv, -15728641
  %i.dc = select i1 %.not32.i, i32 %i.db, i32 %i.da
  %i.dd = and i32 %i.cy, 14680064
  %i.de = or disjoint i32 %i.dc, %i.dd
  store i32 %i.de, ptr %i.ce, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqsubs_scalarb(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = zext i32 %3 to i64
  %i.b = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0)
  %sext = shl i64 %i.a, 56
  %i.c = ashr exact i64 %sext, 56
  br label %do_sat_bhw.exit

do_sat_bhw.exit:                                  ; preds = %bb.a, %mergemask_sb.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %mergemask_sb.exit ] ; 3 uses
  %.025 = phi i1 [ false, %bb.a ], [ %i.o, %mergemask_sb.exit ]
  %.01923 = phi i16 [ %i.b, %bb.a ], [ %i.p, %mergemask_sb.exit ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.e = load i8, ptr %i.d, align 1
  %i.f = sext i8 %i.e to i64
  %i.g = sub nsw i64 %i.f, %i.c                   ; 2 uses
  %i.h = add nsw i64 %i.g, -128
  %narrow = icmp ult i64 %i.h, -256
  %i.i = and i16 %.01923, 1                       ; 2 uses
  %.not.i.i = icmp eq i16 %i.i, 0
  br i1 %.not.i.i, label %mergemask_sb.exit, label %bb.b

bb.b:                                             ; preds = %do_sat_bhw.exit
  %spec.select22 = tail call i64 @llvm.smax.i64(i64 %i.g, i64 -128)
  %.0.in.i = tail call i64 @llvm.smin.i64(i64 %spec.select22, i64 127)
  %i.j = trunc nsw i64 %.0.in.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %i.j, ptr %i.k, align 1
  br label %mergemask_sb.exit

mergemask_sb.exit:                                ; preds = %do_sat_bhw.exit, %bb.b
  %i.l = select i1 %narrow, i16 %i.i, i16 0
  %i.m = zext i1 %.025 to i16
  %i.n = or i16 %i.l, %i.m
  %i.o = icmp ne i16 %i.n, 0                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = lshr i16 %.01923, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.c, label %do_sat_bhw.exit, !llvm.loop !35

bb.c:                                             ; preds = %mergemask_sb.exit
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.q, align 16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4              ; 5 uses
  %i.t = getelementptr i8, ptr %0, i64 560        ; 2 uses
  %.val.i = load i32, ptr %i.t, align 16          ; 4 uses
  %i.u = and i32 %.val.i, 15
  %.not.i.i20 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i20, label %bb.f, label %mve_eci_mask.exit.i

bb.f:                                             ; preds = %bb.e
  %i.v = lshr exact i32 %.val.i, 4                ; 2 uses
  %i.w = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.v to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.w, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.f
  %i.x = zext nneg i32 %i.v to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.x
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.y = icmp eq i32 %.val.i, 80
  %i.z = select i1 %i.y, i32 16, i32 0
  store i32 %i.z, ptr %i.t, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.e
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.e ] ; 3 uses
  %i.aa = and i32 %i.s, 16711680
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.h

bb.h:                                             ; preds = %mve_eci_mask.exit.i
  %i.ab = and i32 %i.s, 983040
  %i.ac = icmp samesign ult i32 %i.ab, 589824
  %i.ad = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.ac, i16 %i.ad, i16 %.0.i34.i ; 2 uses
  %i.ae = and i32 %i.s, 15728640
  %i.af = icmp samesign ult i32 %i.ae, 9437184
  %i.ag = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.af, i16 %i.ag, i16 %spec.select.i
  %i.ah = zext i16 %.1.i to i32
  %i.ai = xor i32 %i.s, %i.ah                     ; 2 uses
  %i.aj = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.aj, 0
  %i.ak = and i32 %i.ai, -16711681
  %i.al = shl i32 %i.s, 1                         ; 2 uses
  %i.am = and i32 %i.al, 917504
  %i.an = or disjoint i32 %i.ak, %i.am
  %i.ao = and i32 %i.ai, -15728641
  %i.ap = select i1 %.not32.i, i32 %i.ao, i32 %i.an
  %i.aq = and i32 %i.al, 14680064
  %i.ar = or disjoint i32 %i.ap, %i.aq
  store i32 %i.ar, ptr %i.r, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.h
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqsubs_scalarh(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #0 {
do_sat_bhw.exit:
  %i.a = zext i32 %3 to i64
  %i.b = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 9 uses
  %sext = shl i64 %i.a, 48
  %i.c = ashr exact i64 %sext, 48                 ; 8 uses
  %i.d = load i16, ptr %2, align 2
  %i.e = sext i16 %i.d to i64
  %i.f = sub nsw i64 %i.e, %i.c                   ; 2 uses
  %spec.select21 = tail call i64 @llvm.smax.i64(i64 %i.f, i64 -32768)
  %i.g = add nsw i64 %i.f, -32768
  %narrow = icmp ult i64 %i.g, -65536
  %.0.in.i = tail call i64 @llvm.smin.i64(i64 %spec.select21, i64 32767)
  %i.h = and i16 %i.b, 255
  %i.i = zext nneg i16 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = trunc i64 %i.k to i16
  %i.m = load i16, ptr %1, align 2
  %i.n = xor i16 %i.l, -1
  %i.o = and i16 %i.m, %i.n
  %i.p = and i64 %.0.in.i, %i.k
  %i.q = trunc i64 %i.p to i16
  %i.r = or i16 %i.o, %i.q
  store i16 %i.r, ptr %1, align 2
  %i.s = trunc i16 %i.b to i1
  %i.t = and i1 %narrow, %i.s
  %i.u = lshr i16 %i.b, 2                         ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.x = load i16, ptr %i.w, align 2
  %i.y = sext i16 %i.x to i64
  %i.z = sub nsw i64 %i.y, %i.c                   ; 2 uses
  %spec.select21.1 = tail call i64 @llvm.smax.i64(i64 %i.z, i64 -32768)
  %i.aa = add nsw i64 %i.z, -32768
  %narrow.1 = icmp ult i64 %i.aa, -65536
  %.0.in.i.1 = tail call i64 @llvm.smin.i64(i64 %spec.select21.1, i64 32767)
  %i.ab = and i16 %i.u, 255
  %i.ac = zext nneg i16 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.af = trunc i64 %i.ae to i16
  %i.ag = load i16, ptr %i.v, align 2
  %i.ah = xor i16 %i.af, -1
  %i.ai = and i16 %i.ag, %i.ah
  %i.aj = and i64 %.0.in.i.1, %i.ae
  %i.ak = trunc i64 %i.aj to i16
  %i.al = or i16 %i.ai, %i.ak
  store i16 %i.al, ptr %i.v, align 2
  %i.am = and i16 %i.u, 1
  %i.an = select i1 %narrow.1, i16 %i.am, i16 0
  %i.ao = zext i1 %i.t to i16
  %i.ap = or i16 %i.an, %i.ao
  %i.aq = lshr i16 %i.b, 4                        ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.at = load i16, ptr %i.as, align 2
  %i.au = sext i16 %i.at to i64
  %i.av = sub nsw i64 %i.au, %i.c                 ; 2 uses
  %spec.select21.2 = tail call i64 @llvm.smax.i64(i64 %i.av, i64 -32768)
  %i.aw = add nsw i64 %i.av, -32768
  %narrow.2 = icmp ult i64 %i.aw, -65536
  %.0.in.i.2 = tail call i64 @llvm.smin.i64(i64 %spec.select21.2, i64 32767)
  %i.ax = and i16 %i.aq, 255
  %i.ay = zext nneg i16 %i.ax to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8            ; 2 uses
  %i.bb = trunc i64 %i.ba to i16
  %i.bc = load i16, ptr %i.ar, align 2
  %i.bd = xor i16 %i.bb, -1
  %i.be = and i16 %i.bc, %i.bd
  %i.bf = and i64 %.0.in.i.2, %i.ba
  %i.bg = trunc i64 %i.bf to i16
  %i.bh = or i16 %i.be, %i.bg
  store i16 %i.bh, ptr %i.ar, align 2
  %i.bi = and i16 %i.aq, 1
  %i.bj = select i1 %narrow.2, i16 %i.bi, i16 0
  %i.bk = or i16 %i.bj, %i.ap
  %i.bl = lshr i16 %i.b, 6                        ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.bo = load i16, ptr %i.bn, align 2
  %i.bp = sext i16 %i.bo to i64
  %i.bq = sub nsw i64 %i.bp, %i.c                 ; 2 uses
  %spec.select21.3 = tail call i64 @llvm.smax.i64(i64 %i.bq, i64 -32768)
  %i.br = add nsw i64 %i.bq, -32768
  %narrow.3 = icmp ult i64 %i.br, -65536
  %.0.in.i.3 = tail call i64 @llvm.smin.i64(i64 %spec.select21.3, i64 32767)
  %i.bs = and i16 %i.bl, 255
  %i.bt = zext nneg i16 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8            ; 2 uses
  %i.bw = trunc i64 %i.bv to i16
  %i.bx = load i16, ptr %i.bm, align 2
  %i.by = xor i16 %i.bw, -1
  %i.bz = and i16 %i.bx, %i.by
  %i.ca = and i64 %.0.in.i.3, %i.bv
  %i.cb = trunc i64 %i.ca to i16
  %i.cc = or i16 %i.bz, %i.cb
  store i16 %i.cc, ptr %i.bm, align 2
  %i.cd = and i16 %i.bl, 1
  %i.ce = select i1 %narrow.3, i16 %i.cd, i16 0
  %i.cf = or i16 %i.ce, %i.bk
  %i.cg = lshr i16 %i.b, 8                        ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cj = load i16, ptr %i.ci, align 2
  %i.ck = sext i16 %i.cj to i64
  %i.cl = sub nsw i64 %i.ck, %i.c                 ; 2 uses
  %spec.select21.4 = tail call i64 @llvm.smax.i64(i64 %i.cl, i64 -32768)
  %i.cm = add nsw i64 %i.cl, -32768
  %narrow.4 = icmp ult i64 %i.cm, -65536
  %.0.in.i.4 = tail call i64 @llvm.smin.i64(i64 %spec.select21.4, i64 32767)
  %i.cn = zext nneg i16 %i.cg to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.cn
  %i.cp = load i64, ptr %i.co, align 8            ; 2 uses
  %i.cq = trunc i64 %i.cp to i16
  %i.cr = load i16, ptr %i.ch, align 2
  %i.cs = xor i16 %i.cq, -1
  %i.ct = and i16 %i.cr, %i.cs
  %i.cu = and i64 %.0.in.i.4, %i.cp
  %i.cv = trunc i64 %i.cu to i16
  %i.cw = or i16 %i.ct, %i.cv
  store i16 %i.cw, ptr %i.ch, align 2
  %i.cx = and i16 %i.cg, 1
end_hunk_24
begin_hunk_25_@helper_mve_vqdmulh_scalarw:do_sat_bhw.exit
  %i.f = ashr i64 %i.e, 31                        ; 2 uses
  %i.g = icmp sgt i64 %i.f, 2147483647
  %spec.select21 = tail call i64 @llvm.smin.i64(i64 %i.f, i64 2147483647)
  %i.h = and i16 %i.a, 255
  %i.i = zext nneg i16 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = trunc i64 %i.k to i32
  %i.m = load i32, ptr %1, align 4
  %i.n = xor i32 %i.l, -1
  %i.o = and i32 %i.m, %i.n
  %i.p = and i64 %spec.select21, %i.k
  %i.q = trunc i64 %i.p to i32
  %i.r = or i32 %i.o, %i.q
  store i32 %i.r, ptr %1, align 4
  %i.s = trunc i16 %i.a to i1
  %i.t = and i1 %i.g, %i.s
  %i.u = lshr i16 %i.a, 4                         ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.x = load i32, ptr %i.w, align 4
  %i.y = sext i32 %i.x to i64
  %i.z = mul nsw i64 %i.y, %i.b
  %i.aa = ashr i64 %i.z, 31                       ; 2 uses
  %i.ab = icmp sgt i64 %i.aa, 2147483647
  %spec.select21.1 = tail call i64 @llvm.smin.i64(i64 %i.aa, i64 2147483647)
  %i.ac = and i16 %i.u, 255
  %i.ad = zext nneg i16 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8            ; 2 uses
  %i.ag = trunc i64 %i.af to i32
  %i.ah = load i32, ptr %i.v, align 4
  %i.ai = xor i32 %i.ag, -1
  %i.aj = and i32 %i.ah, %i.ai
  %i.ak = and i64 %spec.select21.1, %i.af
  %i.al = trunc i64 %i.ak to i32
  %i.am = or i32 %i.aj, %i.al
  store i32 %i.am, ptr %i.v, align 4
  %i.an = and i16 %i.u, 1
  %i.ao = select i1 %i.ab, i16 %i.an, i16 0
  %i.ap = zext i1 %i.t to i16
  %i.aq = or i16 %i.ao, %i.ap
  %i.ar = lshr i16 %i.a, 8                        ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load i32, ptr %i.at, align 4
  %i.av = sext i32 %i.au to i64
  %i.aw = mul nsw i64 %i.av, %i.b
  %i.ax = ashr i64 %i.aw, 31                      ; 2 uses
  %i.ay = icmp sgt i64 %i.ax, 2147483647
  %spec.select21.2 = tail call i64 @llvm.smin.i64(i64 %i.ax, i64 2147483647)
  %i.az = zext nneg i16 %i.ar to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8            ; 2 uses
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = load i32, ptr %i.as, align 4
  %i.be = xor i32 %i.bc, -1
  %i.bf = and i32 %i.bd, %i.be
  %i.bg = and i64 %spec.select21.2, %i.bb
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = or i32 %i.bf, %i.bh
  store i32 %i.bi, ptr %i.as, align 4
  %i.bj = and i16 %i.ar, 1
  %i.bk = select i1 %i.ay, i16 %i.bj, i16 0
  %i.bl = or i16 %i.bk, %i.aq
  %i.bm = lshr i16 %i.a, 12                       ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = sext i32 %i.bp to i64
  %i.br = mul nsw i64 %i.bq, %i.b
  %i.bs = ashr i64 %i.br, 31                      ; 2 uses
  %i.bt = icmp sgt i64 %i.bs, 2147483647
  %spec.select21.3 = tail call i64 @llvm.smin.i64(i64 %i.bs, i64 2147483647)
  %i.bu = zext nneg i16 %i.bm to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8            ; 2 uses
  %i.bx = trunc i64 %i.bw to i32
  %i.by = load i32, ptr %i.bn, align 4
  %i.bz = xor i32 %i.bx, -1
  %i.ca = and i32 %i.by, %i.bz
  %i.cb = and i64 %spec.select21.3, %i.bw
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = or i32 %i.ca, %i.cc
  store i32 %i.cd, ptr %i.bn, align 4
  %i.ce = and i16 %i.bm, 1
  %i.cf = select i1 %i.bt, i16 %i.ce, i16 0
  %i.cg = or i16 %i.cf, %i.bl
  %.not = icmp eq i16 %i.cg, 0
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %do_sat_bhw.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.ch, align 16
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_sat_bhw.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4            ; 5 uses
  %i.ck = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.ck, align 16         ; 4 uses
  %i.cl = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.cl, 0
  br i1 %.not.i.i, label %bb.c, label %mve_eci_mask.exit.i

bb.c:                                             ; preds = %bb.b
  %i.cm = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.cn = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.cm to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.cn, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.c
  %i.co = zext nneg i32 %i.cm to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.co
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.cp = icmp eq i32 %.val.i, 80
  %i.cq = select i1 %i.cp, i32 16, i32 0
  store i32 %i.cq, ptr %i.ck, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.b
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.b ] ; 3 uses
  %i.cr = and i32 %i.cj, 16711680
  %.not.i = icmp eq i32 %i.cr, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.e

bb.e:                                             ; preds = %mve_eci_mask.exit.i
  %i.cs = and i32 %i.cj, 983040
  %i.ct = icmp samesign ult i32 %i.cs, 589824
  %i.cu = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.ct, i16 %i.cu, i16 %.0.i34.i ; 2 uses
  %i.cv = and i32 %i.cj, 15728640
  %i.cw = icmp samesign ult i32 %i.cv, 9437184
  %i.cx = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.cw, i16 %i.cx, i16 %spec.select.i
  %i.cy = zext i16 %.1.i to i32
  %i.cz = xor i32 %i.cj, %i.cy                    ; 2 uses
  %i.da = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.da, 0
  %i.db = and i32 %i.cz, -16711681
  %i.dc = shl i32 %i.cj, 1                        ; 2 uses
  %i.dd = and i32 %i.dc, 917504
  %i.de = or disjoint i32 %i.db, %i.dd
  %i.df = and i32 %i.cz, -15728641
  %i.dg = select i1 %.not32.i, i32 %i.df, i32 %i.de
  %i.dh = and i32 %i.dc, 14680064
  %i.di = or disjoint i32 %i.dg, %i.dh
  store i32 %i.di, ptr %i.ci, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqrdmulh_scalarb(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = zext i32 %3 to i64
  %i.b = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0)
  %sext = shl i64 %i.a, 56
  %i.c = ashr exact i64 %sext, 56
  br label %do_sat_bhw.exit

do_sat_bhw.exit:                                  ; preds = %bb.a, %mergemask_sb.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %mergemask_sb.exit ] ; 3 uses
  %.025 = phi i1 [ false, %bb.a ], [ %i.q, %mergemask_sb.exit ]
  %.01923 = phi i16 [ %i.b, %bb.a ], [ %i.r, %mergemask_sb.exit ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.e = load i8, ptr %i.d, align 1
  %i.f = sext i8 %i.e to i64
  %i.g = mul nsw i64 %i.c, %i.f
  %i.h = add nsw i64 %i.g, 64
  %i.i = ashr i64 %i.h, 7                         ; 2 uses
  %i.j = icmp sgt i64 %i.i, 127
  %i.k = and i16 %.01923, 1                       ; 2 uses
  %.not.i.i = icmp eq i16 %i.k, 0
  br i1 %.not.i.i, label %mergemask_sb.exit, label %bb.b

bb.b:                                             ; preds = %do_sat_bhw.exit
  %spec.select22 = tail call i64 @llvm.smin.i64(i64 %i.i, i64 127)
  %i.l = trunc nsw i64 %spec.select22 to i8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %i.l, ptr %i.m, align 1
  br label %mergemask_sb.exit

mergemask_sb.exit:                                ; preds = %do_sat_bhw.exit, %bb.b
  %i.n = select i1 %i.j, i16 %i.k, i16 0
  %i.o = zext i1 %.025 to i16
  %i.p = or i16 %i.n, %i.o
  %i.q = icmp ne i16 %i.p, 0                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = lshr i16 %.01923, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.c, label %do_sat_bhw.exit, !llvm.loop !36

bb.c:                                             ; preds = %mergemask_sb.exit
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.s, align 16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4              ; 5 uses
  %i.v = getelementptr i8, ptr %0, i64 560        ; 2 uses
  %.val.i = load i32, ptr %i.v, align 16          ; 4 uses
  %i.w = and i32 %.val.i, 15
  %.not.i.i20 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i20, label %bb.f, label %mve_eci_mask.exit.i

bb.f:                                             ; preds = %bb.e
  %i.x = lshr exact i32 %.val.i, 4                ; 2 uses
  %i.y = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.x to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.y, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.f
  %i.z = zext nneg i32 %i.x to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.z
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.aa = icmp eq i32 %.val.i, 80
  %i.ab = select i1 %i.aa, i32 16, i32 0
  store i32 %i.ab, ptr %i.v, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.e
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.e ] ; 3 uses
  %i.ac = and i32 %i.u, 16711680
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.h

bb.h:                                             ; preds = %mve_eci_mask.exit.i
  %i.ad = and i32 %i.u, 983040
  %i.ae = icmp samesign ult i32 %i.ad, 589824
  %i.af = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.ae, i16 %i.af, i16 %.0.i34.i ; 2 uses
  %i.ag = and i32 %i.u, 15728640
  %i.ah = icmp samesign ult i32 %i.ag, 9437184
  %i.ai = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.ah, i16 %i.ai, i16 %spec.select.i
  %i.aj = zext i16 %.1.i to i32
  %i.ak = xor i32 %i.u, %i.aj                     ; 2 uses
  %i.al = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.al, 0
  %i.am = and i32 %i.ak, -16711681
  %i.an = shl i32 %i.u, 1                         ; 2 uses
  %i.ao = and i32 %i.an, 917504
  %i.ap = or disjoint i32 %i.am, %i.ao
  %i.aq = and i32 %i.ak, -15728641
  %i.ar = select i1 %.not32.i, i32 %i.aq, i32 %i.ap
  %i.as = and i32 %i.an, 14680064
  %i.at = or disjoint i32 %i.ar, %i.as
  store i32 %i.at, ptr %i.t, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.h
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqrdmulh_scalarh(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #0 {
do_sat_bhw.exit:
  %i.a = zext i32 %3 to i64
  %i.b = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 9 uses
  %sext = shl i64 %i.a, 48
  %i.c = ashr exact i64 %sext, 48                 ; 8 uses
  %i.d = load i16, ptr %2, align 2
  %i.e = sext i16 %i.d to i64
  %i.f = mul nsw i64 %i.c, %i.e
  %i.g = add nsw i64 %i.f, 16384
  %i.h = ashr i64 %i.g, 15                        ; 2 uses
  %i.i = icmp sgt i64 %i.h, 32767
  %spec.select21 = tail call i64 @llvm.smin.i64(i64 %i.h, i64 32767)
  %i.j = and i16 %i.b, 255
  %i.k = zext nneg i16 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = trunc i64 %i.m to i16
  %i.o = load i16, ptr %1, align 2
  %i.p = xor i16 %i.n, -1
  %i.q = and i16 %i.o, %i.p
  %i.r = and i64 %spec.select21, %i.m
  %i.s = trunc i64 %i.r to i16
  %i.t = or i16 %i.q, %i.s
  store i16 %i.t, ptr %1, align 2
  %i.u = trunc i16 %i.b to i1
  %i.v = and i1 %i.i, %i.u
  %i.w = lshr i16 %i.b, 2                         ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = sext i16 %i.z to i64
  %i.ab = mul nsw i64 %i.c, %i.aa
  %i.ac = add nsw i64 %i.ab, 16384
  %i.ad = ashr i64 %i.ac, 15                      ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, 32767
  %spec.select21.1 = tail call i64 @llvm.smin.i64(i64 %i.ad, i64 32767)
  %i.af = and i16 %i.w, 255
  %i.ag = zext nneg i16 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.aj = trunc i64 %i.ai to i16
  %i.ak = load i16, ptr %i.x, align 2
  %i.al = xor i16 %i.aj, -1
  %i.am = and i16 %i.ak, %i.al
  %i.an = and i64 %spec.select21.1, %i.ai
  %i.ao = trunc i64 %i.an to i16
  %i.ap = or i16 %i.am, %i.ao
  store i16 %i.ap, ptr %i.x, align 2
  %i.aq = and i16 %i.w, 1
  %i.ar = select i1 %i.ae, i16 %i.aq, i16 0
  %i.as = zext i1 %i.v to i16
  %i.at = or i16 %i.ar, %i.as
  %i.au = lshr i16 %i.b, 4                        ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ax = load i16, ptr %i.aw, align 2
  %i.ay = sext i16 %i.ax to i64
  %i.az = mul nsw i64 %i.c, %i.ay
  %i.ba = add nsw i64 %i.az, 16384
  %i.bb = ashr i64 %i.ba, 15                      ; 2 uses
  %i.bc = icmp sgt i64 %i.bb, 32767
  %spec.select21.2 = tail call i64 @llvm.smin.i64(i64 %i.bb, i64 32767)
  %i.bd = and i16 %i.au, 255
  %i.be = zext nneg i16 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8            ; 2 uses
  %i.bh = trunc i64 %i.bg to i16
  %i.bi = load i16, ptr %i.av, align 2
  %i.bj = xor i16 %i.bh, -1
  %i.bk = and i16 %i.bi, %i.bj
  %i.bl = and i64 %spec.select21.2, %i.bg
  %i.bm = trunc i64 %i.bl to i16
  %i.bn = or i16 %i.bk, %i.bm
  store i16 %i.bn, ptr %i.av, align 2
  %i.bo = and i16 %i.au, 1
  %i.bp = select i1 %i.bc, i16 %i.bo, i16 0
  %i.bq = or i16 %i.bp, %i.at
  %i.br = lshr i16 %i.b, 6                        ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.bu = load i16, ptr %i.bt, align 2
  %i.bv = sext i16 %i.bu to i64
  %i.bw = mul nsw i64 %i.c, %i.bv
  %i.bx = add nsw i64 %i.bw, 16384
  %i.by = ashr i64 %i.bx, 15                      ; 2 uses
  %i.bz = icmp sgt i64 %i.by, 32767
  %spec.select21.3 = tail call i64 @llvm.smin.i64(i64 %i.by, i64 32767)
  %i.ca = and i16 %i.br, 255
  %i.cb = zext nneg i16 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8            ; 2 uses
  %i.ce = trunc i64 %i.cd to i16
  %i.cf = load i16, ptr %i.bs, align 2
  %i.cg = xor i16 %i.ce, -1
  %i.ch = and i16 %i.cf, %i.cg
  %i.ci = and i64 %spec.select21.3, %i.cd
  %i.cj = trunc i64 %i.ci to i16
  %i.ck = or i16 %i.ch, %i.cj
  store i16 %i.ck, ptr %i.bs, align 2
  %i.cl = and i16 %i.br, 1
  %i.cm = select i1 %i.bz, i16 %i.cl, i16 0
  %i.cn = or i16 %i.cm, %i.bq
  %i.co = lshr i16 %i.b, 8                        ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cr = load i16, ptr %i.cq, align 2
  %i.cs = sext i16 %i.cr to i64
  %i.ct = mul nsw i64 %i.c, %i.cs
  %i.cu = add nsw i64 %i.ct, 16384
  %i.cv = ashr i64 %i.cu, 15                      ; 2 uses
  %i.cw = icmp sgt i64 %i.cv, 32767
  %spec.select21.4 = tail call i64 @llvm.smin.i64(i64 %i.cv, i64 32767)
  %i.cx = zext nneg i16 %i.co to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.cx
  %i.cz = load i64, ptr %i.cy, align 8            ; 2 uses
  %i.da = trunc i64 %i.cz to i16
  %i.db = load i16, ptr %i.cp, align 2
  %i.dc = xor i16 %i.da, -1
  %i.dd = and i16 %i.db, %i.dc
  %i.de = and i64 %spec.select21.4, %i.cz
  %i.df = trunc i64 %i.de to i16
  %i.dg = or i16 %i.dd, %i.df
  store i16 %i.dg, ptr %i.cp, align 2
  %i.dh = and i16 %i.co, 1
end_hunk_25
begin_hunk_26_@helper_mve_vqrdmulh_scalarw:do_sat_bhw.exit
  %i.dj = and i32 %i.dd, -15728641
  %i.dk = select i1 %.not32.i, i32 %i.dj, i32 %i.di
  %i.dl = and i32 %i.dg, 14680064
  %i.dm = or disjoint i32 %i.dk, %i.dl
  store i32 %i.dm, ptr %i.cm, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vbrsrb(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 17 uses
  %i.b = and i32 %3, 255                          ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = tail call i32 @llvm.usub.sat.i32(i32 8, i32 range(i32 0, 256) %i.b)
  br i1 %i.c, label %do_vbrsrb.exit.us.preheader, label %do_vbrsrb.exit

do_vbrsrb.exit.us.preheader:                      ; preds = %bb.a
  %i.e = and i16 %i.a, 1
  %.not.i.us = icmp eq i16 %i.e, 0
  br i1 %.not.i.us, label %mergemask_ub.exit.us, label %bb.b

bb.b:                                             ; preds = %do_vbrsrb.exit.us.preheader
  store i8 0, ptr %1, align 1
  br label %mergemask_ub.exit.us

mergemask_ub.exit.us:                             ; preds = %bb.b, %do_vbrsrb.exit.us.preheader
  %i.f = and i16 %i.a, 2
  %.not.i.us.1 = icmp eq i16 %i.f, 0
  br i1 %.not.i.us.1, label %mergemask_ub.exit.us.1, label %bb.c

bb.c:                                             ; preds = %mergemask_ub.exit.us
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 0, ptr %i.g, align 1
  br label %mergemask_ub.exit.us.1

mergemask_ub.exit.us.1:                           ; preds = %bb.c, %mergemask_ub.exit.us
  %i.h = and i16 %i.a, 4
  %.not.i.us.2 = icmp eq i16 %i.h, 0
  br i1 %.not.i.us.2, label %mergemask_ub.exit.us.2, label %bb.d

bb.d:                                             ; preds = %mergemask_ub.exit.us.1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 0, ptr %i.i, align 1
  br label %mergemask_ub.exit.us.2

mergemask_ub.exit.us.2:                           ; preds = %bb.d, %mergemask_ub.exit.us.1
  %i.j = and i16 %i.a, 8
  %.not.i.us.3 = icmp eq i16 %i.j, 0
  br i1 %.not.i.us.3, label %mergemask_ub.exit.us.3, label %bb.e

bb.e:                                             ; preds = %mergemask_ub.exit.us.2
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 0, ptr %i.k, align 1
  br label %mergemask_ub.exit.us.3

mergemask_ub.exit.us.3:                           ; preds = %bb.e, %mergemask_ub.exit.us.2
  %i.l = and i16 %i.a, 16
  %.not.i.us.4 = icmp eq i16 %i.l, 0
  br i1 %.not.i.us.4, label %mergemask_ub.exit.us.4, label %bb.f

bb.f:                                             ; preds = %mergemask_ub.exit.us.3
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 0, ptr %i.m, align 1
  br label %mergemask_ub.exit.us.4

mergemask_ub.exit.us.4:                           ; preds = %bb.f, %mergemask_ub.exit.us.3
  %i.n = and i16 %i.a, 32
  %.not.i.us.5 = icmp eq i16 %i.n, 0
  br i1 %.not.i.us.5, label %mergemask_ub.exit.us.5, label %bb.g

bb.g:                                             ; preds = %mergemask_ub.exit.us.4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 0, ptr %i.o, align 1
  br label %mergemask_ub.exit.us.5

mergemask_ub.exit.us.5:                           ; preds = %bb.g, %mergemask_ub.exit.us.4
  %i.p = and i16 %i.a, 64
  %.not.i.us.6 = icmp eq i16 %i.p, 0
  br i1 %.not.i.us.6, label %mergemask_ub.exit.us.6, label %bb.h

bb.h:                                             ; preds = %mergemask_ub.exit.us.5
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 0, ptr %i.q, align 1
  br label %mergemask_ub.exit.us.6

mergemask_ub.exit.us.6:                           ; preds = %bb.h, %mergemask_ub.exit.us.5
  %i.r = and i16 %i.a, 128
  %.not.i.us.7 = icmp eq i16 %i.r, 0
  br i1 %.not.i.us.7, label %mergemask_ub.exit.us.7, label %bb.i

bb.i:                                             ; preds = %mergemask_ub.exit.us.6
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 0, ptr %i.s, align 1
  br label %mergemask_ub.exit.us.7

mergemask_ub.exit.us.7:                           ; preds = %bb.i, %mergemask_ub.exit.us.6
  %i.t = and i16 %i.a, 256
  %.not.i.us.8 = icmp eq i16 %i.t, 0
  br i1 %.not.i.us.8, label %mergemask_ub.exit.us.8, label %bb.j

bb.j:                                             ; preds = %mergemask_ub.exit.us.7
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 0, ptr %i.u, align 1
  br label %mergemask_ub.exit.us.8

mergemask_ub.exit.us.8:                           ; preds = %bb.j, %mergemask_ub.exit.us.7
  %i.v = and i16 %i.a, 512
  %.not.i.us.9 = icmp eq i16 %i.v, 0
  br i1 %.not.i.us.9, label %mergemask_ub.exit.us.9, label %bb.k

bb.k:                                             ; preds = %mergemask_ub.exit.us.8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 0, ptr %i.w, align 1
  br label %mergemask_ub.exit.us.9

mergemask_ub.exit.us.9:                           ; preds = %bb.k, %mergemask_ub.exit.us.8
  %i.x = and i16 %i.a, 1024
  %.not.i.us.10 = icmp eq i16 %i.x, 0
  br i1 %.not.i.us.10, label %mergemask_ub.exit.us.10, label %bb.l

bb.l:                                             ; preds = %mergemask_ub.exit.us.9
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 0, ptr %i.y, align 1
  br label %mergemask_ub.exit.us.10

mergemask_ub.exit.us.10:                          ; preds = %bb.l, %mergemask_ub.exit.us.9
  %i.z = and i16 %i.a, 2048
  %.not.i.us.11 = icmp eq i16 %i.z, 0
  br i1 %.not.i.us.11, label %mergemask_ub.exit.us.11, label %bb.m

bb.m:                                             ; preds = %mergemask_ub.exit.us.10
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i8 0, ptr %i.aa, align 1
  br label %mergemask_ub.exit.us.11

mergemask_ub.exit.us.11:                          ; preds = %bb.m, %mergemask_ub.exit.us.10
  %i.ab = and i16 %i.a, 4096
  %.not.i.us.12 = icmp eq i16 %i.ab, 0
  br i1 %.not.i.us.12, label %mergemask_ub.exit.us.12, label %bb.n

bb.n:                                             ; preds = %mergemask_ub.exit.us.11
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 0, ptr %i.ac, align 1
  br label %mergemask_ub.exit.us.12

mergemask_ub.exit.us.12:                          ; preds = %bb.n, %mergemask_ub.exit.us.11
  %i.ad = and i16 %i.a, 8192
  %.not.i.us.13 = icmp eq i16 %i.ad, 0
  br i1 %.not.i.us.13, label %mergemask_ub.exit.us.13, label %bb.o

bb.o:                                             ; preds = %mergemask_ub.exit.us.12
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 13
  store i8 0, ptr %i.ae, align 1
  br label %mergemask_ub.exit.us.13

mergemask_ub.exit.us.13:                          ; preds = %bb.o, %mergemask_ub.exit.us.12
  %i.af = and i16 %i.a, 16384
  %.not.i.us.14 = icmp eq i16 %i.af, 0
  br i1 %.not.i.us.14, label %mergemask_ub.exit.us.14, label %bb.p

bb.p:                                             ; preds = %mergemask_ub.exit.us.13
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i8 0, ptr %i.ag, align 1
  br label %mergemask_ub.exit.us.14

mergemask_ub.exit.us.14:                          ; preds = %bb.p, %mergemask_ub.exit.us.13
  %.not.i.us.15 = icmp sgt i16 %i.a, -1
  br i1 %.not.i.us.15, label %.split18.us, label %bb.q

bb.q:                                             ; preds = %mergemask_ub.exit.us.14
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 15
  store i8 0, ptr %i.ah, align 1
  br label %.split18.us

do_vbrsrb.exit:                                   ; preds = %bb.a, %mergemask_ub.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %mergemask_ub.exit ], [ 0, %bb.a ] ; 3 uses
  %.01315 = phi i16 [ %i.ap, %mergemask_ub.exit ], [ %i.a, %bb.a ] ; 2 uses
  %i.ai = and i16 %.01315, 1
  %.not.i = icmp eq i16 %i.ai, 0
  br i1 %.not.i, label %mergemask_ub.exit, label %bb.r

bb.r:                                             ; preds = %do_vbrsrb.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = tail call noundef i8 @llvm.bitreverse.i8(i8 %i.ak)
  %i.am = zext i8 %i.al to i32
  %.0.i = lshr i32 %i.am, %i.d
  %i.an = trunc nuw i32 %.0.i to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %i.an, ptr %i.ao, align 1
  br label %mergemask_ub.exit

mergemask_ub.exit:                                ; preds = %do_vbrsrb.exit, %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ap = lshr i16 %.01315, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %.split18.us, label %do_vbrsrb.exit, !llvm.loop !37

.split18.us:                                      ; preds = %mergemask_ub.exit, %mergemask_ub.exit.us.14, %bb.q
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4            ; 5 uses
  %i.as = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.as, align 16         ; 4 uses
  %i.at = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.at, 0
  br i1 %.not.i.i, label %bb.s, label %mve_eci_mask.exit.i

bb.s:                                             ; preds = %.split18.us
  %i.au = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.av = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.au to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.av, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.s
  %i.aw = zext nneg i32 %i.au to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.aw
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.ax = icmp eq i32 %.val.i, 80
  %i.ay = select i1 %i.ax, i32 16, i32 0
  store i32 %i.ay, ptr %i.as, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %.split18.us
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %.split18.us ] ; 3 uses
  %i.az = and i32 %i.ar, 16711680
  %.not.i14 = icmp eq i32 %i.az, 0
  br i1 %.not.i14, label %mve_advance_vpt.exit, label %bb.u

bb.u:                                             ; preds = %mve_eci_mask.exit.i
  %i.ba = and i32 %i.ar, 983040
  %i.bb = icmp samesign ult i32 %i.ba, 589824
  %i.bc = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.bb, i16 %i.bc, i16 %.0.i34.i ; 2 uses
  %i.bd = and i32 %i.ar, 15728640
  %i.be = icmp samesign ult i32 %i.bd, 9437184
  %i.bf = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.be, i16 %i.bf, i16 %spec.select.i
  %i.bg = zext i16 %.1.i to i32
  %i.bh = xor i32 %i.ar, %i.bg                    ; 2 uses
  %i.bi = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.bi, 0
  %i.bj = and i32 %i.bh, -16711681
  %i.bk = shl i32 %i.ar, 1                        ; 2 uses
  %i.bl = and i32 %i.bk, 917504
  %i.bm = or disjoint i32 %i.bj, %i.bl
  %i.bn = and i32 %i.bh, -15728641
  %i.bo = select i1 %.not32.i, i32 %i.bn, i32 %i.bm
  %i.bp = and i32 %i.bk, 14680064
  %i.bq = or disjoint i32 %i.bo, %i.bp
  store i32 %i.bq, ptr %i.aq, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.u
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vbrsrh(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 16 uses
  %i.b = and i32 %3, 255                          ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %do_vbrsrh.exit.us.preheader, label %do_vbrsrh.exit.preheader

do_vbrsrh.exit.preheader:                         ; preds = %bb.a
  %i.d = tail call i32 @llvm.usub.sat.i32(i32 16, i32 %i.b) ; 8 uses
  %i.e = load i16, ptr %2, align 2
  %i.f = tail call noundef i16 @llvm.bitreverse.i16(i16 %i.e)
  %i.g = zext i16 %i.f to i32
  %.0.i = lshr i32 %i.g, %i.d
  %i.h = trunc nuw i32 %.0.i to i16
  %i.i = and i16 %i.a, 255
  %i.j = zext nneg i16 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8
  %i.m = trunc i64 %i.l to i16                    ; 2 uses
  %i.n = load i16, ptr %1, align 2
  %i.o = xor i16 %i.m, -1
  %i.p = and i16 %i.n, %i.o
  %i.q = and i16 %i.m, %i.h
  %i.r = or i16 %i.p, %i.q
  store i16 %i.r, ptr %1, align 2
  %i.s = lshr i16 %i.a, 2
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.v = load i16, ptr %i.u, align 2
  %i.w = tail call noundef i16 @llvm.bitreverse.i16(i16 %i.v)
  %i.x = zext i16 %i.w to i32
  %.0.i.1 = lshr i32 %i.x, %i.d
  %i.y = trunc nuw i32 %.0.i.1 to i16
  %i.z = and i16 %i.s, 255
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = trunc i64 %i.ac to i16                  ; 2 uses
  %i.ae = load i16, ptr %i.t, align 2
  %i.af = xor i16 %i.ad, -1
  %i.ag = and i16 %i.ae, %i.af
  %i.ah = and i16 %i.ad, %i.y
  %i.ai = or i16 %i.ag, %i.ah
  store i16 %i.ai, ptr %i.t, align 2
  %i.aj = lshr i16 %i.a, 4
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.am = load i16, ptr %i.al, align 2
  %i.an = tail call noundef i16 @llvm.bitreverse.i16(i16 %i.am)
  %i.ao = zext i16 %i.an to i32
  %.0.i.2 = lshr i32 %i.ao, %i.d
  %i.ap = trunc nuw i32 %.0.i.2 to i16
  %i.aq = and i16 %i.aj, 255
  %i.ar = zext nneg i16 %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8
  %i.au = trunc i64 %i.at to i16                  ; 2 uses
  %i.av = load i16, ptr %i.ak, align 2
  %i.aw = xor i16 %i.au, -1
  %i.ax = and i16 %i.av, %i.aw
  %i.ay = and i16 %i.au, %i.ap
  %i.az = or i16 %i.ax, %i.ay
  store i16 %i.az, ptr %i.ak, align 2
  %i.ba = lshr i16 %i.a, 6
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.bd = load i16, ptr %i.bc, align 2
  %i.be = tail call noundef i16 @llvm.bitreverse.i16(i16 %i.bd)
  %i.bf = zext i16 %i.be to i32
  %.0.i.3 = lshr i32 %i.bf, %i.d
  %i.bg = trunc nuw i32 %.0.i.3 to i16
  %i.bh = and i16 %i.ba, 255
  %i.bi = zext nneg i16 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = trunc i64 %i.bk to i16                  ; 2 uses
  %i.bm = load i16, ptr %i.bb, align 2
  %i.bn = xor i16 %i.bl, -1
  %i.bo = and i16 %i.bm, %i.bn
  %i.bp = and i16 %i.bl, %i.bg
  %i.bq = or i16 %i.bo, %i.bp
  store i16 %i.bq, ptr %i.bb, align 2
  %i.br = lshr i16 %i.a, 8
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bu = load i16, ptr %i.bt, align 2
  %i.bv = tail call noundef i16 @llvm.bitreverse.i16(i16 %i.bu)
  %i.bw = zext i16 %i.bv to i32
  %.0.i.4 = lshr i32 %i.bw, %i.d
  %i.bx = trunc nuw i32 %.0.i.4 to i16
  %i.by = zext nneg i16 %i.br to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = trunc i64 %i.ca to i16                  ; 2 uses
  %i.cc = load i16, ptr %i.bs, align 2
  %i.cd = xor i16 %i.cb, -1
  %i.ce = and i16 %i.cc, %i.cd
  %i.cf = and i16 %i.cb, %i.bx
  %i.cg = or i16 %i.ce, %i.cf
  store i16 %i.cg, ptr %i.bs, align 2
  %i.ch = lshr i16 %i.a, 10
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ck = load i16, ptr %i.cj, align 2
  %i.cl = tail call noundef i16 @llvm.bitreverse.i16(i16 %i.ck)
  %i.cm = zext i16 %i.cl to i32
  %.0.i.5 = lshr i32 %i.cm, %i.d
  %i.cn = trunc nuw i32 %.0.i.5 to i16
  %i.co = zext nneg i16 %i.ch to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.co
  %i.cq = load i64, ptr %i.cp, align 8
  %i.cr = trunc i64 %i.cq to i16                  ; 2 uses
  %i.cs = load i16, ptr %i.ci, align 2
  %i.ct = xor i16 %i.cr, -1
  %i.cu = and i16 %i.cs, %i.ct
  %i.cv = and i16 %i.cr, %i.cn
  %i.cw = or i16 %i.cu, %i.cv
  store i16 %i.cw, ptr %i.ci, align 2
  %i.cx = lshr i16 %i.a, 12
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.da = load i16, ptr %i.cz, align 2
  %i.db = tail call noundef i16 @llvm.bitreverse.i16(i16 %i.da)
  %i.dc = zext i16 %i.db to i32
  %.0.i.6 = lshr i32 %i.dc, %i.d
  %i.dd = trunc nuw i32 %.0.i.6 to i16
  %i.de = zext nneg i16 %i.cx to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.de
  %i.dg = load i64, ptr %i.df, align 8
  %i.dh = trunc i64 %i.dg to i16                  ; 2 uses
  %i.di = load i16, ptr %i.cy, align 2
  %i.dj = xor i16 %i.dh, -1
  %i.dk = and i16 %i.di, %i.dj
end_hunk_26
begin_hunk_27_@helper_mve_vmlash:bb.a
  %i.fc = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.fb, i16 %i.fc, i16 %.0.i34.i ; 2 uses
  %i.fd = and i32 %i.er, 15728640
  %i.fe = icmp samesign ult i32 %i.fd, 9437184
  %i.ff = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.fe, i16 %i.ff, i16 %spec.select.i
  %i.fg = zext i16 %.1.i to i32
  %i.fh = xor i32 %i.er, %i.fg                    ; 2 uses
  %i.fi = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.fi, 0
  %i.fj = and i32 %i.fh, -16711681
  %i.fk = shl i32 %i.er, 1                        ; 2 uses
  %i.fl = and i32 %i.fk, 917504
  %i.fm = or disjoint i32 %i.fj, %i.fl
  %i.fn = and i32 %i.fh, -15728641
  %i.fo = select i1 %.not32.i, i32 %i.fn, i32 %i.fm
  %i.fp = and i32 %i.fk, 14680064
  %i.fq = or disjoint i32 %i.fo, %i.fp
  store i32 %i.fq, ptr %i.eq, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.d
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vmlasw(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 4 uses
  %i.b = load i32, ptr %2, align 4
  %i.c = load i32, ptr %1, align 4                ; 2 uses
  %i.d = mul i32 %i.c, %i.b
  %i.e = add i32 %i.d, %3
  %i.f = and i16 %i.a, 255
  %i.g = zext nneg i16 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  %i.k = xor i32 %i.j, -1
  %i.l = and i32 %i.c, %i.k
  %i.m = and i32 %i.e, %i.j
  %i.n = or i32 %i.l, %i.m
  store i32 %i.n, ptr %1, align 4
  %i.o = lshr i16 %i.a, 4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.r = load i32, ptr %i.q, align 4
  %i.s = load i32, ptr %i.p, align 4              ; 2 uses
  %i.t = mul i32 %i.s, %i.r
  %i.u = add i32 %i.t, %3
  %i.v = and i16 %i.o, 255
  %i.w = zext nneg i16 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8
  %i.z = trunc i64 %i.y to i32                    ; 2 uses
  %i.aa = xor i32 %i.z, -1
  %i.ab = and i32 %i.s, %i.aa
  %i.ac = and i32 %i.u, %i.z
  %i.ad = or i32 %i.ab, %i.ac
  store i32 %i.ad, ptr %i.p, align 4
  %i.ae = lshr i16 %i.a, 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = load i32, ptr %i.af, align 4            ; 2 uses
  %i.aj = mul i32 %i.ai, %i.ah
  %i.ak = add i32 %i.aj, %3
  %i.al = zext nneg i16 %i.ae to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = trunc i64 %i.an to i32                  ; 2 uses
  %i.ap = xor i32 %i.ao, -1
  %i.aq = and i32 %i.ai, %i.ap
  %i.ar = and i32 %i.ak, %i.ao
  %i.as = or i32 %i.aq, %i.ar
  store i32 %i.as, ptr %i.af, align 4
  %i.at = lshr i16 %i.a, 12
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = load i32, ptr %i.au, align 4            ; 2 uses
  %i.ay = mul i32 %i.ax, %i.aw
  %i.az = add i32 %i.ay, %3
  %i.ba = zext nneg i16 %i.at to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = trunc i64 %i.bc to i32                  ; 2 uses
  %i.be = xor i32 %i.bd, -1
  %i.bf = and i32 %i.ax, %i.be
  %i.bg = and i32 %i.az, %i.bd
  %i.bh = or i32 %i.bf, %i.bg
  store i32 %i.bh, ptr %i.au, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4            ; 5 uses
  %i.bk = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.bk, align 16         ; 4 uses
  %i.bl = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i, label %bb.b, label %mve_eci_mask.exit.i

bb.b:                                             ; preds = %bb.a
  %i.bm = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.bn = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.bm to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.bn, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.b
  %i.bo = zext nneg i32 %i.bm to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.bo
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.bp = icmp eq i32 %.val.i, 80
  %i.bq = select i1 %i.bp, i32 16, i32 0
  store i32 %i.bq, ptr %i.bk, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.a
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.a ] ; 3 uses
  %i.br = and i32 %i.bj, 16711680
  %.not.i = icmp eq i32 %i.br, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.d

bb.d:                                             ; preds = %mve_eci_mask.exit.i
  %i.bs = and i32 %i.bj, 983040
  %i.bt = icmp samesign ult i32 %i.bs, 589824
  %i.bu = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.bt, i16 %i.bu, i16 %.0.i34.i ; 2 uses
  %i.bv = and i32 %i.bj, 15728640
  %i.bw = icmp samesign ult i32 %i.bv, 9437184
  %i.bx = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.bw, i16 %i.bx, i16 %spec.select.i
  %i.by = zext i16 %.1.i to i32
  %i.bz = xor i32 %i.bj, %i.by                    ; 2 uses
  %i.ca = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.ca, 0
  %i.cb = and i32 %i.bz, -16711681
  %i.cc = shl i32 %i.bj, 1                        ; 2 uses
  %i.cd = and i32 %i.cc, 917504
  %i.ce = or disjoint i32 %i.cb, %i.cd
  %i.cf = and i32 %i.bz, -15728641
  %i.cg = select i1 %.not32.i, i32 %i.cf, i32 %i.ce
  %i.ch = and i32 %i.cc, 14680064
  %i.ci = or disjoint i32 %i.cg, %i.ch
  store i32 %i.ci, ptr %i.bi, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.d
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqdmlahb(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = zext i32 %3 to i64
  %i.b = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0)
  %sext = shl i64 %i.a, 56
  %i.c = ashr exact i64 %sext, 55
  br label %do_vqdmlah_b.exit

do_vqdmlah_b.exit:                                ; preds = %bb.a, %mergemask_sb.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %mergemask_sb.exit ] ; 3 uses
  %.027 = phi i1 [ false, %bb.a ], [ %i.t, %mergemask_sb.exit ]
  %.02125 = phi i16 [ %i.b, %bb.a ], [ %i.u, %mergemask_sb.exit ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1
  %i.g = load i8, ptr %i.d, align 1
  %i.h = sext i8 %i.f to i64
  %i.i = mul nsw i64 %i.c, %i.h
  %i.j = sext i8 %i.g to i64
  %i.k = shl nsw i64 %i.j, 8
  %i.l = add nsw i64 %i.k, %i.i                   ; 2 uses
  %i.m = add nsw i64 %i.l, -32768
  %narrow = icmp ult i64 %i.m, -65536
  %i.n = and i16 %.02125, 1                       ; 2 uses
  %.not.i.i = icmp eq i16 %i.n, 0
  br i1 %.not.i.i, label %mergemask_sb.exit, label %bb.b

bb.b:                                             ; preds = %do_vqdmlah_b.exit
  %spec.select24 = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -32768)
  %.0.in.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select24, i64 32767)
  %i.o = lshr i64 %.0.in.i.i, 8
  %i.p = trunc i64 %i.o to i8
  store i8 %i.p, ptr %i.d, align 1
  br label %mergemask_sb.exit

mergemask_sb.exit:                                ; preds = %do_vqdmlah_b.exit, %bb.b
  %i.q = select i1 %narrow, i16 %i.n, i16 0
  %i.r = zext i1 %.027 to i16
  %i.s = or i16 %i.q, %i.r
  %i.t = icmp ne i16 %i.s, 0                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = lshr i16 %.02125, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.c, label %do_vqdmlah_b.exit, !llvm.loop !38

bb.c:                                             ; preds = %mergemask_sb.exit
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.v, align 16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4              ; 5 uses
  %i.y = getelementptr i8, ptr %0, i64 560        ; 2 uses
  %.val.i = load i32, ptr %i.y, align 16          ; 4 uses
  %i.z = and i32 %.val.i, 15
  %.not.i.i22 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i22, label %bb.f, label %mve_eci_mask.exit.i

bb.f:                                             ; preds = %bb.e
  %i.aa = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.ab = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.aa to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.ab, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.f
  %i.ac = zext nneg i32 %i.aa to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.ac
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.ad = icmp eq i32 %.val.i, 80
  %i.ae = select i1 %i.ad, i32 16, i32 0
  store i32 %i.ae, ptr %i.y, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.e
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.e ] ; 3 uses
  %i.af = and i32 %i.x, 16711680
  %.not.i = icmp eq i32 %i.af, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.h

bb.h:                                             ; preds = %mve_eci_mask.exit.i
  %i.ag = and i32 %i.x, 983040
  %i.ah = icmp samesign ult i32 %i.ag, 589824
  %i.ai = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.ah, i16 %i.ai, i16 %.0.i34.i ; 2 uses
  %i.aj = and i32 %i.x, 15728640
  %i.ak = icmp samesign ult i32 %i.aj, 9437184
  %i.al = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.ak, i16 %i.al, i16 %spec.select.i
  %i.am = zext i16 %.1.i to i32
  %i.an = xor i32 %i.x, %i.am                     ; 2 uses
  %i.ao = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.ao, 0
  %i.ap = and i32 %i.an, -16711681
  %i.aq = shl i32 %i.x, 1                         ; 2 uses
  %i.ar = and i32 %i.aq, 917504
  %i.as = or disjoint i32 %i.ap, %i.ar
  %i.at = and i32 %i.an, -15728641
  %i.au = select i1 %.not32.i, i32 %i.at, i32 %i.as
  %i.av = and i32 %i.aq, 14680064
  %i.aw = or disjoint i32 %i.au, %i.av
  store i32 %i.aw, ptr %i.w, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.h
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqdmlahh(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #0 {
do_vqdmlah_h.exit:
  %i.a = zext i32 %3 to i64
  %i.b = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 9 uses
  %sext = shl i64 %i.a, 48
  %i.c = ashr exact i64 %sext, 47                 ; 8 uses
  %i.d = load i16, ptr %2, align 2
  %i.e = load i16, ptr %1, align 2                ; 2 uses
  %i.f = sext i16 %i.d to i64
  %i.g = mul nsw i64 %i.c, %i.f
  %i.h = sext i16 %i.e to i64
  %i.i = shl nsw i64 %i.h, 16
  %i.j = add nsw i64 %i.i, %i.g                   ; 2 uses
  %spec.select23 = tail call i64 @llvm.smax.i64(i64 %i.j, i64 -2147483648)
  %i.k = add nsw i64 %i.j, -2147483648
  %narrow = icmp ult i64 %i.k, -4294967296
  %.0.in.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select23, i64 2147483647)
  %i.l = lshr i64 %.0.in.i.i, 16
  %i.m = and i16 %i.b, 255
  %i.n = zext nneg i16 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.n
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = trunc i64 %i.p to i16
  %i.r = xor i16 %i.q, -1
  %i.s = and i16 %i.e, %i.r
  %i.t = and i64 %i.l, %i.p
  %i.u = trunc i64 %i.t to i16
  %i.v = or i16 %i.s, %i.u
  store i16 %i.v, ptr %1, align 2
  %i.w = trunc i16 %i.b to i1
  %i.x = and i1 %narrow, %i.w
  %i.y = lshr i16 %i.b, 2                         ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ab = load i16, ptr %i.aa, align 2
  %i.ac = load i16, ptr %i.z, align 2             ; 2 uses
  %i.ad = sext i16 %i.ab to i64
  %i.ae = mul nsw i64 %i.c, %i.ad
  %i.af = sext i16 %i.ac to i64
  %i.ag = shl nsw i64 %i.af, 16
  %i.ah = add nsw i64 %i.ag, %i.ae                ; 2 uses
  %spec.select23.1 = tail call i64 @llvm.smax.i64(i64 %i.ah, i64 -2147483648)
  %i.ai = add nsw i64 %i.ah, -2147483648
  %narrow.1 = icmp ult i64 %i.ai, -4294967296
  %.0.in.i.i.1 = tail call i64 @llvm.smin.i64(i64 %spec.select23.1, i64 2147483647)
  %i.aj = lshr i64 %.0.in.i.i.1, 16
  %i.ak = and i16 %i.y, 255
  %i.al = zext nneg i16 %i.ak to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %i.ao = trunc i64 %i.an to i16
  %i.ap = xor i16 %i.ao, -1
  %i.aq = and i16 %i.ac, %i.ap
  %i.ar = and i64 %i.aj, %i.an
  %i.as = trunc i64 %i.ar to i16
  %i.at = or i16 %i.aq, %i.as
  store i16 %i.at, ptr %i.z, align 2
  %i.au = and i16 %i.y, 1
  %i.av = select i1 %narrow.1, i16 %i.au, i16 0
  %i.aw = zext i1 %i.x to i16
  %i.ax = or i16 %i.av, %i.aw
  %i.ay = lshr i16 %i.b, 4                        ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bb = load i16, ptr %i.ba, align 2
  %i.bc = load i16, ptr %i.az, align 2            ; 2 uses
  %i.bd = sext i16 %i.bb to i64
  %i.be = mul nsw i64 %i.c, %i.bd
  %i.bf = sext i16 %i.bc to i64
  %i.bg = shl nsw i64 %i.bf, 16
  %i.bh = add nsw i64 %i.bg, %i.be                ; 2 uses
  %spec.select23.2 = tail call i64 @llvm.smax.i64(i64 %i.bh, i64 -2147483648)
  %i.bi = add nsw i64 %i.bh, -2147483648
  %narrow.2 = icmp ult i64 %i.bi, -4294967296
  %.0.in.i.i.2 = tail call i64 @llvm.smin.i64(i64 %spec.select23.2, i64 2147483647)
  %i.bj = lshr i64 %.0.in.i.i.2, 16
  %i.bk = and i16 %i.ay, 255
  %i.bl = zext nneg i16 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8            ; 2 uses
  %i.bo = trunc i64 %i.bn to i16
  %i.bp = xor i16 %i.bo, -1
  %i.bq = and i16 %i.bc, %i.bp
  %i.br = and i64 %i.bj, %i.bn
  %i.bs = trunc i64 %i.br to i16
  %i.bt = or i16 %i.bq, %i.bs
  store i16 %i.bt, ptr %i.az, align 2
  %i.bu = and i16 %i.ay, 1
  %i.bv = select i1 %narrow.2, i16 %i.bu, i16 0
  %i.bw = or i16 %i.bv, %i.ax
  %i.bx = lshr i16 %i.b, 6                        ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ca = load i16, ptr %i.bz, align 2
  %i.cb = load i16, ptr %i.by, align 2            ; 2 uses
  %i.cc = sext i16 %i.ca to i64
  %i.cd = mul nsw i64 %i.c, %i.cc
  %i.ce = sext i16 %i.cb to i64
  %i.cf = shl nsw i64 %i.ce, 16
  %i.cg = add nsw i64 %i.cf, %i.cd                ; 2 uses
  %spec.select23.3 = tail call i64 @llvm.smax.i64(i64 %i.cg, i64 -2147483648)
  %i.ch = add nsw i64 %i.cg, -2147483648
  %narrow.3 = icmp ult i64 %i.ch, -4294967296
  %.0.in.i.i.3 = tail call i64 @llvm.smin.i64(i64 %spec.select23.3, i64 2147483647)
  %i.ci = lshr i64 %.0.in.i.i.3, 16
  %i.cj = and i16 %i.bx, 255
  %i.ck = zext nneg i16 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.ck
  %i.cm = load i64, ptr %i.cl, align 8            ; 2 uses
  %i.cn = trunc i64 %i.cm to i16
  %i.co = xor i16 %i.cn, -1
  %i.cp = and i16 %i.cb, %i.co
  %i.cq = and i64 %i.ci, %i.cm
  %i.cr = trunc i64 %i.cq to i16
  %i.cs = or i16 %i.cp, %i.cr
  store i16 %i.cs, ptr %i.by, align 2
  %i.ct = and i16 %i.bx, 1
  %i.cu = select i1 %narrow.3, i16 %i.ct, i16 0
  %i.cv = or i16 %i.cu, %i.bw
  %i.cw = lshr i16 %i.b, 8                        ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cz = load i16, ptr %i.cy, align 2
  %i.da = load i16, ptr %i.cx, align 2            ; 2 uses
  %i.db = sext i16 %i.cz to i64
end_hunk_27
begin_hunk_28_@helper_mve_vqdmlahw:do_vqdmlah_w.exit
  %i.am = extractvalue { i64, i1 } %i.al, 1       ; 2 uses
  %i.an = extractvalue { i64, i1 } %i.al, 0       ; 2 uses
  %i.ao = icmp slt i64 %i.an, 0
  %i.ap = select i1 %i.ao, i32 2147483647, i32 -2147483648
  %i.aq = lshr i64 %i.an, 32
  %i.ar = trunc nuw i64 %i.aq to i32
  %.0.i.1 = select i1 %i.am, i32 %i.ap, i32 %i.ar
  %i.as = and i16 %i.ab, 255
  %i.at = zext nneg i16 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = trunc i64 %i.av to i32                  ; 2 uses
  %i.ax = xor i32 %i.aw, -1
  %i.ay = and i32 %i.af, %i.ax
  %i.az = and i32 %.0.i.1, %i.aw
  %i.ba = or i32 %i.az, %i.ay
  store i32 %i.ba, ptr %i.ac, align 4
  %i.bb = and i16 %i.ab, 1
  %i.bc = select i1 %i.am, i16 %i.bb, i16 0
  %i.bd = zext i1 %i.aa to i16
  %i.be = or i16 %i.bc, %i.bd
  %i.bf = lshr i16 %i.a, 8                        ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = load i32, ptr %i.bg, align 4            ; 2 uses
  %i.bk = sext i32 %i.bi to i64
  %i.bl = mul nsw i64 %i.bk, %i.b
  %i.bm = sext i32 %i.bj to i64
  %i.bn = shl nsw i64 %i.bm, 31
  %i.bo = add nsw i64 %i.bn, %i.bl                ; 2 uses
  %i.bp = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bo, i64 %i.bo) ; 2 uses
  %i.bq = extractvalue { i64, i1 } %i.bp, 1       ; 2 uses
  %i.br = extractvalue { i64, i1 } %i.bp, 0       ; 2 uses
  %i.bs = icmp slt i64 %i.br, 0
  %i.bt = select i1 %i.bs, i32 2147483647, i32 -2147483648
  %i.bu = lshr i64 %i.br, 32
  %i.bv = trunc nuw i64 %i.bu to i32
  %.0.i.2 = select i1 %i.bq, i32 %i.bt, i32 %i.bv
  %i.bw = zext nneg i16 %i.bf to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = trunc i64 %i.by to i32                  ; 2 uses
  %i.ca = xor i32 %i.bz, -1
  %i.cb = and i32 %i.bj, %i.ca
  %i.cc = and i32 %.0.i.2, %i.bz
  %i.cd = or i32 %i.cc, %i.cb
  store i32 %i.cd, ptr %i.bg, align 4
  %i.ce = and i16 %i.bf, 1
  %i.cf = select i1 %i.bq, i16 %i.ce, i16 0
  %i.cg = or i16 %i.cf, %i.be
  %i.ch = lshr i16 %i.a, 12                       ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = load i32, ptr %i.ci, align 4            ; 2 uses
  %i.cm = sext i32 %i.ck to i64
  %i.cn = mul nsw i64 %i.cm, %i.b
  %i.co = sext i32 %i.cl to i64
  %i.cp = shl nsw i64 %i.co, 31
  %i.cq = add nsw i64 %i.cp, %i.cn                ; 2 uses
  %i.cr = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.cq, i64 %i.cq) ; 2 uses
  %i.cs = extractvalue { i64, i1 } %i.cr, 1       ; 2 uses
  %i.ct = extractvalue { i64, i1 } %i.cr, 0       ; 2 uses
  %i.cu = icmp slt i64 %i.ct, 0
  %i.cv = select i1 %i.cu, i32 2147483647, i32 -2147483648
  %i.cw = lshr i64 %i.ct, 32
  %i.cx = trunc nuw i64 %i.cw to i32
  %.0.i.3 = select i1 %i.cs, i32 %i.cv, i32 %i.cx
  %i.cy = zext nneg i16 %i.ch to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.cy
  %i.da = load i64, ptr %i.cz, align 8
  %i.db = trunc i64 %i.da to i32                  ; 2 uses
  %i.dc = xor i32 %i.db, -1
  %i.dd = and i32 %i.cl, %i.dc
  %i.de = and i32 %.0.i.3, %i.db
  %i.df = or i32 %i.de, %i.dd
  store i32 %i.df, ptr %i.ci, align 4
  %i.dg = and i16 %i.ch, 1
  %i.dh = select i1 %i.cs, i16 %i.dg, i16 0
  %i.di = or i16 %i.dh, %i.cg
  %.not = icmp eq i16 %i.di, 0
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %do_vqdmlah_w.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.dj, align 16
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_vqdmlah_w.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4            ; 5 uses
  %i.dm = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.dm, align 16         ; 4 uses
  %i.dn = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.dn, 0
  br i1 %.not.i.i, label %bb.c, label %mve_eci_mask.exit.i

bb.c:                                             ; preds = %bb.b
  %i.do = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.dp = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.do to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.dp, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.c
  %i.dq = zext nneg i32 %i.do to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.dq
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.dr = icmp eq i32 %.val.i, 80
  %i.ds = select i1 %i.dr, i32 16, i32 0
  store i32 %i.ds, ptr %i.dm, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.b
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.b ] ; 3 uses
  %i.dt = and i32 %i.dl, 16711680
  %.not.i = icmp eq i32 %i.dt, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.e

bb.e:                                             ; preds = %mve_eci_mask.exit.i
  %i.du = and i32 %i.dl, 983040
  %i.dv = icmp samesign ult i32 %i.du, 589824
  %i.dw = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.dv, i16 %i.dw, i16 %.0.i34.i ; 2 uses
  %i.dx = and i32 %i.dl, 15728640
  %i.dy = icmp samesign ult i32 %i.dx, 9437184
  %i.dz = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.dy, i16 %i.dz, i16 %spec.select.i
  %i.ea = zext i16 %.1.i to i32
  %i.eb = xor i32 %i.dl, %i.ea                    ; 2 uses
  %i.ec = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.ec, 0
  %i.ed = and i32 %i.eb, -16711681
  %i.ee = shl i32 %i.dl, 1                        ; 2 uses
  %i.ef = and i32 %i.ee, 917504
  %i.eg = or disjoint i32 %i.ed, %i.ef
  %i.eh = and i32 %i.eb, -15728641
  %i.ei = select i1 %.not32.i, i32 %i.eh, i32 %i.eg
  %i.ej = and i32 %i.ee, 14680064
  %i.ek = or disjoint i32 %i.ei, %i.ej
  store i32 %i.ek, ptr %i.dk, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqrdmlahb(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = zext i32 %3 to i64
  %i.b = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0)
  %sext = shl i64 %i.a, 56
  %i.c = ashr exact i64 %sext, 55
  br label %do_vqdmlah_b.exit

do_vqdmlah_b.exit:                                ; preds = %bb.a, %mergemask_sb.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %mergemask_sb.exit ] ; 3 uses
  %.027 = phi i1 [ false, %bb.a ], [ %i.w, %mergemask_sb.exit ]
  %.02125 = phi i16 [ %i.b, %bb.a ], [ %i.x, %mergemask_sb.exit ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1
  %i.g = load i8, ptr %i.d, align 1
  %i.h = sext i8 %i.f to i64
  %i.i = mul nsw i64 %i.c, %i.h
  %i.j = sext i8 %i.g to i64
  %i.k = shl nsw i64 %i.j, 8
  %i.l = add nsw i64 %i.k, %i.i                   ; 3 uses
  %i.m = add nsw i64 %i.l, -32640
  %narrow = icmp ult i64 %i.m, -65536
  %i.n = and i16 %.02125, 1                       ; 2 uses
  %.not.i.i = icmp eq i16 %i.n, 0
  br i1 %.not.i.i, label %mergemask_sb.exit, label %bb.b

bb.b:                                             ; preds = %do_vqdmlah_b.exit
  %i.o = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -32896)
  %spec.select24 = add nsw i64 %i.o, 128
  %i.p = lshr i64 %spec.select24, 8
  %i.q = icmp sgt i64 %i.l, 32639
  %i.r = trunc i64 %i.p to i8
  %i.s = select i1 %i.q, i8 127, i8 %i.r
  store i8 %i.s, ptr %i.d, align 1
  br label %mergemask_sb.exit

mergemask_sb.exit:                                ; preds = %do_vqdmlah_b.exit, %bb.b
  %i.t = select i1 %narrow, i16 %i.n, i16 0
  %i.u = zext i1 %.027 to i16
  %i.v = or i16 %i.t, %i.u
  %i.w = icmp ne i16 %i.v, 0                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.x = lshr i16 %.02125, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.c, label %do_vqdmlah_b.exit, !llvm.loop !39

bb.c:                                             ; preds = %mergemask_sb.exit
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.y, align 16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4             ; 5 uses
  %i.ab = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.ab, align 16         ; 4 uses
  %i.ac = and i32 %.val.i, 15
  %.not.i.i22 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i22, label %bb.f, label %mve_eci_mask.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ad = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.ae = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.ad to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.ae, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.f
  %i.af = zext nneg i32 %i.ad to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.af
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.ag = icmp eq i32 %.val.i, 80
  %i.ah = select i1 %i.ag, i32 16, i32 0
  store i32 %i.ah, ptr %i.ab, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.e
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.e ] ; 3 uses
  %i.ai = and i32 %i.aa, 16711680
  %.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.h

bb.h:                                             ; preds = %mve_eci_mask.exit.i
  %i.aj = and i32 %i.aa, 983040
  %i.ak = icmp samesign ult i32 %i.aj, 589824
  %i.al = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.ak, i16 %i.al, i16 %.0.i34.i ; 2 uses
  %i.am = and i32 %i.aa, 15728640
  %i.an = icmp samesign ult i32 %i.am, 9437184
  %i.ao = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.an, i16 %i.ao, i16 %spec.select.i
  %i.ap = zext i16 %.1.i to i32
  %i.aq = xor i32 %i.aa, %i.ap                    ; 2 uses
  %i.ar = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.ar, 0
  %i.as = and i32 %i.aq, -16711681
  %i.at = shl i32 %i.aa, 1                        ; 2 uses
  %i.au = and i32 %i.at, 917504
  %i.av = or disjoint i32 %i.as, %i.au
  %i.aw = and i32 %i.aq, -15728641
  %i.ax = select i1 %.not32.i, i32 %i.aw, i32 %i.av
  %i.ay = and i32 %i.at, 14680064
  %i.az = or disjoint i32 %i.ax, %i.ay
  store i32 %i.az, ptr %i.z, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.h
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqrdmlahh(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #0 {
do_vqdmlah_h.exit:
  %i.a = zext i32 %3 to i64
  %i.b = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 9 uses
  %sext = shl i64 %i.a, 48
  %i.c = ashr exact i64 %sext, 47                 ; 8 uses
  %i.d = load i16, ptr %2, align 2
  %i.e = load i16, ptr %1, align 2                ; 2 uses
  %i.f = sext i16 %i.d to i64
  %i.g = mul nsw i64 %i.c, %i.f
  %i.h = sext i16 %i.e to i64
  %i.i = shl nsw i64 %i.h, 16
  %i.j = add nsw i64 %i.i, %i.g                   ; 3 uses
  %i.k = icmp sgt i64 %i.j, 2147450879
  %i.l = tail call i64 @llvm.smax.i64(i64 %i.j, i64 -2147516416)
  %spec.select23 = add nsw i64 %i.l, 32768
  %i.m = add nsw i64 %i.j, -2147450880
  %narrow = icmp ult i64 %i.m, -4294967296
  %i.n = lshr i64 %spec.select23, 16
  %i.o = trunc i64 %i.n to i16
  %i.p = select i1 %i.k, i16 32767, i16 %i.o
  %i.q = and i16 %i.b, 255
  %i.r = zext nneg i16 %i.q to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8
  %i.u = trunc i64 %i.t to i16                    ; 2 uses
  %i.v = xor i16 %i.u, -1
  %i.w = and i16 %i.e, %i.v
  %i.x = and i16 %i.p, %i.u
  %i.y = or i16 %i.x, %i.w
  store i16 %i.y, ptr %1, align 2
  %i.z = trunc i16 %i.b to i1
  %i.aa = and i1 %narrow, %i.z
  %i.ab = lshr i16 %i.b, 2                        ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ae = load i16, ptr %i.ad, align 2
  %i.af = load i16, ptr %i.ac, align 2            ; 2 uses
  %i.ag = sext i16 %i.ae to i64
  %i.ah = mul nsw i64 %i.c, %i.ag
  %i.ai = sext i16 %i.af to i64
  %i.aj = shl nsw i64 %i.ai, 16
  %i.ak = add nsw i64 %i.aj, %i.ah                ; 3 uses
  %i.al = icmp sgt i64 %i.ak, 2147450879
  %i.am = tail call i64 @llvm.smax.i64(i64 %i.ak, i64 -2147516416)
  %spec.select23.1 = add nsw i64 %i.am, 32768
  %i.an = add nsw i64 %i.ak, -2147450880
  %narrow.1 = icmp ult i64 %i.an, -4294967296
  %i.ao = lshr i64 %spec.select23.1, 16
  %i.ap = trunc i64 %i.ao to i16
  %i.aq = select i1 %i.al, i16 32767, i16 %i.ap
  %i.ar = and i16 %i.ab, 255
  %i.as = zext nneg i16 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8
  %i.av = trunc i64 %i.au to i16                  ; 2 uses
  %i.aw = xor i16 %i.av, -1
  %i.ax = and i16 %i.af, %i.aw
  %i.ay = and i16 %i.aq, %i.av
  %i.az = or i16 %i.ay, %i.ax
  store i16 %i.az, ptr %i.ac, align 2
  %i.ba = and i16 %i.ab, 1
  %i.bb = select i1 %narrow.1, i16 %i.ba, i16 0
  %i.bc = zext i1 %i.aa to i16
  %i.bd = or i16 %i.bb, %i.bc
  %i.be = lshr i16 %i.b, 4                        ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bh = load i16, ptr %i.bg, align 2
  %i.bi = load i16, ptr %i.bf, align 2            ; 2 uses
  %i.bj = sext i16 %i.bh to i64
  %i.bk = mul nsw i64 %i.c, %i.bj
  %i.bl = sext i16 %i.bi to i64
  %i.bm = shl nsw i64 %i.bl, 16
  %i.bn = add nsw i64 %i.bm, %i.bk                ; 3 uses
  %i.bo = icmp sgt i64 %i.bn, 2147450879
  %i.bp = tail call i64 @llvm.smax.i64(i64 %i.bn, i64 -2147516416)
  %spec.select23.2 = add nsw i64 %i.bp, 32768
  %i.bq = add nsw i64 %i.bn, -2147450880
  %narrow.2 = icmp ult i64 %i.bq, -4294967296
  %i.br = lshr i64 %spec.select23.2, 16
  %i.bs = trunc i64 %i.br to i16
  %i.bt = select i1 %i.bo, i16 32767, i16 %i.bs
  %i.bu = and i16 %i.be, 255
  %i.bv = zext nneg i16 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = trunc i64 %i.bx to i16                  ; 2 uses
  %i.bz = xor i16 %i.by, -1
  %i.ca = and i16 %i.bi, %i.bz
  %i.cb = and i16 %i.bt, %i.by
  %i.cc = or i16 %i.cb, %i.ca
  store i16 %i.cc, ptr %i.bf, align 2
  %i.cd = and i16 %i.be, 1
  %i.ce = select i1 %narrow.2, i16 %i.cd, i16 0
  %i.cf = or i16 %i.ce, %i.bd
  %i.cg = lshr i16 %i.b, 6                        ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.cj = load i16, ptr %i.ci, align 2
  %i.ck = load i16, ptr %i.ch, align 2            ; 2 uses
  %i.cl = sext i16 %i.cj to i64
  %i.cm = mul nsw i64 %i.c, %i.cl
  %i.cn = sext i16 %i.ck to i64
  %i.co = shl nsw i64 %i.cn, 16
  %i.cp = add nsw i64 %i.co, %i.cm                ; 3 uses
  %i.cq = icmp sgt i64 %i.cp, 2147450879
  %i.cr = tail call i64 @llvm.smax.i64(i64 %i.cp, i64 -2147516416)
  %spec.select23.3 = add nsw i64 %i.cr, 32768
  %i.cs = add nsw i64 %i.cp, -2147450880
  %narrow.3 = icmp ult i64 %i.cs, -4294967296
  %i.ct = lshr i64 %spec.select23.3, 16
  %i.cu = trunc i64 %i.ct to i16
  %i.cv = select i1 %i.cq, i16 32767, i16 %i.cu
  %i.cw = and i16 %i.cg, 255
  %i.cx = zext nneg i16 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.cx
  %i.cz = load i64, ptr %i.cy, align 8
  %i.da = trunc i64 %i.cz to i16                  ; 2 uses
  %i.db = xor i16 %i.da, -1
  %i.dc = and i16 %i.ck, %i.db
  %i.dd = and i16 %i.cv, %i.da
  %i.de = or i16 %i.dd, %i.dc
  store i16 %i.de, ptr %i.ch, align 2
  %i.df = and i16 %i.cg, 1
end_hunk_28
begin_hunk_29_@helper_mve_vqrdmlahw:do_vqdmlah_w.exit
  %i.ao = extractvalue { i64, i1 } %i.an, 1       ; 2 uses
  %i.ap = extractvalue { i64, i1 } %i.an, 0       ; 2 uses
  %i.aq = icmp slt i64 %i.ap, 0
  %i.ar = select i1 %i.aq, i32 2147483647, i32 -2147483648
  %i.as = lshr i64 %i.ap, 32
  %i.at = trunc nuw i64 %i.as to i32
  %.0.i.1 = select i1 %i.ao, i32 %i.ar, i32 %i.at
  %i.au = and i16 %i.ac, 255
  %i.av = zext nneg i16 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = trunc i64 %i.ax to i32                  ; 2 uses
  %i.az = xor i32 %i.ay, -1
  %i.ba = and i32 %i.ag, %i.az
  %i.bb = and i32 %.0.i.1, %i.ay
  %i.bc = or i32 %i.bb, %i.ba
  store i32 %i.bc, ptr %i.ad, align 4
  %i.bd = and i16 %i.ac, 1
  %i.be = select i1 %i.ao, i16 %i.bd, i16 0
  %i.bf = zext i1 %i.ab to i16
  %i.bg = or i16 %i.be, %i.bf
  %i.bh = lshr i16 %i.a, 8                        ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = load i32, ptr %i.bi, align 4            ; 2 uses
  %i.bm = sext i32 %i.bk to i64
  %i.bn = mul nsw i64 %i.bm, %i.b
  %i.bo = sext i32 %i.bl to i64
  %i.bp = shl nsw i64 %i.bo, 31
  %i.bq = add nsw i64 %i.bn, 1073741824
  %i.br = add nsw i64 %i.bq, %i.bp                ; 2 uses
  %i.bs = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.br, i64 %i.br) ; 2 uses
  %i.bt = extractvalue { i64, i1 } %i.bs, 1       ; 2 uses
  %i.bu = extractvalue { i64, i1 } %i.bs, 0       ; 2 uses
  %i.bv = icmp slt i64 %i.bu, 0
  %i.bw = select i1 %i.bv, i32 2147483647, i32 -2147483648
  %i.bx = lshr i64 %i.bu, 32
  %i.by = trunc nuw i64 %i.bx to i32
  %.0.i.2 = select i1 %i.bt, i32 %i.bw, i32 %i.by
  %i.bz = zext nneg i16 %i.bh to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = trunc i64 %i.cb to i32                  ; 2 uses
  %i.cd = xor i32 %i.cc, -1
  %i.ce = and i32 %i.bl, %i.cd
  %i.cf = and i32 %.0.i.2, %i.cc
  %i.cg = or i32 %i.cf, %i.ce
  store i32 %i.cg, ptr %i.bi, align 4
  %i.ch = and i16 %i.bh, 1
  %i.ci = select i1 %i.bt, i16 %i.ch, i16 0
  %i.cj = or i16 %i.ci, %i.bg
  %i.ck = lshr i16 %i.a, 12                       ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.cn = load i32, ptr %i.cm, align 4
  %i.co = load i32, ptr %i.cl, align 4            ; 2 uses
  %i.cp = sext i32 %i.cn to i64
  %i.cq = mul nsw i64 %i.cp, %i.b
  %i.cr = sext i32 %i.co to i64
  %i.cs = shl nsw i64 %i.cr, 31
  %i.ct = add nsw i64 %i.cq, 1073741824
  %i.cu = add nsw i64 %i.ct, %i.cs                ; 2 uses
  %i.cv = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.cu, i64 %i.cu) ; 2 uses
  %i.cw = extractvalue { i64, i1 } %i.cv, 1       ; 2 uses
  %i.cx = extractvalue { i64, i1 } %i.cv, 0       ; 2 uses
  %i.cy = icmp slt i64 %i.cx, 0
  %i.cz = select i1 %i.cy, i32 2147483647, i32 -2147483648
  %i.da = lshr i64 %i.cx, 32
  %i.db = trunc nuw i64 %i.da to i32
  %.0.i.3 = select i1 %i.cw, i32 %i.cz, i32 %i.db
  %i.dc = zext nneg i16 %i.ck to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.dc
  %i.de = load i64, ptr %i.dd, align 8
  %i.df = trunc i64 %i.de to i32                  ; 2 uses
  %i.dg = xor i32 %i.df, -1
  %i.dh = and i32 %i.co, %i.dg
  %i.di = and i32 %.0.i.3, %i.df
  %i.dj = or i32 %i.di, %i.dh
  store i32 %i.dj, ptr %i.cl, align 4
  %i.dk = and i16 %i.ck, 1
  %i.dl = select i1 %i.cw, i16 %i.dk, i16 0
  %i.dm = or i16 %i.dl, %i.cj
  %.not = icmp eq i16 %i.dm, 0
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %do_vqdmlah_w.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.dn, align 16
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_vqdmlah_w.exit
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4            ; 5 uses
  %i.dq = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.dq, align 16         ; 4 uses
  %i.dr = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.dr, 0
  br i1 %.not.i.i, label %bb.c, label %mve_eci_mask.exit.i

bb.c:                                             ; preds = %bb.b
  %i.ds = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.dt = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.ds to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.dt, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.c
  %i.du = zext nneg i32 %i.ds to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.du
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.dv = icmp eq i32 %.val.i, 80
  %i.dw = select i1 %i.dv, i32 16, i32 0
  store i32 %i.dw, ptr %i.dq, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.b
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.b ] ; 3 uses
  %i.dx = and i32 %i.dp, 16711680
  %.not.i = icmp eq i32 %i.dx, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.e

bb.e:                                             ; preds = %mve_eci_mask.exit.i
  %i.dy = and i32 %i.dp, 983040
  %i.dz = icmp samesign ult i32 %i.dy, 589824
  %i.ea = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.dz, i16 %i.ea, i16 %.0.i34.i ; 2 uses
  %i.eb = and i32 %i.dp, 15728640
  %i.ec = icmp samesign ult i32 %i.eb, 9437184
  %i.ed = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.ec, i16 %i.ed, i16 %spec.select.i
  %i.ee = zext i16 %.1.i to i32
  %i.ef = xor i32 %i.dp, %i.ee                    ; 2 uses
  %i.eg = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.eg, 0
  %i.eh = and i32 %i.ef, -16711681
  %i.ei = shl i32 %i.dp, 1                        ; 2 uses
  %i.ej = and i32 %i.ei, 917504
  %i.ek = or disjoint i32 %i.eh, %i.ej
  %i.el = and i32 %i.ef, -15728641
  %i.em = select i1 %.not32.i, i32 %i.el, i32 %i.ek
  %i.en = and i32 %i.ei, 14680064
  %i.eo = or disjoint i32 %i.em, %i.en
  store i32 %i.eo, ptr %i.do, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqdmlashb(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = zext i32 %3 to i64
  %i.b = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0)
  %sext = shl i64 %i.a, 56
  %i.c = ashr exact i64 %sext, 48
  br label %do_vqdmlah_b.exit

do_vqdmlah_b.exit:                                ; preds = %bb.a, %mergemask_sb.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %mergemask_sb.exit ] ; 3 uses
  %.027 = phi i1 [ false, %bb.a ], [ %i.t, %mergemask_sb.exit ]
  %.02125 = phi i16 [ %i.b, %bb.a ], [ %i.u, %mergemask_sb.exit ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1
  %i.g = load i8, ptr %i.d, align 1
  %i.h = sext i8 %i.f to i64
  %i.i = sext i8 %i.g to i64
  %i.j = shl nsw i64 %i.h, 1
  %i.k = mul nsw i64 %i.j, %i.i
  %i.l = add nsw i64 %i.k, %i.c                   ; 2 uses
  %i.m = add nsw i64 %i.l, -32768
  %narrow = icmp ult i64 %i.m, -65536
  %i.n = and i16 %.02125, 1                       ; 2 uses
  %.not.i.i = icmp eq i16 %i.n, 0
  br i1 %.not.i.i, label %mergemask_sb.exit, label %bb.b

bb.b:                                             ; preds = %do_vqdmlah_b.exit
  %spec.select24 = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -32768)
  %.0.in.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select24, i64 32767)
  %i.o = lshr i64 %.0.in.i.i, 8
  %i.p = trunc i64 %i.o to i8
  store i8 %i.p, ptr %i.d, align 1
  br label %mergemask_sb.exit

mergemask_sb.exit:                                ; preds = %do_vqdmlah_b.exit, %bb.b
  %i.q = select i1 %narrow, i16 %i.n, i16 0
  %i.r = zext i1 %.027 to i16
  %i.s = or i16 %i.q, %i.r
  %i.t = icmp ne i16 %i.s, 0                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = lshr i16 %.02125, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.c, label %do_vqdmlah_b.exit, !llvm.loop !40

bb.c:                                             ; preds = %mergemask_sb.exit
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.v, align 16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4              ; 5 uses
  %i.y = getelementptr i8, ptr %0, i64 560        ; 2 uses
  %.val.i = load i32, ptr %i.y, align 16          ; 4 uses
  %i.z = and i32 %.val.i, 15
  %.not.i.i22 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i22, label %bb.f, label %mve_eci_mask.exit.i

bb.f:                                             ; preds = %bb.e
  %i.aa = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.ab = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.aa to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.ab, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.f
  %i.ac = zext nneg i32 %i.aa to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.ac
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.ad = icmp eq i32 %.val.i, 80
  %i.ae = select i1 %i.ad, i32 16, i32 0
  store i32 %i.ae, ptr %i.y, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.e
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.e ] ; 3 uses
  %i.af = and i32 %i.x, 16711680
  %.not.i = icmp eq i32 %i.af, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.h

bb.h:                                             ; preds = %mve_eci_mask.exit.i
  %i.ag = and i32 %i.x, 983040
  %i.ah = icmp samesign ult i32 %i.ag, 589824
  %i.ai = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.ah, i16 %i.ai, i16 %.0.i34.i ; 2 uses
  %i.aj = and i32 %i.x, 15728640
  %i.ak = icmp samesign ult i32 %i.aj, 9437184
  %i.al = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.ak, i16 %i.al, i16 %spec.select.i
  %i.am = zext i16 %.1.i to i32
  %i.an = xor i32 %i.x, %i.am                     ; 2 uses
  %i.ao = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.ao, 0
  %i.ap = and i32 %i.an, -16711681
  %i.aq = shl i32 %i.x, 1                         ; 2 uses
  %i.ar = and i32 %i.aq, 917504
  %i.as = or disjoint i32 %i.ap, %i.ar
  %i.at = and i32 %i.an, -15728641
  %i.au = select i1 %.not32.i, i32 %i.at, i32 %i.as
  %i.av = and i32 %i.aq, 14680064
  %i.aw = or disjoint i32 %i.au, %i.av
  store i32 %i.aw, ptr %i.w, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.h
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqdmlashh(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #0 {
do_vqdmlah_h.exit:
  %i.a = zext i32 %3 to i64
  %i.b = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 9 uses
  %sext = shl i64 %i.a, 48
  %i.c = ashr exact i64 %sext, 32                 ; 8 uses
  %i.d = load i16, ptr %2, align 2
  %i.e = load i16, ptr %1, align 2                ; 2 uses
  %i.f = sext i16 %i.d to i64
  %i.g = sext i16 %i.e to i64
  %i.h = shl nsw i64 %i.f, 1
  %i.i = mul nsw i64 %i.h, %i.g
  %i.j = add nsw i64 %i.i, %i.c                   ; 2 uses
  %spec.select23 = tail call i64 @llvm.smax.i64(i64 %i.j, i64 -2147483648)
  %i.k = add nsw i64 %i.j, -2147483648
  %narrow = icmp ult i64 %i.k, -4294967296
  %.0.in.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select23, i64 2147483647)
  %i.l = lshr i64 %.0.in.i.i, 16
  %i.m = and i16 %i.b, 255
  %i.n = zext nneg i16 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.n
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = trunc i64 %i.p to i16
  %i.r = xor i16 %i.q, -1
  %i.s = and i16 %i.e, %i.r
  %i.t = and i64 %i.l, %i.p
  %i.u = trunc i64 %i.t to i16
  %i.v = or i16 %i.s, %i.u
  store i16 %i.v, ptr %1, align 2
  %i.w = trunc i16 %i.b to i1
  %i.x = and i1 %narrow, %i.w
  %i.y = lshr i16 %i.b, 2                         ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ab = load i16, ptr %i.aa, align 2
  %i.ac = load i16, ptr %i.z, align 2             ; 2 uses
  %i.ad = sext i16 %i.ab to i64
  %i.ae = sext i16 %i.ac to i64
  %i.af = shl nsw i64 %i.ad, 1
  %i.ag = mul nsw i64 %i.af, %i.ae
  %i.ah = add nsw i64 %i.ag, %i.c                 ; 2 uses
  %spec.select23.1 = tail call i64 @llvm.smax.i64(i64 %i.ah, i64 -2147483648)
  %i.ai = add nsw i64 %i.ah, -2147483648
  %narrow.1 = icmp ult i64 %i.ai, -4294967296
  %.0.in.i.i.1 = tail call i64 @llvm.smin.i64(i64 %spec.select23.1, i64 2147483647)
  %i.aj = lshr i64 %.0.in.i.i.1, 16
  %i.ak = and i16 %i.y, 255
  %i.al = zext nneg i16 %i.ak to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %i.ao = trunc i64 %i.an to i16
  %i.ap = xor i16 %i.ao, -1
  %i.aq = and i16 %i.ac, %i.ap
  %i.ar = and i64 %i.aj, %i.an
  %i.as = trunc i64 %i.ar to i16
  %i.at = or i16 %i.aq, %i.as
  store i16 %i.at, ptr %i.z, align 2
  %i.au = and i16 %i.y, 1
  %i.av = select i1 %narrow.1, i16 %i.au, i16 0
  %i.aw = zext i1 %i.x to i16
  %i.ax = or i16 %i.av, %i.aw
  %i.ay = lshr i16 %i.b, 4                        ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bb = load i16, ptr %i.ba, align 2
  %i.bc = load i16, ptr %i.az, align 2            ; 2 uses
  %i.bd = sext i16 %i.bb to i64
  %i.be = sext i16 %i.bc to i64
  %i.bf = shl nsw i64 %i.bd, 1
  %i.bg = mul nsw i64 %i.bf, %i.be
  %i.bh = add nsw i64 %i.bg, %i.c                 ; 2 uses
  %spec.select23.2 = tail call i64 @llvm.smax.i64(i64 %i.bh, i64 -2147483648)
  %i.bi = add nsw i64 %i.bh, -2147483648
  %narrow.2 = icmp ult i64 %i.bi, -4294967296
  %.0.in.i.i.2 = tail call i64 @llvm.smin.i64(i64 %spec.select23.2, i64 2147483647)
  %i.bj = lshr i64 %.0.in.i.i.2, 16
  %i.bk = and i16 %i.ay, 255
  %i.bl = zext nneg i16 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8            ; 2 uses
  %i.bo = trunc i64 %i.bn to i16
  %i.bp = xor i16 %i.bo, -1
  %i.bq = and i16 %i.bc, %i.bp
  %i.br = and i64 %i.bj, %i.bn
  %i.bs = trunc i64 %i.br to i16
  %i.bt = or i16 %i.bq, %i.bs
  store i16 %i.bt, ptr %i.az, align 2
  %i.bu = and i16 %i.ay, 1
  %i.bv = select i1 %narrow.2, i16 %i.bu, i16 0
  %i.bw = or i16 %i.bv, %i.ax
  %i.bx = lshr i16 %i.b, 6                        ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ca = load i16, ptr %i.bz, align 2
  %i.cb = load i16, ptr %i.by, align 2            ; 2 uses
  %i.cc = sext i16 %i.ca to i64
  %i.cd = sext i16 %i.cb to i64
  %i.ce = shl nsw i64 %i.cc, 1
  %i.cf = mul nsw i64 %i.ce, %i.cd
  %i.cg = add nsw i64 %i.cf, %i.c                 ; 2 uses
  %spec.select23.3 = tail call i64 @llvm.smax.i64(i64 %i.cg, i64 -2147483648)
  %i.ch = add nsw i64 %i.cg, -2147483648
  %narrow.3 = icmp ult i64 %i.ch, -4294967296
  %.0.in.i.i.3 = tail call i64 @llvm.smin.i64(i64 %spec.select23.3, i64 2147483647)
  %i.ci = lshr i64 %.0.in.i.i.3, 16
  %i.cj = and i16 %i.bx, 255
  %i.ck = zext nneg i16 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.ck
  %i.cm = load i64, ptr %i.cl, align 8            ; 2 uses
  %i.cn = trunc i64 %i.cm to i16
  %i.co = xor i16 %i.cn, -1
  %i.cp = and i16 %i.cb, %i.co
  %i.cq = and i64 %i.ci, %i.cm
  %i.cr = trunc i64 %i.cq to i16
  %i.cs = or i16 %i.cp, %i.cr
  store i16 %i.cs, ptr %i.by, align 2
  %i.ct = and i16 %i.bx, 1
  %i.cu = select i1 %narrow.3, i16 %i.ct, i16 0
  %i.cv = or i16 %i.cu, %i.bw
  %i.cw = lshr i16 %i.b, 8                        ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cz = load i16, ptr %i.cy, align 2
  %i.da = load i16, ptr %i.cx, align 2            ; 2 uses
  %i.db = sext i16 %i.cz to i64
end_hunk_29
begin_hunk_30_@helper_mve_vqdmlashw:do_vqdmlah_w.exit
  %i.aj = add nsw i64 %i.ai, %i.c                 ; 2 uses
  %i.ak = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.aj, i64 %i.aj) ; 2 uses
  %i.al = extractvalue { i64, i1 } %i.ak, 1       ; 2 uses
  %i.am = extractvalue { i64, i1 } %i.ak, 0       ; 2 uses
  %i.an = icmp slt i64 %i.am, 0
  %i.ao = select i1 %i.an, i32 2147483647, i32 -2147483648
  %i.ap = lshr i64 %i.am, 32
  %i.aq = trunc nuw i64 %i.ap to i32
  %.0.i.1 = select i1 %i.al, i32 %i.ao, i32 %i.aq
  %i.ar = and i16 %i.ab, 255
  %i.as = zext nneg i16 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8
  %i.av = trunc i64 %i.au to i32                  ; 2 uses
  %i.aw = xor i32 %i.av, -1
  %i.ax = and i32 %i.af, %i.aw
  %i.ay = and i32 %.0.i.1, %i.av
  %i.az = or i32 %i.ay, %i.ax
  store i32 %i.az, ptr %i.ac, align 4
  %i.ba = and i16 %i.ab, 1
  %i.bb = select i1 %i.al, i16 %i.ba, i16 0
  %i.bc = zext i1 %i.aa to i16
  %i.bd = or i16 %i.bb, %i.bc
  %i.be = lshr i16 %i.a, 8                        ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = load i32, ptr %i.bf, align 4            ; 2 uses
  %i.bj = sext i32 %i.bh to i64
  %i.bk = sext i32 %i.bi to i64
  %i.bl = mul nsw i64 %i.bk, %i.bj
  %i.bm = add nsw i64 %i.bl, %i.c                 ; 2 uses
  %i.bn = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bm, i64 %i.bm) ; 2 uses
  %i.bo = extractvalue { i64, i1 } %i.bn, 1       ; 2 uses
  %i.bp = extractvalue { i64, i1 } %i.bn, 0       ; 2 uses
  %i.bq = icmp slt i64 %i.bp, 0
  %i.br = select i1 %i.bq, i32 2147483647, i32 -2147483648
  %i.bs = lshr i64 %i.bp, 32
  %i.bt = trunc nuw i64 %i.bs to i32
  %.0.i.2 = select i1 %i.bo, i32 %i.br, i32 %i.bt
  %i.bu = zext nneg i16 %i.be to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = trunc i64 %i.bw to i32                  ; 2 uses
  %i.by = xor i32 %i.bx, -1
  %i.bz = and i32 %i.bi, %i.by
  %i.ca = and i32 %.0.i.2, %i.bx
  %i.cb = or i32 %i.ca, %i.bz
  store i32 %i.cb, ptr %i.bf, align 4
  %i.cc = and i16 %i.be, 1
  %i.cd = select i1 %i.bo, i16 %i.cc, i16 0
  %i.ce = or i16 %i.cd, %i.bd
  %i.cf = lshr i16 %i.a, 12                       ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = load i32, ptr %i.cg, align 4            ; 2 uses
  %i.ck = sext i32 %i.ci to i64
  %i.cl = sext i32 %i.cj to i64
  %i.cm = mul nsw i64 %i.cl, %i.ck
  %i.cn = add nsw i64 %i.cm, %i.c                 ; 2 uses
  %i.co = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.cn, i64 %i.cn) ; 2 uses
  %i.cp = extractvalue { i64, i1 } %i.co, 1       ; 2 uses
  %i.cq = extractvalue { i64, i1 } %i.co, 0       ; 2 uses
  %i.cr = icmp slt i64 %i.cq, 0
  %i.cs = select i1 %i.cr, i32 2147483647, i32 -2147483648
  %i.ct = lshr i64 %i.cq, 32
  %i.cu = trunc nuw i64 %i.ct to i32
  %.0.i.3 = select i1 %i.cp, i32 %i.cs, i32 %i.cu
  %i.cv = zext nneg i16 %i.cf to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.cv
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = trunc i64 %i.cx to i32                  ; 2 uses
  %i.cz = xor i32 %i.cy, -1
  %i.da = and i32 %i.cj, %i.cz
  %i.db = and i32 %.0.i.3, %i.cy
  %i.dc = or i32 %i.db, %i.da
  store i32 %i.dc, ptr %i.cg, align 4
  %i.dd = and i16 %i.cf, 1
  %i.de = select i1 %i.cp, i16 %i.dd, i16 0
  %i.df = or i16 %i.de, %i.ce
  %.not = icmp eq i16 %i.df, 0
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %do_vqdmlah_w.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.dg, align 16
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_vqdmlah_w.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4            ; 5 uses
  %i.dj = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.dj, align 16         ; 4 uses
  %i.dk = and i32 %.val.i, 15
  %.not.i.i = icmp eq i32 %i.dk, 0
  br i1 %.not.i.i, label %bb.c, label %mve_eci_mask.exit.i

bb.c:                                             ; preds = %bb.b
  %i.dl = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.dm = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.dl to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.dm, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.c
  %i.dn = zext nneg i32 %i.dl to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.dn
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.do = icmp eq i32 %.val.i, 80
  %i.dp = select i1 %i.do, i32 16, i32 0
  store i32 %i.dp, ptr %i.dj, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.b
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.b ] ; 3 uses
  %i.dq = and i32 %i.di, 16711680
  %.not.i = icmp eq i32 %i.dq, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.e

bb.e:                                             ; preds = %mve_eci_mask.exit.i
  %i.dr = and i32 %i.di, 983040
  %i.ds = icmp samesign ult i32 %i.dr, 589824
  %i.dt = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.ds, i16 %i.dt, i16 %.0.i34.i ; 2 uses
  %i.du = and i32 %i.di, 15728640
  %i.dv = icmp samesign ult i32 %i.du, 9437184
  %i.dw = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.dv, i16 %i.dw, i16 %spec.select.i
  %i.dx = zext i16 %.1.i to i32
  %i.dy = xor i32 %i.di, %i.dx                    ; 2 uses
  %i.dz = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.dz, 0
  %i.ea = and i32 %i.dy, -16711681
  %i.eb = shl i32 %i.di, 1                        ; 2 uses
  %i.ec = and i32 %i.eb, 917504
  %i.ed = or disjoint i32 %i.ea, %i.ec
  %i.ee = and i32 %i.dy, -15728641
  %i.ef = select i1 %.not32.i, i32 %i.ee, i32 %i.ed
  %i.eg = and i32 %i.eb, 14680064
  %i.eh = or disjoint i32 %i.ef, %i.eg
  store i32 %i.eh, ptr %i.dh, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.e
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqrdmlashb(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = zext i32 %3 to i64
  %i.b = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0)
  %sext = shl i64 %i.a, 56
  %i.c = ashr exact i64 %sext, 48
  br label %do_vqdmlah_b.exit

do_vqdmlah_b.exit:                                ; preds = %bb.a, %mergemask_sb.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %mergemask_sb.exit ] ; 3 uses
  %.027 = phi i1 [ false, %bb.a ], [ %i.w, %mergemask_sb.exit ]
  %.02125 = phi i16 [ %i.b, %bb.a ], [ %i.x, %mergemask_sb.exit ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1
  %i.g = load i8, ptr %i.d, align 1
  %i.h = sext i8 %i.f to i64
  %i.i = sext i8 %i.g to i64
  %i.j = shl nsw i64 %i.h, 1
  %i.k = mul nsw i64 %i.j, %i.i
  %i.l = add nsw i64 %i.k, %i.c                   ; 3 uses
  %i.m = add nsw i64 %i.l, -32640
  %narrow = icmp ult i64 %i.m, -65536
  %i.n = and i16 %.02125, 1                       ; 2 uses
  %.not.i.i = icmp eq i16 %i.n, 0
  br i1 %.not.i.i, label %mergemask_sb.exit, label %bb.b

bb.b:                                             ; preds = %do_vqdmlah_b.exit
  %i.o = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -32896)
  %spec.select24 = add nsw i64 %i.o, 128
  %i.p = lshr i64 %spec.select24, 8
  %i.q = icmp sgt i64 %i.l, 32639
  %i.r = trunc i64 %i.p to i8
  %i.s = select i1 %i.q, i8 127, i8 %i.r
  store i8 %i.s, ptr %i.d, align 1
  br label %mergemask_sb.exit

mergemask_sb.exit:                                ; preds = %do_vqdmlah_b.exit, %bb.b
  %i.t = select i1 %narrow, i16 %i.n, i16 0
  %i.u = zext i1 %.027 to i16
  %i.v = or i16 %i.t, %i.u
  %i.w = icmp ne i16 %i.v, 0                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.x = lshr i16 %.02125, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.c, label %do_vqdmlah_b.exit, !llvm.loop !41

bb.c:                                             ; preds = %mergemask_sb.exit
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store i32 1, ptr %i.y, align 16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4             ; 5 uses
  %i.ab = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %.val.i = load i32, ptr %i.ab, align 16         ; 4 uses
  %i.ac = and i32 %.val.i, 15
  %.not.i.i22 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i22, label %bb.f, label %mve_eci_mask.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ad = lshr exact i32 %.val.i, 4               ; 2 uses
  %i.ae = icmp ult i32 %.val.i, 96
  %switch.maskindex = trunc i32 %i.ad to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.ae, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.675, i32 noundef 59, ptr noundef nonnull @__func__.mve_eci_mask, ptr noundef null) #11
  unreachable

switch.lookup:                                    ; preds = %bb.f
  %i.af = zext nneg i32 %i.ad to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.do_vcvt_hs, i64 %i.af
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.ag = icmp eq i32 %.val.i, 80
  %i.ah = select i1 %i.ag, i32 16, i32 0
  store i32 %i.ah, ptr %i.ab, align 16
  br label %mve_eci_mask.exit.i

mve_eci_mask.exit.i:                              ; preds = %switch.lookup, %bb.e
  %.0.i34.i = phi i16 [ %switch.load, %switch.lookup ], [ -1, %bb.e ] ; 3 uses
  %i.ai = and i32 %i.aa, 16711680
  %.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i, label %mve_advance_vpt.exit, label %bb.h

bb.h:                                             ; preds = %mve_eci_mask.exit.i
  %i.aj = and i32 %i.aa, 983040
  %i.ak = icmp samesign ult i32 %i.aj, 589824
  %i.al = and i16 %.0.i34.i, -256
  %spec.select.i = select i1 %i.ak, i16 %i.al, i16 %.0.i34.i ; 2 uses
  %i.am = and i32 %i.aa, 15728640
  %i.an = icmp samesign ult i32 %i.am, 9437184
  %i.ao = and i16 %spec.select.i, 255
  %.1.i = select i1 %i.an, i16 %i.ao, i16 %spec.select.i
  %i.ap = zext i16 %.1.i to i32
  %i.aq = xor i32 %i.aa, %i.ap                    ; 2 uses
  %i.ar = and i16 %.0.i34.i, 240
  %.not32.i = icmp eq i16 %i.ar, 0
  %i.as = and i32 %i.aq, -16711681
  %i.at = shl i32 %i.aa, 1                        ; 2 uses
  %i.au = and i32 %i.at, 917504
  %i.av = or disjoint i32 %i.as, %i.au
  %i.aw = and i32 %i.aq, -15728641
  %i.ax = select i1 %.not32.i, i32 %i.aw, i32 %i.av
  %i.ay = and i32 %i.at, 14680064
  %i.az = or disjoint i32 %i.ax, %i.ay
  store i32 %i.az, ptr %i.z, align 4
  br label %mve_advance_vpt.exit

mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.h
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_mve_vqrdmlashh(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #0 {
do_vqdmlah_h.exit:
  %i.a = zext i32 %3 to i64
  %i.b = tail call fastcc zeroext i16 @mve_element_mask(ptr noundef %0) ; 9 uses
  %sext = shl i64 %i.a, 48
  %i.c = ashr exact i64 %sext, 32                 ; 8 uses
  %i.d = load i16, ptr %2, align 2
  %i.e = load i16, ptr %1, align 2                ; 2 uses
  %i.f = sext i16 %i.d to i64
  %i.g = sext i16 %i.e to i64
  %i.h = shl nsw i64 %i.f, 1
  %i.i = mul nsw i64 %i.h, %i.g
  %i.j = add nsw i64 %i.i, %i.c                   ; 3 uses
  %i.k = icmp sgt i64 %i.j, 2147450879
  %i.l = tail call i64 @llvm.smax.i64(i64 %i.j, i64 -2147516416)
  %spec.select23 = add nsw i64 %i.l, 32768
  %i.m = add nsw i64 %i.j, -2147450880
  %narrow = icmp ult i64 %i.m, -4294967296
  %i.n = lshr i64 %spec.select23, 16
  %i.o = trunc i64 %i.n to i16
  %i.p = select i1 %i.k, i16 32767, i16 %i.o
  %i.q = and i16 %i.b, 255
  %i.r = zext nneg i16 %i.q to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8
  %i.u = trunc i64 %i.t to i16                    ; 2 uses
  %i.v = xor i16 %i.u, -1
  %i.w = and i16 %i.e, %i.v
  %i.x = and i16 %i.p, %i.u
  %i.y = or i16 %i.x, %i.w
  store i16 %i.y, ptr %1, align 2
  %i.z = trunc i16 %i.b to i1
  %i.aa = and i1 %narrow, %i.z
  %i.ab = lshr i16 %i.b, 2                        ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ae = load i16, ptr %i.ad, align 2
  %i.af = load i16, ptr %i.ac, align 2            ; 2 uses
  %i.ag = sext i16 %i.ae to i64
  %i.ah = sext i16 %i.af to i64
  %i.ai = shl nsw i64 %i.ag, 1
  %i.aj = mul nsw i64 %i.ai, %i.ah
  %i.ak = add nsw i64 %i.aj, %i.c                 ; 3 uses
  %i.al = icmp sgt i64 %i.ak, 2147450879
  %i.am = tail call i64 @llvm.smax.i64(i64 %i.ak, i64 -2147516416)
  %spec.select23.1 = add nsw i64 %i.am, 32768
  %i.an = add nsw i64 %i.ak, -2147450880
  %narrow.1 = icmp ult i64 %i.an, -4294967296
  %i.ao = lshr i64 %spec.select23.1, 16
  %i.ap = trunc i64 %i.ao to i16
  %i.aq = select i1 %i.al, i16 32767, i16 %i.ap
  %i.ar = and i16 %i.ab, 255
  %i.as = zext nneg i16 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8
  %i.av = trunc i64 %i.au to i16                  ; 2 uses
  %i.aw = xor i16 %i.av, -1
  %i.ax = and i16 %i.af, %i.aw
  %i.ay = and i16 %i.aq, %i.av
  %i.az = or i16 %i.ay, %i.ax
  store i16 %i.az, ptr %i.ac, align 2
  %i.ba = and i16 %i.ab, 1
  %i.bb = select i1 %narrow.1, i16 %i.ba, i16 0
  %i.bc = zext i1 %i.aa to i16
  %i.bd = or i16 %i.bb, %i.bc
  %i.be = lshr i16 %i.b, 4                        ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bh = load i16, ptr %i.bg, align 2
  %i.bi = load i16, ptr %i.bf, align 2            ; 2 uses
  %i.bj = sext i16 %i.bh to i64
  %i.bk = sext i16 %i.bi to i64
  %i.bl = shl nsw i64 %i.bj, 1
  %i.bm = mul nsw i64 %i.bl, %i.bk
  %i.bn = add nsw i64 %i.bm, %i.c                 ; 3 uses
  %i.bo = icmp sgt i64 %i.bn, 2147450879
  %i.bp = tail call i64 @llvm.smax.i64(i64 %i.bn, i64 -2147516416)
  %spec.select23.2 = add nsw i64 %i.bp, 32768
  %i.bq = add nsw i64 %i.bn, -2147450880
  %narrow.2 = icmp ult i64 %i.bq, -4294967296
  %i.br = lshr i64 %spec.select23.2, 16
  %i.bs = trunc i64 %i.br to i16
  %i.bt = select i1 %i.bo, i16 32767, i16 %i.bs
  %i.bu = and i16 %i.be, 255
  %i.bv = zext nneg i16 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = trunc i64 %i.bx to i16                  ; 2 uses
  %i.bz = xor i16 %i.by, -1
  %i.ca = and i16 %i.bi, %i.bz
  %i.cb = and i16 %i.bt, %i.by
  %i.cc = or i16 %i.cb, %i.ca
  store i16 %i.cc, ptr %i.bf, align 2
  %i.cd = and i16 %i.be, 1
  %i.ce = select i1 %narrow.2, i16 %i.cd, i16 0
  %i.cf = or i16 %i.ce, %i.bd
  %i.cg = lshr i16 %i.b, 6                        ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.cj = load i16, ptr %i.ci, align 2
  %i.ck = load i16, ptr %i.ch, align 2            ; 2 uses
  %i.cl = sext i16 %i.cj to i64
  %i.cm = sext i16 %i.ck to i64
  %i.cn = shl nsw i64 %i.cl, 1
  %i.co = mul nsw i64 %i.cn, %i.cm
  %i.cp = add nsw i64 %i.co, %i.c                 ; 3 uses
  %i.cq = icmp sgt i64 %i.cp, 2147450879
  %i.cr = tail call i64 @llvm.smax.i64(i64 %i.cp, i64 -2147516416)
  %spec.select23.3 = add nsw i64 %i.cr, 32768
  %i.cs = add nsw i64 %i.cp, -2147450880
  %narrow.3 = icmp ult i64 %i.cs, -4294967296
  %i.ct = lshr i64 %spec.select23.3, 16
  %i.cu = trunc i64 %i.ct to i16
  %i.cv = select i1 %i.cq, i16 32767, i16 %i.cu
  %i.cw = and i16 %i.cg, 255
  %i.cx = zext nneg i16 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.cx
  %i.cz = load i64, ptr %i.cy, align 8
  %i.da = trunc i64 %i.cz to i16                  ; 2 uses
  %i.db = xor i16 %i.da, -1
  %i.dc = and i16 %i.ck, %i.db
  %i.dd = and i16 %i.cv, %i.da
  %i.de = or i16 %i.dd, %i.dc
  store i16 %i.de, ptr %i.ch, align 2
  %i.df = and i16 %i.cg, 1
end_hunk_30
begin_hunk_31_@helper_mve_vqshli_sb:bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = sext i8 %i.aq to i32
  %i.as = ashr i32 %i.ar, %i.e
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.au = trunc nsw i32 %i.as to i8
  store i8 %i.au, ptr %i.at, align 1
  br label %mergemask_sb.exit.us.us.5

mergemask_sb.exit.us.us.5:                        ; preds = %bb.g, %mergemask_sb.exit.us.us.4
  %i.av = and i16 %i.a, 64
  %.not.i.i.us.us.6 = icmp eq i16 %i.av, 0
  br i1 %.not.i.i.us.us.6, label %mergemask_sb.exit.us.us.6, label %bb.h

bb.h:                                             ; preds = %mergemask_sb.exit.us.us.5
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = sext i8 %i.ax to i32
  %i.az = ashr i32 %i.ay, %i.e
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.bb = trunc nsw i32 %i.az to i8
  store i8 %i.bb, ptr %i.ba, align 1
  br label %mergemask_sb.exit.us.us.6

mergemask_sb.exit.us.us.6:                        ; preds = %bb.h, %mergemask_sb.exit.us.us.5
  %i.bc = and i16 %i.a, 128
  %.not.i.i.us.us.7 = icmp eq i16 %i.bc, 0
  br i1 %.not.i.i.us.us.7, label %mergemask_sb.exit.us.us.7, label %bb.i

bb.i:                                             ; preds = %mergemask_sb.exit.us.us.6
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = sext i8 %i.be to i32
  %i.bg = ashr i32 %i.bf, %i.e
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.bi = trunc nsw i32 %i.bg to i8
  store i8 %i.bi, ptr %i.bh, align 1
  br label %mergemask_sb.exit.us.us.7

mergemask_sb.exit.us.us.7:                        ; preds = %bb.i, %mergemask_sb.exit.us.us.6
  %i.bj = and i16 %i.a, 256
  %.not.i.i.us.us.8 = icmp eq i16 %i.bj, 0
  br i1 %.not.i.i.us.us.8, label %mergemask_sb.exit.us.us.8, label %bb.j

bb.j:                                             ; preds = %mergemask_sb.exit.us.us.7
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = sext i8 %i.bl to i32
  %i.bn = ashr i32 %i.bm, %i.e
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bp = trunc nsw i32 %i.bn to i8
  store i8 %i.bp, ptr %i.bo, align 1
  br label %mergemask_sb.exit.us.us.8

mergemask_sb.exit.us.us.8:                        ; preds = %bb.j, %mergemask_sb.exit.us.us.7
  %i.bq = and i16 %i.a, 512
  %.not.i.i.us.us.9 = icmp eq i16 %i.bq, 0
  br i1 %.not.i.i.us.us.9, label %mergemask_sb.exit.us.us.9, label %bb.k

bb.k:                                             ; preds = %mergemask_sb.exit.us.us.8
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = sext i8 %i.bs to i32
  %i.bu = ashr i32 %i.bt, %i.e
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.bw = trunc nsw i32 %i.bu to i8
  store i8 %i.bw, ptr %i.bv, align 1
  br label %mergemask_sb.exit.us.us.9

mergemask_sb.exit.us.us.9:                        ; preds = %bb.k, %mergemask_sb.exit.us.us.8
  %i.bx = and i16 %i.a, 1024
  %.not.i.i.us.us.10 = icmp eq i16 %i.bx, 0
  br i1 %.not.i.i.us.us.10, label %mergemask_sb.exit.us.us.10, label %bb.l

bb.l:                                             ; preds = %mergemask_sb.exit.us.us.9
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = sext i8 %i.bz to i32
  %i.cb = ashr i32 %i.ca, %i.e
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.cd = trunc nsw i32 %i.cb to i8
  store i8 %i.cd, ptr %i.cc, align 1
  br label %mergemask_sb.exit.us.us.10

mergemask_sb.exit.us.us.10:                       ; preds = %bb.l, %mergemask_sb.exit.us.us.9
  %i.ce = and i16 %i.a, 2048
  %.not.i.i.us.us.11 = icmp eq i16 %i.ce, 0
  br i1 %.not.i.i.us.us.11, label %mergemask_sb.exit.us.us.11, label %bb.m

bb.m:                                             ; preds = %mergemask_sb.exit.us.us.10
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = sext i8 %i.cg to i32
  %i.ci = ashr i32 %i.ch, %i.e
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.ck = trunc nsw i32 %i.ci to i8
  store i8 %i.ck, ptr %i.cj, align 1
  br label %mergemask_sb.exit.us.us.11

mergemask_sb.exit.us.us.11:                       ; preds = %bb.m, %mergemask_sb.exit.us.us.10
  %i.cl = and i16 %i.a, 4096
  %.not.i.i.us.us.12 = icmp eq i16 %i.cl, 0
  br i1 %.not.i.i.us.us.12, label %mergemask_sb.exit.us.us.12, label %bb.n

bb.n:                                             ; preds = %mergemask_sb.exit.us.us.11
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.cn = load i8, ptr %i.cm, align 1
  %i.co = sext i8 %i.cn to i32
  %i.cp = ashr i32 %i.co, %i.e
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.cr = trunc nsw i32 %i.cp to i8
  store i8 %i.cr, ptr %i.cq, align 1
  br label %mergemask_sb.exit.us.us.12

mergemask_sb.exit.us.us.12:                       ; preds = %bb.n, %mergemask_sb.exit.us.us.11
  %i.cs = and i16 %i.a, 8192
  %.not.i.i.us.us.13 = icmp eq i16 %i.cs, 0
  br i1 %.not.i.i.us.us.13, label %mergemask_sb.exit.us.us.13, label %bb.o

bb.o:                                             ; preds = %mergemask_sb.exit.us.us.12
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 13
  %i.cu = load i8, ptr %i.ct, align 1
  %i.cv = sext i8 %i.cu to i32
  %i.cw = ashr i32 %i.cv, %i.e
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.cy = trunc nsw i32 %i.cw to i8
  store i8 %i.cy, ptr %i.cx, align 1
  br label %mergemask_sb.exit.us.us.13

mergemask_sb.exit.us.us.13:                       ; preds = %bb.o, %mergemask_sb.exit.us.us.12
  %i.cz = and i16 %i.a, 16384
  %.not.i.i.us.us.14 = icmp eq i16 %i.cz, 0
  br i1 %.not.i.i.us.us.14, label %mergemask_sb.exit.us.us.14, label %bb.p

bb.p:                                             ; preds = %mergemask_sb.exit.us.us.13
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.db = load i8, ptr %i.da, align 1
  %i.dc = sext i8 %i.db to i32
  %i.dd = ashr i32 %i.dc, %i.e
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.df = trunc nsw i32 %i.dd to i8
  store i8 %i.df, ptr %i.de, align 1
  br label %mergemask_sb.exit.us.us.14

mergemask_sb.exit.us.us.14:                       ; preds = %bb.p, %mergemask_sb.exit.us.us.13
  %.not.i.i.us.us.15 = icmp sgt i16 %i.a, -1
  br i1 %.not.i.i.us.us.15, label %.critedge, label %bb.q

bb.q:                                             ; preds = %mergemask_sb.exit.us.us.14
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 15
  %i.dh = load i8, ptr %i.dg, align 1
  %i.di = sext i8 %i.dh to i32
  %i.dj = ashr i32 %i.di, %i.e
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.dl = trunc nsw i32 %i.dj to i8
  store i8 %i.dl, ptr %i.dk, align 1
  br label %.critedge

.split.us.split:                                  ; preds = %.split.us
  br i1 %i.d, label %.split.us.split.split.us, label %.split.us.split.split.preheader

.split.us.split.split.preheader:                  ; preds = %.split.us.split
  %i.dm = load i8, ptr %2, align 1                ; 2 uses
  %.not = icmp eq i8 %i.dm, 0                     ; 2 uses
  %i.dn = and i16 %i.a, 1
  %.not.i.i.us = icmp eq i16 %i.dn, 0
  br i1 %.not.i.i.us, label %mergemask_sb.exit.us, label %bb.s

.split.us.split.split.us:                         ; preds = %.split.us.split, %mergemask_sb.exit.us.us38
  %indvars.iv = phi i64 [ %indvars.iv.next, %mergemask_sb.exit.us.us38 ], [ 0, %.split.us.split ] ; 3 uses
  %.02027.us.us31 = phi i1 [ %i.ec, %mergemask_sb.exit.us.us38 ], [ false, %.split.us.split ]
  %.02225.us.us33 = phi i16 [ %i.ed, %mergemask_sb.exit.us.us38 ], [ %i.a, %.split.us.split ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.dp = load i8, ptr %i.do, align 1             ; 2 uses
  %i.dq = sext i8 %i.dp to i32
  %i.dr = shl nsw i32 %i.dq, %i.c                 ; 2 uses
  %i.ds = add nsw i32 %i.dr, 128
  %.not.us.us = icmp ult i32 %i.ds, 256           ; 2 uses
  %i.dt = and i16 %.02225.us.us33, 1              ; 2 uses
  %.not.i.i.us.us37 = icmp eq i16 %i.dt, 0
  br i1 %.not.i.i.us.us37, label %mergemask_sb.exit.us.us38, label %bb.r

bb.r:                                             ; preds = %.split.us.split.split.us
  %i.du = icmp sgt i8 %i.dp, -1
  %i.dv = select i1 %i.du, i32 127, i32 128
  %.3.i.us.us36 = select i1 %.not.us.us, i32 %i.dr, i32 %i.dv
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.dx = trunc i32 %.3.i.us.us36 to i8
  store i8 %i.dx, ptr %i.dw, align 1
  br label %mergemask_sb.exit.us.us38

mergemask_sb.exit.us.us38:                        ; preds = %bb.r, %.split.us.split.split.us
  %i.dy = zext nneg i16 %i.dt to i32
  %i.dz = select i1 %.not.us.us, i32 0, i32 %i.dy
  %i.ea = zext i1 %.02027.us.us31 to i32
  %i.eb = or i32 %i.dz, %i.ea
  %i.ec = icmp ne i32 %i.eb, 0                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ed = lshr i16 %.02225.us.us33, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %.split29.us, label %.split.us.split.split.us, !llvm.loop !42

bb.s:                                             ; preds = %.split.us.split.split.preheader
  %i.ee = icmp sgt i8 %i.dm, -1
  %i.ef = select i1 %i.ee, i8 127, i8 -128
  %i.eg = select i1 %.not, i8 0, i8 %i.ef
  store i8 %i.eg, ptr %1, align 1
  br label %mergemask_sb.exit.us

mergemask_sb.exit.us:                             ; preds = %bb.s, %.split.us.split.split.preheader
  %i.eh = lshr i16 %i.a, 1
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.ej = load i8, ptr %i.ei, align 1             ; 2 uses
  %i.ek = icmp eq i8 %i.ej, 0                     ; 2 uses
  %i.el = and i16 %i.eh, 1                        ; 2 uses
  %.not.i.i.us.1 = icmp eq i16 %i.el, 0
  br i1 %.not.i.i.us.1, label %mergemask_sb.exit.us.1, label %bb.t

bb.t:                                             ; preds = %mergemask_sb.exit.us
  %i.em = icmp sgt i8 %i.ej, -1
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.eo = select i1 %i.em, i8 127, i8 -128
  %i.ep = select i1 %i.ek, i8 0, i8 %i.eo
  store i8 %i.ep, ptr %i.en, align 1
  br label %mergemask_sb.exit.us.1

mergemask_sb.exit.us.1:                           ; preds = %bb.t, %mergemask_sb.exit.us
  %i.eq = zext nneg i16 %i.el to i32
  %i.er = select i1 %i.ek, i32 0, i32 %i.eq
  %i.es = and i16 %i.a, 1
  %i.et = zext nneg i16 %i.es to i32
  %i.eu = select i1 %.not, i32 0, i32 %i.et
  %i.ev = or i32 %i.er, %i.eu
  %i.ew = lshr i16 %i.a, 2
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ey = load i8, ptr %i.ex, align 1             ; 2 uses
  %i.ez = icmp eq i8 %i.ey, 0                     ; 2 uses
  %i.fa = and i16 %i.ew, 1                        ; 2 uses
  %.not.i.i.us.2 = icmp eq i16 %i.fa, 0
  br i1 %.not.i.i.us.2, label %mergemask_sb.exit.us.2, label %bb.u

bb.u:                                             ; preds = %mergemask_sb.exit.us.1
  %i.fb = icmp sgt i8 %i.ey, -1
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.fd = select i1 %i.fb, i8 127, i8 -128
  %i.fe = select i1 %i.ez, i8 0, i8 %i.fd
  store i8 %i.fe, ptr %i.fc, align 1
  br label %mergemask_sb.exit.us.2

mergemask_sb.exit.us.2:                           ; preds = %bb.u, %mergemask_sb.exit.us.1
  %i.ff = zext nneg i16 %i.fa to i32
  %i.fg = select i1 %i.ez, i32 0, i32 %i.ff
  %i.fh = or i32 %i.fg, %i.ev
  %i.fi = lshr i16 %i.a, 3
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.fk = load i8, ptr %i.fj, align 1             ; 2 uses
  %i.fl = icmp eq i8 %i.fk, 0                     ; 2 uses
  %i.fm = and i16 %i.fi, 1                        ; 2 uses
  %.not.i.i.us.3 = icmp eq i16 %i.fm, 0
  br i1 %.not.i.i.us.3, label %mergemask_sb.exit.us.3, label %bb.v

bb.v:                                             ; preds = %mergemask_sb.exit.us.2
  %i.fn = icmp sgt i8 %i.fk, -1
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.fp = select i1 %i.fn, i8 127, i8 -128
  %i.fq = select i1 %i.fl, i8 0, i8 %i.fp
  store i8 %i.fq, ptr %i.fo, align 1
  br label %mergemask_sb.exit.us.3

mergemask_sb.exit.us.3:                           ; preds = %bb.v, %mergemask_sb.exit.us.2
  %i.fr = zext nneg i16 %i.fm to i32
  %i.fs = select i1 %i.fl, i32 0, i32 %i.fr
  %i.ft = or i32 %i.fs, %i.fh
  %i.fu = lshr i16 %i.a, 4
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.fw = load i8, ptr %i.fv, align 1             ; 2 uses
  %i.fx = icmp eq i8 %i.fw, 0                     ; 2 uses
  %i.fy = and i16 %i.fu, 1                        ; 2 uses
  %.not.i.i.us.4 = icmp eq i16 %i.fy, 0
  br i1 %.not.i.i.us.4, label %mergemask_sb.exit.us.4, label %bb.w

bb.w:                                             ; preds = %mergemask_sb.exit.us.3
  %i.fz = icmp sgt i8 %i.fw, -1
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.gb = select i1 %i.fz, i8 127, i8 -128
  %i.gc = select i1 %i.fx, i8 0, i8 %i.gb
  store i8 %i.gc, ptr %i.ga, align 1
  br label %mergemask_sb.exit.us.4

mergemask_sb.exit.us.4:                           ; preds = %bb.w, %mergemask_sb.exit.us.3
  %i.gd = zext nneg i16 %i.fy to i32
  %i.ge = select i1 %i.fx, i32 0, i32 %i.gd
  %i.gf = or i32 %i.ge, %i.ft
  %i.gg = icmp ne i32 %i.gf, 0
  %i.gh = lshr i16 %i.a, 5
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.gj = load i8, ptr %i.gi, align 1             ; 2 uses
  %i.gk = icmp eq i8 %i.gj, 0                     ; 2 uses
  %i.gl = and i16 %i.gh, 1                        ; 2 uses
  %.not.i.i.us.5 = icmp eq i16 %i.gl, 0
  br i1 %.not.i.i.us.5, label %mergemask_sb.exit.us.5, label %bb.x

bb.x:                                             ; preds = %mergemask_sb.exit.us.4
  %i.gm = icmp sgt i8 %i.gj, -1
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.go = select i1 %i.gm, i8 127, i8 -128
  %i.gp = select i1 %i.gk, i8 0, i8 %i.go
  store i8 %i.gp, ptr %i.gn, align 1
  br label %mergemask_sb.exit.us.5

mergemask_sb.exit.us.5:                           ; preds = %bb.x, %mergemask_sb.exit.us.4
  %i.gq = zext nneg i16 %i.gl to i32
  %i.gr = select i1 %i.gk, i32 0, i32 %i.gq
  %i.gs = zext i1 %i.gg to i32
  %i.gt = or i32 %i.gr, %i.gs
  %i.gu = lshr i16 %i.a, 6
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.gw = load i8, ptr %i.gv, align 1             ; 2 uses
  %i.gx = icmp eq i8 %i.gw, 0                     ; 2 uses
  %i.gy = and i16 %i.gu, 1                        ; 2 uses
  %.not.i.i.us.6 = icmp eq i16 %i.gy, 0
  br i1 %.not.i.i.us.6, label %mergemask_sb.exit.us.6, label %bb.y

bb.y:                                             ; preds = %mergemask_sb.exit.us.5
  %i.gz = icmp sgt i8 %i.gw, -1
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.hb = select i1 %i.gz, i8 127, i8 -128
  %i.hc = select i1 %i.gx, i8 0, i8 %i.hb
  store i8 %i.hc, ptr %i.ha, align 1
  br label %mergemask_sb.exit.us.6

mergemask_sb.exit.us.6:                           ; preds = %bb.y, %mergemask_sb.exit.us.5
  %i.hd = zext nneg i16 %i.gy to i32
  %i.he = select i1 %i.gx, i32 0, i32 %i.hd
  %i.hf = or i32 %i.he, %i.gt
  %i.hg = lshr i16 %i.a, 7
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.hi = load i8, ptr %i.hh, align 1             ; 2 uses
  %i.hj = icmp eq i8 %i.hi, 0                     ; 2 uses
  %i.hk = and i16 %i.hg, 1                        ; 2 uses
  %.not.i.i.us.7 = icmp eq i16 %i.hk, 0
  br i1 %.not.i.i.us.7, label %mergemask_sb.exit.us.7, label %bb.z

bb.z:                                             ; preds = %mergemask_sb.exit.us.6
  %i.hl = icmp sgt i8 %i.hi, -1
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.hn = select i1 %i.hl, i8 127, i8 -128
  %i.ho = select i1 %i.hj, i8 0, i8 %i.hn
  store i8 %i.ho, ptr %i.hm, align 1
  br label %mergemask_sb.exit.us.7

mergemask_sb.exit.us.7:                           ; preds = %bb.z, %mergemask_sb.exit.us.6
  %i.hp = zext nneg i16 %i.hk to i32
  %i.hq = select i1 %i.hj, i32 0, i32 %i.hp
  %i.hr = or i32 %i.hq, %i.hf
  %i.hs = lshr i16 %i.a, 8
  %i.ht = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hu = load i8, ptr %i.ht, align 1             ; 2 uses
  %i.hv = icmp eq i8 %i.hu, 0                     ; 2 uses
  %i.hw = and i16 %i.hs, 1                        ; 2 uses
  %.not.i.i.us.8 = icmp eq i16 %i.hw, 0
  br i1 %.not.i.i.us.8, label %mergemask_sb.exit.us.8, label %bb.aa

bb.aa:                                            ; preds = %mergemask_sb.exit.us.7
  %i.hx = icmp sgt i8 %i.hu, -1
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hz = select i1 %i.hx, i8 127, i8 -128
  %i.ia = select i1 %i.hv, i8 0, i8 %i.hz
  store i8 %i.ia, ptr %i.hy, align 1
  br label %mergemask_sb.exit.us.8

mergemask_sb.exit.us.8:                           ; preds = %bb.aa, %mergemask_sb.exit.us.7
  %i.ib = zext nneg i16 %i.hw to i32
  %i.ic = select i1 %i.hv, i32 0, i32 %i.ib
  %i.id = or i32 %i.ic, %i.hr
  %i.ie = icmp ne i32 %i.id, 0
  %i.if = lshr i16 %i.a, 9
  %i.ig = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.ih = load i8, ptr %i.ig, align 1             ; 2 uses
  %i.ii = icmp eq i8 %i.ih, 0                     ; 2 uses
  %i.ij = and i16 %i.if, 1                        ; 2 uses
  %.not.i.i.us.9 = icmp eq i16 %i.ij, 0
  br i1 %.not.i.i.us.9, label %mergemask_sb.exit.us.9, label %bb.ab

bb.ab:                                            ; preds = %mergemask_sb.exit.us.8
  %i.ik = icmp sgt i8 %i.ih, -1
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.im = select i1 %i.ik, i8 127, i8 -128
  %i.in = select i1 %i.ii, i8 0, i8 %i.im
  store i8 %i.in, ptr %i.il, align 1
  br label %mergemask_sb.exit.us.9

mergemask_sb.exit.us.9:                           ; preds = %bb.ab, %mergemask_sb.exit.us.8
  %i.io = zext nneg i16 %i.ij to i32
  %i.ip = select i1 %i.ii, i32 0, i32 %i.io
  %i.iq = zext i1 %i.ie to i32
  %i.ir = or i32 %i.ip, %i.iq
  %i.is = lshr i16 %i.a, 10
  %i.it = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.iu = load i8, ptr %i.it, align 1             ; 2 uses
  %i.iv = icmp eq i8 %i.iu, 0                     ; 2 uses
end_hunk_31
begin_hunk_32_@helper_mve_vqshlui_sb:bb.a
  %i.dw = lshr i16 %i.a, 9
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.dy = load i8, ptr %i.dx, align 1             ; 2 uses
  %i.dz = icmp sgt i8 %i.dy, -1                   ; 2 uses
  %i.ea = and i16 %i.dw, 1                        ; 2 uses
  %.not.i.i23.us.us.9 = icmp eq i16 %i.ea, 0
  br i1 %.not.i.i23.us.us.9, label %mergemask_sb.exit.us.us.9, label %bb.k

bb.k:                                             ; preds = %mergemask_sb.exit.us.us.8
  %i.eb = sext i8 %i.dy to i32
  %i.ec = lshr i32 %i.eb, %i.e
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ee = trunc nuw i32 %i.ec to i8
  %i.ef = select i1 %i.dz, i8 %i.ee, i8 0
  store i8 %i.ef, ptr %i.ed, align 1
  br label %mergemask_sb.exit.us.us.9

mergemask_sb.exit.us.us.9:                        ; preds = %bb.k, %mergemask_sb.exit.us.us.8
  %i.eg = zext nneg i16 %i.ea to i32
  %i.eh = select i1 %i.dz, i32 0, i32 %i.eg
  %i.ei = zext i1 %i.dv to i32
  %i.ej = or i32 %i.eh, %i.ei
  %i.ek = lshr i16 %i.a, 10
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.em = load i8, ptr %i.el, align 1             ; 2 uses
  %i.en = icmp sgt i8 %i.em, -1                   ; 2 uses
  %i.eo = and i16 %i.ek, 1                        ; 2 uses
  %.not.i.i23.us.us.10 = icmp eq i16 %i.eo, 0
  br i1 %.not.i.i23.us.us.10, label %mergemask_sb.exit.us.us.10, label %bb.l

bb.l:                                             ; preds = %mergemask_sb.exit.us.us.9
  %i.ep = sext i8 %i.em to i32
  %i.eq = lshr i32 %i.ep, %i.e
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.es = trunc nuw i32 %i.eq to i8
  %i.et = select i1 %i.en, i8 %i.es, i8 0
  store i8 %i.et, ptr %i.er, align 1
  br label %mergemask_sb.exit.us.us.10

mergemask_sb.exit.us.us.10:                       ; preds = %bb.l, %mergemask_sb.exit.us.us.9
  %i.eu = zext nneg i16 %i.eo to i32
  %i.ev = select i1 %i.en, i32 0, i32 %i.eu
  %i.ew = or i32 %i.ev, %i.ej
  %i.ex = lshr i16 %i.a, 11
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.ez = load i8, ptr %i.ey, align 1             ; 2 uses
  %i.fa = icmp sgt i8 %i.ez, -1                   ; 2 uses
  %i.fb = and i16 %i.ex, 1                        ; 2 uses
  %.not.i.i23.us.us.11 = icmp eq i16 %i.fb, 0
  br i1 %.not.i.i23.us.us.11, label %mergemask_sb.exit.us.us.11, label %bb.m

bb.m:                                             ; preds = %mergemask_sb.exit.us.us.10
  %i.fc = sext i8 %i.ez to i32
  %i.fd = lshr i32 %i.fc, %i.e
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.ff = trunc nuw i32 %i.fd to i8
  %i.fg = select i1 %i.fa, i8 %i.ff, i8 0
  store i8 %i.fg, ptr %i.fe, align 1
  br label %mergemask_sb.exit.us.us.11

mergemask_sb.exit.us.us.11:                       ; preds = %bb.m, %mergemask_sb.exit.us.us.10
  %i.fh = zext nneg i16 %i.fb to i32
  %i.fi = select i1 %i.fa, i32 0, i32 %i.fh
  %i.fj = or i32 %i.fi, %i.ew
  %i.fk = lshr i16 %i.a, 12
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.fm = load i8, ptr %i.fl, align 1             ; 2 uses
  %i.fn = icmp sgt i8 %i.fm, -1                   ; 2 uses
  %i.fo = and i16 %i.fk, 1                        ; 2 uses
  %.not.i.i23.us.us.12 = icmp eq i16 %i.fo, 0
  br i1 %.not.i.i23.us.us.12, label %mergemask_sb.exit.us.us.12, label %bb.n

bb.n:                                             ; preds = %mergemask_sb.exit.us.us.11
  %i.fp = sext i8 %i.fm to i32
  %i.fq = lshr i32 %i.fp, %i.e
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.fs = trunc nuw i32 %i.fq to i8
  %i.ft = select i1 %i.fn, i8 %i.fs, i8 0
  store i8 %i.ft, ptr %i.fr, align 1
  br label %mergemask_sb.exit.us.us.12

mergemask_sb.exit.us.us.12:                       ; preds = %bb.n, %mergemask_sb.exit.us.us.11
  %i.fu = zext nneg i16 %i.fo to i32
  %i.fv = select i1 %i.fn, i32 0, i32 %i.fu
  %i.fw = or i32 %i.fv, %i.fj
  %i.fx = icmp ne i32 %i.fw, 0
  %i.fy = lshr i16 %i.a, 13
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 13
  %i.ga = load i8, ptr %i.fz, align 1             ; 2 uses
  %i.gb = icmp sgt i8 %i.ga, -1                   ; 2 uses
  %i.gc = and i16 %i.fy, 1                        ; 2 uses
  %.not.i.i23.us.us.13 = icmp eq i16 %i.gc, 0
  br i1 %.not.i.i23.us.us.13, label %mergemask_sb.exit.us.us.13, label %bb.o

bb.o:                                             ; preds = %mergemask_sb.exit.us.us.12
  %i.gd = sext i8 %i.ga to i32
  %i.ge = lshr i32 %i.gd, %i.e
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.gg = trunc nuw i32 %i.ge to i8
  %i.gh = select i1 %i.gb, i8 %i.gg, i8 0
  store i8 %i.gh, ptr %i.gf, align 1
  br label %mergemask_sb.exit.us.us.13

mergemask_sb.exit.us.us.13:                       ; preds = %bb.o, %mergemask_sb.exit.us.us.12
  %i.gi = zext nneg i16 %i.gc to i32
  %i.gj = select i1 %i.gb, i32 0, i32 %i.gi
  %i.gk = zext i1 %i.fx to i32
  %i.gl = or i32 %i.gj, %i.gk
  %i.gm = lshr i16 %i.a, 14
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.go = load i8, ptr %i.gn, align 1             ; 2 uses
  %i.gp = icmp sgt i8 %i.go, -1                   ; 2 uses
  %i.gq = and i16 %i.gm, 1                        ; 2 uses
  %.not.i.i23.us.us.14 = icmp eq i16 %i.gq, 0
  br i1 %.not.i.i23.us.us.14, label %mergemask_sb.exit.us.us.14, label %bb.p

bb.p:                                             ; preds = %mergemask_sb.exit.us.us.13
  %i.gr = sext i8 %i.go to i32
  %i.gs = lshr i32 %i.gr, %i.e
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.gu = trunc nuw i32 %i.gs to i8
  %i.gv = select i1 %i.gp, i8 %i.gu, i8 0
  store i8 %i.gv, ptr %i.gt, align 1
  br label %mergemask_sb.exit.us.us.14

mergemask_sb.exit.us.us.14:                       ; preds = %bb.p, %mergemask_sb.exit.us.us.13
  %i.gw = zext nneg i16 %i.gq to i32
  %i.gx = select i1 %i.gp, i32 0, i32 %i.gw
  %i.gy = or i32 %i.gx, %i.gl
  %i.gz = lshr i16 %i.a, 15
  %i.ha = getelementptr inbounds nuw i8, ptr %2, i64 15
  %i.hb = load i8, ptr %i.ha, align 1             ; 2 uses
  %i.hc = icmp sgt i8 %i.hb, -1                   ; 2 uses
  %.not.i.i23.us.us.15 = icmp sgt i16 %i.a, -1
  br i1 %.not.i.i23.us.us.15, label %mergemask_sb.exit.us.us.15, label %bb.q

bb.q:                                             ; preds = %mergemask_sb.exit.us.us.14
  %i.hd = sext i8 %i.hb to i32
  %i.he = lshr i32 %i.hd, %i.e
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.hg = trunc nuw i32 %i.he to i8
  %i.hh = select i1 %i.hc, i8 %i.hg, i8 0
  store i8 %i.hh, ptr %i.hf, align 1
  br label %mergemask_sb.exit.us.us.15

mergemask_sb.exit.us.us.15:                       ; preds = %bb.q, %mergemask_sb.exit.us.us.14
  %i.hi = zext nneg i16 %i.gz to i32
  %i.hj = select i1 %i.hc, i32 0, i32 %i.hi
  %i.hk = or i32 %i.hj, %i.gy
  %.not59 = icmp eq i32 %i.hk, 0
  br i1 %.not59, label %bb.ba, label %bb.az

.split.us.split:                                  ; preds = %.split.us
  br i1 %i.d, label %.split.us.split.split.us, label %.split.us.split.split.preheader

.split.us.split.split.preheader:                  ; preds = %.split.us.split
  %i.hl = load i8, ptr %2, align 1                ; 2 uses
  %.not.not = icmp eq i8 %i.hl, 0
  %i.hm = and i16 %i.a, 1
  %.not.i.i23.us = icmp eq i16 %i.hm, 0
  br i1 %.not.i.i23.us, label %mergemask_sb.exit.us, label %bb.t

.split.us.split.split.us:                         ; preds = %.split.us.split, %mergemask_sb.exit.us.us38
  %indvars.iv = phi i64 [ %indvars.iv.next, %mergemask_sb.exit.us.us38 ], [ 0, %.split.us.split ] ; 3 uses
  %.02027.us.us31 = phi i1 [ %i.ib, %mergemask_sb.exit.us.us38 ], [ false, %.split.us.split ]
  %.02225.us.us33 = phi i16 [ %i.ic, %mergemask_sb.exit.us.us38 ], [ %i.a, %.split.us.split ] ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.ho = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.hp = load i8, ptr %i.ho, align 1             ; 2 uses
  %i.hq = icmp slt i8 %i.hp, 0
  br i1 %i.hq, label %do_suqrshl_bhs.exit.us.us34, label %bb.r

bb.r:                                             ; preds = %.split.us.split.split.us
  %i.hr = zext nneg i8 %i.hp to i32
  %i.hs = shl nuw nsw i32 %i.hr, %i.c             ; 2 uses
  %i.ht = icmp samesign ult i32 %i.hs, 256
  %i.hu = tail call i32 @llvm.umin.i32(i32 %i.hs, i32 255)
  %i.hv = trunc nuw i32 %i.hu to i8
  br label %do_suqrshl_bhs.exit.us.us34

do_suqrshl_bhs.exit.us.us34:                      ; preds = %bb.r, %.split.us.split.split.us
  %.not.not.us.us35 = phi i1 [ false, %.split.us.split.split.us ], [ %i.ht, %bb.r ]
  %.0.i.us.us36 = phi i8 [ 0, %.split.us.split.split.us ], [ %i.hv, %bb.r ]
  %i.hw = and i16 %.02225.us.us33, 1              ; 2 uses
  %.not.i.i23.us.us37 = icmp eq i16 %i.hw, 0
  br i1 %.not.i.i23.us.us37, label %mergemask_sb.exit.us.us38, label %bb.s

bb.s:                                             ; preds = %do_suqrshl_bhs.exit.us.us34
  store i8 %.0.i.us.us36, ptr %i.hn, align 1
  br label %mergemask_sb.exit.us.us38

mergemask_sb.exit.us.us38:                        ; preds = %bb.s, %do_suqrshl_bhs.exit.us.us34
  %i.hx = zext nneg i16 %i.hw to i32
  %i.hy = select i1 %.not.not.us.us35, i32 0, i32 %i.hx
  %i.hz = zext i1 %.02027.us.us31 to i32
  %i.ia = or i32 %i.hy, %i.hz
  %i.ib = icmp ne i32 %i.ia, 0                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ic = lshr i16 %.02225.us.us33, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %.split29.us, label %.split.us.split.split.us, !llvm.loop !43

bb.t:                                             ; preds = %.split.us.split.split.preheader
  %i.id = icmp sgt i8 %i.hl, 0
  %i.ie = sext i1 %i.id to i8
  store i8 %i.ie, ptr %1, align 1
  br label %mergemask_sb.exit.us

mergemask_sb.exit.us:                             ; preds = %bb.t, %.split.us.split.split.preheader
  %i.if = lshr i16 %i.a, 1
  %i.ig = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.ih = load i8, ptr %i.ig, align 1             ; 2 uses
  %.not.1 = icmp eq i8 %i.ih, 0
  %i.ii = and i16 %i.if, 1                        ; 2 uses
  %.not.i.i23.us.1 = icmp eq i16 %i.ii, 0
  br i1 %.not.i.i23.us.1, label %mergemask_sb.exit.us.1, label %bb.u

bb.u:                                             ; preds = %mergemask_sb.exit.us
  %i.ij = icmp sgt i8 %i.ih, 0
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.il = sext i1 %i.ij to i8
  store i8 %i.il, ptr %i.ik, align 1
  br label %mergemask_sb.exit.us.1

mergemask_sb.exit.us.1:                           ; preds = %bb.u, %mergemask_sb.exit.us
  %i.im = zext nneg i16 %i.ii to i32
  %i.in = select i1 %.not.1, i32 0, i32 %i.im
  %i.io = and i16 %i.a, 1
  %i.ip = zext nneg i16 %i.io to i32
  %i.iq = select i1 %.not.not, i32 0, i32 %i.ip
  %i.ir = or i32 %i.in, %i.iq
  %i.is = lshr i16 %i.a, 2
  %i.it = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.iu = load i8, ptr %i.it, align 1             ; 2 uses
  %.not.2 = icmp eq i8 %i.iu, 0
  %i.iv = and i16 %i.is, 1                        ; 2 uses
  %.not.i.i23.us.2 = icmp eq i16 %i.iv, 0
  br i1 %.not.i.i23.us.2, label %mergemask_sb.exit.us.2, label %bb.v

bb.v:                                             ; preds = %mergemask_sb.exit.us.1
  %i.iw = icmp sgt i8 %i.iu, 0
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.iy = sext i1 %i.iw to i8
  store i8 %i.iy, ptr %i.ix, align 1
  br label %mergemask_sb.exit.us.2

mergemask_sb.exit.us.2:                           ; preds = %bb.v, %mergemask_sb.exit.us.1
  %i.iz = zext nneg i16 %i.iv to i32
  %i.ja = select i1 %.not.2, i32 0, i32 %i.iz
  %i.jb = or i32 %i.ja, %i.ir
  %i.jc = lshr i16 %i.a, 3
  %i.jd = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.je = load i8, ptr %i.jd, align 1             ; 2 uses
  %.not.3 = icmp eq i8 %i.je, 0
  %i.jf = and i16 %i.jc, 1                        ; 2 uses
  %.not.i.i23.us.3 = icmp eq i16 %i.jf, 0
  br i1 %.not.i.i23.us.3, label %mergemask_sb.exit.us.3, label %bb.w

bb.w:                                             ; preds = %mergemask_sb.exit.us.2
  %i.jg = icmp sgt i8 %i.je, 0
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ji = sext i1 %i.jg to i8
  store i8 %i.ji, ptr %i.jh, align 1
  br label %mergemask_sb.exit.us.3

mergemask_sb.exit.us.3:                           ; preds = %bb.w, %mergemask_sb.exit.us.2
  %i.jj = zext nneg i16 %i.jf to i32
  %i.jk = select i1 %.not.3, i32 0, i32 %i.jj
  %i.jl = or i32 %i.jk, %i.jb
  %i.jm = lshr i16 %i.a, 4
  %i.jn = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.jo = load i8, ptr %i.jn, align 1             ; 2 uses
  %.not.4 = icmp eq i8 %i.jo, 0
  %i.jp = and i16 %i.jm, 1                        ; 2 uses
  %.not.i.i23.us.4 = icmp eq i16 %i.jp, 0
  br i1 %.not.i.i23.us.4, label %mergemask_sb.exit.us.4, label %bb.x

bb.x:                                             ; preds = %mergemask_sb.exit.us.3
  %i.jq = icmp sgt i8 %i.jo, 0
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.js = sext i1 %i.jq to i8
  store i8 %i.js, ptr %i.jr, align 1
  br label %mergemask_sb.exit.us.4

mergemask_sb.exit.us.4:                           ; preds = %bb.x, %mergemask_sb.exit.us.3
  %i.jt = zext nneg i16 %i.jp to i32
  %i.ju = select i1 %.not.4, i32 0, i32 %i.jt
  %i.jv = or i32 %i.ju, %i.jl
  %i.jw = icmp ne i32 %i.jv, 0
  %i.jx = lshr i16 %i.a, 5
  %i.jy = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.jz = load i8, ptr %i.jy, align 1             ; 2 uses
  %.not.5 = icmp eq i8 %i.jz, 0
  %i.ka = and i16 %i.jx, 1                        ; 2 uses
  %.not.i.i23.us.5 = icmp eq i16 %i.ka, 0
  br i1 %.not.i.i23.us.5, label %mergemask_sb.exit.us.5, label %bb.y

bb.y:                                             ; preds = %mergemask_sb.exit.us.4
  %i.kb = icmp sgt i8 %i.jz, 0
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.kd = sext i1 %i.kb to i8
  store i8 %i.kd, ptr %i.kc, align 1
  br label %mergemask_sb.exit.us.5

mergemask_sb.exit.us.5:                           ; preds = %bb.y, %mergemask_sb.exit.us.4
  %i.ke = zext nneg i16 %i.ka to i32
  %i.kf = select i1 %.not.5, i32 0, i32 %i.ke
  %i.kg = zext i1 %i.jw to i32
  %i.kh = or i32 %i.kf, %i.kg
  %i.ki = lshr i16 %i.a, 6
  %i.kj = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.kk = load i8, ptr %i.kj, align 1             ; 2 uses
  %.not.6 = icmp eq i8 %i.kk, 0
  %i.kl = and i16 %i.ki, 1                        ; 2 uses
  %.not.i.i23.us.6 = icmp eq i16 %i.kl, 0
  br i1 %.not.i.i23.us.6, label %mergemask_sb.exit.us.6, label %bb.z

bb.z:                                             ; preds = %mergemask_sb.exit.us.5
  %i.km = icmp sgt i8 %i.kk, 0
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ko = sext i1 %i.km to i8
  store i8 %i.ko, ptr %i.kn, align 1
  br label %mergemask_sb.exit.us.6

mergemask_sb.exit.us.6:                           ; preds = %bb.z, %mergemask_sb.exit.us.5
  %i.kp = zext nneg i16 %i.kl to i32
  %i.kq = select i1 %.not.6, i32 0, i32 %i.kp
  %i.kr = or i32 %i.kq, %i.kh
  %i.ks = lshr i16 %i.a, 7
  %i.kt = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.ku = load i8, ptr %i.kt, align 1             ; 2 uses
  %.not.7 = icmp eq i8 %i.ku, 0
  %i.kv = and i16 %i.ks, 1                        ; 2 uses
  %.not.i.i23.us.7 = icmp eq i16 %i.kv, 0
  br i1 %.not.i.i23.us.7, label %mergemask_sb.exit.us.7, label %bb.aa

bb.aa:                                            ; preds = %mergemask_sb.exit.us.6
  %i.kw = icmp sgt i8 %i.ku, 0
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ky = sext i1 %i.kw to i8
  store i8 %i.ky, ptr %i.kx, align 1
  br label %mergemask_sb.exit.us.7

mergemask_sb.exit.us.7:                           ; preds = %bb.aa, %mergemask_sb.exit.us.6
  %i.kz = zext nneg i16 %i.kv to i32
  %i.la = select i1 %.not.7, i32 0, i32 %i.kz
  %i.lb = or i32 %i.la, %i.kr
  %i.lc = lshr i16 %i.a, 8
  %i.ld = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.le = load i8, ptr %i.ld, align 1             ; 2 uses
  %.not.8 = icmp eq i8 %i.le, 0
  %i.lf = and i16 %i.lc, 1                        ; 2 uses
  %.not.i.i23.us.8 = icmp eq i16 %i.lf, 0
  br i1 %.not.i.i23.us.8, label %mergemask_sb.exit.us.8, label %bb.ab

bb.ab:                                            ; preds = %mergemask_sb.exit.us.7
  %i.lg = icmp sgt i8 %i.le, 0
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.li = sext i1 %i.lg to i8
  store i8 %i.li, ptr %i.lh, align 1
  br label %mergemask_sb.exit.us.8

mergemask_sb.exit.us.8:                           ; preds = %bb.ab, %mergemask_sb.exit.us.7
  %i.lj = zext nneg i16 %i.lf to i32
  %i.lk = select i1 %.not.8, i32 0, i32 %i.lj
  %i.ll = or i32 %i.lk, %i.lb
  %i.lm = icmp ne i32 %i.ll, 0
  %i.ln = lshr i16 %i.a, 9
  %i.lo = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.lp = load i8, ptr %i.lo, align 1             ; 2 uses
  %.not.9 = icmp eq i8 %i.lp, 0
  %i.lq = and i16 %i.ln, 1                        ; 2 uses
  %.not.i.i23.us.9 = icmp eq i16 %i.lq, 0
  br i1 %.not.i.i23.us.9, label %mergemask_sb.exit.us.9, label %bb.ac

bb.ac:                                            ; preds = %mergemask_sb.exit.us.8
  %i.lr = icmp sgt i8 %i.lp, 0
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.lt = sext i1 %i.lr to i8
  store i8 %i.lt, ptr %i.ls, align 1
  br label %mergemask_sb.exit.us.9

mergemask_sb.exit.us.9:                           ; preds = %bb.ac, %mergemask_sb.exit.us.8
  %i.lu = zext nneg i16 %i.lq to i32
  %i.lv = select i1 %.not.9, i32 0, i32 %i.lu
  %i.lw = zext i1 %i.lm to i32
  %i.lx = or i32 %i.lv, %i.lw
  %i.ly = lshr i16 %i.a, 10
  %i.lz = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ma = load i8, ptr %i.lz, align 1             ; 2 uses
  %.not.10 = icmp eq i8 %i.ma, 0
  %i.mb = and i16 %i.ly, 1                        ; 2 uses
  %.not.i.i23.us.10 = icmp eq i16 %i.mb, 0
  br i1 %.not.i.i23.us.10, label %mergemask_sb.exit.us.10, label %bb.ad

bb.ad:                                            ; preds = %mergemask_sb.exit.us.9
  %i.mc = icmp sgt i8 %i.ma, 0
  %i.md = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.me = sext i1 %i.mc to i8
  store i8 %i.me, ptr %i.md, align 1
  br label %mergemask_sb.exit.us.10
end_hunk_32
begin_hunk_33_@helper_mve_vqrshli_sb:bb.a
  br i1 %.not.i.i.us.us.7, label %mergemask_sb.exit.us.us.7, label %bb.i

bb.i:                                             ; preds = %mergemask_sb.exit.us.us.6
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = sext i8 %i.bz to i32
  %i.cb = ashr i32 %i.ca, %i.e                    ; 2 uses
  %i.cc = lshr i32 %i.cb, 1
  %i.cd = and i32 %i.cb, 1
  %i.ce = add nuw i32 %i.cc, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.cg = trunc i32 %i.ce to i8
  store i8 %i.cg, ptr %i.cf, align 1
  br label %mergemask_sb.exit.us.us.7

mergemask_sb.exit.us.us.7:                        ; preds = %bb.i, %mergemask_sb.exit.us.us.6
  %i.ch = and i16 %i.a, 256
  %.not.i.i.us.us.8 = icmp eq i16 %i.ch, 0
  br i1 %.not.i.i.us.us.8, label %mergemask_sb.exit.us.us.8, label %bb.j

bb.j:                                             ; preds = %mergemask_sb.exit.us.us.7
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = sext i8 %i.cj to i32
  %i.cl = ashr i32 %i.ck, %i.e                    ; 2 uses
  %i.cm = lshr i32 %i.cl, 1
  %i.cn = and i32 %i.cl, 1
  %i.co = add nuw i32 %i.cm, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cq = trunc i32 %i.co to i8
  store i8 %i.cq, ptr %i.cp, align 1
  br label %mergemask_sb.exit.us.us.8

mergemask_sb.exit.us.us.8:                        ; preds = %bb.j, %mergemask_sb.exit.us.us.7
  %i.cr = and i16 %i.a, 512
  %.not.i.i.us.us.9 = icmp eq i16 %i.cr, 0
  br i1 %.not.i.i.us.us.9, label %mergemask_sb.exit.us.us.9, label %bb.k

bb.k:                                             ; preds = %mergemask_sb.exit.us.us.8
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.ct = load i8, ptr %i.cs, align 1
  %i.cu = sext i8 %i.ct to i32
  %i.cv = ashr i32 %i.cu, %i.e                    ; 2 uses
  %i.cw = lshr i32 %i.cv, 1
  %i.cx = and i32 %i.cv, 1
  %i.cy = add nuw i32 %i.cw, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.da = trunc i32 %i.cy to i8
  store i8 %i.da, ptr %i.cz, align 1
  br label %mergemask_sb.exit.us.us.9

mergemask_sb.exit.us.us.9:                        ; preds = %bb.k, %mergemask_sb.exit.us.us.8
  %i.db = and i16 %i.a, 1024
  %.not.i.i.us.us.10 = icmp eq i16 %i.db, 0
  br i1 %.not.i.i.us.us.10, label %mergemask_sb.exit.us.us.10, label %bb.l

bb.l:                                             ; preds = %mergemask_sb.exit.us.us.9
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.dd = load i8, ptr %i.dc, align 1
  %i.de = sext i8 %i.dd to i32
  %i.df = ashr i32 %i.de, %i.e                    ; 2 uses
  %i.dg = lshr i32 %i.df, 1
  %i.dh = and i32 %i.df, 1
  %i.di = add nuw i32 %i.dg, %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.dk = trunc i32 %i.di to i8
  store i8 %i.dk, ptr %i.dj, align 1
  br label %mergemask_sb.exit.us.us.10

mergemask_sb.exit.us.us.10:                       ; preds = %bb.l, %mergemask_sb.exit.us.us.9
  %i.dl = and i16 %i.a, 2048
  %.not.i.i.us.us.11 = icmp eq i16 %i.dl, 0
  br i1 %.not.i.i.us.us.11, label %mergemask_sb.exit.us.us.11, label %bb.m

bb.m:                                             ; preds = %mergemask_sb.exit.us.us.10
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.dn = load i8, ptr %i.dm, align 1
  %i.do = sext i8 %i.dn to i32
  %i.dp = ashr i32 %i.do, %i.e                    ; 2 uses
  %i.dq = lshr i32 %i.dp, 1
  %i.dr = and i32 %i.dp, 1
  %i.ds = add nuw i32 %i.dq, %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.du = trunc i32 %i.ds to i8
  store i8 %i.du, ptr %i.dt, align 1
  br label %mergemask_sb.exit.us.us.11

mergemask_sb.exit.us.us.11:                       ; preds = %bb.m, %mergemask_sb.exit.us.us.10
  %i.dv = and i16 %i.a, 4096
  %.not.i.i.us.us.12 = icmp eq i16 %i.dv, 0
  br i1 %.not.i.i.us.us.12, label %mergemask_sb.exit.us.us.12, label %bb.n

bb.n:                                             ; preds = %mergemask_sb.exit.us.us.11
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.dx = load i8, ptr %i.dw, align 1
  %i.dy = sext i8 %i.dx to i32
  %i.dz = ashr i32 %i.dy, %i.e                    ; 2 uses
  %i.ea = lshr i32 %i.dz, 1
  %i.eb = and i32 %i.dz, 1
  %i.ec = add nuw i32 %i.ea, %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ee = trunc i32 %i.ec to i8
  store i8 %i.ee, ptr %i.ed, align 1
  br label %mergemask_sb.exit.us.us.12

mergemask_sb.exit.us.us.12:                       ; preds = %bb.n, %mergemask_sb.exit.us.us.11
  %i.ef = and i16 %i.a, 8192
  %.not.i.i.us.us.13 = icmp eq i16 %i.ef, 0
  br i1 %.not.i.i.us.us.13, label %mergemask_sb.exit.us.us.13, label %bb.o

bb.o:                                             ; preds = %mergemask_sb.exit.us.us.12
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 13
  %i.eh = load i8, ptr %i.eg, align 1
  %i.ei = sext i8 %i.eh to i32
  %i.ej = ashr i32 %i.ei, %i.e                    ; 2 uses
  %i.ek = lshr i32 %i.ej, 1
  %i.el = and i32 %i.ej, 1
  %i.em = add nuw i32 %i.ek, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.eo = trunc i32 %i.em to i8
  store i8 %i.eo, ptr %i.en, align 1
  br label %mergemask_sb.exit.us.us.13

mergemask_sb.exit.us.us.13:                       ; preds = %bb.o, %mergemask_sb.exit.us.us.12
  %i.ep = and i16 %i.a, 16384
  %.not.i.i.us.us.14 = icmp eq i16 %i.ep, 0
  br i1 %.not.i.i.us.us.14, label %mergemask_sb.exit.us.us.14, label %bb.p

bb.p:                                             ; preds = %mergemask_sb.exit.us.us.13
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.er = load i8, ptr %i.eq, align 1
  %i.es = sext i8 %i.er to i32
  %i.et = ashr i32 %i.es, %i.e                    ; 2 uses
  %i.eu = lshr i32 %i.et, 1
  %i.ev = and i32 %i.et, 1
  %i.ew = add nuw i32 %i.eu, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.ey = trunc i32 %i.ew to i8
  store i8 %i.ey, ptr %i.ex, align 1
  br label %mergemask_sb.exit.us.us.14

mergemask_sb.exit.us.us.14:                       ; preds = %bb.p, %mergemask_sb.exit.us.us.13
  %.not.i.i.us.us.15 = icmp sgt i16 %i.a, -1
  br i1 %.not.i.i.us.us.15, label %.critedge, label %bb.q

bb.q:                                             ; preds = %mergemask_sb.exit.us.us.14
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 15
  %i.fa = load i8, ptr %i.ez, align 1
  %i.fb = sext i8 %i.fa to i32
  %i.fc = ashr i32 %i.fb, %i.e                    ; 2 uses
  %i.fd = lshr i32 %i.fc, 1
  %i.fe = and i32 %i.fc, 1
  %i.ff = add nuw i32 %i.fd, %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.fh = trunc i32 %i.ff to i8
  store i8 %i.fh, ptr %i.fg, align 1
  br label %.critedge

.split.us.split:                                  ; preds = %.split.us
  br i1 %i.d, label %.split.us.split.split.us, label %.split.us.split.split.preheader

.split.us.split.split.preheader:                  ; preds = %.split.us.split
  %i.fi = load i8, ptr %2, align 1                ; 2 uses
  %.not = icmp eq i8 %i.fi, 0                     ; 2 uses
  %i.fj = and i16 %i.a, 1
  %.not.i.i.us = icmp eq i16 %i.fj, 0
  br i1 %.not.i.i.us, label %mergemask_sb.exit.us, label %bb.s

.split.us.split.split.us:                         ; preds = %.split.us.split, %mergemask_sb.exit.us.us38
  %indvars.iv = phi i64 [ %indvars.iv.next, %mergemask_sb.exit.us.us38 ], [ 0, %.split.us.split ] ; 3 uses
  %.02027.us.us31 = phi i1 [ %i.fy, %mergemask_sb.exit.us.us38 ], [ false, %.split.us.split ]
  %.02225.us.us33 = phi i16 [ %i.fz, %mergemask_sb.exit.us.us38 ], [ %i.a, %.split.us.split ] ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.fl = load i8, ptr %i.fk, align 1             ; 2 uses
  %i.fm = sext i8 %i.fl to i32
  %i.fn = shl nsw i32 %i.fm, %i.c                 ; 2 uses
  %i.fo = add nsw i32 %i.fn, 128
  %.not.us.us = icmp ult i32 %i.fo, 256           ; 2 uses
  %i.fp = and i16 %.02225.us.us33, 1              ; 2 uses
  %.not.i.i.us.us37 = icmp eq i16 %i.fp, 0
  br i1 %.not.i.i.us.us37, label %mergemask_sb.exit.us.us38, label %bb.r

bb.r:                                             ; preds = %.split.us.split.split.us
  %i.fq = icmp sgt i8 %i.fl, -1
  %i.fr = select i1 %i.fq, i32 127, i32 128
  %.3.i.us.us36 = select i1 %.not.us.us, i32 %i.fn, i32 %i.fr
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.ft = trunc i32 %.3.i.us.us36 to i8
  store i8 %i.ft, ptr %i.fs, align 1
  br label %mergemask_sb.exit.us.us38

mergemask_sb.exit.us.us38:                        ; preds = %bb.r, %.split.us.split.split.us
  %i.fu = zext nneg i16 %i.fp to i32
  %i.fv = select i1 %.not.us.us, i32 0, i32 %i.fu
  %i.fw = zext i1 %.02027.us.us31 to i32
  %i.fx = or i32 %i.fv, %i.fw
  %i.fy = icmp ne i32 %i.fx, 0                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fz = lshr i16 %.02225.us.us33, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %.split29.us, label %.split.us.split.split.us, !llvm.loop !44

bb.s:                                             ; preds = %.split.us.split.split.preheader
  %i.ga = icmp sgt i8 %i.fi, -1
  %i.gb = select i1 %i.ga, i8 127, i8 -128
  %i.gc = select i1 %.not, i8 0, i8 %i.gb
  store i8 %i.gc, ptr %1, align 1
  br label %mergemask_sb.exit.us

mergemask_sb.exit.us:                             ; preds = %bb.s, %.split.us.split.split.preheader
  %i.gd = lshr i16 %i.a, 1
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.gf = load i8, ptr %i.ge, align 1             ; 2 uses
  %i.gg = icmp eq i8 %i.gf, 0                     ; 2 uses
  %i.gh = and i16 %i.gd, 1                        ; 2 uses
  %.not.i.i.us.1 = icmp eq i16 %i.gh, 0
  br i1 %.not.i.i.us.1, label %mergemask_sb.exit.us.1, label %bb.t

bb.t:                                             ; preds = %mergemask_sb.exit.us
  %i.gi = icmp sgt i8 %i.gf, -1
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.gk = select i1 %i.gi, i8 127, i8 -128
  %i.gl = select i1 %i.gg, i8 0, i8 %i.gk
  store i8 %i.gl, ptr %i.gj, align 1
  br label %mergemask_sb.exit.us.1

mergemask_sb.exit.us.1:                           ; preds = %bb.t, %mergemask_sb.exit.us
  %i.gm = zext nneg i16 %i.gh to i32
  %i.gn = select i1 %i.gg, i32 0, i32 %i.gm
  %i.go = and i16 %i.a, 1
  %i.gp = zext nneg i16 %i.go to i32
  %i.gq = select i1 %.not, i32 0, i32 %i.gp
  %i.gr = or i32 %i.gn, %i.gq
  %i.gs = lshr i16 %i.a, 2
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.gu = load i8, ptr %i.gt, align 1             ; 2 uses
  %i.gv = icmp eq i8 %i.gu, 0                     ; 2 uses
  %i.gw = and i16 %i.gs, 1                        ; 2 uses
  %.not.i.i.us.2 = icmp eq i16 %i.gw, 0
  br i1 %.not.i.i.us.2, label %mergemask_sb.exit.us.2, label %bb.u

bb.u:                                             ; preds = %mergemask_sb.exit.us.1
  %i.gx = icmp sgt i8 %i.gu, -1
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.gz = select i1 %i.gx, i8 127, i8 -128
  %i.ha = select i1 %i.gv, i8 0, i8 %i.gz
  store i8 %i.ha, ptr %i.gy, align 1
  br label %mergemask_sb.exit.us.2

mergemask_sb.exit.us.2:                           ; preds = %bb.u, %mergemask_sb.exit.us.1
  %i.hb = zext nneg i16 %i.gw to i32
  %i.hc = select i1 %i.gv, i32 0, i32 %i.hb
  %i.hd = or i32 %i.hc, %i.gr
  %i.he = lshr i16 %i.a, 3
  %i.hf = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.hg = load i8, ptr %i.hf, align 1             ; 2 uses
  %i.hh = icmp eq i8 %i.hg, 0                     ; 2 uses
  %i.hi = and i16 %i.he, 1                        ; 2 uses
  %.not.i.i.us.3 = icmp eq i16 %i.hi, 0
  br i1 %.not.i.i.us.3, label %mergemask_sb.exit.us.3, label %bb.v

bb.v:                                             ; preds = %mergemask_sb.exit.us.2
  %i.hj = icmp sgt i8 %i.hg, -1
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.hl = select i1 %i.hj, i8 127, i8 -128
  %i.hm = select i1 %i.hh, i8 0, i8 %i.hl
  store i8 %i.hm, ptr %i.hk, align 1
  br label %mergemask_sb.exit.us.3

mergemask_sb.exit.us.3:                           ; preds = %bb.v, %mergemask_sb.exit.us.2
  %i.hn = zext nneg i16 %i.hi to i32
  %i.ho = select i1 %i.hh, i32 0, i32 %i.hn
  %i.hp = or i32 %i.ho, %i.hd
  %i.hq = lshr i16 %i.a, 4
  %i.hr = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.hs = load i8, ptr %i.hr, align 1             ; 2 uses
  %i.ht = icmp eq i8 %i.hs, 0                     ; 2 uses
  %i.hu = and i16 %i.hq, 1                        ; 2 uses
  %.not.i.i.us.4 = icmp eq i16 %i.hu, 0
  br i1 %.not.i.i.us.4, label %mergemask_sb.exit.us.4, label %bb.w

bb.w:                                             ; preds = %mergemask_sb.exit.us.3
  %i.hv = icmp sgt i8 %i.hs, -1
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.hx = select i1 %i.hv, i8 127, i8 -128
  %i.hy = select i1 %i.ht, i8 0, i8 %i.hx
  store i8 %i.hy, ptr %i.hw, align 1
  br label %mergemask_sb.exit.us.4

mergemask_sb.exit.us.4:                           ; preds = %bb.w, %mergemask_sb.exit.us.3
  %i.hz = zext nneg i16 %i.hu to i32
  %i.ia = select i1 %i.ht, i32 0, i32 %i.hz
  %i.ib = or i32 %i.ia, %i.hp
  %i.ic = icmp ne i32 %i.ib, 0
  %i.id = lshr i16 %i.a, 5
  %i.ie = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.if = load i8, ptr %i.ie, align 1             ; 2 uses
  %i.ig = icmp eq i8 %i.if, 0                     ; 2 uses
  %i.ih = and i16 %i.id, 1                        ; 2 uses
  %.not.i.i.us.5 = icmp eq i16 %i.ih, 0
  br i1 %.not.i.i.us.5, label %mergemask_sb.exit.us.5, label %bb.x

bb.x:                                             ; preds = %mergemask_sb.exit.us.4
  %i.ii = icmp sgt i8 %i.if, -1
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.ik = select i1 %i.ii, i8 127, i8 -128
  %i.il = select i1 %i.ig, i8 0, i8 %i.ik
  store i8 %i.il, ptr %i.ij, align 1
  br label %mergemask_sb.exit.us.5

mergemask_sb.exit.us.5:                           ; preds = %bb.x, %mergemask_sb.exit.us.4
  %i.im = zext nneg i16 %i.ih to i32
  %i.in = select i1 %i.ig, i32 0, i32 %i.im
  %i.io = zext i1 %i.ic to i32
  %i.ip = or i32 %i.in, %i.io
  %i.iq = lshr i16 %i.a, 6
  %i.ir = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.is = load i8, ptr %i.ir, align 1             ; 2 uses
  %i.it = icmp eq i8 %i.is, 0                     ; 2 uses
  %i.iu = and i16 %i.iq, 1                        ; 2 uses
  %.not.i.i.us.6 = icmp eq i16 %i.iu, 0
  br i1 %.not.i.i.us.6, label %mergemask_sb.exit.us.6, label %bb.y

bb.y:                                             ; preds = %mergemask_sb.exit.us.5
  %i.iv = icmp sgt i8 %i.is, -1
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ix = select i1 %i.iv, i8 127, i8 -128
  %i.iy = select i1 %i.it, i8 0, i8 %i.ix
  store i8 %i.iy, ptr %i.iw, align 1
  br label %mergemask_sb.exit.us.6

mergemask_sb.exit.us.6:                           ; preds = %bb.y, %mergemask_sb.exit.us.5
  %i.iz = zext nneg i16 %i.iu to i32
  %i.ja = select i1 %i.it, i32 0, i32 %i.iz
  %i.jb = or i32 %i.ja, %i.ip
  %i.jc = lshr i16 %i.a, 7
  %i.jd = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.je = load i8, ptr %i.jd, align 1             ; 2 uses
  %i.jf = icmp eq i8 %i.je, 0                     ; 2 uses
  %i.jg = and i16 %i.jc, 1                        ; 2 uses
  %.not.i.i.us.7 = icmp eq i16 %i.jg, 0
  br i1 %.not.i.i.us.7, label %mergemask_sb.exit.us.7, label %bb.z

bb.z:                                             ; preds = %mergemask_sb.exit.us.6
  %i.jh = icmp sgt i8 %i.je, -1
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.jj = select i1 %i.jh, i8 127, i8 -128
  %i.jk = select i1 %i.jf, i8 0, i8 %i.jj
  store i8 %i.jk, ptr %i.ji, align 1
  br label %mergemask_sb.exit.us.7

mergemask_sb.exit.us.7:                           ; preds = %bb.z, %mergemask_sb.exit.us.6
  %i.jl = zext nneg i16 %i.jg to i32
  %i.jm = select i1 %i.jf, i32 0, i32 %i.jl
  %i.jn = or i32 %i.jm, %i.jb
  %i.jo = lshr i16 %i.a, 8
  %i.jp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.jq = load i8, ptr %i.jp, align 1             ; 2 uses
  %i.jr = icmp eq i8 %i.jq, 0                     ; 2 uses
  %i.js = and i16 %i.jo, 1                        ; 2 uses
  %.not.i.i.us.8 = icmp eq i16 %i.js, 0
  br i1 %.not.i.i.us.8, label %mergemask_sb.exit.us.8, label %bb.aa

bb.aa:                                            ; preds = %mergemask_sb.exit.us.7
  %i.jt = icmp sgt i8 %i.jq, -1
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.jv = select i1 %i.jt, i8 127, i8 -128
  %i.jw = select i1 %i.jr, i8 0, i8 %i.jv
  store i8 %i.jw, ptr %i.ju, align 1
  br label %mergemask_sb.exit.us.8

mergemask_sb.exit.us.8:                           ; preds = %bb.aa, %mergemask_sb.exit.us.7
  %i.jx = zext nneg i16 %i.js to i32
  %i.jy = select i1 %i.jr, i32 0, i32 %i.jx
  %i.jz = or i32 %i.jy, %i.jn
  %i.ka = icmp ne i32 %i.jz, 0
  %i.kb = lshr i16 %i.a, 9
  %i.kc = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.kd = load i8, ptr %i.kc, align 1             ; 2 uses
  %i.ke = icmp eq i8 %i.kd, 0                     ; 2 uses
  %i.kf = and i16 %i.kb, 1                        ; 2 uses
  %.not.i.i.us.9 = icmp eq i16 %i.kf, 0
  br i1 %.not.i.i.us.9, label %mergemask_sb.exit.us.9, label %bb.ab

bb.ab:                                            ; preds = %mergemask_sb.exit.us.8
  %i.kg = icmp sgt i8 %i.kd, -1
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ki = select i1 %i.kg, i8 127, i8 -128
  %i.kj = select i1 %i.ke, i8 0, i8 %i.ki
  store i8 %i.kj, ptr %i.kh, align 1
  br label %mergemask_sb.exit.us.9

mergemask_sb.exit.us.9:                           ; preds = %bb.ab, %mergemask_sb.exit.us.8
  %i.kk = zext nneg i16 %i.kf to i32
  %i.kl = select i1 %i.ke, i32 0, i32 %i.kk
  %i.km = zext i1 %i.ka to i32
  %i.kn = or i32 %i.kl, %i.km
  %i.ko = lshr i16 %i.a, 10
  %i.kp = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.kq = load i8, ptr %i.kp, align 1             ; 2 uses
  %i.kr = icmp eq i8 %i.kq, 0                     ; 2 uses
end_hunk_33
begin_hunk_34_@do_vcvt_hs:bb.a
mve_advance_vpt.exit:                             ; preds = %mve_eci_mask.exit.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret void
}

declare zeroext i16 @float16_round_to_int(i16 noundef zeroext, ptr noundef) local_unnamed_addr #5

declare i32 @float32_round_to_int(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @g_assertion_message_expr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.bitreverse.i8(i8) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bitreverse.i16(i16) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bitreverse.i32(i32) #7

declare zeroext i16 @float16_minmax(i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @float32_minmax(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @float16_compare(i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #5

declare i32 @float32_compare(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare zeroext i16 @float32_to_float16(i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #5

declare i32 @float16_to_float32(i16 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctlz.i8(i8, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctlz.i16(i16, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ssub.sat.i8(i8, i8) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ssub.sat.i16(i16, i16) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ssub.sat.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smulh.i8(i8, i8) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smulh.i16(i16, i16) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smulh.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umulh.i8(i8, i8) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umulh.i16(i16, i16) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umulh.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smax.i8(i8, i8) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smin.i8(i8, i8) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #7

attributes #0 = { noinline nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
!38 = distinct !{!38, !7}
!39 = distinct !{!39, !7}
!40 = distinct !{!40, !7}
!41 = distinct !{!41, !7}
!42 = distinct !{!42, !7}
!43 = distinct !{!43, !7}
!44 = distinct !{!44, !7}
end_hunk_34
