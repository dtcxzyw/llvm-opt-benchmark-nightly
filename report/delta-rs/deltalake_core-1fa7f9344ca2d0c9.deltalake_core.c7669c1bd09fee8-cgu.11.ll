begin_hunk_0
  ], !prof !3827

bb.b:                                             ; preds = %bb.a
  %3 = load i64, ptr %1, align 1
  %4 = xor i64 %3, 7948682292643262561
  %5 = getelementptr i8, ptr %1, i64 8
  %6 = load i16, ptr %5, align 1
  %7 = zext i16 %6 to i64
  %8 = xor i64 %7, 31084
  %9 = or i64 %4, %8
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i32
  %i.a = icmp eq i32 %11, 0
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1
  br label %bb.ba

bb.d:                                             ; preds = %bb.b
  %12 = load i64, ptr %1, align 1
  %13 = xor i64 %12, 7953754356895346281
  %14 = getelementptr i8, ptr %1, i64 8
  %15 = load i16, ptr %14, align 1
  %16 = zext i16 %15 to i64
  %17 = xor i64 %16, 29556
  %18 = or i64 %13, %17
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i32
  %i.c = icmp eq i32 %20, 0
  br i1 %i.c, label %bb.e, label %bb.x

bb.e:                                             ; preds = %bb.d
end_hunk_1
begin_hunk_2
  br label %bb.ba

bb.f:                                             ; preds = %bb.a
  %21 = load i128, ptr %1, align 1
  %22 = icmp ne i128 %21, 153465765365027244490301204968944003171
  %23 = zext i1 %22 to i32
  %i.e = icmp eq i32 %23, 0
  br i1 %i.e, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
end_hunk_2
begin_hunk_3
  br label %bb.ba

bb.h:                                             ; preds = %bb.a
  %24 = load i64, ptr %1, align 1
  %25 = xor i64 %24, 7008838415003248739
  %26 = getelementptr i8, ptr %1, i64 6
  %27 = load i64, ptr %26, align 1
  %28 = xor i64 %27, 7234299729397702980
  %29 = or i64 %25, %28
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i32
  %i.g = icmp eq i32 %31, 0
  br i1 %i.g, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
end_hunk_3
begin_hunk_4
  br label %bb.ba

bb.j:                                             ; preds = %bb.f
  %32 = load i128, ptr %1, align 1
  %33 = icmp ne i128 %32, 153434592255604858701301701360424478055
  %34 = zext i1 %33 to i32
  %i.i = icmp eq i32 %34, 0
  br i1 %i.i, label %bb.k, label %bb.ay

bb.k:                                             ; preds = %bb.j
end_hunk_4
begin_hunk_5
  br label %bb.ba

bb.l:                                             ; preds = %bb.a
  %35 = load i64, ptr %1, align 1
  %36 = xor i64 %35, 8751735924676977769
  %37 = getelementptr i8, ptr %1, i64 7
  %38 = load i64, ptr %37, align 1
  %39 = xor i64 %38, 8317705912897717113
  %40 = or i64 %36, %39
  %41 = icmp ne i64 %40, 0
  %42 = zext i1 %41 to i32
  %i.k = icmp eq i32 %42, 0
  br i1 %i.k, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
end_hunk_5
begin_hunk_6
  br label %bb.ba

bb.n:                                             ; preds = %bb.a
  %43 = load i128, ptr %1, align 1
  %44 = xor i128 %43, 145391866237976677473339834976530820713
  %45 = getelementptr i8, ptr %1, i64 16
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i128
  %48 = xor i128 %47, 112
  %49 = or i128 %44, %48
  %50 = icmp ne i128 %49, 0
  %51 = zext i1 %50 to i32
  %i.m = icmp eq i32 %51, 0
  br i1 %i.m, label %bb.o, label %bb.ay

bb.o:                                             ; preds = %bb.n
end_hunk_6
begin_hunk_7
  br label %bb.ba

bb.p:                                             ; preds = %bb.a
  %52 = load i64, ptr %1, align 1
  %53 = xor i64 %52, 7738135728423923570
  %54 = getelementptr i8, ptr %1, i64 3
  %55 = load i64, ptr %54, align 1
  %56 = xor i64 %55, 7453010343294497364
  %57 = or i64 %53, %56
  %58 = icmp ne i64 %57, 0
  %59 = zext i1 %58 to i32
  %i.o = icmp eq i32 %59, 0
  br i1 %i.o, label %bb.q, label %bb.at

