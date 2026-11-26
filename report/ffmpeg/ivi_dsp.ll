Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ivi_dsp?download=true
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 50
begin_hunk_0_@ivi_mc_8x8_no_delta:bb.a
  %i.agl = sext i16 %i.agk to i32
  %i.agm = add nsw i32 %i.agj, %i.agl
  %i.agn = getelementptr inbounds nuw i8, ptr %.196, i64 8 ; 2 uses
  %i.ago = load i16, ptr %i.agn, align 2, !tbaa !29
  %i.agp = sext i16 %i.ago to i32
  %i.agq = add nsw i32 %i.agm, %i.agp
  %i.agr = lshr i32 %i.agq, 2
  %i.ags = trunc i32 %i.agr to i16
  %i.agt = getelementptr inbounds nuw i8, ptr %.37594, i64 6
  store i16 %i.ags, ptr %i.agt, align 2, !tbaa !29
  %i.agu = load i16, ptr %i.agg, align 2, !tbaa !29
  %i.agv = sext i16 %i.agu to i32
  %i.agw = getelementptr inbounds nuw i8, ptr %.pn, i64 10 ; 2 uses
  %i.agx = load i16, ptr %i.agw, align 2, !tbaa !29
  %i.agy = sext i16 %i.agx to i32
  %i.agz = add nsw i32 %i.agy, %i.agv
  %i.aha = load i16, ptr %i.agn, align 2, !tbaa !29
  %i.ahb = sext i16 %i.aha to i32
  %i.ahc = add nsw i32 %i.agz, %i.ahb
  %i.ahd = getelementptr inbounds nuw i8, ptr %.196, i64 10 ; 2 uses
  %i.ahe = load i16, ptr %i.ahd, align 2, !tbaa !29
  %i.ahf = sext i16 %i.ahe to i32
  %i.ahg = add nsw i32 %i.ahc, %i.ahf
  %i.ahh = lshr i32 %i.ahg, 2
  %i.ahi = trunc i32 %i.ahh to i16
  %i.ahj = getelementptr inbounds nuw i8, ptr %.37594, i64 8
  store i16 %i.ahi, ptr %i.ahj, align 2, !tbaa !29
  %i.ahk = load i16, ptr %i.agw, align 2, !tbaa !29
  %i.ahl = sext i16 %i.ahk to i32
  %i.ahm = getelementptr inbounds nuw i8, ptr %.pn, i64 12 ; 2 uses
  %i.ahn = load i16, ptr %i.ahm, align 2, !tbaa !29
  %i.aho = sext i16 %i.ahn to i32
  %i.ahp = add nsw i32 %i.aho, %i.ahl
  %i.ahq = load i16, ptr %i.ahd, align 2, !tbaa !29
  %i.ahr = sext i16 %i.ahq to i32
  %i.ahs = add nsw i32 %i.ahp, %i.ahr
  %i.aht = getelementptr inbounds nuw i8, ptr %.196, i64 12 ; 2 uses
  %i.ahu = load i16, ptr %i.aht, align 2, !tbaa !29
  %i.ahv = sext i16 %i.ahu to i32
  %i.ahw = add nsw i32 %i.ahs, %i.ahv
  %i.ahx = lshr i32 %i.ahw, 2
  %i.ahy = trunc i32 %i.ahx to i16
  %i.ahz = getelementptr inbounds nuw i8, ptr %.37594, i64 10
  store i16 %i.ahy, ptr %i.ahz, align 2, !tbaa !29
  %i.aia = load i16, ptr %i.ahm, align 2, !tbaa !29
  %i.aib = sext i16 %i.aia to i32
  %i.aic = getelementptr inbounds nuw i8, ptr %.pn, i64 14 ; 2 uses
  %i.aid = load i16, ptr %i.aic, align 2, !tbaa !29
  %i.aie = sext i16 %i.aid to i32
  %i.aif = add nsw i32 %i.aie, %i.aib
  %i.aig = load i16, ptr %i.aht, align 2, !tbaa !29
  %i.aih = sext i16 %i.aig to i32
  %i.aii = add nsw i32 %i.aif, %i.aih
  %i.aij = getelementptr inbounds nuw i8, ptr %.196, i64 14 ; 2 uses
  %i.aik = load i16, ptr %i.aij, align 2, !tbaa !29
  %i.ail = sext i16 %i.aik to i32
  %i.aim = add nsw i32 %i.aii, %i.ail
  %i.ain = lshr i32 %i.aim, 2
  %i.aio = trunc i32 %i.ain to i16
  %i.aip = getelementptr inbounds nuw i8, ptr %.37594, i64 12
  store i16 %i.aio, ptr %i.aip, align 2, !tbaa !29
  %i.aiq = load i16, ptr %i.aic, align 2, !tbaa !29
  %i.air = sext i16 %i.aiq to i32
  %i.ais = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %i.ait = load i16, ptr %i.ais, align 2, !tbaa !29
  %i.aiu = sext i16 %i.ait to i32
  %i.aiv = add nsw i32 %i.aiu, %i.air
  %i.aiw = load i16, ptr %i.aij, align 2, !tbaa !29
  %i.aix = sext i16 %i.aiw to i32
  %i.aiy = add nsw i32 %i.aiv, %i.aix
  %i.aiz = getelementptr inbounds nuw i8, ptr %.196, i64 16
  %i.aja = load i16, ptr %i.aiz, align 2, !tbaa !29
  %i.ajb = sext i16 %i.aja to i32
  %i.ajc = add nsw i32 %i.aiy, %i.ajb
  %i.ajd = lshr i32 %i.ajc, 2
  %i.aje = trunc i32 %i.ajd to i16
  %i.ajf = getelementptr inbounds nuw i8, ptr %.37594, i64 14
  store i16 %i.aje, ptr %i.ajf, align 2, !tbaa !29
  %i.ajg = add nuw nsw i32 %.37195, 1             ; 2 uses
  %i.ajh = getelementptr inbounds [2 x i8], ptr %.37594, i64 %1
  %exitcond.not = icmp eq i32 %i.ajg, 8
  br i1 %exitcond.not, label %.loopexit, label %.preheader88, !llvm.loop !63

.loopexit:                                        ; preds = %.preheader88, %.preheader82.rtcont, %.preheader85, %.preheader.preheader, %bb.a
  ret void

.preheader82.rtvec:                               ; preds = %.preheader82
  %i.aji = getelementptr inbounds nuw i8, ptr %.177104, i64 2
  %i.ajj = load <8 x i16>, ptr %.177104, align 2, !tbaa !29
  %i.ajk = sext <8 x i16> %i.ajj to <8 x i32>
  %i.ajl = load <8 x i16>, ptr %i.aji, align 2, !tbaa !29
  %i.ajm = sext <8 x i16> %i.ajl to <8 x i32>
  %i.ajn = add nsw <8 x i32> %i.ajm, %i.ajk
  %i.ajo = lshr <8 x i32> %i.ajn, splat (i32 1)
  %i.ajp = trunc <8 x i32> %i.ajo to <8 x i16>
  store <8 x i16> %i.ajp, ptr %.173105, align 2, !tbaa !29
  br label %.preheader82.rtcont

.preheader82.rtscalar:                            ; preds = %.preheader82
  %i.ajq = load i16, ptr %.177104, align 2, !tbaa !29
  %i.ajr = sext i16 %i.ajq to i32
  %i.ajs = getelementptr inbounds nuw i8, ptr %.177104, i64 2 ; 2 uses
  %i.ajt = load i16, ptr %i.ajs, align 2, !tbaa !29
  %i.aju = sext i16 %i.ajt to i32
  %i.ajv = add nsw i32 %i.aju, %i.ajr
  %i.ajw = lshr i32 %i.ajv, 1
  %i.ajx = trunc i32 %i.ajw to i16
  store i16 %i.ajx, ptr %.173105, align 2, !tbaa !29
  %i.ajy = load i16, ptr %i.ajs, align 2, !tbaa !29
  %i.ajz = sext i16 %i.ajy to i32
  %i.aka = getelementptr inbounds nuw i8, ptr %.177104, i64 4 ; 2 uses
  %i.akb = load i16, ptr %i.aka, align 2, !tbaa !29
  %i.akc = sext i16 %i.akb to i32
  %i.akd = add nsw i32 %i.akc, %i.ajz
  %i.ake = lshr i32 %i.akd, 1
  %i.akf = trunc i32 %i.ake to i16
  %i.akg = getelementptr inbounds nuw i8, ptr %.173105, i64 2
  store i16 %i.akf, ptr %i.akg, align 2, !tbaa !29
  %i.akh = load i16, ptr %i.aka, align 2, !tbaa !29
  %i.aki = sext i16 %i.akh to i32
  %i.akj = getelementptr inbounds nuw i8, ptr %.177104, i64 6 ; 2 uses
  %i.akk = load i16, ptr %i.akj, align 2, !tbaa !29
  %i.akl = sext i16 %i.akk to i32
  %i.akm = add nsw i32 %i.akl, %i.aki
  %i.akn = lshr i32 %i.akm, 1
  %i.ako = trunc i32 %i.akn to i16
  %i.akp = getelementptr inbounds nuw i8, ptr %.173105, i64 4
  store i16 %i.ako, ptr %i.akp, align 2, !tbaa !29
  %i.akq = load i16, ptr %i.akj, align 2, !tbaa !29
  %i.akr = sext i16 %i.akq to i32
  %i.aks = getelementptr inbounds nuw i8, ptr %.177104, i64 8 ; 2 uses
  %i.akt = load i16, ptr %i.aks, align 2, !tbaa !29
  %i.aku = sext i16 %i.akt to i32
  %i.akv = add nsw i32 %i.aku, %i.akr
  %i.akw = lshr i32 %i.akv, 1
  %i.akx = trunc i32 %i.akw to i16
  %i.aky = getelementptr inbounds nuw i8, ptr %.173105, i64 6
  store i16 %i.akx, ptr %i.aky, align 2, !tbaa !29
  %i.akz = load i16, ptr %i.aks, align 2, !tbaa !29
  %i.ala = sext i16 %i.akz to i32
  %i.alb = getelementptr inbounds nuw i8, ptr %.177104, i64 10 ; 2 uses
  %i.alc = load i16, ptr %i.alb, align 2, !tbaa !29
  %i.ald = sext i16 %i.alc to i32
  %i.ale = add nsw i32 %i.ald, %i.ala
  %i.alf = lshr i32 %i.ale, 1
  %i.alg = trunc i32 %i.alf to i16
  %i.alh = getelementptr inbounds nuw i8, ptr %.173105, i64 8
  store i16 %i.alg, ptr %i.alh, align 2, !tbaa !29
  %i.ali = load i16, ptr %i.alb, align 2, !tbaa !29
  %i.alj = sext i16 %i.ali to i32
  %i.alk = getelementptr inbounds nuw i8, ptr %.177104, i64 12 ; 2 uses
  %i.all = load i16, ptr %i.alk, align 2, !tbaa !29
  %i.alm = sext i16 %i.all to i32
  %i.aln = add nsw i32 %i.alm, %i.alj
  %i.alo = lshr i32 %i.aln, 1
  %i.alp = trunc i32 %i.alo to i16
  %i.alq = getelementptr inbounds nuw i8, ptr %.173105, i64 10
  store i16 %i.alp, ptr %i.alq, align 2, !tbaa !29
  %i.alr = load i16, ptr %i.alk, align 2, !tbaa !29
  %i.als = sext i16 %i.alr to i32
  %i.alt = getelementptr inbounds nuw i8, ptr %.177104, i64 14 ; 2 uses
  %i.alu = load i16, ptr %i.alt, align 2, !tbaa !29
  %i.alv = sext i16 %i.alu to i32
  %i.alw = add nsw i32 %i.alv, %i.als
  %i.alx = lshr i32 %i.alw, 1
  %i.aly = trunc i32 %i.alx to i16
  %i.alz = getelementptr inbounds nuw i8, ptr %.173105, i64 12
  store i16 %i.aly, ptr %i.alz, align 2, !tbaa !29
  %i.ama = load i16, ptr %i.alt, align 2, !tbaa !29
  %i.amb = sext i16 %i.ama to i32
  %i.amc = getelementptr inbounds nuw i8, ptr %.177104, i64 16
  %i.amd = load i16, ptr %i.amc, align 2, !tbaa !29
  %i.ame = sext i16 %i.amd to i32
  %i.amf = add nsw i32 %i.ame, %i.amb
  %i.amg = lshr i32 %i.amf, 1
  %i.amh = trunc i32 %i.amg to i16
  %i.ami = getelementptr inbounds nuw i8, ptr %.173105, i64 14
  store i16 %i.amh, ptr %i.ami, align 2, !tbaa !29
  br label %.preheader82.rtcont