bb.q:                                             ; preds = %bb.p
end_hunk_7
begin_hunk_8
  br label %bb.ba

bb.r:                                             ; preds = %bb.h
  %60 = load i64, ptr %1, align 1
  %61 = xor i64 %60, 7299611969922625380
  %62 = getelementptr i8, ptr %1, i64 6
  %63 = load i64, ptr %62, align 1
  %64 = xor i64 %63, 7022344802737087821
  %65 = or i64 %61, %64
  %66 = icmp ne i64 %65, 0
  %67 = zext i1 %66 to i32
  %i.q = icmp eq i32 %67, 0
  br i1 %i.q, label %bb.s, label %bb.ab

bb.s:                                             ; preds = %bb.r
end_hunk_8
begin_hunk_9
  br label %bb.ba

bb.t:                                             ; preds = %bb.l
  %68 = load i64, ptr %1, align 1
  %69 = xor i64 %68, 4856976502910444393
  %70 = getelementptr i8, ptr %1, i64 7
  %71 = load i64, ptr %70, align 1
  %72 = xor i64 %71, 3555156917702455107
  %73 = or i64 %69, %72
  %74 = icmp ne i64 %73, 0
  %75 = zext i1 %74 to i32
  %i.s = icmp eq i32 %75, 0
  br i1 %i.s, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
end_hunk_9
begin_hunk_10
  br label %bb.ba

bb.v:                                             ; preds = %bb.t
  %76 = load i64, ptr %1, align 1
  %77 = xor i64 %76, 4856976502910444393
  %78 = getelementptr i8, ptr %1, i64 7
  %79 = load i64, ptr %78, align 1
  %80 = xor i64 %79, 3627214511740383043
  %81 = or i64 %77, %80
  %82 = icmp ne i64 %81, 0
  %83 = zext i1 %82 to i32
  %i.u = icmp eq i32 %83, 0
  br i1 %i.u, label %bb.w, label %bb.ah

bb.w:                                             ; preds = %bb.v
end_hunk_10
begin_hunk_11
  br label %bb.ba

bb.x:                                             ; preds = %bb.d
  %84 = load i64, ptr %1, align 1
  %85 = xor i64 %84, 7598247072155135075
  %86 = getelementptr i8, ptr %1, i64 8
  %87 = load i16, ptr %86, align 1
  %88 = zext i16 %87 to i64
  %89 = xor i64 %88, 26478
  %90 = or i64 %85, %89
  %91 = icmp ne i64 %90, 0
  %92 = zext i1 %91 to i32
  %i.w = icmp eq i32 %92, 0
  br i1 %i.w, label %bb.y, label %bb.ay

bb.y:                                             ; preds = %bb.x
end_hunk_11
begin_hunk_12
  br label %bb.ba

bb.z:                                             ; preds = %bb.a
  %93 = load i128, ptr %1, align 1
  %94 = xor i128 %93, 140173565897714267200795715513768763757
  %95 = getelementptr i8, ptr %1, i64 11
  %96 = load i128, ptr %95, align 1
  %97 = xor i128 %96, 153434592255604858886486642665473597776
  %98 = or i128 %94, %97
  %99 = icmp ne i128 %98, 0
  %100 = zext i1 %99 to i32
  %i.y = icmp eq i32 %100, 0
  br i1 %i.y, label %bb.aa, label %bb.ay

bb.aa:                                            ; preds = %bb.z
end_hunk_12
begin_hunk_13
  br label %bb.ba

bb.ab:                                            ; preds = %bb.r
  %101 = load i64, ptr %1, align 1
  %102 = xor i64 %101, 5577549174803816803
  %103 = getelementptr i8, ptr %1, i64 6
  %104 = load i64, ptr %103, align 1
  %105 = xor i64 %104, 7234302044601929063
  %106 = or i64 %102, %105
  %107 = icmp ne i64 %106, 0
  %108 = zext i1 %107 to i32
  %i.aa = icmp eq i32 %108, 0
  br i1 %i.aa, label %bb.ac, label %bb.ay

bb.ac:                                            ; preds = %bb.ab
end_hunk_13
begin_hunk_14
  br label %bb.ba

bb.ad:                                            ; preds = %bb.a
  %109 = load i128, ptr %1, align 1
  %110 = xor i128 %109, 134846224642363519793032572685880942947
  %111 = getelementptr i8, ptr %1, i64 16
  %112 = load i32, ptr %111, align 1
  %113 = zext i32 %112 to i128
  %114 = xor i128 %113, 2003134838
  %115 = or i128 %110, %114
  %116 = icmp ne i128 %115, 0
  %117 = zext i1 %116 to i32
  %i.ac = icmp eq i32 %117, 0
  br i1 %i.ac, label %bb.ae, label %bb.an

bb.ae:                                            ; preds = %bb.ad
end_hunk_14
begin_hunk_15
  br label %bb.ba

bb.af:                                            ; preds = %bb.a
  %118 = load i64, ptr %1, align 1
  %119 = xor i64 %118, 7011381611286261603
  %120 = getelementptr i8, ptr %1, i64 5
  %121 = load i64, ptr %120, align 1
  %122 = xor i64 %121, 7453010364987428206
  %123 = or i64 %119, %122
  %124 = icmp ne i64 %123, 0
  %125 = zext i1 %124 to i32
  %i.ae = icmp eq i32 %125, 0
  br i1 %i.ae, label %bb.ag, label %bb.ay

bb.ag:                                            ; preds = %bb.af
end_hunk_15
begin_hunk_16
  br label %bb.ba

bb.ah:                                            ; preds = %bb.v
  %126 = load i64, ptr %1, align 1
  %127 = xor i64 %126, 7957695015225681252
  %128 = getelementptr i8, ptr %1, i64 7
  %129 = load i64, ptr %128, align 1
  %130 = xor i64 %129, 8318834007381202542
  %131 = or i64 %127, %130
  %132 = icmp ne i64 %131, 0
  %133 = zext i1 %132 to i32
  %i.ag = icmp eq i32 %133, 0
  br i1 %i.ag, label %bb.ai, label %bb.ay

bb.ai:                                            ; preds = %bb.ah
end_hunk_16
begin_hunk_17
  br label %bb.ba

bb.aj:                                            ; preds = %bb.a
  %134 = load i64, ptr %1, align 1
  %135 = xor i64 %134, 7881708861846808948
  %136 = getelementptr i8, ptr %1, i64 8
  %137 = load i32, ptr %136, align 1
  %138 = zext i32 %137 to i64
  %139 = xor i64 %138, 2054442608
  %140 = or i64 %135, %139
  %141 = icmp ne i64 %140, 0
  %142 = zext i1 %141 to i32
  %i.ai = icmp eq i32 %142, 0
  br i1 %i.ai, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
end_hunk_17
begin_hunk_18
  br label %bb.ba

bb.al:                                            ; preds = %bb.aj
  %143 = load i64, ptr %1, align 1
  %144 = xor i64 %143, 7306080319586728308
  %145 = getelementptr i8, ptr %1, i64 8
  %146 = load i32, ptr %145, align 1
  %147 = zext i32 %146 to i64
  %148 = xor i64 %147, 1735289198
  %149 = or i64 %144, %148
  %150 = icmp ne i64 %149, 0
  %151 = zext i1 %150 to i32
  %i.ak = icmp eq i32 %151, 0
  br i1 %i.ak, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
end_hunk_18
begin_hunk_19
  br label %bb.ba

bb.an:                                            ; preds = %bb.ad
  %152 = load i128, ptr %1, align 1
  %153 = xor i128 %152, 134846224643302831378604444499722664308
  %154 = getelementptr i8, ptr %1, i64 16
  %155 = load i32, ptr %154, align 1
  %156 = zext i32 %155 to i128
  %157 = xor i128 %156, 2003134838
  %158 = or i128 %153, %157
  %159 = icmp ne i128 %158, 0
  %160 = zext i1 %159 to i32
  %i.am = icmp eq i32 %160, 0
  br i1 %i.am, label %bb.ao, label %bb.ay

bb.ao:                                            ; preds = %bb.an
end_hunk_19
begin_hunk_20
  br label %bb.ba