.preheader82.rtcont:                              ; preds = %.preheader82.rtscalar, %.preheader82.rtvec
  %.rtmerge = add nuw nsw i32 %.169106, 1         ; 2 uses
  %exitcond121.not.rtmerge = icmp eq i32 %.rtmerge, 8
  %.rtmerge132 = getelementptr inbounds [2 x i8], ptr %.177104, i64 %3
  %.rtmerge131 = getelementptr inbounds [2 x i8], ptr %.173105, i64 %1
  br i1 %exitcond121.not.rtmerge, label %.loopexit, label %.preheader82, !llvm.loop !64
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ff_ivi_mc_8x8_delta(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  tail call fastcc void @ivi_mc_8x8_delta(ptr noundef %0, i64 noundef %2, ptr noundef %1, i64 noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ivi_mc_8x8_delta(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4) unnamed_addr #2 {
bb.a:
  switch i32 %4, label %.loopexit [
    i32 0, label %.preheader.preheader
    i32 1, label %.preheader82.lver.check
    i32 2, label %.preheader85.lver.check
    i32 3, label %.preheader88.lver.check
  ]

.preheader88.lver.check:                          ; preds = %bb.a
  %ident.check137 = icmp ne i64 %1, 1
  %ident.check138 = icmp ne i64 %3, 1
  %5 = or i1 %ident.check137, %ident.check138
  br i1 %5, label %.preheader88.lver.orig, label %.preheader88.ph

.preheader88.lver.orig:                           ; preds = %.preheader88.lver.check, %.preheader88.lver.orig
  %.pn.lver.orig = phi ptr [ %.196.lver.orig, %.preheader88.lver.orig ], [ %2, %.preheader88.lver.check ] ; 10 uses
  %.37195.lver.orig = phi i32 [ %149, %.preheader88.lver.orig ], [ 0, %.preheader88.lver.check ]
  %.37594.lver.orig = phi ptr [ %150, %.preheader88.lver.orig ], [ %0, %.preheader88.lver.check ] ; 10 uses
  %.196.lver.orig = getelementptr [2 x i8], ptr %.pn.lver.orig, i64 %3 ; 10 uses
  %6 = load i16, ptr %.pn.lver.orig, align 2, !tbaa !29
  %7 = sext i16 %6 to i32
  %8 = getelementptr inbounds nuw i8, ptr %.pn.lver.orig, i64 2 ; 2 uses
  %9 = load i16, ptr %8, align 2, !tbaa !29
  %10 = sext i16 %9 to i32
  %11 = add nsw i32 %10, %7
  %12 = load i16, ptr %.196.lver.orig, align 2, !tbaa !29
  %13 = sext i16 %12 to i32
  %14 = add nsw i32 %11, %13
  %15 = getelementptr inbounds nuw i8, ptr %.196.lver.orig, i64 2 ; 2 uses
  %16 = load i16, ptr %15, align 2, !tbaa !29
  %17 = sext i16 %16 to i32
  %18 = add nsw i32 %14, %17
  %19 = lshr i32 %18, 2
  %20 = load i16, ptr %.37594.lver.orig, align 2, !tbaa !29
  %21 = trunc i32 %19 to i16
  %22 = add i16 %20, %21
  store i16 %22, ptr %.37594.lver.orig, align 2, !tbaa !29
  %23 = load i16, ptr %8, align 2, !tbaa !29
  %24 = sext i16 %23 to i32
  %25 = getelementptr inbounds nuw i8, ptr %.pn.lver.orig, i64 4 ; 2 uses
  %26 = load i16, ptr %25, align 2, !tbaa !29
  %27 = sext i16 %26 to i32
  %28 = add nsw i32 %27, %24
  %29 = load i16, ptr %15, align 2, !tbaa !29
  %30 = sext i16 %29 to i32
  %31 = add nsw i32 %28, %30
  %32 = getelementptr inbounds nuw i8, ptr %.196.lver.orig, i64 4 ; 2 uses
  %33 = load i16, ptr %32, align 2, !tbaa !29
  %34 = sext i16 %33 to i32
  %35 = add nsw i32 %31, %34
  %36 = lshr i32 %35, 2
  %37 = getelementptr inbounds nuw i8, ptr %.37594.lver.orig, i64 2 ; 2 uses
  %38 = load i16, ptr %37, align 2, !tbaa !29
  %39 = trunc i32 %36 to i16
  %40 = add i16 %38, %39
  store i16 %40, ptr %37, align 2, !tbaa !29
  %41 = load i16, ptr %25, align 2, !tbaa !29
  %42 = sext i16 %41 to i32
  %43 = getelementptr inbounds nuw i8, ptr %.pn.lver.orig, i64 6 ; 2 uses
  %44 = load i16, ptr %43, align 2, !tbaa !29
  %45 = sext i16 %44 to i32
  %46 = add nsw i32 %45, %42
  %47 = load i16, ptr %32, align 2, !tbaa !29
  %48 = sext i16 %47 to i32
  %49 = add nsw i32 %46, %48
  %50 = getelementptr inbounds nuw i8, ptr %.196.lver.orig, i64 6 ; 2 uses
  %51 = load i16, ptr %50, align 2, !tbaa !29
  %52 = sext i16 %51 to i32
  %53 = add nsw i32 %49, %52
  %54 = lshr i32 %53, 2
  %55 = getelementptr inbounds nuw i8, ptr %.37594.lver.orig, i64 4 ; 2 uses
  %56 = load i16, ptr %55, align 2, !tbaa !29
  %57 = trunc i32 %54 to i16
  %58 = add i16 %56, %57
  store i16 %58, ptr %55, align 2, !tbaa !29
  %59 = load i16, ptr %43, align 2, !tbaa !29
  %60 = sext i16 %59 to i32
  %61 = getelementptr inbounds nuw i8, ptr %.pn.lver.orig, i64 8 ; 2 uses
  %62 = load i16, ptr %61, align 2, !tbaa !29
  %63 = sext i16 %62 to i32
  %64 = add nsw i32 %63, %60
  %65 = load i16, ptr %50, align 2, !tbaa !29
  %66 = sext i16 %65 to i32
  %67 = add nsw i32 %64, %66
  %68 = getelementptr inbounds nuw i8, ptr %.196.lver.orig, i64 8 ; 2 uses
  %69 = load i16, ptr %68, align 2, !tbaa !29
  %70 = sext i16 %69 to i32
  %71 = add nsw i32 %67, %70
  %72 = lshr i32 %71, 2
  %73 = getelementptr inbounds nuw i8, ptr %.37594.lver.orig, i64 6 ; 2 uses
  %74 = load i16, ptr %73, align 2, !tbaa !29
  %75 = trunc i32 %72 to i16
  %76 = add i16 %74, %75
  store i16 %76, ptr %73, align 2, !tbaa !29
  %77 = load i16, ptr %61, align 2, !tbaa !29
  %78 = sext i16 %77 to i32
  %79 = getelementptr inbounds nuw i8, ptr %.pn.lver.orig, i64 10 ; 2 uses
  %80 = load i16, ptr %79, align 2, !tbaa !29
  %81 = sext i16 %80 to i32
  %82 = add nsw i32 %81, %78
  %83 = load i16, ptr %68, align 2, !tbaa !29
  %84 = sext i16 %83 to i32
  %85 = add nsw i32 %82, %84
  %86 = getelementptr inbounds nuw i8, ptr %.196.lver.orig, i64 10 ; 2 uses
  %87 = load i16, ptr %86, align 2, !tbaa !29
  %88 = sext i16 %87 to i32
  %89 = add nsw i32 %85, %88
  %90 = lshr i32 %89, 2
  %91 = getelementptr inbounds nuw i8, ptr %.37594.lver.orig, i64 8 ; 2 uses
  %92 = load i16, ptr %91, align 2, !tbaa !29
  %93 = trunc i32 %90 to i16
  %94 = add i16 %92, %93
  store i16 %94, ptr %91, align 2, !tbaa !29
  %95 = load i16, ptr %79, align 2, !tbaa !29
  %96 = sext i16 %95 to i32
  %97 = getelementptr inbounds nuw i8, ptr %.pn.lver.orig, i64 12 ; 2 uses
  %98 = load i16, ptr %97, align 2, !tbaa !29
  %99 = sext i16 %98 to i32
  %100 = add nsw i32 %99, %96
  %101 = load i16, ptr %86, align 2, !tbaa !29
  %102 = sext i16 %101 to i32
  %103 = add nsw i32 %100, %102
  %104 = getelementptr inbounds nuw i8, ptr %.196.lver.orig, i64 12 ; 2 uses
  %105 = load i16, ptr %104, align 2, !tbaa !29
  %106 = sext i16 %105 to i32
  %107 = add nsw i32 %103, %106
  %108 = lshr i32 %107, 2
  %109 = getelementptr inbounds nuw i8, ptr %.37594.lver.orig, i64 10 ; 2 uses
  %110 = load i16, ptr %109, align 2, !tbaa !29
  %111 = trunc i32 %108 to i16
  %112 = add i16 %110, %111
  store i16 %112, ptr %109, align 2, !tbaa !29
  %113 = load i16, ptr %97, align 2, !tbaa !29
  %114 = sext i16 %113 to i32
  %115 = getelementptr inbounds nuw i8, ptr %.pn.lver.orig, i64 14 ; 2 uses
  %116 = load i16, ptr %115, align 2, !tbaa !29
  %117 = sext i16 %116 to i32
  %118 = add nsw i32 %117, %114
  %119 = load i16, ptr %104, align 2, !tbaa !29
  %120 = sext i16 %119 to i32
  %121 = add nsw i32 %118, %120
  %122 = getelementptr inbounds nuw i8, ptr %.196.lver.orig, i64 14 ; 2 uses
  %123 = load i16, ptr %122, align 2, !tbaa !29
  %124 = sext i16 %123 to i32
  %125 = add nsw i32 %121, %124
  %126 = lshr i32 %125, 2
  %127 = getelementptr inbounds nuw i8, ptr %.37594.lver.orig, i64 12 ; 2 uses
  %128 = load i16, ptr %127, align 2, !tbaa !29
  %129 = trunc i32 %126 to i16
  %130 = add i16 %128, %129
  store i16 %130, ptr %127, align 2, !tbaa !29
  %131 = load i16, ptr %115, align 2, !tbaa !29
  %132 = sext i16 %131 to i32
  %133 = getelementptr inbounds nuw i8, ptr %.pn.lver.orig, i64 16
  %134 = load i16, ptr %133, align 2, !tbaa !29
  %135 = sext i16 %134 to i32
  %136 = add nsw i32 %135, %132
  %137 = load i16, ptr %122, align 2, !tbaa !29
  %138 = sext i16 %137 to i32
  %139 = add nsw i32 %136, %138
  %140 = getelementptr inbounds nuw i8, ptr %.196.lver.orig, i64 16
  %141 = load i16, ptr %140, align 2, !tbaa !29
  %142 = sext i16 %141 to i32
  %143 = add nsw i32 %139, %142
  %144 = lshr i32 %143, 2
  %145 = getelementptr inbounds nuw i8, ptr %.37594.lver.orig, i64 14 ; 2 uses
  %146 = load i16, ptr %145, align 2, !tbaa !29
  %147 = trunc i32 %144 to i16
  %148 = add i16 %146, %147
  store i16 %148, ptr %145, align 2, !tbaa !29
  %149 = add nuw nsw i32 %.37195.lver.orig, 1     ; 2 uses
  %150 = getelementptr inbounds [2 x i8], ptr %.37594.lver.orig, i64 %1
  %exitcond.not.lver.orig = icmp eq i32 %149, 8
  br i1 %exitcond.not.lver.orig, label %.loopexit, label %.preheader88.lver.orig, !llvm.loop !65

.preheader88.ph:                                  ; preds = %.preheader88.lver.check
  %scevgep140 = getelementptr i8, ptr %0, i64 12
  %load_initial141 = load i16, ptr %scevgep140, align 2
  br label %.preheader88

.preheader85.lver.check:                          ; preds = %bb.a
  %ident.check131 = icmp ne i64 %1, 1
  %ident.check132 = icmp ne i64 %3, 1
  %151 = or i1 %ident.check131, %ident.check132
  br i1 %151, label %.preheader85.lver.orig, label %.preheader85.ph

.preheader85.lver.orig:                           ; preds = %.preheader85.lver.check, %.preheader85.lver.orig
  %.pn111.lver.orig = phi ptr [ %.0102.lver.orig, %.preheader85.lver.orig ], [ %2, %.preheader85.lver.check ] ; 9 uses
  %.270101.lver.orig = phi i32 [ %245, %.preheader85.lver.orig ], [ 0, %.preheader85.lver.check ]
  %.274100.lver.orig = phi ptr [ %246, %.preheader85.lver.orig ], [ %0, %.preheader85.lver.check ] ; 10 uses
  %.0102.lver.orig = getelementptr [2 x i8], ptr %.pn111.lver.orig, i64 %3 ; 9 uses
  %152 = load i16, ptr %.pn111.lver.orig, align 2, !tbaa !29
  %153 = sext i16 %152 to i32
  %154 = load i16, ptr %.0102.lver.orig, align 2, !tbaa !29
  %155 = sext i16 %154 to i32
  %156 = add nsw i32 %155, %153
  %157 = lshr i32 %156, 1
  %158 = load i16, ptr %.274100.lver.orig, align 2, !tbaa !29
  %159 = trunc i32 %157 to i16
  %160 = add i16 %158, %159
  store i16 %160, ptr %.274100.lver.orig, align 2, !tbaa !29
  %161 = getelementptr inbounds nuw i8, ptr %.pn111.lver.orig, i64 2
  %162 = load i16, ptr %161, align 2, !tbaa !29
  %163 = sext i16 %162 to i32
  %164 = getelementptr inbounds nuw i8, ptr %.0102.lver.orig, i64 2
  %165 = load i16, ptr %164, align 2, !tbaa !29
  %166 = sext i16 %165 to i32
  %167 = add nsw i32 %166, %163
  %168 = lshr i32 %167, 1
  %169 = getelementptr inbounds nuw i8, ptr %.274100.lver.orig, i64 2 ; 2 uses
  %170 = load i16, ptr %169, align 2, !tbaa !29
  %171 = trunc i32 %168 to i16
  %172 = add i16 %170, %171
  store i16 %172, ptr %169, align 2, !tbaa !29
  %173 = getelementptr inbounds nuw i8, ptr %.pn111.lver.orig, i64 4
  %174 = load i16, ptr %173, align 2, !tbaa !29
  %175 = sext i16 %174 to i32
  %176 = getelementptr inbounds nuw i8, ptr %.0102.lver.orig, i64 4
  %177 = load i16, ptr %176, align 2, !tbaa !29
  %178 = sext i16 %177 to i32
  %179 = add nsw i32 %178, %175
  %180 = lshr i32 %179, 1
  %181 = getelementptr inbounds nuw i8, ptr %.274100.lver.orig, i64 4 ; 2 uses
  %182 = load i16, ptr %181, align 2, !tbaa !29
  %183 = trunc i32 %180 to i16
  %184 = add i16 %182, %183
  store i16 %184, ptr %181, align 2, !tbaa !29
  %185 = getelementptr inbounds nuw i8, ptr %.pn111.lver.orig, i64 6
  %186 = load i16, ptr %185, align 2, !tbaa !29
  %187 = sext i16 %186 to i32
  %188 = getelementptr inbounds nuw i8, ptr %.0102.lver.orig, i64 6
  %189 = load i16, ptr %188, align 2, !tbaa !29
  %190 = sext i16 %189 to i32
  %191 = add nsw i32 %190, %187
  %192 = lshr i32 %191, 1
  %193 = getelementptr inbounds nuw i8, ptr %.274100.lver.orig, i64 6 ; 2 uses
  %194 = load i16, ptr %193, align 2, !tbaa !29
  %195 = trunc i32 %192 to i16
  %196 = add i16 %194, %195
  store i16 %196, ptr %193, align 2, !tbaa !29
  %197 = getelementptr inbounds nuw i8, ptr %.pn111.lver.orig, i64 8
  %198 = load i16, ptr %197, align 2, !tbaa !29
  %199 = sext i16 %198 to i32
  %200 = getelementptr inbounds nuw i8, ptr %.0102.lver.orig, i64 8
  %201 = load i16, ptr %200, align 2, !tbaa !29
  %202 = sext i16 %201 to i32
  %203 = add nsw i32 %202, %199
  %204 = lshr i32 %203, 1
  %205 = getelementptr inbounds nuw i8, ptr %.274100.lver.orig, i64 8 ; 2 uses
  %206 = load i16, ptr %205, align 2, !tbaa !29
  %207 = trunc i32 %204 to i16
  %208 = add i16 %206, %207
  store i16 %208, ptr %205, align 2, !tbaa !29
  %209 = getelementptr inbounds nuw i8, ptr %.pn111.lver.orig, i64 10
  %210 = load i16, ptr %209, align 2, !tbaa !29
  %211 = sext i16 %210 to i32
  %212 = getelementptr inbounds nuw i8, ptr %.0102.lver.orig, i64 10
  %213 = load i16, ptr %212, align 2, !tbaa !29
  %214 = sext i16 %213 to i32
  %215 = add nsw i32 %214, %211
  %216 = lshr i32 %215, 1
  %217 = getelementptr inbounds nuw i8, ptr %.274100.lver.orig, i64 10 ; 2 uses
  %218 = load i16, ptr %217, align 2, !tbaa !29
  %219 = trunc i32 %216 to i16
  %220 = add i16 %218, %219
  store i16 %220, ptr %217, align 2, !tbaa !29
  %221 = getelementptr inbounds nuw i8, ptr %.pn111.lver.orig, i64 12
  %222 = load i16, ptr %221, align 2, !tbaa !29
  %223 = sext i16 %222 to i32
  %224 = getelementptr inbounds nuw i8, ptr %.0102.lver.orig, i64 12
  %225 = load i16, ptr %224, align 2, !tbaa !29
  %226 = sext i16 %225 to i32
  %227 = add nsw i32 %226, %223
  %228 = lshr i32 %227, 1
  %229 = getelementptr inbounds nuw i8, ptr %.274100.lver.orig, i64 12 ; 2 uses
  %230 = load i16, ptr %229, align 2, !tbaa !29
  %231 = trunc i32 %228 to i16
  %232 = add i16 %230, %231
  store i16 %232, ptr %229, align 2, !tbaa !29
  %233 = getelementptr inbounds nuw i8, ptr %.pn111.lver.orig, i64 14
  %234 = load i16, ptr %233, align 2, !tbaa !29
  %235 = sext i16 %234 to i32
  %236 = getelementptr inbounds nuw i8, ptr %.0102.lver.orig, i64 14
  %237 = load i16, ptr %236, align 2, !tbaa !29
  %238 = sext i16 %237 to i32
  %239 = add nsw i32 %238, %235
  %240 = lshr i32 %239, 1
  %241 = getelementptr inbounds nuw i8, ptr %.274100.lver.orig, i64 14 ; 2 uses
  %242 = load i16, ptr %241, align 2, !tbaa !29
  %243 = trunc i32 %240 to i16
  %244 = add i16 %242, %243
  store i16 %244, ptr %241, align 2, !tbaa !29
  %245 = add nuw nsw i32 %.270101.lver.orig, 1    ; 2 uses
  %246 = getelementptr inbounds [2 x i8], ptr %.274100.lver.orig, i64 %1
  %exitcond118.not.lver.orig = icmp eq i32 %245, 8
  br i1 %exitcond118.not.lver.orig, label %.loopexit, label %.preheader85.lver.orig, !llvm.loop !66

.preheader85.ph:                                  ; preds = %.preheader85.lver.check
  %scevgep134 = getelementptr i8, ptr %0, i64 12
  %load_initial135 = load i16, ptr %scevgep134, align 2
  br label %.preheader85

.preheader82.lver.check:                          ; preds = %bb.a
  %ident.check = icmp ne i64 %1, 1
  %ident.check129 = icmp ne i64 %3, 1
  %247 = or i1 %ident.check, %ident.check129
  br i1 %247, label %.preheader82.lver.orig, label %.preheader82.ph

.preheader82.lver.orig:                           ; preds = %.preheader82.lver.check, %.preheader82.rtcont
  %.169106.lver.orig = phi i32 [ %.rtmerge, %.preheader82.rtcont ], [ 0, %.preheader82.lver.check ]
  %.173105.lver.orig = phi ptr [ %.rtmerge131, %.preheader82.rtcont ], [ %0, %.preheader82.lver.check ] ; 13 uses
  %.177104.lver.orig = phi ptr [ %.rtmerge132, %.preheader82.rtcont ], [ %2, %.preheader82.lver.check ] ; 13 uses
  %.177104.lver.orig143 = ptrtoaddr ptr %.177104.lver.orig to i64 ; 2 uses
  %248 = add i64 %.177104.lver.orig143, 18
  %.173105.lver.orig144 = ptrtoaddr ptr %.173105.lver.orig to i64 ; 2 uses
  %249 = add i64 %.173105.lver.orig144, 16
  %rt.bound0 = icmp ugt i64 %248, %.173105.lver.orig144
  %rt.bound1 = icmp ugt i64 %249, %.177104.lver.orig143
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.guard = freeze i1 %rt.conflict
  br i1 %rt.guard, label %.preheader82.rtscalar, label %.preheader82.rtvec, !prof !37

.preheader82.ph:                                  ; preds = %.preheader82.lver.check
  %scevgep = getelementptr i8, ptr %0, i64 12
  %load_initial = load i16, ptr %scevgep, align 2
  br label %.preheader82

.preheader.preheader:                             ; preds = %bb.a
  %i.a = load i16, ptr %2, align 2, !tbaa !29
  %i.b = load i16, ptr %0, align 2, !tbaa !29
  %i.c = add i16 %i.b, %i.a
  store i16 %i.c, ptr %0, align 2, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.e = load i16, ptr %i.d, align 2, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !29
  %i.h = add i16 %i.g, %i.e
  store i16 %i.h, ptr %i.f, align 2, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.j = load i16, ptr %i.i, align 2, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.l = load i16, ptr %i.k, align 2, !tbaa !29
  %i.m = add i16 %i.l, %i.j
  store i16 %i.m, ptr %i.k, align 2, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.o = load i16, ptr %i.n, align 2, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.q = load i16, ptr %i.p, align 2, !tbaa !29
  %i.r = add i16 %i.q, %i.o
  store i16 %i.r, ptr %i.p, align 2, !tbaa !29
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i16, ptr %i.s, align 2, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load i16, ptr %i.u, align 2, !tbaa !29
  %i.w = add i16 %i.v, %i.t
  store i16 %i.w, ptr %i.u, align 2, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.y = load i16, ptr %i.x, align 2, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !29
  %i.ab = add i16 %i.aa, %i.y
  store i16 %i.ab, ptr %i.z, align 2, !tbaa !29
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !29
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !29
  %i.ag = add i16 %i.af, %i.ad
  store i16 %i.ag, ptr %i.ae, align 2, !tbaa !29
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !29
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 14 ; 2 uses
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !29
  %i.al = add i16 %i.ak, %i.ai
  store i16 %i.al, ptr %i.aj, align 2, !tbaa !29
  %i.am = getelementptr inbounds [2 x i8], ptr %0, i64 %1 ; 10 uses
  %i.an = getelementptr inbounds [2 x i8], ptr %2, i64 %3 ; 9 uses
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !29
  %i.ap = load i16, ptr %i.am, align 2, !tbaa !29
  %i.aq = add i16 %i.ap, %i.ao
  store i16 %i.aq, ptr %i.am, align 2, !tbaa !29
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !29
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 2 ; 2 uses
  %i.au = load i16, ptr %i.at, align 2, !tbaa !29
  %i.av = add i16 %i.au, %i.as
  store i16 %i.av, ptr %i.at, align 2, !tbaa !29
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !29
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 2 uses
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !29
  %i.ba = add i16 %i.az, %i.ax
  store i16 %i.ba, ptr %i.ay, align 2, !tbaa !29
  %i.bb = getelementptr inbounds nuw i8, ptr %i.an, i64 6
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !29
  %i.bd = getelementptr inbounds nuw i8, ptr %i.am, i64 6 ; 2 uses
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !29
  %i.bf = add i16 %i.be, %i.bc
  store i16 %i.bf, ptr %i.bd, align 2, !tbaa !29
  %i.bg = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !29
  %i.bi = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !29
  %i.bk = add i16 %i.bj, %i.bh
  store i16 %i.bk, ptr %i.bi, align 2, !tbaa !29
  %i.bl = getelementptr inbounds nuw i8, ptr %i.an, i64 10
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !29
  %i.bn = getelementptr inbounds nuw i8, ptr %i.am, i64 10 ; 2 uses
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !29
  %i.bp = add i16 %i.bo, %i.bm
  store i16 %i.bp, ptr %i.bn, align 2, !tbaa !29
  %i.bq = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !29
  %i.bs = getelementptr inbounds nuw i8, ptr %i.am, i64 12 ; 2 uses
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !29
  %i.bu = add i16 %i.bt, %i.br
  store i16 %i.bu, ptr %i.bs, align 2, !tbaa !29
  %i.bv = getelementptr inbounds nuw i8, ptr %i.an, i64 14
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !29
  %i.bx = getelementptr inbounds nuw i8, ptr %i.am, i64 14 ; 2 uses
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !29
  %i.bz = add i16 %i.by, %i.bw
  store i16 %i.bz, ptr %i.bx, align 2, !tbaa !29
  %i.ca = getelementptr inbounds [2 x i8], ptr %i.am, i64 %1 ; 10 uses
  %i.cb = getelementptr inbounds [2 x i8], ptr %i.an, i64 %3 ; 9 uses
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !29
  %i.cd = load i16, ptr %i.ca, align 2, !tbaa !29
  %i.ce = add i16 %i.cd, %i.cc
  store i16 %i.ce, ptr %i.ca, align 2, !tbaa !29
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !29
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 2 ; 2 uses
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !29
  %i.cj = add i16 %i.ci, %i.cg
  store i16 %i.cj, ptr %i.ch, align 2, !tbaa !29
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !29
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 4 ; 2 uses
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !29
  %i.co = add i16 %i.cn, %i.cl
  store i16 %i.co, ptr %i.cm, align 2, !tbaa !29
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cb, i64 6
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !29
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ca, i64 6 ; 2 uses
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !29
  %i.ct = add i16 %i.cs, %i.cq
  store i16 %i.ct, ptr %i.cr, align 2, !tbaa !29
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !29
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !29
  %i.cy = add i16 %i.cx, %i.cv
  store i16 %i.cy, ptr %i.cw, align 2, !tbaa !29
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cb, i64 10
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !29
  %i.db = getelementptr inbounds nuw i8, ptr %i.ca, i64 10 ; 2 uses
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !29
  %i.dd = add i16 %i.dc, %i.da
  store i16 %i.dd, ptr %i.db, align 2, !tbaa !29
  %i.de = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  %i.df = load i16, ptr %i.de, align 2, !tbaa !29
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ca, i64 12 ; 2 uses
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !29
  %i.di = add i16 %i.dh, %i.df
  store i16 %i.di, ptr %i.dg, align 2, !tbaa !29
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cb, i64 14
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !29
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ca, i64 14 ; 2 uses
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !29
  %i.dn = add i16 %i.dm, %i.dk
  store i16 %i.dn, ptr %i.dl, align 2, !tbaa !29
  %i.do = getelementptr inbounds [2 x i8], ptr %i.ca, i64 %1 ; 10 uses
  %i.dp = getelementptr inbounds [2 x i8], ptr %i.cb, i64 %3 ; 9 uses
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !29
  %i.dr = load i16, ptr %i.do, align 2, !tbaa !29
  %i.ds = add i16 %i.dr, %i.dq
  store i16 %i.ds, ptr %i.do, align 2, !tbaa !29
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 2
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !29
  %i.dv = getelementptr inbounds nuw i8, ptr %i.do, i64 2 ; 2 uses
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !29
  %i.dx = add i16 %i.dw, %i.du
  store i16 %i.dx, ptr %i.dv, align 2, !tbaa !29
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !29
  %i.ea = getelementptr inbounds nuw i8, ptr %i.do, i64 4 ; 2 uses
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !29
  %i.ec = add i16 %i.eb, %i.dz
  store i16 %i.ec, ptr %i.ea, align 2, !tbaa !29
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dp, i64 6
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !29
  %i.ef = getelementptr inbounds nuw i8, ptr %i.do, i64 6 ; 2 uses
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !29
  %i.eh = add i16 %i.eg, %i.ee
  store i16 %i.eh, ptr %i.ef, align 2, !tbaa !29
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !29
  %i.ek = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 2 uses
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !29
  %i.em = add i16 %i.el, %i.ej
  store i16 %i.em, ptr %i.ek, align 2, !tbaa !29
  %i.en = getelementptr inbounds nuw i8, ptr %i.dp, i64 10
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !29
  %i.ep = getelementptr inbounds nuw i8, ptr %i.do, i64 10 ; 2 uses
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !29
  %i.er = add i16 %i.eq, %i.eo
  store i16 %i.er, ptr %i.ep, align 2, !tbaa !29
  %i.es = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  %i.et = load i16, ptr %i.es, align 2, !tbaa !29
  %i.eu = getelementptr inbounds nuw i8, ptr %i.do, i64 12 ; 2 uses
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !29
  %i.ew = add i16 %i.ev, %i.et
  store i16 %i.ew, ptr %i.eu, align 2, !tbaa !29
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dp, i64 14
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !29
  %i.ez = getelementptr inbounds nuw i8, ptr %i.do, i64 14 ; 2 uses
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !29
  %i.fb = add i16 %i.fa, %i.ey
  store i16 %i.fb, ptr %i.ez, align 2, !tbaa !29
  %i.fc = getelementptr inbounds [2 x i8], ptr %i.do, i64 %1 ; 10 uses
  %i.fd = getelementptr inbounds [2 x i8], ptr %i.dp, i64 %3 ; 9 uses
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !29
  %i.ff = load i16, ptr %i.fc, align 2, !tbaa !29
  %i.fg = add i16 %i.ff, %i.fe
  store i16 %i.fg, ptr %i.fc, align 2, !tbaa !29
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 2
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !29
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fc, i64 2 ; 2 uses
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !29
  %i.fl = add i16 %i.fk, %i.fi
  store i16 %i.fl, ptr %i.fj, align 2, !tbaa !29
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !29
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fc, i64 4 ; 2 uses
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !29
  %i.fq = add i16 %i.fp, %i.fn
  store i16 %i.fq, ptr %i.fo, align 2, !tbaa !29
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fd, i64 6
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !29
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fc, i64 6 ; 2 uses
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !29
  %i.fv = add i16 %i.fu, %i.fs
  store i16 %i.fv, ptr %i.ft, align 2, !tbaa !29
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.fx = load i16, ptr %i.fw, align 2, !tbaa !29
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 2 uses
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !29
  %i.ga = add i16 %i.fz, %i.fx
  store i16 %i.ga, ptr %i.fy, align 2, !tbaa !29
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fd, i64 10
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !29
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fc, i64 10 ; 2 uses
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !29
  %i.gf = add i16 %i.ge, %i.gc
  store i16 %i.gf, ptr %i.gd, align 2, !tbaa !29
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fd, i64 12
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !29
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fc, i64 12 ; 2 uses
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !29
  %i.gk = add i16 %i.gj, %i.gh
  store i16 %i.gk, ptr %i.gi, align 2, !tbaa !29
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fd, i64 14
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !29
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fc, i64 14 ; 2 uses
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !29
  %i.gp = add i16 %i.go, %i.gm
  store i16 %i.gp, ptr %i.gn, align 2, !tbaa !29
  %i.gq = getelementptr inbounds [2 x i8], ptr %i.fc, i64 %1 ; 10 uses
  %i.gr = getelementptr inbounds [2 x i8], ptr %i.fd, i64 %3 ; 9 uses
  %i.gs = load i16, ptr %i.gr, align 2, !tbaa !29
  %i.gt = load i16, ptr %i.gq, align 2, !tbaa !29
  %i.gu = add i16 %i.gt, %i.gs
  store i16 %i.gu, ptr %i.gq, align 2, !tbaa !29
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 2
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !29
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gq, i64 2 ; 2 uses
  %i.gy = load i16, ptr %i.gx, align 2, !tbaa !29
  %i.gz = add i16 %i.gy, %i.gw
  store i16 %i.gz, ptr %i.gx, align 2, !tbaa !29
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !29
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gq, i64 4 ; 2 uses
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !29
  %i.he = add i16 %i.hd, %i.hb
  store i16 %i.he, ptr %i.hc, align 2, !tbaa !29
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gr, i64 6
  %i.hg = load i16, ptr %i.hf, align 2, !tbaa !29
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gq, i64 6 ; 2 uses
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !29
  %i.hj = add i16 %i.hi, %i.hg
  store i16 %i.hj, ptr %i.hh, align 2, !tbaa !29
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !29
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 2 uses
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !29
  %i.ho = add i16 %i.hn, %i.hl
  store i16 %i.ho, ptr %i.hm, align 2, !tbaa !29
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gr, i64 10
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !29
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gq, i64 10 ; 2 uses
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !29
  %i.ht = add i16 %i.hs, %i.hq
  store i16 %i.ht, ptr %i.hr, align 2, !tbaa !29
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gr, i64 12
  %i.hv = load i16, ptr %i.hu, align 2, !tbaa !29
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gq, i64 12 ; 2 uses
  %i.hx = load i16, ptr %i.hw, align 2, !tbaa !29
  %i.hy = add i16 %i.hx, %i.hv
  store i16 %i.hy, ptr %i.hw, align 2, !tbaa !29
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gr, i64 14
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !29
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gq, i64 14 ; 2 uses
  %i.ic = load i16, ptr %i.ib, align 2, !tbaa !29
  %i.id = add i16 %i.ic, %i.ia
  store i16 %i.id, ptr %i.ib, align 2, !tbaa !29
  %i.ie = getelementptr inbounds [2 x i8], ptr %i.gq, i64 %1 ; 10 uses
  %i.if = getelementptr inbounds [2 x i8], ptr %i.gr, i64 %3 ; 9 uses
  %i.ig = load i16, ptr %i.if, align 2, !tbaa !29
  %i.ih = load i16, ptr %i.ie, align 2, !tbaa !29
  %i.ii = add i16 %i.ih, %i.ig
  store i16 %i.ii, ptr %i.ie, align 2, !tbaa !29
  %i.ij = getelementptr inbounds nuw i8, ptr %i.if, i64 2
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !29
  %i.il = getelementptr inbounds nuw i8, ptr %i.ie, i64 2 ; 2 uses
  %i.im = load i16, ptr %i.il, align 2, !tbaa !29
  %i.in = add i16 %i.im, %i.ik
  store i16 %i.in, ptr %i.il, align 2, !tbaa !29
  %i.io = getelementptr inbounds nuw i8, ptr %i.if, i64 4
  %i.ip = load i16, ptr %i.io, align 2, !tbaa !29
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ie, i64 4 ; 2 uses
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !29
  %i.is = add i16 %i.ir, %i.ip
  store i16 %i.is, ptr %i.iq, align 2, !tbaa !29
  %i.it = getelementptr inbounds nuw i8, ptr %i.if, i64 6
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !29
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ie, i64 6 ; 2 uses
  %i.iw = load i16, ptr %i.iv, align 2, !tbaa !29
  %i.ix = add i16 %i.iw, %i.iu
  store i16 %i.ix, ptr %i.iv, align 2, !tbaa !29
  %i.iy = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.iz = load i16, ptr %i.iy, align 2, !tbaa !29
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ie, i64 8 ; 2 uses
  %i.jb = load i16, ptr %i.ja, align 2, !tbaa !29
  %i.jc = add i16 %i.jb, %i.iz
  store i16 %i.jc, ptr %i.ja, align 2, !tbaa !29
  %i.jd = getelementptr inbounds nuw i8, ptr %i.if, i64 10
  %i.je = load i16, ptr %i.jd, align 2, !tbaa !29
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ie, i64 10 ; 2 uses
  %i.jg = load i16, ptr %i.jf, align 2, !tbaa !29
  %i.jh = add i16 %i.jg, %i.je
  store i16 %i.jh, ptr %i.jf, align 2, !tbaa !29
  %i.ji = getelementptr inbounds nuw i8, ptr %i.if, i64 12
  %i.jj = load i16, ptr %i.ji, align 2, !tbaa !29
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ie, i64 12 ; 2 uses
  %i.jl = load i16, ptr %i.jk, align 2, !tbaa !29
  %i.jm = add i16 %i.jl, %i.jj
  store i16 %i.jm, ptr %i.jk, align 2, !tbaa !29
  %i.jn = getelementptr inbounds nuw i8, ptr %i.if, i64 14
  %i.jo = load i16, ptr %i.jn, align 2, !tbaa !29
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ie, i64 14 ; 2 uses
  %i.jq = load i16, ptr %i.jp, align 2, !tbaa !29
  %i.jr = add i16 %i.jq, %i.jo
  store i16 %i.jr, ptr %i.jp, align 2, !tbaa !29
  %i.js = getelementptr inbounds [2 x i8], ptr %i.ie, i64 %1 ; 9 uses
  %i.jt = getelementptr inbounds [2 x i8], ptr %i.if, i64 %3 ; 8 uses
  %i.ju = load i16, ptr %i.jt, align 2, !tbaa !29
  %i.jv = load i16, ptr %i.js, align 2, !tbaa !29
  %i.jw = add i16 %i.jv, %i.ju
  store i16 %i.jw, ptr %i.js, align 2, !tbaa !29
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jt, i64 2
  %i.jy = load i16, ptr %i.jx, align 2, !tbaa !29
  %i.jz = getelementptr inbounds nuw i8, ptr %i.js, i64 2 ; 2 uses
  %i.ka = load i16, ptr %i.jz, align 2, !tbaa !29
  %i.kb = add i16 %i.ka, %i.jy
  store i16 %i.kb, ptr %i.jz, align 2, !tbaa !29
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jt, i64 4
  %i.kd = load i16, ptr %i.kc, align 2, !tbaa !29
  %i.ke = getelementptr inbounds nuw i8, ptr %i.js, i64 4 ; 2 uses
  %i.kf = load i16, ptr %i.ke, align 2, !tbaa !29
  %i.kg = add i16 %i.kf, %i.kd
  store i16 %i.kg, ptr %i.ke, align 2, !tbaa !29
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jt, i64 6
  %i.ki = load i16, ptr %i.kh, align 2, !tbaa !29
  %i.kj = getelementptr inbounds nuw i8, ptr %i.js, i64 6 ; 2 uses
  %i.kk = load i16, ptr %i.kj, align 2, !tbaa !29
  %i.kl = add i16 %i.kk, %i.ki
  store i16 %i.kl, ptr %i.kj, align 2, !tbaa !29
  %i.km = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.kn = load i16, ptr %i.km, align 2, !tbaa !29
  %i.ko = getelementptr inbounds nuw i8, ptr %i.js, i64 8 ; 2 uses
  %i.kp = load i16, ptr %i.ko, align 2, !tbaa !29
  %i.kq = add i16 %i.kp, %i.kn
  store i16 %i.kq, ptr %i.ko, align 2, !tbaa !29
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jt, i64 10
  %i.ks = load i16, ptr %i.kr, align 2, !tbaa !29
  %i.kt = getelementptr inbounds nuw i8, ptr %i.js, i64 10 ; 2 uses
  %i.ku = load i16, ptr %i.kt, align 2, !tbaa !29
  %i.kv = add i16 %i.ku, %i.ks
  store i16 %i.kv, ptr %i.kt, align 2, !tbaa !29
  %i.kw = getelementptr inbounds nuw i8, ptr %i.jt, i64 12
  %i.kx = load i16, ptr %i.kw, align 2, !tbaa !29
  %i.ky = getelementptr inbounds nuw i8, ptr %i.js, i64 12 ; 2 uses
  %i.kz = load i16, ptr %i.ky, align 2, !tbaa !29
  %i.la = add i16 %i.kz, %i.kx
  store i16 %i.la, ptr %i.ky, align 2, !tbaa !29
  %i.lb = getelementptr inbounds nuw i8, ptr %i.jt, i64 14
  %i.lc = load i16, ptr %i.lb, align 2, !tbaa !29
  %i.ld = getelementptr inbounds nuw i8, ptr %i.js, i64 14 ; 2 uses
  %i.le = load i16, ptr %i.ld, align 2, !tbaa !29
  %i.lf = add i16 %i.le, %i.lc
  store i16 %i.lf, ptr %i.ld, align 2, !tbaa !29
  br label %.loopexit

.preheader82:                                     ; preds = %.preheader82.ph, %.preheader82
  %store_forwarded = phi i16 [ %load_initial, %.preheader82.ph ], [ %335, %.preheader82 ]
  %.169106 = phi i32 [ 0, %.preheader82.ph ], [ %336, %.preheader82 ]
  %.173105 = phi ptr [ %0, %.preheader82.ph ], [ %337, %.preheader82 ] ; 10 uses
  %.177104 = phi ptr [ %2, %.preheader82.ph ], [ %338, %.preheader82 ] ; 10 uses
  %250 = load i16, ptr %.177104, align 2, !tbaa !29
  %251 = sext i16 %250 to i32
  %252 = getelementptr inbounds nuw i8, ptr %.177104, i64 2 ; 2 uses
  %253 = load i16, ptr %252, align 2, !tbaa !29
  %254 = sext i16 %253 to i32
  %255 = add nsw i32 %254, %251
  %256 = lshr i32 %255, 1
  %257 = load i16, ptr %.173105, align 2, !tbaa !29
  %258 = trunc i32 %256 to i16
  %259 = add i16 %257, %258
  store i16 %259, ptr %.173105, align 2, !tbaa !29
  %260 = load i16, ptr %252, align 2, !tbaa !29
  %261 = sext i16 %260 to i32
  %262 = getelementptr inbounds nuw i8, ptr %.177104, i64 4 ; 2 uses
  %263 = load i16, ptr %262, align 2, !tbaa !29
  %264 = sext i16 %263 to i32
  %265 = add nsw i32 %264, %261
  %266 = lshr i32 %265, 1
  %267 = getelementptr inbounds nuw i8, ptr %.173105, i64 2 ; 2 uses
  %268 = load i16, ptr %267, align 2, !tbaa !29
  %269 = trunc i32 %266 to i16
  %270 = add i16 %268, %269
  store i16 %270, ptr %267, align 2, !tbaa !29
  %271 = load i16, ptr %262, align 2, !tbaa !29
  %272 = sext i16 %271 to i32
  %273 = getelementptr inbounds nuw i8, ptr %.177104, i64 6 ; 2 uses
  %274 = load i16, ptr %273, align 2, !tbaa !29
  %275 = sext i16 %274 to i32
  %276 = add nsw i32 %275, %272
  %277 = lshr i32 %276, 1
  %278 = getelementptr inbounds nuw i8, ptr %.173105, i64 4 ; 2 uses
  %279 = load i16, ptr %278, align 2, !tbaa !29
  %280 = trunc i32 %277 to i16
  %281 = add i16 %279, %280
  store i16 %281, ptr %278, align 2, !tbaa !29
  %282 = load i16, ptr %273, align 2, !tbaa !29
  %283 = sext i16 %282 to i32
  %284 = getelementptr inbounds nuw i8, ptr %.177104, i64 8 ; 2 uses
  %285 = load i16, ptr %284, align 2, !tbaa !29
  %286 = sext i16 %285 to i32
  %287 = add nsw i32 %286, %283
  %288 = lshr i32 %287, 1
  %289 = getelementptr inbounds nuw i8, ptr %.173105, i64 6 ; 2 uses
  %290 = load i16, ptr %289, align 2, !tbaa !29
  %291 = trunc i32 %288 to i16
  %292 = add i16 %290, %291
  store i16 %292, ptr %289, align 2, !tbaa !29
  %293 = load i16, ptr %284, align 2, !tbaa !29
  %294 = sext i16 %293 to i32
  %295 = getelementptr inbounds nuw i8, ptr %.177104, i64 10 ; 2 uses
  %296 = load i16, ptr %295, align 2, !tbaa !29
  %297 = sext i16 %296 to i32
  %298 = add nsw i32 %297, %294
  %299 = lshr i32 %298, 1
  %300 = getelementptr inbounds nuw i8, ptr %.173105, i64 8 ; 2 uses
  %301 = load i16, ptr %300, align 2, !tbaa !29
  %302 = trunc i32 %299 to i16
  %303 = add i16 %301, %302
  store i16 %303, ptr %300, align 2, !tbaa !29
  %304 = load i16, ptr %295, align 2, !tbaa !29
  %305 = sext i16 %304 to i32
  %306 = getelementptr inbounds nuw i8, ptr %.177104, i64 12 ; 2 uses
  %307 = load i16, ptr %306, align 2, !tbaa !29
  %308 = sext i16 %307 to i32
  %309 = add nsw i32 %308, %305
  %310 = lshr i32 %309, 1
  %311 = getelementptr inbounds nuw i8, ptr %.173105, i64 10 ; 2 uses
  %312 = load i16, ptr %311, align 2, !tbaa !29
  %313 = trunc i32 %310 to i16
  %314 = add i16 %312, %313
  store i16 %314, ptr %311, align 2, !tbaa !29
  %315 = load i16, ptr %306, align 2, !tbaa !29
  %316 = sext i16 %315 to i32
  %317 = getelementptr inbounds nuw i8, ptr %.177104, i64 14 ; 2 uses
  %318 = load i16, ptr %317, align 2, !tbaa !29
  %319 = sext i16 %318 to i32
  %320 = add nsw i32 %319, %316
  %321 = lshr i32 %320, 1
  %322 = getelementptr inbounds nuw i8, ptr %.173105, i64 12
  %323 = trunc i32 %321 to i16
  %324 = add i16 %store_forwarded, %323
  store i16 %324, ptr %322, align 2, !tbaa !29
  %325 = load i16, ptr %317, align 2, !tbaa !29
  %326 = sext i16 %325 to i32
  %327 = getelementptr inbounds nuw i8, ptr %.177104, i64 16
  %328 = load i16, ptr %327, align 2, !tbaa !29
  %329 = sext i16 %328 to i32
  %330 = add nsw i32 %329, %326
  %331 = lshr i32 %330, 1
  %332 = getelementptr inbounds nuw i8, ptr %.173105, i64 14 ; 2 uses
  %333 = load i16, ptr %332, align 2, !tbaa !29
  %334 = trunc i32 %331 to i16
  %335 = add i16 %333, %334                       ; 2 uses
  store i16 %335, ptr %332, align 2, !tbaa !29
  %336 = add nuw nsw i32 %.169106, 1              ; 2 uses
  %337 = getelementptr inbounds nuw [2 x i8], ptr %.173105, i64 %1
  %338 = getelementptr inbounds nuw [2 x i8], ptr %.177104, i64 %3
  %exitcond121.not = icmp eq i32 %336, 8
  br i1 %exitcond121.not, label %.loopexit, label %.preheader82, !llvm.loop !67

.preheader85:                                     ; preds = %.preheader85.ph, %.preheader85
  %store_forwarded136 = phi i16 [ %load_initial135, %.preheader85.ph ], [ %i.ot, %.preheader85 ]
  %.pn111 = phi ptr [ %2, %.preheader85.ph ], [ %.0102, %.preheader85 ] ; 9 uses
  %.270101 = phi i32 [ 0, %.preheader85.ph ], [ %i.ou, %.preheader85 ]
  %.274100 = phi ptr [ %0, %.preheader85.ph ], [ %i.ov, %.preheader85 ] ; 10 uses
  %.0102 = getelementptr [2 x i8], ptr %.pn111, i64 %3 ; 9 uses
  %i.lg = load i16, ptr %.pn111, align 2, !tbaa !29
  %i.lh = sext i16 %i.lg to i32
  %i.li = load i16, ptr %.0102, align 2, !tbaa !29
  %i.lj = sext i16 %i.li to i32
  %i.lk = add nsw i32 %i.lj, %i.lh
  %i.ll = lshr i32 %i.lk, 1
  %i.lm = load i16, ptr %.274100, align 2, !tbaa !29
  %i.ln = trunc i32 %i.ll to i16
  %i.lo = add i16 %i.lm, %i.ln
  store i16 %i.lo, ptr %.274100, align 2, !tbaa !29
  %i.lp = getelementptr inbounds nuw i8, ptr %.pn111, i64 2
  %i.lq = load i16, ptr %i.lp, align 2, !tbaa !29
  %i.lr = sext i16 %i.lq to i32
  %i.ls = getelementptr inbounds nuw i8, ptr %.0102, i64 2
  %i.lt = load i16, ptr %i.ls, align 2, !tbaa !29
  %i.lu = sext i16 %i.lt to i32
  %i.lv = add nsw i32 %i.lu, %i.lr
  %i.lw = lshr i32 %i.lv, 1
  %i.lx = getelementptr inbounds nuw i8, ptr %.274100, i64 2 ; 2 uses
  %i.ly = load i16, ptr %i.lx, align 2, !tbaa !29
  %i.lz = trunc i32 %i.lw to i16
  %i.ma = add i16 %i.ly, %i.lz
  store i16 %i.ma, ptr %i.lx, align 2, !tbaa !29
  %i.mb = getelementptr inbounds nuw i8, ptr %.pn111, i64 4
  %i.mc = load i16, ptr %i.mb, align 2, !tbaa !29
  %i.md = sext i16 %i.mc to i32
  %i.me = getelementptr inbounds nuw i8, ptr %.0102, i64 4
  %i.mf = load i16, ptr %i.me, align 2, !tbaa !29
  %i.mg = sext i16 %i.mf to i32
  %i.mh = add nsw i32 %i.mg, %i.md
  %i.mi = lshr i32 %i.mh, 1
  %i.mj = getelementptr inbounds nuw i8, ptr %.274100, i64 4 ; 2 uses
  %i.mk = load i16, ptr %i.mj, align 2, !tbaa !29
  %i.ml = trunc i32 %i.mi to i16
  %i.mm = add i16 %i.mk, %i.ml
  store i16 %i.mm, ptr %i.mj, align 2, !tbaa !29
  %i.mn = getelementptr inbounds nuw i8, ptr %.pn111, i64 6
  %i.mo = load i16, ptr %i.mn, align 2, !tbaa !29
  %i.mp = sext i16 %i.mo to i32
  %i.mq = getelementptr inbounds nuw i8, ptr %.0102, i64 6
  %i.mr = load i16, ptr %i.mq, align 2, !tbaa !29
  %i.ms = sext i16 %i.mr to i32
  %i.mt = add nsw i32 %i.ms, %i.mp
  %i.mu = lshr i32 %i.mt, 1
  %i.mv = getelementptr inbounds nuw i8, ptr %.274100, i64 6 ; 2 uses
  %i.mw = load i16, ptr %i.mv, align 2, !tbaa !29
  %i.mx = trunc i32 %i.mu to i16
  %i.my = add i16 %i.mw, %i.mx
  store i16 %i.my, ptr %i.mv, align 2, !tbaa !29
  %i.mz = getelementptr inbounds nuw i8, ptr %.pn111, i64 8
  %i.na = load i16, ptr %i.mz, align 2, !tbaa !29
  %i.nb = sext i16 %i.na to i32
  %i.nc = getelementptr inbounds nuw i8, ptr %.0102, i64 8
  %i.nd = load i16, ptr %i.nc, align 2, !tbaa !29
  %i.ne = sext i16 %i.nd to i32
  %i.nf = add nsw i32 %i.ne, %i.nb
  %i.ng = lshr i32 %i.nf, 1
  %i.nh = getelementptr inbounds nuw i8, ptr %.274100, i64 8 ; 2 uses
  %i.ni = load i16, ptr %i.nh, align 2, !tbaa !29
  %i.nj = trunc i32 %i.ng to i16
  %i.nk = add i16 %i.ni, %i.nj
  store i16 %i.nk, ptr %i.nh, align 2, !tbaa !29
  %i.nl = getelementptr inbounds nuw i8, ptr %.pn111, i64 10
  %i.nm = load i16, ptr %i.nl, align 2, !tbaa !29
  %i.nn = sext i16 %i.nm to i32
  %i.no = getelementptr inbounds nuw i8, ptr %.0102, i64 10
  %i.np = load i16, ptr %i.no, align 2, !tbaa !29
  %i.nq = sext i16 %i.np to i32
  %i.nr = add nsw i32 %i.nq, %i.nn
  %i.ns = lshr i32 %i.nr, 1
  %i.nt = getelementptr inbounds nuw i8, ptr %.274100, i64 10 ; 2 uses
  %i.nu = load i16, ptr %i.nt, align 2, !tbaa !29
  %i.nv = trunc i32 %i.ns to i16
  %i.nw = add i16 %i.nu, %i.nv
  store i16 %i.nw, ptr %i.nt, align 2, !tbaa !29
  %i.nx = getelementptr inbounds nuw i8, ptr %.pn111, i64 12
  %i.ny = load i16, ptr %i.nx, align 2, !tbaa !29
  %i.nz = sext i16 %i.ny to i32
  %i.oa = getelementptr inbounds nuw i8, ptr %.0102, i64 12
  %i.ob = load i16, ptr %i.oa, align 2, !tbaa !29
  %i.oc = sext i16 %i.ob to i32
  %i.od = add nsw i32 %i.oc, %i.nz
  %i.oe = lshr i32 %i.od, 1
  %i.of = getelementptr inbounds nuw i8, ptr %.274100, i64 12
  %i.og = trunc i32 %i.oe to i16
  %i.oh = add i16 %store_forwarded136, %i.og
  store i16 %i.oh, ptr %i.of, align 2, !tbaa !29
  %i.oi = getelementptr inbounds nuw i8, ptr %.pn111, i64 14
  %i.oj = load i16, ptr %i.oi, align 2, !tbaa !29
  %i.ok = sext i16 %i.oj to i32
  %i.ol = getelementptr inbounds nuw i8, ptr %.0102, i64 14
  %i.om = load i16, ptr %i.ol, align 2, !tbaa !29
  %i.on = sext i16 %i.om to i32
  %i.oo = add nsw i32 %i.on, %i.ok
  %i.op = lshr i32 %i.oo, 1
  %i.oq = getelementptr inbounds nuw i8, ptr %.274100, i64 14 ; 2 uses
  %i.or = load i16, ptr %i.oq, align 2, !tbaa !29
  %i.os = trunc i32 %i.op to i16
  %i.ot = add i16 %i.or, %i.os                    ; 2 uses
  store i16 %i.ot, ptr %i.oq, align 2, !tbaa !29
  %i.ou = add nuw nsw i32 %.270101, 1             ; 2 uses
  %i.ov = getelementptr inbounds nuw [2 x i8], ptr %.274100, i64 %1
  %exitcond118.not = icmp eq i32 %i.ou, 8
  br i1 %exitcond118.not, label %.loopexit, label %.preheader85, !llvm.loop !66

.preheader88:                                     ; preds = %.preheader88.ph, %.preheader88
  %store_forwarded142 = phi i16 [ %load_initial141, %.preheader88.ph ], [ %i.uh, %.preheader88 ]
  %.pn = phi ptr [ %2, %.preheader88.ph ], [ %.196, %.preheader88 ] ; 10 uses
  %.37195 = phi i32 [ 0, %.preheader88.ph ], [ %i.ui, %.preheader88 ]
  %.37594 = phi ptr [ %0, %.preheader88.ph ], [ %i.uj, %.preheader88 ] ; 10 uses
  %.196 = getelementptr [2 x i8], ptr %.pn, i64 %3 ; 10 uses
  %i.ow = load i16, ptr %.pn, align 2, !tbaa !29
  %i.ox = sext i16 %i.ow to i32
  %i.oy = getelementptr inbounds nuw i8, ptr %.pn, i64 2 ; 2 uses
  %i.oz = load i16, ptr %i.oy, align 2, !tbaa !29
  %i.pa = sext i16 %i.oz to i32
  %i.pb = add nsw i32 %i.pa, %i.ox
  %i.pc = load i16, ptr %.196, align 2, !tbaa !29
  %i.pd = sext i16 %i.pc to i32
  %i.pe = add nsw i32 %i.pb, %i.pd
  %i.pf = getelementptr inbounds nuw i8, ptr %.196, i64 2 ; 2 uses
  %i.pg = load i16, ptr %i.pf, align 2, !tbaa !29
  %i.ph = sext i16 %i.pg to i32
  %i.pi = add nsw i32 %i.pe, %i.ph
  %i.pj = lshr i32 %i.pi, 2
  %i.pk = load i16, ptr %.37594, align 2, !tbaa !29
  %i.pl = trunc i32 %i.pj to i16
  %i.pm = add i16 %i.pk, %i.pl
  store i16 %i.pm, ptr %.37594, align 2, !tbaa !29
  %i.pn = load i16, ptr %i.oy, align 2, !tbaa !29
  %i.po = sext i16 %i.pn to i32
  %i.pp = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 2 uses
  %i.pq = load i16, ptr %i.pp, align 2, !tbaa !29
  %i.pr = sext i16 %i.pq to i32
  %i.ps = add nsw i32 %i.pr, %i.po
  %i.pt = load i16, ptr %i.pf, align 2, !tbaa !29
  %i.pu = sext i16 %i.pt to i32
  %i.pv = add nsw i32 %i.ps, %i.pu
  %i.pw = getelementptr inbounds nuw i8, ptr %.196, i64 4 ; 2 uses
  %i.px = load i16, ptr %i.pw, align 2, !tbaa !29
  %i.py = sext i16 %i.px to i32
  %i.pz = add nsw i32 %i.pv, %i.py
  %i.qa = lshr i32 %i.pz, 2
  %i.qb = getelementptr inbounds nuw i8, ptr %.37594, i64 2 ; 2 uses
  %i.qc = load i16, ptr %i.qb, align 2, !tbaa !29
  %i.qd = trunc i32 %i.qa to i16
  %i.qe = add i16 %i.qc, %i.qd
  store i16 %i.qe, ptr %i.qb, align 2, !tbaa !29
  %i.qf = load i16, ptr %i.pp, align 2, !tbaa !29
  %i.qg = sext i16 %i.qf to i32
  %i.qh = getelementptr inbounds nuw i8, ptr %.pn, i64 6 ; 2 uses
  %i.qi = load i16, ptr %i.qh, align 2, !tbaa !29
  %i.qj = sext i16 %i.qi to i32
  %i.qk = add nsw i32 %i.qj, %i.qg
  %i.ql = load i16, ptr %i.pw, align 2, !tbaa !29
  %i.qm = sext i16 %i.ql to i32
  %i.qn = add nsw i32 %i.qk, %i.qm
  %i.qo = getelementptr inbounds nuw i8, ptr %.196, i64 6 ; 2 uses
  %i.qp = load i16, ptr %i.qo, align 2, !tbaa !29
  %i.qq = sext i16 %i.qp to i32
  %i.qr = add nsw i32 %i.qn, %i.qq
  %i.qs = lshr i32 %i.qr, 2
  %i.qt = getelementptr inbounds nuw i8, ptr %.37594, i64 4 ; 2 uses
  %i.qu = load i16, ptr %i.qt, align 2, !tbaa !29
  %i.qv = trunc i32 %i.qs to i16
  %i.qw = add i16 %i.qu, %i.qv
  store i16 %i.qw, ptr %i.qt, align 2, !tbaa !29
  %i.qx = load i16, ptr %i.qh, align 2, !tbaa !29
  %i.qy = sext i16 %i.qx to i32
  %i.qz = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.ra = load i16, ptr %i.qz, align 2, !tbaa !29
  %i.rb = sext i16 %i.ra to i32
  %i.rc = add nsw i32 %i.rb, %i.qy
  %i.rd = load i16, ptr %i.qo, align 2, !tbaa !29
  %i.re = sext i16 %i.rd to i32
  %i.rf = add nsw i32 %i.rc, %i.re
  %i.rg = getelementptr inbounds nuw i8, ptr %.196, i64 8 ; 2 uses
  %i.rh = load i16, ptr %i.rg, align 2, !tbaa !29
  %i.ri = sext i16 %i.rh to i32
  %i.rj = add nsw i32 %i.rf, %i.ri
  %i.rk = lshr i32 %i.rj, 2
  %i.rl = getelementptr inbounds nuw i8, ptr %.37594, i64 6 ; 2 uses
  %i.rm = load i16, ptr %i.rl, align 2, !tbaa !29
  %i.rn = trunc i32 %i.rk to i16
  %i.ro = add i16 %i.rm, %i.rn
  store i16 %i.ro, ptr %i.rl, align 2, !tbaa !29
  %i.rp = load i16, ptr %i.qz, align 2, !tbaa !29
  %i.rq = sext i16 %i.rp to i32
  %i.rr = getelementptr inbounds nuw i8, ptr %.pn, i64 10 ; 2 uses
  %i.rs = load i16, ptr %i.rr, align 2, !tbaa !29
  %i.rt = sext i16 %i.rs to i32
  %i.ru = add nsw i32 %i.rt, %i.rq
  %i.rv = load i16, ptr %i.rg, align 2, !tbaa !29
  %i.rw = sext i16 %i.rv to i32
  %i.rx = add nsw i32 %i.ru, %i.rw
  %i.ry = getelementptr inbounds nuw i8, ptr %.196, i64 10 ; 2 uses
  %i.rz = load i16, ptr %i.ry, align 2, !tbaa !29
  %i.sa = sext i16 %i.rz to i32
  %i.sb = add nsw i32 %i.rx, %i.sa
  %i.sc = lshr i32 %i.sb, 2
  %i.sd = getelementptr inbounds nuw i8, ptr %.37594, i64 8 ; 2 uses
  %i.se = load i16, ptr %i.sd, align 2, !tbaa !29
  %i.sf = trunc i32 %i.sc to i16
  %i.sg = add i16 %i.se, %i.sf
  store i16 %i.sg, ptr %i.sd, align 2, !tbaa !29
  %i.sh = load i16, ptr %i.rr, align 2, !tbaa !29
  %i.si = sext i16 %i.sh to i32
  %i.sj = getelementptr inbounds nuw i8, ptr %.pn, i64 12 ; 2 uses
  %i.sk = load i16, ptr %i.sj, align 2, !tbaa !29
  %i.sl = sext i16 %i.sk to i32
  %i.sm = add nsw i32 %i.sl, %i.si
  %i.sn = load i16, ptr %i.ry, align 2, !tbaa !29
  %i.so = sext i16 %i.sn to i32
  %i.sp = add nsw i32 %i.sm, %i.so
  %i.sq = getelementptr inbounds nuw i8, ptr %.196, i64 12 ; 2 uses
  %i.sr = load i16, ptr %i.sq, align 2, !tbaa !29
  %i.ss = sext i16 %i.sr to i32
  %i.st = add nsw i32 %i.sp, %i.ss
  %i.su = lshr i32 %i.st, 2
  %i.sv = getelementptr inbounds nuw i8, ptr %.37594, i64 10 ; 2 uses
  %i.sw = load i16, ptr %i.sv, align 2, !tbaa !29
  %i.sx = trunc i32 %i.su to i16
  %i.sy = add i16 %i.sw, %i.sx
  store i16 %i.sy, ptr %i.sv, align 2, !tbaa !29
  %i.sz = load i16, ptr %i.sj, align 2, !tbaa !29
  %i.ta = sext i16 %i.sz to i32
  %i.tb = getelementptr inbounds nuw i8, ptr %.pn, i64 14 ; 2 uses
  %i.tc = load i16, ptr %i.tb, align 2, !tbaa !29
  %i.td = sext i16 %i.tc to i32
  %i.te = add nsw i32 %i.td, %i.ta
  %i.tf = load i16, ptr %i.sq, align 2, !tbaa !29
  %i.tg = sext i16 %i.tf to i32
  %i.th = add nsw i32 %i.te, %i.tg
  %i.ti = getelementptr inbounds nuw i8, ptr %.196, i64 14 ; 2 uses
  %i.tj = load i16, ptr %i.ti, align 2, !tbaa !29
  %i.tk = sext i16 %i.tj to i32
  %i.tl = add nsw i32 %i.th, %i.tk
  %i.tm = lshr i32 %i.tl, 2
  %i.tn = getelementptr inbounds nuw i8, ptr %.37594, i64 12
  %i.to = trunc i32 %i.tm to i16
  %i.tp = add i16 %store_forwarded142, %i.to
  store i16 %i.tp, ptr %i.tn, align 2, !tbaa !29
  %i.tq = load i16, ptr %i.tb, align 2, !tbaa !29
  %i.tr = sext i16 %i.tq to i32
  %i.ts = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %i.tt = load i16, ptr %i.ts, align 2, !tbaa !29
  %i.tu = sext i16 %i.tt to i32
  %i.tv = add nsw i32 %i.tu, %i.tr
  %i.tw = load i16, ptr %i.ti, align 2, !tbaa !29
  %i.tx = sext i16 %i.tw to i32
  %i.ty = add nsw i32 %i.tv, %i.tx
  %i.tz = getelementptr inbounds nuw i8, ptr %.196, i64 16
  %i.ua = load i16, ptr %i.tz, align 2, !tbaa !29
  %i.ub = sext i16 %i.ua to i32
  %i.uc = add nsw i32 %i.ty, %i.ub
  %i.ud = lshr i32 %i.uc, 2
  %i.ue = getelementptr inbounds nuw i8, ptr %.37594, i64 14 ; 2 uses
  %i.uf = load i16, ptr %i.ue, align 2, !tbaa !29
  %i.ug = trunc i32 %i.ud to i16
  %i.uh = add i16 %i.uf, %i.ug                    ; 2 uses
  store i16 %i.uh, ptr %i.ue, align 2, !tbaa !29
  %i.ui = add nuw nsw i32 %.37195, 1              ; 2 uses
  %i.uj = getelementptr inbounds nuw [2 x i8], ptr %.37594, i64 %1
  %exitcond.not = icmp eq i32 %i.ui, 8
  br i1 %exitcond.not, label %.loopexit, label %.preheader88, !llvm.loop !65

.loopexit:                                        ; preds = %.preheader88, %.preheader88.lver.orig, %.preheader85, %.preheader85.lver.orig, %.preheader82, %.preheader82.rtcont, %.preheader.preheader, %bb.a
  ret void

.preheader82.rtvec:                               ; preds = %.preheader82.lver.orig
  %i.uk = getelementptr inbounds nuw i8, ptr %.177104.lver.orig, i64 2
  %i.ul = load <8 x i16>, ptr %.177104.lver.orig, align 2, !tbaa !29
  %i.um = sext <8 x i16> %i.ul to <8 x i32>
  %i.un = load <8 x i16>, ptr %i.uk, align 2, !tbaa !29
  %i.uo = sext <8 x i16> %i.un to <8 x i32>
  %i.up = add nsw <8 x i32> %i.uo, %i.um
  %i.uq = lshr <8 x i32> %i.up, splat (i32 1)
  %i.ur = load <8 x i16>, ptr %.173105.lver.orig, align 2, !tbaa !29
  %i.us = trunc <8 x i32> %i.uq to <8 x i16>
  %i.ut = add <8 x i16> %i.ur, %i.us
  store <8 x i16> %i.ut, ptr %.173105.lver.orig, align 2, !tbaa !29
  br label %.preheader82.rtcont

.preheader82.rtscalar:                            ; preds = %.preheader82.lver.orig
  %i.uu = load i16, ptr %.177104.lver.orig, align 2, !tbaa !29
  %i.uv = sext i16 %i.uu to i32
  %i.uw = getelementptr inbounds nuw i8, ptr %.177104.lver.orig, i64 2 ; 2 uses
  %i.ux = load i16, ptr %i.uw, align 2, !tbaa !29
  %i.uy = sext i16 %i.ux to i32
  %i.uz = add nsw i32 %i.uy, %i.uv
  %i.va = lshr i32 %i.uz, 1
  %i.vb = load i16, ptr %.173105.lver.orig, align 2, !tbaa !29
  %i.vc = trunc i32 %i.va to i16
  %i.vd = add i16 %i.vb, %i.vc
  store i16 %i.vd, ptr %.173105.lver.orig, align 2, !tbaa !29
  %i.ve = load i16, ptr %i.uw, align 2, !tbaa !29
  %i.vf = sext i16 %i.ve to i32
  %i.vg = getelementptr inbounds nuw i8, ptr %.177104.lver.orig, i64 4 ; 2 uses
  %i.vh = load i16, ptr %i.vg, align 2, !tbaa !29
  %i.vi = sext i16 %i.vh to i32
  %i.vj = add nsw i32 %i.vi, %i.vf
  %i.vk = lshr i32 %i.vj, 1
  %i.vl = getelementptr inbounds nuw i8, ptr %.173105.lver.orig, i64 2 ; 2 uses
  %i.vm = load i16, ptr %i.vl, align 2, !tbaa !29
  %i.vn = trunc i32 %i.vk to i16
  %i.vo = add i16 %i.vm, %i.vn
  store i16 %i.vo, ptr %i.vl, align 2, !tbaa !29
  %i.vp = load i16, ptr %i.vg, align 2, !tbaa !29
  %i.vq = sext i16 %i.vp to i32
  %i.vr = getelementptr inbounds nuw i8, ptr %.177104.lver.orig, i64 6 ; 2 uses
  %i.vs = load i16, ptr %i.vr, align 2, !tbaa !29
  %i.vt = sext i16 %i.vs to i32
  %i.vu = add nsw i32 %i.vt, %i.vq
  %i.vv = lshr i32 %i.vu, 1
  %i.vw = getelementptr inbounds nuw i8, ptr %.173105.lver.orig, i64 4 ; 2 uses
  %i.vx = load i16, ptr %i.vw, align 2, !tbaa !29
  %i.vy = trunc i32 %i.vv to i16
  %i.vz = add i16 %i.vx, %i.vy
  store i16 %i.vz, ptr %i.vw, align 2, !tbaa !29
  %i.wa = load i16, ptr %i.vr, align 2, !tbaa !29
  %i.wb = sext i16 %i.wa to i32
  %i.wc = getelementptr inbounds nuw i8, ptr %.177104.lver.orig, i64 8 ; 2 uses
  %i.wd = load i16, ptr %i.wc, align 2, !tbaa !29
  %i.we = sext i16 %i.wd to i32
  %i.wf = add nsw i32 %i.we, %i.wb
  %i.wg = lshr i32 %i.wf, 1
  %i.wh = getelementptr inbounds nuw i8, ptr %.173105.lver.orig, i64 6 ; 2 uses
  %i.wi = load i16, ptr %i.wh, align 2, !tbaa !29
  %i.wj = trunc i32 %i.wg to i16
  %i.wk = add i16 %i.wi, %i.wj
  store i16 %i.wk, ptr %i.wh, align 2, !tbaa !29
  %i.wl = load i16, ptr %i.wc, align 2, !tbaa !29
  %i.wm = sext i16 %i.wl to i32
  %i.wn = getelementptr inbounds nuw i8, ptr %.177104.lver.orig, i64 10 ; 2 uses
  %i.wo = load i16, ptr %i.wn, align 2, !tbaa !29
  %i.wp = sext i16 %i.wo to i32
  %i.wq = add nsw i32 %i.wp, %i.wm
  %i.wr = lshr i32 %i.wq, 1
  %i.ws = getelementptr inbounds nuw i8, ptr %.173105.lver.orig, i64 8 ; 2 uses
  %i.wt = load i16, ptr %i.ws, align 2, !tbaa !29
  %i.wu = trunc i32 %i.wr to i16
  %i.wv = add i16 %i.wt, %i.wu
  store i16 %i.wv, ptr %i.ws, align 2, !tbaa !29
  %i.ww = load i16, ptr %i.wn, align 2, !tbaa !29
  %i.wx = sext i16 %i.ww to i32
  %i.wy = getelementptr inbounds nuw i8, ptr %.177104.lver.orig, i64 12 ; 2 uses
  %i.wz = load i16, ptr %i.wy, align 2, !tbaa !29
  %i.xa = sext i16 %i.wz to i32
  %i.xb = add nsw i32 %i.xa, %i.wx
  %i.xc = lshr i32 %i.xb, 1
  %i.xd = getelementptr inbounds nuw i8, ptr %.173105.lver.orig, i64 10 ; 2 uses
  %i.xe = load i16, ptr %i.xd, align 2, !tbaa !29
  %i.xf = trunc i32 %i.xc to i16
  %i.xg = add i16 %i.xe, %i.xf
  store i16 %i.xg, ptr %i.xd, align 2, !tbaa !29
  %i.xh = load i16, ptr %i.wy, align 2, !tbaa !29
  %i.xi = sext i16 %i.xh to i32
  %i.xj = getelementptr inbounds nuw i8, ptr %.177104.lver.orig, i64 14 ; 2 uses
  %i.xk = load i16, ptr %i.xj, align 2, !tbaa !29
  %i.xl = sext i16 %i.xk to i32
  %i.xm = add nsw i32 %i.xl, %i.xi
  %i.xn = lshr i32 %i.xm, 1
  %i.xo = getelementptr inbounds nuw i8, ptr %.173105.lver.orig, i64 12 ; 2 uses
  %i.xp = load i16, ptr %i.xo, align 2, !tbaa !29
  %i.xq = trunc i32 %i.xn to i16
  %i.xr = add i16 %i.xp, %i.xq
  store i16 %i.xr, ptr %i.xo, align 2, !tbaa !29
  %i.xs = load i16, ptr %i.xj, align 2, !tbaa !29
  %i.xt = sext i16 %i.xs to i32
  %i.xu = getelementptr inbounds nuw i8, ptr %.177104.lver.orig, i64 16
  %i.xv = load i16, ptr %i.xu, align 2, !tbaa !29
  %i.xw = sext i16 %i.xv to i32
  %i.xx = add nsw i32 %i.xw, %i.xt
  %i.xy = lshr i32 %i.xx, 1
  %i.xz = getelementptr inbounds nuw i8, ptr %.173105.lver.orig, i64 14 ; 2 uses
  %i.ya = load i16, ptr %i.xz, align 2, !tbaa !29
  %i.yb = trunc i32 %i.xy to i16
  %i.yc = add i16 %i.ya, %i.yb
  store i16 %i.yc, ptr %i.xz, align 2, !tbaa !29
  br label %.preheader82.rtcont

.preheader82.rtcont:                              ; preds = %.preheader82.rtscalar, %.preheader82.rtvec
  %.rtmerge = add nuw nsw i32 %.169106.lver.orig, 1 ; 2 uses
  %exitcond121.not.rtmerge = icmp eq i32 %.rtmerge, 8
  %.rtmerge132 = getelementptr inbounds [2 x i8], ptr %.177104.lver.orig, i64 %3
  %.rtmerge131 = getelementptr inbounds [2 x i8], ptr %.173105.lver.orig, i64 %1
  br i1 %exitcond121.not.rtmerge, label %.loopexit, label %.preheader82.lver.orig, !llvm.loop !67
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ff_ivi_mc_4x4_no_delta(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  tail call fastcc void @ivi_mc_4x4_no_delta(ptr noundef %0, i64 noundef %2, ptr noundef %1, i64 noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @ivi_mc_4x4_no_delta(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4) unnamed_addr #4 {
bb.a:
  switch i32 %4, label %.loopexit [
    i32 0, label %.preheader.preheader
    i32 1, label %.preheader82.preheader
    i32 2, label %.preheader86
    i32 3, label %.preheader89
  ]

.preheader82.preheader:                           ; preds = %bb.a
  %i.a = load i16, ptr %2, align 2, !tbaa !29
  %i.b = sext i16 %i.a to i32
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !29
  %i.e = sext i16 %i.d to i32
  %i.f = add nsw i32 %i.e, %i.b
  %i.g = lshr i32 %i.f, 1
  %i.h = trunc i32 %i.g to i16
  store i16 %i.h, ptr %0, align 2, !tbaa !29
  %i.i = load i16, ptr %i.c, align 2, !tbaa !29
  %i.j = sext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.l = load i16, ptr %i.k, align 2, !tbaa !29
  %i.m = sext i16 %i.l to i32
  %i.n = add nsw i32 %i.m, %i.j
  %i.o = lshr i32 %i.n, 1
  %i.p = trunc i32 %i.o to i16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.p, ptr %i.q, align 2, !tbaa !29
  %i.r = load i16, ptr %i.k, align 2, !tbaa !29
  %i.s = sext i16 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 2 uses
  %i.u = load i16, ptr %i.t, align 2, !tbaa !29
  %i.v = sext i16 %i.u to i32
  %i.w = add nsw i32 %i.v, %i.s
  %i.x = lshr i32 %i.w, 1
  %i.y = trunc i32 %i.x to i16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 %i.y, ptr %i.z, align 2, !tbaa !29
  %i.aa = load i16, ptr %i.t, align 2, !tbaa !29
  %i.ab = sext i16 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !29
  %i.ae = sext i16 %i.ad to i32
  %i.af = add nsw i32 %i.ae, %i.ab
  %i.ag = lshr i32 %i.af, 1
  %i.ah = trunc i32 %i.ag to i16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i16 %i.ah, ptr %i.ai, align 2, !tbaa !29
  %i.aj = getelementptr inbounds [2 x i8], ptr %0, i64 %1 ; 5 uses
  %i.ak = getelementptr inbounds [2 x i8], ptr %2, i64 %3 ; 6 uses
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !29
  %i.am = sext i16 %i.al to i32
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 2 ; 2 uses
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !29
  %i.ap = sext i16 %i.ao to i32
  %i.aq = add nsw i32 %i.ap, %i.am
  %i.ar = lshr i32 %i.aq, 1
  %i.as = trunc i32 %i.ar to i16
  store i16 %i.as, ptr %i.aj, align 2, !tbaa !29
  %i.at = load i16, ptr %i.an, align 2, !tbaa !29
  %i.au = sext i16 %i.at to i32
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 4 ; 2 uses
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !29
  %i.ax = sext i16 %i.aw to i32
  %i.ay = add nsw i32 %i.ax, %i.au
  %i.az = lshr i32 %i.ay, 1
  %i.ba = trunc i32 %i.az to i16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store i16 %i.ba, ptr %i.bb, align 2, !tbaa !29
  %i.bc = load i16, ptr %i.av, align 2, !tbaa !29
  %i.bd = sext i16 %i.bc to i32
  %i.be = getelementptr inbounds nuw i8, ptr %i.ak, i64 6 ; 2 uses
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !29
  %i.bg = sext i16 %i.bf to i32
  %i.bh = add nsw i32 %i.bg, %i.bd
  %i.bi = lshr i32 %i.bh, 1
  %i.bj = trunc i32 %i.bi to i16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i16 %i.bj, ptr %i.bk, align 2, !tbaa !29
  %i.bl = load i16, ptr %i.be, align 2, !tbaa !29
  %i.bm = sext i16 %i.bl to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !29
  %i.bp = sext i16 %i.bo to i32
  %i.bq = add nsw i32 %i.bp, %i.bm
  %i.br = lshr i32 %i.bq, 1
  %i.bs = trunc i32 %i.br to i16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aj, i64 6
  store i16 %i.bs, ptr %i.bt, align 2, !tbaa !29
  %i.bu = getelementptr inbounds [2 x i8], ptr %i.aj, i64 %1 ; 5 uses
  %i.bv = getelementptr inbounds [2 x i8], ptr %i.ak, i64 %3 ; 6 uses
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !29
  %i.bx = sext i16 %i.bw to i32
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 2 ; 2 uses
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !29
  %i.ca = sext i16 %i.bz to i32
  %i.cb = add nsw i32 %i.ca, %i.bx
  %i.cc = lshr i32 %i.cb, 1
  %i.cd = trunc i32 %i.cc to i16
  store i16 %i.cd, ptr %i.bu, align 2, !tbaa !29
  %i.ce = load i16, ptr %i.by, align 2, !tbaa !29
  %i.cf = sext i16 %i.ce to i32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bv, i64 4 ; 2 uses
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !29
  %i.ci = sext i16 %i.ch to i32
  %i.cj = add nsw i32 %i.ci, %i.cf
  %i.ck = lshr i32 %i.cj, 1
  %i.cl = trunc i32 %i.ck to i16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  store i16 %i.cl, ptr %i.cm, align 2, !tbaa !29
  %i.cn = load i16, ptr %i.cg, align 2, !tbaa !29
  %i.co = sext i16 %i.cn to i32
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bv, i64 6 ; 2 uses
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !29
  %i.cr = sext i16 %i.cq to i32
  %i.cs = add nsw i32 %i.cr, %i.co
  %i.ct = lshr i32 %i.cs, 1
  %i.cu = trunc i32 %i.ct to i16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store i16 %i.cu, ptr %i.cv, align 2, !tbaa !29
  %i.cw = load i16, ptr %i.cp, align 2, !tbaa !29
  %i.cx = sext i16 %i.cw to i32
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !29
  %i.da = sext i16 %i.cz to i32
  %i.db = add nsw i32 %i.da, %i.cx
  %i.dc = lshr i32 %i.db, 1
  %i.dd = trunc i32 %i.dc to i16
  %i.de = getelementptr inbounds nuw i8, ptr %i.bu, i64 6
  store i16 %i.dd, ptr %i.de, align 2, !tbaa !29
  %i.df = getelementptr inbounds [2 x i8], ptr %i.bu, i64 %1 ; 4 uses
  %i.dg = getelementptr inbounds [2 x i8], ptr %i.bv, i64 %3 ; 5 uses
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !29
  %i.di = sext i16 %i.dh to i32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 2 ; 2 uses
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !29
  %i.dl = sext i16 %i.dk to i32
  %i.dm = add nsw i32 %i.dl, %i.di
  %i.dn = lshr i32 %i.dm, 1
  %i.do = trunc i32 %i.dn to i16
  store i16 %i.do, ptr %i.df, align 2, !tbaa !29
  %i.dp = load i16, ptr %i.dj, align 2, !tbaa !29
  %i.dq = sext i16 %i.dp to i32
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dg, i64 4 ; 2 uses
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !29
  %i.dt = sext i16 %i.ds to i32
  %i.du = add nsw i32 %i.dt, %i.dq
  %i.dv = lshr i32 %i.du, 1
  %i.dw = trunc i32 %i.dv to i16
  %i.dx = getelementptr inbounds nuw i8, ptr %i.df, i64 2
  store i16 %i.dw, ptr %i.dx, align 2, !tbaa !29
  %i.dy = load i16, ptr %i.dr, align 2, !tbaa !29
  %i.dz = sext i16 %i.dy to i32
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dg, i64 6 ; 2 uses
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !29
  %i.ec = sext i16 %i.eb to i32
  %i.ed = add nsw i32 %i.ec, %i.dz
  %i.ee = lshr i32 %i.ed, 1
  %i.ef = trunc i32 %i.ee to i16
  %i.eg = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  store i16 %i.ef, ptr %i.eg, align 2, !tbaa !29
  %i.eh = load i16, ptr %i.ea, align 2, !tbaa !29
  %i.ei = sext i16 %i.eh to i32
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !29
  %i.el = sext i16 %i.ek to i32
  %i.em = add nsw i32 %i.el, %i.ei
  %i.en = lshr i32 %i.em, 1
  %i.eo = trunc i32 %i.en to i16
  br label %.loopexit.sink.split

.preheader.preheader:                             ; preds = %bb.a
  %i.ep = load i16, ptr %2, align 2, !tbaa !29
  store i16 %i.ep, ptr %0, align 2, !tbaa !29
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !29
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.er, ptr %i.es, align 2, !tbaa !29
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !29
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 %i.eu, ptr %i.ev, align 2, !tbaa !29
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !29
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i16 %i.ex, ptr %i.ey, align 2, !tbaa !29
  %i.ez = getelementptr inbounds [2 x i8], ptr %0, i64 %1 ; 5 uses
  %i.fa = getelementptr inbounds [2 x i8], ptr %2, i64 %3 ; 5 uses
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !29
end_hunk_0