bb.ap:                                            ; preds = %bb.al
  %161 = load i64, ptr %1, align 1
  %162 = xor i64 %161, 8100677641948050038
  %163 = getelementptr i8, ptr %1, i64 8
  %164 = load i32, ptr %163, align 1
  %165 = zext i32 %164 to i64
  %166 = xor i64 %165, 1953393007
  %167 = or i64 %162, %166
  %168 = icmp ne i64 %167, 0
  %169 = zext i1 %168 to i32
  %i.ao = icmp eq i32 %169, 0
  br i1 %i.ao, label %bb.aq, label %bb.ay

bb.aq:                                            ; preds = %bb.ap
end_hunk_20
begin_hunk_21
  br label %bb.ba

bb.ar:                                            ; preds = %bb.a
  %170 = load i128, ptr %1, align 1
  %171 = xor i128 %170, 138589794776490074285482931482190373238
  %172 = getelementptr i8, ptr %1, i64 3
  %173 = load i128, ptr %172, align 1
  %174 = xor i128 %173, 142743489721946402301622730943108052341
  %175 = or i128 %171, %174
  %176 = icmp ne i128 %175, 0
  %177 = zext i1 %176 to i32
  %i.aq = icmp eq i32 %177, 0
  br i1 %i.aq, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
end_hunk_21
begin_hunk_22
  br label %bb.ba

bb.at:                                            ; preds = %bb.p
  %178 = load i64, ptr %1, align 1
  %179 = xor i64 %178, 6085610361144369526
  %180 = getelementptr i8, ptr %1, i64 3
  %181 = load i64, ptr %180, align 1
  %182 = xor i64 %181, 7309475598859919721
  %183 = or i64 %179, %182
  %184 = icmp ne i64 %183, 0
  %185 = zext i1 %184 to i32
  %i.as = icmp eq i32 %185, 0
  br i1 %i.as, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %bb.at
end_hunk_22
begin_hunk_23
  br label %bb.ba

bb.av:                                            ; preds = %bb.ar
  %186 = load i128, ptr %1, align 1
  %187 = xor i128 %186, 157375646567630566574094284025425453430
  %188 = getelementptr i8, ptr %1, i64 3
  %189 = load i128, ptr %188, align 1
  %190 = xor i128 %189, 158704692514444899852471930785356472681
  %191 = or i128 %187, %190
  %192 = icmp ne i128 %191, 0
  %193 = zext i1 %192 to i32
  %i.au = icmp eq i32 %193, 0
  br i1 %i.au, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
end_hunk_23
begin_hunk_24
  br label %bb.ba

bb.ax:                                            ; preds = %bb.a
  %194 = load i128, ptr %1, align 1
  %195 = xor i128 %194, 137483773827180943564228323612447367542
  %196 = getelementptr i8, ptr %1, i64 16
  %197 = load i64, ptr %196, align 1
  %198 = zext i64 %197 to i128
  %199 = xor i128 %198, 8603398620390256685
  %200 = or i128 %195, %199
  %201 = icmp ne i128 %200, 0
  %202 = zext i1 %201 to i32
  %i.aw = icmp eq i32 %202, 0
  br i1 %i.aw, label %bb.az, label %bb.ay, !prof !673

bb.ay:                                            ; preds = %bb.av, %bb.at, %bb.ap, %bb.an, %bb.ah, %bb.af, %bb.ab, %bb.z, %bb.x, %bb.n, %bb.j, %bb.a, %bb.ax
end_hunk_24
begin_hunk_25
  br label %bb.m

bb.h:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0.ph8 = phi ptr [ @23, %bb.c ], [ @22, %bb.a ] ; 7 uses
  %2 = load i64, ptr %.sroa.0.0.ph8, align 1
  %3 = xor i64 %2, 7948682292643262561
  %4 = getelementptr i8, ptr %.sroa.0.0.ph8, i64 8
  %5 = load i16, ptr %4, align 1
  %6 = zext i16 %5 to i64
  %7 = xor i64 %6, 31084
  %8 = or i64 %3, %7
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i32
  %i.c = icmp eq i32 %10, 0
  br i1 %i.c, label %bb.ab, label %bb.i

bb.i:                                             ; preds = %bb.h
  %11 = load i64, ptr %.sroa.0.0.ph8, align 1
  %12 = xor i64 %11, 7953754356895346281
  %13 = getelementptr i8, ptr %.sroa.0.0.ph8, i64 8
  %14 = load i16, ptr %13, align 1
  %15 = zext i16 %14 to i64
  %16 = xor i64 %15, 29556
  %17 = or i64 %12, %16
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i32
  %i.d = icmp eq i32 %19, 0
  br i1 %i.d, label %bb.ab, label %bb.q

bb.j:                                             ; preds = %bb.a, %bb.d
  %.sroa.0.0.ph15 = phi ptr [ @26, %bb.d ], [ @24, %bb.a ] ; 3 uses
  %20 = load i128, ptr %.sroa.0.0.ph15, align 1
  %21 = icmp ne i128 %20, 153465765365027244490301204968944003171
  %22 = zext i1 %21 to i32
  %i.e = icmp eq i32 %22, 0
  br i1 %i.e, label %bb.ab, label %bb.l

bb.k:                                             ; preds = %bb.a, %bb.f
  %.sroa.0.0.ph22 = phi ptr [ @30, %bb.f ], [ @25, %bb.a ] ; 7 uses
  %23 = load i64, ptr %.sroa.0.0.ph22, align 1
  %24 = xor i64 %23, 7008838415003248739
  %25 = getelementptr i8, ptr %.sroa.0.0.ph22, i64 6
  %26 = load i64, ptr %25, align 1
  %27 = xor i64 %26, 7234299729397702980
  %28 = or i64 %24, %27
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i32
  %i.f = icmp eq i32 %30, 0
  br i1 %i.f, label %bb.ab, label %bb.n

bb.l:                                             ; preds = %bb.j
  %31 = load i128, ptr %.sroa.0.0.ph15, align 1
  %32 = icmp ne i128 %31, 153434592255604858701301701360424478055
  %33 = zext i1 %32 to i32
  %i.g = icmp eq i32 %33, 0
  br i1 %i.g, label %bb.ab, label %bb.y

bb.m:                                             ; preds = %bb.a, %bb.e, %bb.g
  %.sroa.0.0.ph = phi ptr [ @31, %bb.g ], [ @27, %bb.e ], [ @38, %bb.a ] ; 9 uses
  %34 = load i64, ptr %.sroa.0.0.ph, align 1
  %35 = xor i64 %34, 8751735924676977769
  %36 = getelementptr i8, ptr %.sroa.0.0.ph, i64 7
  %37 = load i64, ptr %36, align 1
  %38 = xor i64 %37, 8317705912897717113
  %39 = or i64 %35, %38
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i32
  %i.h = icmp eq i32 %41, 0
  br i1 %i.h, label %bb.ab, label %bb.o

bb.n:                                             ; preds = %bb.k
  %42 = load i64, ptr %.sroa.0.0.ph22, align 1
  %43 = xor i64 %42, 7299611969922625380
  %44 = getelementptr i8, ptr %.sroa.0.0.ph22, i64 6
  %45 = load i64, ptr %44, align 1
  %46 = xor i64 %45, 7022344802737087821
  %47 = or i64 %43, %46
  %48 = icmp ne i64 %47, 0
  %49 = zext i1 %48 to i32
  %i.i = icmp eq i32 %49, 0
  br i1 %i.i, label %bb.ab, label %bb.s

bb.o:                                             ; preds = %bb.m
  %50 = load i64, ptr %.sroa.0.0.ph, align 1
  %51 = xor i64 %50, 4856976502910444393
  %52 = getelementptr i8, ptr %.sroa.0.0.ph, i64 7
  %53 = load i64, ptr %52, align 1
  %54 = xor i64 %53, 3555156917702455107
  %55 = or i64 %51, %54
  %56 = icmp ne i64 %55, 0
  %57 = zext i1 %56 to i32
  %i.j = icmp eq i32 %57, 0
  br i1 %i.j, label %bb.ab, label %bb.p

bb.p:                                             ; preds = %bb.o
  %58 = load i64, ptr %.sroa.0.0.ph, align 1
  %59 = xor i64 %58, 4856976502910444393
  %60 = getelementptr i8, ptr %.sroa.0.0.ph, i64 7
  %61 = load i64, ptr %60, align 1
  %62 = xor i64 %61, 3627214511740383043
  %63 = or i64 %59, %62
  %64 = icmp ne i64 %63, 0
  %65 = zext i1 %64 to i32
  %i.k = icmp eq i32 %65, 0
  br i1 %i.k, label %bb.ab, label %bb.u

bb.q:                                             ; preds = %bb.i
  %66 = load i64, ptr %.sroa.0.0.ph8, align 1
  %67 = xor i64 %66, 7598247072155135075
  %68 = getelementptr i8, ptr %.sroa.0.0.ph8, i64 8
  %69 = load i16, ptr %68, align 1
  %70 = zext i16 %69 to i64
  %71 = xor i64 %70, 26478
  %72 = or i64 %67, %71
  %73 = icmp ne i64 %72, 0
  %74 = zext i1 %73 to i32
  %i.l = icmp eq i32 %74, 0
  br i1 %i.l, label %bb.ab, label %bb.y

bb.r:                                             ; preds = %bb.a
  br label %bb.ab

bb.s:                                             ; preds = %bb.n
  %75 = load i64, ptr %.sroa.0.0.ph22, align 1
  %76 = xor i64 %75, 5577549174803816803
  %77 = getelementptr i8, ptr %.sroa.0.0.ph22, i64 6
  %78 = load i64, ptr %77, align 1
  %79 = xor i64 %78, 7234302044601929063
  %80 = or i64 %76, %79
  %81 = icmp ne i64 %80, 0
  %82 = zext i1 %81 to i32
  %i.m = icmp eq i32 %82, 0
  br i1 %i.m, label %bb.ab, label %bb.y

bb.t:                                             ; preds = %bb.a
end_hunk_25
begin_hunk_26
  br label %bb.ab

bb.u:                                             ; preds = %bb.p
  %83 = load i64, ptr %.sroa.0.0.ph, align 1
  %84 = xor i64 %83, 7957695015225681252
  %85 = getelementptr i8, ptr %.sroa.0.0.ph, i64 7
  %86 = load i64, ptr %85, align 1
  %87 = xor i64 %86, 8318834007381202542
  %88 = or i64 %84, %87
  %89 = icmp ne i64 %88, 0
  %90 = zext i1 %89 to i32
  %i.n = icmp eq i32 %90, 0
  br i1 %i.n, label %bb.ab, label %bb.y

bb.v:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0.ph29 = phi ptr [ @42, %bb.b ], [ @39, %bb.a ] ; 7 uses
  %91 = load i64, ptr %.sroa.0.0.ph29, align 1
  %92 = xor i64 %91, 7881708861846808948
  %93 = getelementptr i8, ptr %.sroa.0.0.ph29, i64 8
  %94 = load i32, ptr %93, align 1
  %95 = zext i32 %94 to i64
  %96 = xor i64 %95, 2054442608
  %97 = or i64 %92, %96
  %98 = icmp ne i64 %97, 0
  %99 = zext i1 %98 to i32
  %i.o = icmp eq i32 %99, 0
  br i1 %i.o, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %bb.v
  %100 = load i64, ptr %.sroa.0.0.ph29, align 1
  %101 = xor i64 %100, 7306080319586728308
  %102 = getelementptr i8, ptr %.sroa.0.0.ph29, i64 8
  %103 = load i32, ptr %102, align 1
  %104 = zext i32 %103 to i64
  %105 = xor i64 %104, 1735289198
  %106 = or i64 %101, %105
  %107 = icmp ne i64 %106, 0
  %108 = zext i1 %107 to i32
  %i.p = icmp eq i32 %108, 0
  br i1 %i.p, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %109 = load i64, ptr %.sroa.0.0.ph29, align 1
  %110 = xor i64 %109, 8100677641948050038
  %111 = getelementptr i8, ptr %.sroa.0.0.ph29, i64 8
  %112 = load i32, ptr %111, align 1
  %113 = zext i32 %112 to i64
  %114 = xor i64 %113, 1953393007
  %115 = or i64 %110, %114
  %116 = icmp ne i64 %115, 0
  %117 = zext i1 %116 to i32
  %i.q = icmp eq i32 %117, 0
  br i1 %i.q, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u, %bb.s, %bb.q, %bb.l
end_hunk_26
