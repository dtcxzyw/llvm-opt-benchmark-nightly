inline.NumInlined: 21302
inline.NumDeleted: 19
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@w2c_hermes_t3 = external local_unnamed_addr constant ptr, align 8
@w2c_hermes_t0 = external local_unnamed_addr constant ptr, align 8
@w2c_hermes_t2 = external local_unnamed_addr constant ptr, align 8
@w2c_hermes_t6 = external local_unnamed_addr constant ptr, align 8
@w2c_hermes_t1 = external local_unnamed_addr constant ptr, align 8
@w2c_hermes_t4 = external local_unnamed_addr constant ptr, align 8
@w2c_hermes_t9 = external local_unnamed_addr constant ptr, align 8
@w2c_hermes_t8 = external local_unnamed_addr constant ptr, align 8
@w2c_hermes_t5 = external local_unnamed_addr constant ptr, align 8
@switch.table.w2c_hermes_hermes0x3A0x3AisUnicodeOnlySpace0x28unsigned0x20int0x29 = private unnamed_addr constant [96 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", align 4
@switch.table.w2c_hermes_hermes0x3A0x3AisSimpleSideEffectFreeInstruction0x28hermes0x3A0x3AInstruction0x2A0x29 = private unnamed_addr constant [36 x i8] c"\01\01\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", align 4
@switch.table.w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AasIntN0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20long0x20long0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x29 = private unnamed_addr constant [4 x i64] [i64 188978561025, i64 120259084289, i64 68719476737, i64 107374182401], align 8
@switch.table.w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AasIntN0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20long0x20long0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x29.23 = private unnamed_addr constant [4 x i16] [i16 22326, i16 -10094, i16 -25232, i16 -19150], align 4

; Function Attrs: nounwind uwtable
define hidden noundef i32 @w2c_hermes_hermes0x3A0x3Aparser0x3A0x3AJSLexer0x3A0x3Aadvance0x28hermes0x3A0x3Aparser0x3A0x3AJSLexer0x3A0x3AGrammarContext0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 11 uses
  %i.c = add i32 %i.b, -96                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 667 uses
  %i.e = zext i32 %1 to i64                       ; 257 uses
  %i.f = add nuw nsw i64 %i.e, 88                 ; 3 uses
  %.val4760 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %.val4760, i64 %i.f
  store i8 0, ptr %i.g, align 1
  %i.h = add i32 %1, 80                           ; 6 uses
  %i.i = zext i32 %i.h to i64                     ; 32 uses
  %i.j = add nuw nsw i64 %i.e, 96                 ; 96 uses
  %i.k = add nuw nsw i64 %i.e, 28                 ; 8 uses
  %i.l = zext i32 %i.c to i64                     ; 38 uses
  %i.m = add i32 %i.b, -40                        ; 6 uses
  %i.n = add i32 %i.b, -48
  %i.o = add nuw nsw i64 %i.e, 80                 ; 38 uses
  %i.p = add nuw nsw i64 %i.l, 88                 ; 4 uses
  %i.q = add i32 %i.b, -56
  %i.r = add i32 %i.b, -24                        ; 15 uses
  %i.s = add nuw nsw i64 %i.l, 56                 ; 6 uses
  %i.t = add i32 %i.b, -64
  %i.u = add nuw nsw i64 %i.e, 84                 ; 2 uses
  %i.v = add nuw nsw i64 %i.l, 72                 ; 2 uses
  %i.w = add i32 %i.b, -72
  %i.x = add i32 %i.b, -8
  %i.y = add i32 %i.b, -80
  %i.z = add i32 %i.b, -88
  br label %.backedge5743

.backedge5743:                                    ; preds = %.backedge5743.backedge, %bb.a
  %.04563 = phi i32 [ 0, %bb.a ], [ %.04563.be, %.backedge5743.backedge ] ; 20 uses
  %.val4961 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %.val4961, i64 %i.i
  %.0.copyload.i = load i32, ptr %i.aa, align 1   ; 111 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %i.ab = zext i32 %.0.copyload.i to i64          ; 35 uses
  %.val5044 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.val5044, i64 %i.ab
  %.0.copyload.i5413 = load i8, ptr %i.ac, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5413) #7, !srcloc !20
  switch i8 %.0.copyload.i5413, label %bb.kf [
    i8 0, label %bb.b
    i8 -17, label %bb.bv
    i8 -30, label %bb.bp
    i8 -62, label %bb.bt
    i8 126, label %bb.m
    i8 125, label %bb.kw
    i8 124, label %bb.ao
    i8 123, label %bb.o
    i8 122, label %bb.fe
    i8 9, label %.backedge5742.preheader
    i8 10, label %bb.bo
    i8 11, label %bb.bs
    i8 12, label %bb.bs
    i8 13, label %bb.bo
    i8 121, label %bb.fe
    i8 120, label %bb.fe
    i8 119, label %bb.fe
    i8 118, label %bb.fe
    i8 117, label %bb.fe
    i8 116, label %bb.fe
    i8 115, label %bb.fe
    i8 114, label %bb.fe
    i8 113, label %bb.fe
    i8 112, label %bb.fe
    i8 111, label %bb.fe
    i8 110, label %bb.fe
    i8 109, label %bb.fe
    i8 108, label %bb.fe
    i8 107, label %bb.fe
    i8 106, label %bb.fe
    i8 105, label %bb.fe
    i8 104, label %bb.fe
    i8 32, label %.backedge5742.preheader
    i8 33, label %bb.v
    i8 34, label %bb.fu
    i8 35, label %bb.dx
    i8 36, label %bb.fe
    i8 37, label %bb.bl
    i8 38, label %bb.ai
    i8 39, label %bb.fu
    i8 40, label %bb.g
    i8 41, label %bb.h
    i8 42, label %bb.bc
    i8 43, label %bb.aa
    i8 44, label %bb.l
    i8 45, label %bb.ae
    i8 46, label %bb.ex
    i8 47, label %bb.by
    i8 48, label %bb.fd
    i8 49, label %bb.fd
    i8 50, label %bb.fd
    i8 51, label %bb.fd
    i8 52, label %bb.fd
    i8 53, label %bb.fd
    i8 54, label %bb.fd
    i8 55, label %bb.fd
    i8 56, label %bb.fd
    i8 57, label %bb.fd
    i8 58, label %bb.n
    i8 59, label %bb.k
    i8 60, label %bb.ei
    i8 61, label %bb.p
    i8 62, label %bb.eo
    i8 63, label %bb.au
    i8 64, label %bb.ff
    i8 65, label %bb.fe
    i8 66, label %bb.fe
    i8 67, label %bb.fe
    i8 68, label %bb.fe
    i8 69, label %bb.fe
    i8 70, label %bb.fe
    i8 71, label %bb.fe
    i8 72, label %bb.fe
    i8 73, label %bb.fe
    i8 74, label %bb.fe
    i8 75, label %bb.fe
    i8 76, label %bb.fe
    i8 77, label %bb.fe
    i8 78, label %bb.fe
    i8 79, label %bb.fe
    i8 80, label %bb.fe
    i8 81, label %bb.fe
    i8 82, label %bb.fe
    i8 83, label %bb.fe
    i8 84, label %bb.fe
    i8 85, label %bb.fe
    i8 86, label %bb.fe
    i8 87, label %bb.fe
    i8 88, label %bb.fe
    i8 89, label %bb.fe
    i8 90, label %bb.fe
    i8 91, label %bb.i
    i8 92, label %bb.fh
    i8 93, label %bb.j
    i8 94, label %bb.bi
    i8 95, label %bb.fe
    i8 96, label %bb.ke
    i8 97, label %bb.fe
    i8 98, label %bb.fe
    i8 99, label %bb.fe
    i8 100, label %bb.fe
    i8 101, label %bb.fe
    i8 102, label %bb.fe
    i8 103, label %bb.fe
  ]

.backedge5742.preheader:                          ; preds = %.backedge5743, %.backedge5743
  br label %.backedge5742

bb.b:                                             ; preds = %.backedge5743
  %.val5354 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %.val5354, i64 %i.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 28
  store i32 %.0.copyload.i, ptr %i.ae, align 1
  %.val4960 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %.val4960, i64 %i.u
  %.0.copyload.i5414 = load i32, ptr %i.af, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5414) #7, !srcloc !19
  %i.ag = icmp eq i32 %.0.copyload.i5414, %.0.copyload.i
  %.val5353 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %i.ag, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %.val5353, i64 %i.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i32 120, ptr %i.ai, align 1
  br label %bb.kx

bb.d:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %.val5353, i64 %i.l
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 80
  store i16 259, ptr %i.ak, align 1
  %.val5352 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %.val5352, i64 %i.l
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  store i32 60119, ptr %i.am, align 1
  %.val4959 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.an = getelementptr inbounds nuw i8, ptr %.val4959, i64 %i.e
  %.0.copyload.i5415 = load i32, ptr %i.an, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5415) #7, !srcloc !19
  tail call void @w2c_hermes_hermes0x3A0x3ASourceErrorManager0x3A0x3Amessage0x28hermes0x3A0x3ASourceErrorManager0x3A0x3ADiagKind0x2C0x20llvh0x3A0x3ASMLoc0x2C0x20llvh0x3A0x3ATwine0x20const0x260x2C0x20hermes0x3A0x3ASubsystem0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i5415, i32 noundef 0, i32 noundef %.0.copyload.i, i32 noundef %i.r, i32 noundef 1) #7
  %.val4958 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %.val4958, i64 %i.e
  %.0.copyload.i5416 = load i32, ptr %i.ao, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5416) #7, !srcloc !19
  %i.ap = zext i32 %.0.copyload.i5416 to i64
  %.val5043 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %.val5043, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 148
  %.0.copyload.i5417 = load i8, ptr %i.ar, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5417) #7, !srcloc !20
  %.not4737 = icmp eq i8 %.0.copyload.i5417, 0
  %.val4956 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3Aparser0x3A0x3AJSLexer0x3A0x3AscanTemplateLiteral0x280x29:bb.a
  %.0.copyload.i2949 = load i8, ptr %i.xl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2949) #7, !srcloc !20
  %.not2482 = icmp eq i8 %.0.copyload.i2949, 96
  br i1 %.not2482, label %bb.eo, label %bb.d

bb.eo:                                            ; preds = %bb.en
  %i.xm = add i32 %.0.copyload.i2948, 1
  %.val2681 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xn = getelementptr inbounds nuw i8, ptr %.val2681, i64 %i.aa
  store i32 %i.xm, ptr %i.xn, align 1
  %.not2483 = icmp eq i32 %.22383, 0
  br i1 %.not2483, label %bb.ep, label %bb.es

bb.ep:                                            ; preds = %bb.eo, %bb.ec, %w2c_hermes_hermes0x3A0x3Aparser0x3A0x3AJSLexer0x3A0x3Aerror0x28llvh0x3A0x3ASMLoc0x2C0x20llvh0x3A0x3ATwine0x20const0x260x29.exit, %bb.f, %bb.b
  %.42397 = phi i32 [ 1, %bb.b ], [ 1, %bb.eo ], [ 0, %bb.f ], [ 0, %bb.ec ], [ 0, %w2c_hermes_hermes0x3A0x3Aparser0x3A0x3AJSLexer0x3A0x3Aerror0x28llvh0x3A0x3ASMLoc0x2C0x20llvh0x3A0x3ATwine0x20const0x260x29.exit ] ; 2 uses
  %.val2510 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xo = getelementptr inbounds nuw i8, ptr %.val2510, i64 %i.l
  %.0.copyload.i2950 = load i32, ptr %i.xo, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2950) #7, !srcloc !19
  %.val2509 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xp = getelementptr inbounds nuw i8, ptr %.val2509, i64 %i.e
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 92
  %.0.copyload.i2951 = load i32, ptr %i.xq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2951) #7, !srcloc !19
  %.val2646 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xr = getelementptr inbounds nuw i8, ptr %.val2646, i64 %i.e
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 23
  %.0.copyload.i2952 = load i8, ptr %i.xs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2952) #7, !srcloc !20
  %.not2484 = icmp eq i8 %.0.copyload.i2952, 0
  br i1 %.not2484, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.xt = zext i32 %i.c to i64                    ; 3 uses
  %.val2680 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xu = getelementptr inbounds nuw i8, ptr %.val2680, i64 %i.xt
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 68
  store i32 %.0.copyload.i2950, ptr %i.xv, align 1
  %i.xw = add nuw nsw i64 %i.xt, 64               ; 2 uses
  %.val2679 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xx = getelementptr inbounds nuw i8, ptr %.val2679, i64 %i.xw
  store i32 %.0.copyload.i2951, ptr %i.xx, align 1
  %.val2775 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xy = getelementptr inbounds nuw i8, ptr %.val2775, i64 %i.xw
  %.0.copyload.i2953 = load i64, ptr %i.xy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2953) #7, !srcloc !22
  %.val2782 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xz = getelementptr inbounds nuw i8, ptr %.val2782, i64 %i.xt
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 24
  store i64 %.0.copyload.i2953, ptr %i.ya, align 1
  %i.yb = add i32 %i.b, -56
  %i.yc = tail call i32 @w2c_hermes_hermes0x3A0x3Aparser0x3A0x3AJSLexer0x3A0x3AconvertSurrogatesInString0x28llvh0x3A0x3AStringRef0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.yb)
  br label %bb.es

bb.er:                                            ; preds = %bb.ep
  %.val2508 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.yd = getelementptr inbounds nuw i8, ptr %.val2508, i64 %i.e
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 16
  %.0.copyload.i2954 = load i32, ptr %i.ye, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2954) #7, !srcloc !19
  %i.yf = zext i32 %i.c to i64                    ; 3 uses
  %.val2678 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.yg = getelementptr inbounds nuw i8, ptr %.val2678, i64 %i.yf
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 68
  store i32 %.0.copyload.i2950, ptr %i.yh, align 1
  %i.yi = add nuw nsw i64 %i.yf, 64               ; 2 uses
  %.val2677 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.yj = getelementptr inbounds nuw i8, ptr %.val2677, i64 %i.yi
  store i32 %.0.copyload.i2951, ptr %i.yj, align 1
  %.val2774 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.yk = getelementptr inbounds nuw i8, ptr %.val2774, i64 %i.yi
  %.0.copyload.i2955 = load i64, ptr %i.yk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2955) #7, !srcloc !22
  %.val2781 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.yl = getelementptr inbounds nuw i8, ptr %.val2781, i64 %i.yf
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 16
  store i64 %.0.copyload.i2955, ptr %i.ym, align 1
  %i.yn = add i32 %i.b, -64
  %i.yo = tail call i32 @w2c_hermes_hermes0x3A0x3AStringTable0x3A0x3AgetString0x28llvh0x3A0x3AStringRef0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i2954, i32 noundef %i.yn) #7
  br label %bb.es

bb.es:                                            ; preds = %bb.eo, %bb.ec, %w2c_hermes_hermes0x3A0x3Aparser0x3A0x3AJSLexer0x3A0x3Aerror0x28llvh0x3A0x3ASMLoc0x2C0x20llvh0x3A0x3ATwine0x20const0x260x29.exit, %bb.f, %bb.er, %bb.eq
  %.52398 = phi i32 [ %.42397, %bb.eq ], [ %.42397, %bb.er ], [ 1, %bb.eo ], [ 0, %bb.f ], [ 0, %bb.ec ], [ 0, %w2c_hermes_hermes0x3A0x3Aparser0x3A0x3AJSLexer0x3A0x3Aerror0x28llvh0x3A0x3ASMLoc0x2C0x20llvh0x3A0x3ATwine0x20const0x260x29.exit ]
  %.8 = phi i32 [ %i.yc, %bb.eq ], [ %i.yo, %bb.er ], [ 0, %bb.eo ], [ 0, %bb.f ], [ 0, %bb.ec ], [ 0, %w2c_hermes_hermes0x3A0x3Aparser0x3A0x3AJSLexer0x3A0x3Aerror0x28llvh0x3A0x3ASMLoc0x2C0x20llvh0x3A0x3ATwine0x20const0x260x29.exit ]
  %.val2507 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.yp = getelementptr inbounds nuw i8, ptr %.val2507, i64 %i.j
  %.0.copyload.i2956 = load i32, ptr %i.yp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2956) #7, !srcloc !19
  %.val2506 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.yq = getelementptr inbounds nuw i8, ptr %.val2506, i64 %i.e
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 360
  %.0.copyload.i2957 = load i32, ptr %i.yr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2957) #7, !srcloc !19
  %.val2645 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ys = getelementptr inbounds nuw i8, ptr %.val2645, i64 %i.e
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 23
  %.0.copyload.i2958 = load i8, ptr %i.yt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2958) #7, !srcloc !20
  %.not2485 = icmp eq i8 %.0.copyload.i2958, 0
  br i1 %.not2485, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.yu = zext i32 %i.c to i64                    ; 3 uses
  %.val2676 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.yv = getelementptr inbounds nuw i8, ptr %.val2676, i64 %i.yu
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 68
  store i32 %.0.copyload.i2956, ptr %i.yw, align 1
  %i.yx = add nuw nsw i64 %i.yu, 64               ; 2 uses
  %.val2675 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.yy = getelementptr inbounds nuw i8, ptr %.val2675, i64 %i.yx
  store i32 %.0.copyload.i2957, ptr %i.yy, align 1
  %.val2773 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.yz = getelementptr inbounds nuw i8, ptr %.val2773, i64 %i.yx
  %.0.copyload.i2959 = load i64, ptr %i.yz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2959) #7, !srcloc !22
  %.val2780 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.za = getelementptr inbounds nuw i8, ptr %.val2780, i64 %i.yu
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 8
  store i64 %.0.copyload.i2959, ptr %i.zb, align 1
  %i.zc = add i32 %i.b, -72
  %i.zd = tail call i32 @w2c_hermes_hermes0x3A0x3Aparser0x3A0x3AJSLexer0x3A0x3AconvertSurrogatesInString0x28llvh0x3A0x3AStringRef0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.zc)
  br label %bb.ev

bb.eu:                                            ; preds = %bb.es
  %.val2505 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ze = getelementptr inbounds nuw i8, ptr %.val2505, i64 %i.e
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 16
  %.0.copyload.i2960 = load i32, ptr %i.zf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2960) #7, !srcloc !19
  %i.zg = zext i32 %i.c to i64                    ; 3 uses
  %.val2674 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.zh = getelementptr inbounds nuw i8, ptr %.val2674, i64 %i.zg
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 68
  store i32 %.0.copyload.i2956, ptr %i.zi, align 1
  %i.zj = add nuw nsw i64 %i.zg, 64               ; 2 uses
  %.val2673 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.zk = getelementptr inbounds nuw i8, ptr %.val2673, i64 %i.zj
  store i32 %.0.copyload.i2957, ptr %i.zk, align 1
  %.val2772 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.zl = getelementptr inbounds nuw i8, ptr %.val2772, i64 %i.zj
  %.0.copyload.i2961 = load i64, ptr %i.zl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2961) #7, !srcloc !22
  %.val2779 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.zm = getelementptr inbounds nuw i8, ptr %.val2779, i64 %i.zg
  store i64 %.0.copyload.i2961, ptr %i.zm, align 1
  %i.zn = tail call i32 @w2c_hermes_hermes0x3A0x3AStringTable0x3A0x3AgetString0x28llvh0x3A0x3AStringRef0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i2960, i32 noundef %i.c) #7
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %.32369 = phi i32 [ %i.zd, %bb.et ], [ %i.zn, %bb.eu ]
  %.val2672 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.zo = getelementptr inbounds nuw i8, ptr %.val2672, i64 %i.e
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 60
  store i32 %.32369, ptr %i.zp, align 1
  %.val2671 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.zq = getelementptr inbounds nuw i8, ptr %.val2671, i64 %i.e
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 52
  store i32 %.8, ptr %i.zr, align 1
  %.not2486 = icmp eq i32 %.52398, 0              ; 2 uses
  %i.zs = select i1 %.not2486, i32 117, i32 116
  %i.zt = select i1 %.not2486, i32 118, i32 119
  %i.zu = icmp eq i8 %.0.copyload.i2786, 96
  %i.zv = select i1 %i.zu, i32 %i.zs, i32 %i.zt
  %.val2670 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.zw = getelementptr inbounds nuw i8, ptr %.val2670, i64 %i.e
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 24
  store i32 %i.zv, ptr %i.zx, align 1
  store i32 %i.b, ptr %i.a, align 8, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i32 0, 2) i32 @w2c_hermes_hermes0x3A0x3AisUnicodeOnlySpace0x28unsigned0x20int0x29(ptr nofree readnone captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i32 %1, 128
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i32 %1, 8192
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %switch.selectcmp.case1 = icmp eq i32 %1, 160
  %switch.selectcmp.case2 = icmp eq i32 %1, 5760
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %i.c = zext i1 %switch.selectcmp to i32
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %switch.tableidx = add nsw i32 %1, -8192        ; 2 uses
  %i.d = icmp ult i32 %switch.tableidx, 96
  br i1 %i.d, label %switch.lookup, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = icmp eq i32 %1, 12288
  %spec.select = zext i1 %i.e to i32
  br label %bb.f

switch.lookup:                                    ; preds = %bb.d
  %i.f = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.w2c_hermes_hermes0x3A0x3AisUnicodeOnlySpace0x28unsigned0x20int0x29, i64 %i.f
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %switch.lookup, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %switch.ext, %switch.lookup ], [ %spec.select, %bb.e ], [ %i.c, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Aparser0x3A0x3AJSLexer0x3A0x3AstoreCurrentToken0x280x29(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 12 uses
  %i.b = zext i32 %1 to i64                       ; 5 uses
  %.val166 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %.val166, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %.0.copyload.i = load i64, ptr %i.d, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i) #7, !srcloc !22
  %.val159 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %.val159, i64 %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.0.copyload.i169 = load i32, ptr %i.f, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i169) #7, !srcloc !19
  %i.g = add nuw nsw i64 %i.b, 844                ; 3 uses
  %.val158 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val158, i64 %i.g
  %.0.copyload.i170 = load i32, ptr %i.h, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i170) #7, !srcloc !19
  %i.i = add nuw nsw i64 %i.b, 848                ; 2 uses
  %.val157 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.val157, i64 %i.i
  %.0.copyload.i171 = load i32, ptr %i.j, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i171) #7, !srcloc !19
  %i.k = icmp ult i32 %.0.copyload.i170, %.0.copyload.i171
  %.val168 = load ptr, ptr %i.a, align 8, !tbaa !18 ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = zext i32 %.0.copyload.i170 to i64        ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val168, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i64 %.0.copyload.i, ptr %i.n, align 1
  %.val165 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %.val165, i64 %i.l
  store i32 %.0.copyload.i169, ptr %i.o, align 1
  %i.p = add i32 %.0.copyload.i170, 12
  %.val164 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %.val164, i64 %i.g
  store i32 %i.p, ptr %i.q, align 1
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.r = add nuw nsw i64 %i.b, 840                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val168, i64 %i.r
  %.0.copyload.i172 = load i32, ptr %i.s, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i172) #7, !srcloc !19
  %i.t = sub i32 %.0.copyload.i170, %.0.copyload.i172
  %.fr = freeze i32 %i.t                          ; 4 uses
  %i.u = sdiv i32 %.fr, 12                        ; 2 uses
  %i.v = srem i32 %.fr, 12
  %i.w = add nsw i32 %i.u, 1                      ; 2 uses
  %i.x = icmp ult i32 %i.w, 357913942
  br i1 %i.x, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.y = sub i32 %.0.copyload.i171, %.0.copyload.i172
  %i.z = sdiv i32 %i.y, 12                        ; 2 uses
  %i.aa = shl nsw i32 %i.z, 1
  %i.ab = tail call i32 @llvm.umax.i32(i32 %i.w, i32 %i.aa)
  %i.ac = icmp ugt i32 %i.z, 178956969
  %i.ad = select i1 %i.ac, i32 357913941, i32 %i.ab ; 2 uses
  %i.ae = icmp ugt i32 %i.ad, 357913941
  br i1 %i.ae, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = mul nuw i32 %i.ad, 12                   ; 2 uses
  %i.ag = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.af) #7 ; 2 uses
  %i.ah = mul nsw i32 %i.u, 12
  %i.ai = add i32 %i.ag, %i.ah                    ; 3 uses
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %.val167 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %.val167, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store i64 %.0.copyload.i, ptr %i.al, align 1
  %.val163 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %.val163, i64 %i.aj
  store i32 %.0.copyload.i169, ptr %i.am, align 1
  %i.an = sub i32 %i.v, %.fr
  %i.ao = add i32 %i.an, %i.ai
  %i.ap = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %i.ao, i32 noundef %.0.copyload.i172, i32 noundef %.fr) #7
  %i.aq = add i32 %i.ag, %i.af
  %.val162 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %.val162, i64 %i.i
  store i32 %i.aq, ptr %i.ar, align 1
  %i.as = add i32 %i.ai, 12
  %.val161 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %.val161, i64 %i.g
  store i32 %i.as, ptr %i.at, align 1
  %.val160 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %.val160, i64 %i.r
  store i32 %i.ap, ptr %i.au, align 1
  %.not = icmp eq i32 %.0.copyload.i172, 0
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i172) #7
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  tail call void @w2c_hermes_abort(ptr noundef nonnull %0) #7
  tail call void @wasm_rt_trap(i32 noundef 5) #8
  unreachable

bb.h:                                             ; preds = %bb.d
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Fthrow_out_of_range0x5Babi0x3Av150070x5D0x28char0x20const0x2A0x29(ptr noundef nonnull %0) #7
  tail call void @wasm_rt_trap(i32 noundef 5) #8
  unreachable

bb.i:                                             ; preds = %bb.e, %bb.f, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Aparser0x3A0x3Adetail0x3A0x3AJSParserImpl0x3A0x3AerrorExpected0x28llvh0x3A0x3AArrayRef0x3Chermes0x3A0x3Aparser0x3A0x3ATokenKind0x3E0x2C0x20char0x20const0x2A0x2C0x20char0x20const0x2A0x2C0x20llvh0x3A0x3ASMLoc0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 12 uses
  %i.c = add i32 %i.b, -112                       ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 103 uses
  %i.e = zext i32 %i.c to i64                     ; 24 uses
  %.val907 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val907, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 92
  store i64 17179869184, ptr %i.g, align 1
  %i.h = add i32 %i.b, -12                        ; 2 uses
  %i.i = add nuw nsw i64 %i.e, 88                 ; 2 uses
  %.val888 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.val888, i64 %i.i
  store i32 %i.h, ptr %i.j, align 1
  %i.k = add nuw nsw i64 %i.e, 76                 ; 18 uses
  %.val906 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val906, i64 %i.k
  store i64 4294967296, ptr %i.l, align 1
  %.val905 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %.val905, i64 %i.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 68
  store i64 0, ptr %i.n, align 1
  %.val887 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %.val887, i64 %i.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  store i32 261900, ptr %i.p, align 1
  %i.q = add i32 %i.b, -24
  %i.r = add nuw nsw i64 %i.e, 84                 ; 3 uses
  %.val886 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %.val886, i64 %i.r
  store i32 %i.q, ptr %i.s, align 1
  %i.t = add i32 %i.b, -48                        ; 12 uses
  tail call void @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3ASetBufferAndMode0x28char0x2A0x2C0x20unsigned0x20long0x2C0x20llvh0x3A0x3Araw_ostream0x3A0x3ABufferKind0x29(ptr noundef %0, i32 noundef %i.t) #7
  %i.u = zext i32 %2 to i64                       ; 2 uses
  %.val864 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %.val864, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %.0.copyload.i = load i32, ptr %i.w, align 1    ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %.not = icmp eq i32 %.0.copyload.i, 0
  br i1 %.not, label %..loopexit_crit_edge, label %bb.b

..loopexit_crit_edge:                             ; preds = %bb.a
  %.pre967 = add nuw nsw i64 %i.e, 72
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %.val863 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %.val863, i64 %i.u
  %.0.copyload.i908 = load i32, ptr %i.x, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i908) #7, !srcloc !19
  %.val862 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %.val862, i64 %i.k
  %.0.copyload.i909 = load i32, ptr %i.y, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i909) #7, !srcloc !19
  %i.z = add nuw nsw i64 %i.e, 72                 ; 5 uses
  %.val861 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %.val861, i64 %i.z
  %.0.copyload.i910 = load i32, ptr %i.aa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i910) #7, !srcloc !19
  %.not786 = icmp eq i32 %.0.copyload.i909, %.0.copyload.i910
  br i1 %.not786, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = zext i32 %.0.copyload.i909 to i64
  %.val812 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.val812, i64 %i.ab
  store i8 39, ptr %i.ac, align 1
  %.val860 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %.val860, i64 %i.k
  %.0.copyload.i911 = load i32, ptr %i.ad, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i911) #7, !srcloc !19
  %i.ae = add i32 %.0.copyload.i911, 1
  %.val885 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %.val885, i64 %i.k
  store i32 %i.ae, ptr %i.af, align 1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
end_hunk_1
begin_hunk_2_@w2c_hermes_hermes0x3A0x3Aregex0x3A0x3AContext0x3Chermes0x3A0x3Aregex0x3A0x3AASCIIRegexTraits0x3E0x3A0x3AprepareToEnterLoopBody0x28hermes0x3A0x3Aregex0x3A0x3AState0x3Chermes0x3A0x3Aregex0x3A0x3AASCIIRegexTraits0x3E0x2A0x2C0x20hermes0x3A0x3Aregex0x3A0x3ABeginLoopInsn0x20const0x2A0x2C0x20llvh0x3A0x3ASmallVector0x3Chermes0x3A0x3Aregex0x3A0x3AContext0x3Chermes0x3A0x3Aregex0x3A0x3AASCIIRegexTraits0x3E0x3A0x3ABacktrackInsn0x2C0x2064u0x3E0x260x29:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0229 = phi i32 [ %.0.copyload.i278, %bb.b ], [ %.0.copyload.i276, %bb.a ]
  %.val252 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %.val252, i64 %i.l
  %.0.copyload.i279 = load i32, ptr %i.s, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i279) #7, !srcloc !19
  %i.t = mul i32 %.0229, 20
  %i.u = add i32 %.0.copyload.i279, %i.t
  %i.v = zext i32 %i.u to i64                     ; 3 uses
  %.val270 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %.val270, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i64 %.0.copyload.i275, ptr %i.x, align 1
  %.val265 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.y = trunc i32 %.0.copyload.i274 to i16
  %i.z = getelementptr inbounds nuw i8, ptr %.val265, i64 %i.v
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  store i16 %i.y, ptr %i.aa, align 1
  %.val239 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %.val239, i64 %i.v
  store i8 1, ptr %i.ab, align 1
  %.val251 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.val251, i64 %i.m
  %.0.copyload.i280 = load i32, ptr %i.ac, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i280) #7, !srcloc !19
  %i.ad = add i32 %.0.copyload.i280, 1            ; 2 uses
  %.val263 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %.val263, i64 %i.m
  store i32 %i.ad, ptr %i.ae, align 1
  %i.af = icmp ugt i32 %i.ad, 16777216
  br i1 %i.af, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = zext i32 %1 to i64
  %i.ah = add nuw nsw i64 %i.ag, 36               ; 4 uses
  %.val250 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %.val250, i64 %i.ah
  %.0.copyload.i281 = load i32, ptr %i.ai, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i281) #7, !srcloc !19
  %.not235 = icmp eq i32 %.0.copyload.i281, 0
  br i1 %.not235, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = add i32 %.0.copyload.i281, -1
  %.val262 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %.val262, i64 %i.ah
  store i32 %i.aj, ptr %i.ak, align 1
  %.val249 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %.val249, i64 %i.j
  %.0.copyload.i282 = load i32, ptr %i.al, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i282) #7, !srcloc !19
  %i.am = add i32 %.0.copyload.i282, 1
  %.val261 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.an = getelementptr inbounds nuw i8, ptr %.val261, i64 %i.j
  store i32 %i.am, ptr %i.an, align 1
  %.val248 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %.val248, i64 %i.b
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.0.copyload.i283 = load i32, ptr %i.ap, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i283) #7, !srcloc !19
  %.val247 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %.val247, i64 %i.b
  %.0.copyload.i284 = load i32, ptr %i.aq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i284) #7, !srcloc !19
  %i.ar = sub i32 %.0.copyload.i283, %.0.copyload.i284
  %.val260 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %.val260, i64 %i.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i32 %i.ar, ptr %i.at, align 1
  %.val273 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %.val273, i64 %i.e
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 13
  %.0.copyload.i285 = load i16, ptr %i.av, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i285) #7, !srcloc !23
  %i.aw = add nuw nsw i64 %i.e, 15                ; 2 uses
  %.val272 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %.val272, i64 %i.aw
  %.0.copyload.i286 = load i16, ptr %i.ax, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i286) #7, !srcloc !23
  %i.ay = icmp eq i16 %.0.copyload.i285, %.0.copyload.i286
  br i1 %i.ay, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = zext i16 %.0.copyload.i285 to i32
  %i.ba = add i32 %4, 12
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %bb.f
  %.1230 = phi i32 [ %i.az, %bb.f ], [ %i.cc, %bb.k ] ; 3 uses
  %.val246 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bb = getelementptr inbounds nuw i8, ptr %.val246, i64 %i.b
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %.0.copyload.i287 = load i32, ptr %i.bc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i287) #7, !srcloc !19
  %i.bd = shl i32 %.1230, 3
  %i.be = add i32 %.0.copyload.i287, %i.bd
  %i.bf = zext i32 %i.be to i64                   ; 2 uses
  %.val266 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %.val266, i64 %i.bf
  %.0.copyload.i288 = load i64, ptr %i.bg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i288) #7, !srcloc !22
  %.val245 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bh = getelementptr inbounds nuw i8, ptr %.val245, i64 %i.m
  %.0.copyload.i289 = load i32, ptr %i.bh, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i289) #7, !srcloc !19
  %.val244 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %.val244, i64 %i.o
  %.0.copyload.i290 = load i32, ptr %i.bi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i290) #7, !srcloc !19
  %.not236 = icmp ult i32 %.0.copyload.i289, %.0.copyload.i290
  br i1 %.not236, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %4, i32 noundef %i.ba, i32 noundef 0, i32 noundef 20) #7
  %.val243 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %.val243, i64 %i.m
  %.0.copyload.i291 = load i32, ptr %i.bj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i291) #7, !srcloc !19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi i32 [ %.0.copyload.i291, %bb.h ], [ %.0.copyload.i289, %bb.g ]
  %.val242 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %.val242, i64 %i.l
  %.0.copyload.i292 = load i32, ptr %i.bk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i292) #7, !srcloc !19
  %i.bl = mul i32 %.0, 20
  %i.bm = add i32 %.0.copyload.i292, %i.bl
  %i.bn = zext i32 %i.bm to i64                   ; 3 uses
  %.val269 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %.val269, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store i64 %.0.copyload.i288, ptr %i.bp, align 1
  %.val264 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bq = trunc i32 %.1230 to i16
  %i.br = getelementptr inbounds nuw i8, ptr %.val264, i64 %i.bn
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  store i16 %i.bq, ptr %i.bs, align 1
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bt = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bn
  store i8 0, ptr %i.bt, align 1
  %.val241 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bu = getelementptr inbounds nuw i8, ptr %.val241, i64 %i.m
  %.0.copyload.i293 = load i32, ptr %i.bu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i293) #7, !srcloc !19
  %i.bv = add i32 %.0.copyload.i293, 1            ; 2 uses
  %.val259 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bw = getelementptr inbounds nuw i8, ptr %.val259, i64 %i.m
  store i32 %i.bv, ptr %i.bw, align 1
  %i.bx = icmp ugt i32 %i.bv, 16777216
  br i1 %i.bx, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val240 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.by = getelementptr inbounds nuw i8, ptr %.val240, i64 %i.ah
  %.0.copyload.i294 = load i32, ptr %i.by, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i294) #7, !srcloc !19
  %.not237 = icmp eq i32 %.0.copyload.i294, 0
  br i1 %.not237, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bz = add i32 %.0.copyload.i294, -1
  %.val258 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ca = getelementptr inbounds nuw i8, ptr %.val258, i64 %i.ah
  store i32 %i.bz, ptr %i.ca, align 1
  %.val268 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.cb = getelementptr inbounds nuw i8, ptr %.val268, i64 %i.bf
  store i64 -1, ptr %i.cb, align 1
  %i.cc = add i32 %.1230, 1                       ; 2 uses
  %.val271 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.cd = getelementptr inbounds nuw i8, ptr %.val271, i64 %i.aw
  %.0.copyload.i295 = load i16, ptr %i.cd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i295) #7, !srcloc !23
  %i.ce = zext i16 %.0.copyload.i295 to i32
  %.not238 = icmp eq i32 %i.cc, %i.ce
  br i1 %.not238, label %.loopexit, label %bb.g

.loopexit:                                        ; preds = %bb.k, %bb.j, %bb.i, %bb.e, %bb.d, %bb.c
  %.1 = phi i32 [ 1, %bb.c ], [ 1, %bb.d ], [ 0, %bb.e ], [ 0, %bb.k ], [ 1, %bb.j ], [ 1, %bb.i ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AraiseOnError0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Abigint0x3A0x3AOperationStatus0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  %i.c = add i32 %i.b, -48                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !7
  %switch.tableidx = add i32 %2, -1               ; 3 uses
  %i.d = icmp ult i32 %switch.tableidx, 4
  br i1 %i.d, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.e = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AasIntN0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20long0x20long0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x29, i64 %i.e
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.f = zext nneg i32 %switch.tableidx to i64
  %switch.gep145 = getelementptr inbounds nuw [2 x i8], ptr @switch.table.w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AasIntN0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20long0x20long0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x29.23, i64 %i.f
  %switch.load146 = load i16, ptr %switch.gep145, align 2
  %switch.ext = zext i16 %switch.load146 to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.h = zext i32 %i.c to i64                     ; 4 uses
  %.val114 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %.val114, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i32 0, ptr %i.j, align 1
  %.val124 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %.val124, i64 %i.h
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i64 %switch.load, ptr %i.l, align 1
  %.val113 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %.val113, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i32 3, ptr %i.n, align 1
  %.val = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 %i.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 %switch.ext, ptr %i.p, align 1
  %i.q = add i32 %i.b, -40
  %i.r = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseRangeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.q) #7
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ 1, %bb.a ], [ %i.r, %switch.lookup ]
  store i32 %i.b, ptr %i.a, align 8, !tbaa !7
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Aparser0x3A0x3Adetail0x3A0x3AJSParserImpl0x3A0x3AparseAssignmentExpression0x28hermes0x3A0x3Aparser0x3A0x3Adetail0x3A0x3AParam0x2C0x20hermes0x3A0x3Aparser0x3A0x3Adetail0x3A0x3AJSParserImpl0x3A0x3AAllowTypedArrowFunction0x2C0x20hermes0x3A0x3Aparser0x3A0x3Adetail0x3A0x3AJSParserImpl0x3A0x3ACoverTypedParameters0x2C0x20hermes0x3A0x3AESTree0x3A0x3ANode0x2A0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 7 uses
  %i.c = add i32 %i.b, -96                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 104 uses
  %i.e = zext i32 %i.c to i64                     ; 15 uses
  %.val570 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val570, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  store i32 %2, ptr %i.g, align 1
  %.val582 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val582, i64 %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  store i64 0, ptr %i.i, align 1
  %.val513 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.val513, i64 %i.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i8 0, ptr %i.k, align 1
  %.val512 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val512, i64 %i.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  store i8 0, ptr %i.m, align 1
  %.val569 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %.val569, i64 %i.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  store i32 0, ptr %i.o, align 1
  %i.p = add i32 %i.b, -68                        ; 4 uses
  %i.q = add nuw nsw i64 %i.e, 16                 ; 7 uses
  %.val568 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %.val568, i64 %i.q
  store i32 %i.p, ptr %i.r, align 1
  %i.s = add nuw nsw i64 %i.e, 20                 ; 10 uses
  %.val581 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %.val581, i64 %i.s
  store i64 8589934593, ptr %i.t, align 1
  %i.u = add i32 %i.b, -88
  %i.v = add i32 %i.b, -20                        ; 2 uses
  tail call void @w2c_hermes_hermes0x3A0x3Aparser0x3A0x3Adetail0x3A0x3AJSParserImpl0x3A0x3AparseAssignmentExpression0x28hermes0x3A0x3Aparser0x3A0x3Adetail0x3A0x3AParam0x2C0x20hermes0x3A0x3Aparser0x3A0x3Adetail0x3A0x3AJSParserImpl0x3A0x3AAllowTypedArrowFunction0x2C0x20hermes0x3A0x3Aparser0x3A0x3Adetail0x3A0x3AJSParserImpl0x3A0x3ACoverTypedParameters0x2C0x20hermes0x3A0x3AESTree0x3A0x3ANode0x2A0x290x3A0x3A0x24_00x3A0x3Aoperator0x280x290x28hermes0x3A0x3Aparser0x3A0x3Adetail0x3A0x3AJSParserImpl0x3A0x3AparseAssignmentExpression0x28hermes0x3A0x3Aparser0x3A0x3Adetail0x3A0x3AParam0x2C0x20hermes0x3A0x3Aparser0x3A0x3Adetail0x3A0x3AJSParserImpl0x3A0x3AAllowTypedArrowFunction0x2C0x20hermes0x3A0x3Aparser0x3A0x3Adetail0x3A0x3AJSParserImpl0x3A0x3ACoverTypedParameters0x2C0x20hermes0x3A0x3AESTree0x3A0x3ANode0x2A0x290x3A0x3AState0x260x2C0x20hermes0x3A0x3Aparser0x3A0x3Adetail0x3A0x3AParam0x2C0x20hermes0x3A0x3Aparser0x3A0x3Adetail0x3A0x3AJSParserImpl0x3A0x3AAllowTypedArrowFunction0x2C0x20hermes0x3A0x3Aparser0x3A0x3Adetail0x3A0x3AJSParserImpl0x3A0x3ACoverTypedParameters0x2C0x20hermes0x3A0x3AESTree0x3A0x3ANode0x2A0x290x20const(ptr noundef %0, i32 noundef %i.u, i32 noundef %i.v, i32 noundef %i.p, i32 noundef %3, i32 noundef %4)
  %i.w = add nuw nsw i64 %i.e, 12                 ; 4 uses
  %.val550 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %.val550, i64 %i.w
  %.0.copyload.i = load i8, ptr %i.x, align 1     ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i) #7, !srcloc !20
  %.not = icmp eq i8 %.0.copyload.i, 0
  br i1 %.not, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = add nuw nsw i64 %i.e, 8                  ; 8 uses
  %.val574 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %.val574, i64 %i.y
  %.0.copyload.i583 = load i64, ptr %i.z, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i583) #7, !srcloc !22
  %i.aa = add i32 %i.b, -80
  %i.ab = add i32 %i.b, -16                       ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.j, %bb.b
  %.0486 = phi i64 [ %.0.copyload.i583, %bb.b ], [ %.0.copyload.i596, %bb.j ] ; 2 uses
  %.val546 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.val546, i64 %i.q
  %.0.copyload.i584 = load i32, ptr %i.ac, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i584) #7, !srcloc !19
  %.val545 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %.val545, i64 %i.s
  %.0.copyload.i585 = load i32, ptr %i.ad, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i585) #7, !srcloc !19
  %i.ae = mul i32 %.0.copyload.i585, 24           ; 2 uses
  %i.af = add i32 %.0.copyload.i584, -8
  %i.ag = add i32 %i.af, %i.ae
  %i.ah = zext i32 %i.ag to i64
  %.val544 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %.val544, i64 %i.ah
  %.0.copyload.i586 = load i32, ptr %i.ai, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i586) #7, !srcloc !19
  %.not497 = icmp eq i32 %.0.copyload.i586, 0
  br i1 %.not497, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %.val580 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %.val580, i64 %i.y
  store i64 %.0486, ptr %i.aj, align 1
  %i.ak = add i32 %.0.copyload.i585, -1           ; 4 uses
  %.val567 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %.val567, i64 %i.s
  store i32 %i.ak, ptr %i.al, align 1
  %.not500 = icmp eq i32 %i.ak, 0
  %.val543 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.not500, label %bb.e, label %.peel.begin

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %.val543, i64 %i.y
  %.0.copyload.i587 = load i32, ptr %i.am, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i587) #7, !srcloc !19
  br label %bb.aa

bb.f:                                             ; preds = %bb.c
  %i.an = icmp ugt i32 %.0.copyload.i585, 30000
  %.val579 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %.val579, i64 %i.y
  store i64 %.0486, ptr %i.ao, align 1
  %i.ap = zext i32 %2 to i64                      ; 2 uses
  %.val542 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %.val542, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 864
  %.0.copyload.i588 = load i32, ptr %i.ar, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i588) #7, !srcloc !19
  %i.as = zext i32 %.0.copyload.i588 to i64
  %.val541 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %.val541, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %.0.copyload.i589 = load i32, ptr %i.au, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i589) #7, !srcloc !19
  %.val566 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %.val566, i64 %i.e
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 80
  store i32 34326, ptr %i.aw, align 1
  %.val572 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %.val572, i64 %i.e
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  store i16 259, ptr %i.ay, align 1
  %.val540 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %.val540, i64 %i.ap
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %.0.copyload.i590 = load i32, ptr %i.ba, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i590) #7, !srcloc !19
  tail call void @w2c_hermes_hermes0x3A0x3ASourceErrorManager0x3A0x3Amessage0x28hermes0x3A0x3ASourceErrorManager0x3A0x3ADiagKind0x2C0x20llvh0x3A0x3ASMLoc0x2C0x20llvh0x3A0x3ATwine0x20const0x260x2C0x20hermes0x3A0x3ASubsystem0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i590, i32 noundef 0, i32 noundef %.0.copyload.i589, i32 noundef %i.ab, i32 noundef 2) #7
  %i.bb = zext i32 %1 to i64
  br label %bb.ad

bb.h:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %.val579, i64 %i.e
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %.0.copyload.i591 = load i32, ptr %i.bd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i591) #7, !srcloc !19
  %.not498 = icmp ugt i32 %.0.copyload.i591, %.0.copyload.i585
  br i1 %.not498, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.aa, i32 noundef %i.p, i32 noundef 0, i32 noundef 24) #7
  %.val538 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %.val538, i64 %i.q
  %.0.copyload.i592 = load i32, ptr %i.be, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i592) #7, !srcloc !19
  %.val537 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %.val537, i64 %i.s
  %.0.copyload.i593 = load i32, ptr %i.bf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i593) #7, !srcloc !19
  %.pre = mul i32 %.0.copyload.i593, 24
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.pre-phi = phi i32 [ %i.ae, %bb.h ], [ %.pre, %bb.i ]
  %.0487 = phi i32 [ %.0.copyload.i584, %bb.h ], [ %.0.copyload.i592, %bb.i ]
  %i.bg = add i32 %.pre-phi, %.0487
  %i.bh = zext i32 %i.bg to i64                   ; 4 uses
  %.val578 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %.val578, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store i64 0, ptr %i.bj, align 1
  %.val510 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %.val510, i64 %i.bh
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store i8 0, ptr %i.bl, align 1
  %.val565 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bm = getelementptr inbounds nuw i8, ptr %.val565, i64 %i.bh
  store i32 0, ptr %i.bm, align 1
  %.val509 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bn = getelementptr inbounds nuw i8, ptr %.val509, i64 %i.bh
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i8 0, ptr %i.bo, align 1
  %.val536 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bp = getelementptr inbounds nuw i8, ptr %.val536, i64 %i.s
  %.0.copyload.i594 = load i32, ptr %i.bp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i594) #7, !srcloc !19
  %i.bq = add i32 %.0.copyload.i594, 1            ; 2 uses
  %.val564 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.br = getelementptr inbounds nuw i8, ptr %.val564, i64 %i.s
  store i32 %i.bq, ptr %i.br, align 1
  %.val535 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %.val535, i64 %i.q
  %.0.copyload.i595 = load i32, ptr %i.bs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i595) #7, !srcloc !19
  %i.bt = mul i32 %i.bq, 24
  %i.bu = add i32 %i.bt, -24
end_hunk_2
begin_hunk_3_@w2c_hermes_hermes0x3A0x3Aparser0x3A0x3AJSLexer0x3A0x3AinitializeReservedIdentifiers0x280x29:bb.a
  store i32 7, ptr %i.ok, align 1
  %.val1386 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ol = getelementptr inbounds nuw i8, ptr %.val1386, i64 %i.k
  store i32 51818, ptr %i.ol, align 1
  %.val1509 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.om = getelementptr inbounds nuw i8, ptr %.val1509, i64 %i.k
  %.0.copyload.i1671 = load i64, ptr %i.om, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1671) #7, !srcloc !22
  %.val1553 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.on = getelementptr inbounds nuw i8, ptr %.val1553, i64 %i.h
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 40
  store i64 %.0.copyload.i1671, ptr %i.oo, align 1
  %i.op = add i32 %i.b, -328
  %i.oq = tail call i32 @w2c_hermes_hermes0x3A0x3AStringTable0x3A0x3AgetString0x28llvh0x3A0x3AStringRef0x29(ptr noundef %0, i32 noundef %.0.copyload.i1670, i32 noundef %i.op) #7
  %.val1385 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.or = getelementptr inbounds nuw i8, ptr %.val1385, i64 %i.e
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 788
  store i32 %i.oq, ptr %i.os, align 1
  %.val1332 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ot = getelementptr inbounds nuw i8, ptr %.val1332, i64 %i.f
  %.0.copyload.i1672 = load i32, ptr %i.ot, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1672) #7, !srcloc !19
  %.val1384 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ou = getelementptr inbounds nuw i8, ptr %.val1384, i64 %i.i
  store i32 7, ptr %i.ou, align 1
  %.val1383 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ov = getelementptr inbounds nuw i8, ptr %.val1383, i64 %i.k
  store i32 47020, ptr %i.ov, align 1
  %.val1508 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ow = getelementptr inbounds nuw i8, ptr %.val1508, i64 %i.k
  %.0.copyload.i1673 = load i64, ptr %i.ow, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1673) #7, !srcloc !22
  %.val1552 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ox = getelementptr inbounds nuw i8, ptr %.val1552, i64 %i.h
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 32
  store i64 %.0.copyload.i1673, ptr %i.oy, align 1
  %i.oz = add i32 %i.b, -336
  %i.pa = tail call i32 @w2c_hermes_hermes0x3A0x3AStringTable0x3A0x3AgetString0x28llvh0x3A0x3AStringRef0x29(ptr noundef %0, i32 noundef %.0.copyload.i1672, i32 noundef %i.oz) #7
  %.val1382 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pb = getelementptr inbounds nuw i8, ptr %.val1382, i64 %i.e
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 792
  store i32 %i.pa, ptr %i.pc, align 1
  %.val1331 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pd = getelementptr inbounds nuw i8, ptr %.val1331, i64 %i.f
  %.0.copyload.i1674 = load i32, ptr %i.pd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1674) #7, !srcloc !19
  %.val1381 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pe = getelementptr inbounds nuw i8, ptr %.val1381, i64 %i.i
  store i32 9, ptr %i.pe, align 1
  %.val1380 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pf = getelementptr inbounds nuw i8, ptr %.val1380, i64 %i.k
  store i32 53898, ptr %i.pf, align 1
  %.val1507 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pg = getelementptr inbounds nuw i8, ptr %.val1507, i64 %i.k
  %.0.copyload.i1675 = load i64, ptr %i.pg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1675) #7, !srcloc !22
  %.val1551 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ph = getelementptr inbounds nuw i8, ptr %.val1551, i64 %i.h
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 24
  store i64 %.0.copyload.i1675, ptr %i.pi, align 1
  %i.pj = add i32 %i.b, -344
  %i.pk = tail call i32 @w2c_hermes_hermes0x3A0x3AStringTable0x3A0x3AgetString0x28llvh0x3A0x3AStringRef0x29(ptr noundef %0, i32 noundef %.0.copyload.i1674, i32 noundef %i.pj) #7
  %.val1379 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pl = getelementptr inbounds nuw i8, ptr %.val1379, i64 %i.e
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 796
  store i32 %i.pk, ptr %i.pm, align 1
  %.val1330 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pn = getelementptr inbounds nuw i8, ptr %.val1330, i64 %i.f
  %.0.copyload.i1676 = load i32, ptr %i.pn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1676) #7, !srcloc !19
  %.val1378 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.po = getelementptr inbounds nuw i8, ptr %.val1378, i64 %i.i
  store i32 6, ptr %i.po, align 1
  %.val1377 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pp = getelementptr inbounds nuw i8, ptr %.val1377, i64 %i.k
  store i32 55889, ptr %i.pp, align 1
  %.val1506 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pq = getelementptr inbounds nuw i8, ptr %.val1506, i64 %i.k
  %.0.copyload.i1677 = load i64, ptr %i.pq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1677) #7, !srcloc !22
  %.val1550 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pr = getelementptr inbounds nuw i8, ptr %.val1550, i64 %i.h
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 16
  store i64 %.0.copyload.i1677, ptr %i.ps, align 1
  %i.pt = add i32 %i.b, -352
  %i.pu = tail call i32 @w2c_hermes_hermes0x3A0x3AStringTable0x3A0x3AgetString0x28llvh0x3A0x3AStringRef0x29(ptr noundef %0, i32 noundef %.0.copyload.i1676, i32 noundef %i.pt) #7
  %.val1376 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pv = getelementptr inbounds nuw i8, ptr %.val1376, i64 %i.e
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 800
  store i32 %i.pu, ptr %i.pw, align 1
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.px = getelementptr inbounds nuw i8, ptr %.val, i64 %i.f
  %.0.copyload.i1678 = load i32, ptr %i.px, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1678) #7, !srcloc !19
  %.val1375 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.py = getelementptr inbounds nuw i8, ptr %.val1375, i64 %i.i
  store i32 5, ptr %i.py, align 1
  %.val1374 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pz = getelementptr inbounds nuw i8, ptr %.val1374, i64 %i.k
  store i32 53199, ptr %i.pz, align 1
  %.val1505 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qa = getelementptr inbounds nuw i8, ptr %.val1505, i64 %i.k
  %.0.copyload.i1679 = load i64, ptr %i.qa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1679) #7, !srcloc !22
  %.val1549 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qb = getelementptr inbounds nuw i8, ptr %.val1549, i64 %i.h
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 8
  store i64 %.0.copyload.i1679, ptr %i.qc, align 1
  %i.qd = add i32 %i.b, -360
  %i.qe = tail call i32 @w2c_hermes_hermes0x3A0x3AStringTable0x3A0x3AgetString0x28llvh0x3A0x3AStringRef0x29(ptr noundef %0, i32 noundef %.0.copyload.i1678, i32 noundef %i.qd) #7
  %.val1373 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qf = getelementptr inbounds nuw i8, ptr %.val1373, i64 %i.e
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 804
  store i32 %i.qe, ptr %i.qg, align 1
  store i32 %i.b, ptr %i.a, align 8, !tbaa !7
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Aparser0x3A0x3AJSLexer0x3A0x3AinitStorageWith0x28char0x20const0x2A0x2C0x20char0x20const0x2A0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.b = zext i32 %1 to i64                       ; 3 uses
  %i.c = add nuw nsw i64 %i.b, 96                 ; 4 uses
  %.val60 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %.val60, i64 %i.c
  store i32 0, ptr %i.d, align 1
  %i.e = sub i32 %3, %2                           ; 4 uses
  %.val58 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val58, i64 %i.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 100
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %i.h = icmp ugt i32 %i.e, %.0.copyload.i
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = add i32 %1, 92
  %i.j = add i32 %1, 104
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.i, i32 noundef %i.j, i32 noundef %i.e, i32 noundef 1) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not = icmp eq i32 %2, %3
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val57 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %.val57, i64 %i.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 92
  %.0.copyload.i61 = load i32, ptr %i.l, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i61) #7, !srcloc !19
  %.val56 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %.val56, i64 %i.c
  %.0.copyload.i62 = load i32, ptr %i.m, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i62) #7, !srcloc !19
  %i.n = add i32 %.0.copyload.i62, %.0.copyload.i61
  %i.o = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %i.n, i32 noundef %2, i32 noundef %i.e) #7 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 %i.c
  %.0.copyload.i63 = load i32, ptr %i.p, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i63) #7, !srcloc !19
  %i.q = add i32 %.0.copyload.i63, %i.e
  %.val59 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %.val59, i64 %i.c
  store i32 %i.q, ptr %i.r, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @w2c_hermes_hermes0x3A0x3AisSimpleSideEffectFreeInstruction0x28hermes0x3A0x3AInstruction0x2A0x29(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3AgetDerivedSideEffect0x280x29(ptr noundef %0, i32 noundef %1) #7
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = zext i32 %1 to i64
  %.val = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.0.copyload.i = load i8, ptr %i.e, align 1     ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i) #7, !srcloc !20
  %switch.tableidx = add i8 %.0.copyload.i, -26   ; 2 uses
  %i.f = icmp ult i8 %switch.tableidx, 36
  br i1 %i.f, label %switch.lookup, label %bb.c

bb.c:                                             ; preds = %bb.b
  %switch.selectcmp.case1 = icmp eq i8 %.0.copyload.i, 9
  %switch.selectcmp.case2 = icmp eq i8 %.0.copyload.i, 101
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %i.g = zext i1 %switch.selectcmp to i32
  br label %bb.d

switch.lookup:                                    ; preds = %bb.b
  %i.h = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.w2c_hermes_hermes0x3A0x3AisSimpleSideEffectFreeInstruction0x28hermes0x3A0x3AInstruction0x2A0x29, i64 %i.h
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.d

bb.d:                                             ; preds = %switch.lookup, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %switch.ext, %switch.lookup ], [ %i.g, %bb.c ]
  ret i32 %.0
}

declare i32 @w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3AgetDerivedSideEffect0x280x29(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_hermes0x3A0x3Airgen0x3A0x3ALReference0x3A0x3AcastAsVariable0x280x290x20const(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = zext i32 %1 to i64                       ; 2 uses
  %.val24 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %.val24, i64 %i.b
  %.0.copyload.i = load i32, ptr %i.c, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %.not = icmp eq i32 %.0.copyload.i, 2
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.0.copyload.i26 = load i32, ptr %i.e, align 1  ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i26) #7, !srcloc !19
  %.not23 = icmp eq i32 %.0.copyload.i26, 0
  br i1 %.not23, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = zext i32 %.0.copyload.i26 to i64
  %.val25 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %.val25, i64 %i.f
  %.0.copyload.i27 = load i8, ptr %i.g, align 1   ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i27) #7, !srcloc !20
  %i.h = icmp eq i8 %.0.copyload.i27, 124
  %i.i = select i1 %i.h, i32 %.0.copyload.i26, i32 0
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.i, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_hermes0x3A0x3Airgen0x3A0x3ALReference0x3A0x3AcastAsGlobalObjectProperty0x280x290x20const(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = zext i32 %1 to i64                       ; 2 uses
  %.val24 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %.val24, i64 %i.b
  %.0.copyload.i = load i32, ptr %i.c, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %.not = icmp eq i32 %.0.copyload.i, 2
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.0.copyload.i26 = load i32, ptr %i.e, align 1  ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i26) #7, !srcloc !19
  %.not23 = icmp eq i32 %.0.copyload.i26, 0
  br i1 %.not23, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = zext i32 %.0.copyload.i26 to i64
  %.val25 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %.val25, i64 %i.f
  %.0.copyload.i27 = load i8, ptr %i.g, align 1   ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i27) #7, !srcloc !20
  %i.h = icmp eq i8 %.0.copyload.i27, 123
  %i.i = select i1 %i.h, i32 %.0.copyload.i26, i32 0
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.i, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3A0x28anonymous0x20namespace0x290x3A0x3AVMAllocateStorageProvider0x3A0x3AnewStorageImpl0x28char0x20const0x2A0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 4 uses
  %i.c = add i32 %i.b, -32                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !7
  %i.d = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef %0, i32 noundef 16) #7 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 27 uses
  %i.f = zext i32 %i.c to i64                     ; 6 uses
  %i.g = add nuw nsw i64 %i.f, 16                 ; 5 uses
  %.val199 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val199, i64 %i.g
  store i32 %i.d, ptr %i.h, align 1
  %i.i = add nuw nsw i64 %i.f, 20                 ; 2 uses
  %.val205 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.val205, i64 %i.i
  store i64 -9223371968135299060, ptr %i.j, align 1
  %.val187 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %.val187, i64 43061
  %.0.copyload.i = load i32, ptr %i.k, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %i.l = zext i32 %i.d to i64                     ; 3 uses
  %.val198 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %.val198, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 %.0.copyload.i, ptr %i.n, align 1
  %.val202 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %.val202, i64 43053
  %.0.copyload.i206 = load i64, ptr %i.o, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i206) #7, !srcloc !22
  %.val204 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %.val204, i64 %i.l
  store i64 %.0.copyload.i206, ptr %i.p, align 1
  %.val182 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %.val182, i64 %i.l
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i8 0, ptr %i.r, align 1
  %i.s = add i32 %i.b, -17
  %i.t = add i32 %i.b, -16
  %i.u = tail call i32 @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Arandom_device0x3A0x3Arandom_device0x28std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x20const0x260x29(ptr noundef %0, i32 noundef %i.s, i32 noundef %i.t) #7 ; 0 uses
  %.val200 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %.val200, i64 %i.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 27
  %.0.copyload.i207 = load i8, ptr %i.w, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i207) #7, !srcloc !21
  %i.x = icmp slt i8 %.0.copyload.i207, 0
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.val186 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %.val186, i64 %i.g
  %.0.copyload.i208 = load i32, ptr %i.y, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i208) #7, !srcloc !19
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i208) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.z = tail call i32 @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Arandom_device0x3A0x3Aoperator0x280x290x280x29(ptr noundef nonnull %0) #7 ; 0 uses
  %i.aa = load i32, ptr %i.a, align 8, !tbaa !7   ; 3 uses
  %i.ab = add i32 %i.aa, -16                      ; 2 uses
  store i32 %i.ab, ptr %i.a, align 8, !tbaa !7
  %i.ac = add i32 %i.aa, -4
  %i.ad = tail call i32 @w2c_hermes_dlposix_memalign(ptr noundef nonnull %0, i32 noundef %i.ac, i32 noundef 4194304, i32 noundef 4194304) #7
  %i.ae = zext i32 %i.ab to i64
  %.val185 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %.val185, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %.0.copyload.i209 = load i32, ptr %i.ag, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i209) #7, !srcloc !19
  %.not = icmp ne i32 %i.ad, 0
  store i32 %i.aa, ptr %i.a, align 8, !tbaa !7
  %.not174175 = icmp eq i32 %.0.copyload.i209, 0
  %.not174 = select i1 %.not, i1 true, i1 %.not174175
  br i1 %.not174, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.val184 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %.val184, i64 272032
  %.0.copyload.i210 = load i32, ptr %i.ah, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i210) #7, !srcloc !19
  %.val193 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %.val193, i64 273392
  %.0.copyload.i211 = load i8, ptr %i.ai, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i211) #7, !srcloc !20
  %.not176 = icmp eq i8 %.0.copyload.i211, 0
  br i1 %.not176, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.val181 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %.val181, i64 273392
  store i8 1, ptr %i.aj, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.val197 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %.val197, i64 %i.i
  store i32 261700, ptr %i.ak, align 1
  %i.al = add nuw nsw i64 %i.f, 24                ; 2 uses
  %.val192 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %.val192, i64 %i.al
  %.0.copyload.i212 = load i8, ptr %i.am, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i212) #7, !srcloc !20
  %i.an = or i8 %.0.copyload.i212, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.ao = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %.0.copyload.i209, i32 noundef 0, i32 noundef 4194304) #7
  %i.ap = add nuw nsw i64 %i.f, 24                ; 2 uses
  %.val191 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %.val191, i64 %i.ap
  %.0.copyload.i213 = load i8, ptr %i.aq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i213) #7, !srcloc !20
  %i.ar = and i8 %.0.copyload.i213, -2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink222 = phi i64 [ %i.ap, %bb.g ], [ %i.al, %bb.f ]
  %.sink220 = phi i8 [ %i.ar, %bb.g ], [ %i.an, %bb.f ]
  %.sink = phi i32 [ %i.ao, %bb.g ], [ %.0.copyload.i210, %bb.f ]
  %.val179 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %.val179, i64 %.sink222
  store i8 %.sink220, ptr %i.as, align 1
end_hunk_3
begin_hunk_4_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3Asubtract0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x29:bb.a
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i312) #7, !srcloc !19
  %.val295 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.val295, i64 %i.j
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 44
  store i32 %.0.copyload.i312, ptr %i.v, align 1
  %i.w = add i32 %.0.copyload.i311, 8
  %i.x = add nuw nsw i64 %i.j, 40                 ; 2 uses
  %.val294 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %.val294, i64 %i.x
  store i32 %i.w, ptr %i.y, align 1
  %.val302 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %.val302, i64 %i.n
  %.0.copyload.i313 = load i64, ptr %i.z, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i313) #7, !srcloc !22
  %.val309 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %.val309, i64 %i.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store i64 %.0.copyload.i313, ptr %i.ab, align 1
  %.val301 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.val301, i64 %i.x
  %.0.copyload.i314 = load i64, ptr %i.ac, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i314) #7, !srcloc !22
  %.val308 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %.val308, i64 %i.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i64 %.0.copyload.i314, ptr %i.ae, align 1
  %.val274 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %.val274, i64 %i.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 36
  %.0.copyload.i315 = load i32, ptr %i.ag, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i315) #7, !srcloc !19
  %.val273 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %.val273, i64 %i.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  %.0.copyload.i316 = load i32, ptr %i.ai, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i316) #7, !srcloc !19
  %i.aj = tail call i32 @llvm.umax.i32(i32 %.0.copyload.i315, i32 %.0.copyload.i316)
  %i.ak = add i32 %i.aj, 1                        ; 3 uses
  %i.al = icmp ult i32 %i.ak, 1025
  br i1 %i.al, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.am = shl nuw nsw i32 %i.ak, 3
  %i.an = add nuw nsw i32 %i.am, 8                ; 4 uses
  %i.ao = add i32 %2, 1376
  %i.ap = zext i32 %i.ao to i64
  %.val272 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %.val272, i64 %i.ap
  %.0.copyload.i317 = load i32, ptr %i.aq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i317) #7, !srcloc !19
  %i.ar = add i32 %2, 1372
  %i.as = zext i32 %i.ar to i64
  %.val271 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %.val271, i64 %i.as
  %.0.copyload.i318 = load i32, ptr %i.at, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i318) #7, !srcloc !19
  %i.au = sub i32 %.0.copyload.i317, %.0.copyload.i318
  %.not = icmp ugt i32 %i.an, %i.au
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.av = add i32 %2, 816
  %i.aw = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AallocSlow0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.av, i32 noundef %i.an) #7
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %.val293 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %.val293, i64 %i.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 104
  store i32 0, ptr %i.ay, align 1
  %.val307 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %.val307, i64 %i.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 96
  store i64 120259084289, ptr %i.ba, align 1
  %.val292 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bb = getelementptr inbounds nuw i8, ptr %.val292, i64 %i.j
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  store i32 3, ptr %i.bc, align 1
  %.val291 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bd = getelementptr inbounds nuw i8, ptr %.val291, i64 %i.j
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  store i32 55442, ptr %i.be, align 1
  %i.bf = add i32 %i.b, -40
  %i.bg = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseRangeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %i.bf) #7 ; 0 uses
  %i.bh = zext i32 %1 to i64
  %.val290 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %.val290, i64 %i.bh
  store i32 0, ptr %i.bi, align 1
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.bj = add i32 %.0.copyload.i318, %i.an
  %i.bk = zext i32 %2 to i64
  %.val289 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %.val289, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1372
  store i32 %i.bj, ptr %i.bm, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.0 = phi i32 [ %.0.copyload.i318, %bb.e ], [ %i.aw, %bb.c ] ; 3 uses
  %i.bn = zext i32 %.0 to i64                     ; 3 uses
  %.val288 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %.val288, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store i32 %i.ak, ptr %i.bp, align 1
  %i.bq = or disjoint i32 %i.an, 1291845632
  %.val287 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.br = getelementptr inbounds nuw i8, ptr %.val287, i64 %i.bn
  store i32 %i.bq, ptr %i.br, align 1
  %i.bs = add i32 %.0, 4
  %.val286 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bt = getelementptr inbounds nuw i8, ptr %.val286, i64 %i.j
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 76
  store i32 %i.bs, ptr %i.bu, align 1
  %i.bv = add i32 %.0, 8
  %i.bw = add nuw nsw i64 %i.j, 72                ; 2 uses
  %.val285 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bx = getelementptr inbounds nuw i8, ptr %.val285, i64 %i.bw
  store i32 %i.bv, ptr %i.bx, align 1
  %.val270 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.by = getelementptr inbounds nuw i8, ptr %.val270, i64 %i.e
  %.0.copyload.i319 = load i32, ptr %i.by, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i319) #7, !srcloc !19
  %i.bz = zext i32 %.0.copyload.i319 to i64
  %.val269 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ca = getelementptr inbounds nuw i8, ptr %.val269, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %.0.copyload.i320 = load i32, ptr %i.cb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i320) #7, !srcloc !19
  %.val284 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cc = getelementptr inbounds nuw i8, ptr %.val284, i64 %i.j
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 68
  store i32 %.0.copyload.i320, ptr %i.cd, align 1
  %i.ce = add i32 %.0.copyload.i319, 8
  %i.cf = add nuw nsw i64 %i.j, 64                ; 2 uses
  %.val283 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cg = getelementptr inbounds nuw i8, ptr %.val283, i64 %i.cf
  store i32 %i.ce, ptr %i.cg, align 1
  %.val268 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ch = getelementptr inbounds nuw i8, ptr %.val268, i64 %i.p
  %.0.copyload.i321 = load i32, ptr %i.ch, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i321) #7, !srcloc !19
  %i.ci = zext i32 %.0.copyload.i321 to i64
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cj = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %.0.copyload.i322 = load i32, ptr %i.ck, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i322) #7, !srcloc !19
  %.val282 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cl = getelementptr inbounds nuw i8, ptr %.val282, i64 %i.j
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 60
  store i32 %.0.copyload.i322, ptr %i.cm, align 1
  %i.cn = add i32 %.0.copyload.i321, 8
  %i.co = add nuw nsw i64 %i.j, 56                ; 2 uses
  %.val281 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cp = getelementptr inbounds nuw i8, ptr %.val281, i64 %i.co
  store i32 %i.cn, ptr %i.cp, align 1
  %.val300 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cq = getelementptr inbounds nuw i8, ptr %.val300, i64 %i.bw
  %.0.copyload.i323 = load i64, ptr %i.cq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i323) #7, !srcloc !22
  %.val306 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cr = getelementptr inbounds nuw i8, ptr %.val306, i64 %i.j
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store i64 %.0.copyload.i323, ptr %i.cs, align 1
  %.val299 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %.val299, i64 %i.cf
  %.0.copyload.i324 = load i64, ptr %i.ct, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i324) #7, !srcloc !22
  %.val305 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cu = getelementptr inbounds nuw i8, ptr %.val305, i64 %i.j
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i64 %.0.copyload.i324, ptr %i.cv, align 1
  %.val298 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cw = getelementptr inbounds nuw i8, ptr %.val298, i64 %i.co
  %.0.copyload.i325 = load i64, ptr %i.cw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i325) #7, !srcloc !22
  %.val304 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cx = getelementptr inbounds nuw i8, ptr %.val304, i64 %i.j
  store i64 %.0.copyload.i325, ptr %i.cx, align 1
  %i.cy = add i32 %i.b, -96
  %i.cz = add i32 %i.b, -104
  %i.da = tail call i32 @w2c_hermes_hermes0x3A0x3Abigint0x3A0x3Asubtract0x28hermes0x3A0x3Abigint0x3A0x3AMutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x29(ptr noundef nonnull %0, i32 noundef %i.cy, i32 noundef %i.cz, i32 noundef %i.c) #7 ; 3 uses
  %.not267 = icmp eq i32 %i.da, 0
  br i1 %.not267, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.db = load i32, ptr %i.a, align 8, !tbaa !7   ; 2 uses
  %i.dc = add i32 %i.db, -48                      ; 2 uses
  store i32 %i.dc, ptr %i.a, align 8, !tbaa !7
  %i.dd = icmp ult i32 %i.da, 5
  br i1 %i.dd, label %switch.lookup, label %w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AraiseOnError0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Abigint0x3A0x3AOperationStatus0x29.exit

switch.lookup:                                    ; preds = %bb.g
  %switch.tableidx = add i32 %i.da, -1            ; 2 uses
  %i.de = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AasIntN0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20long0x20long0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x29, i64 %i.de
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.df = zext nneg i32 %switch.tableidx to i64
  %switch.gep329 = getelementptr inbounds nuw [2 x i8], ptr @switch.table.w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AasIntN0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20long0x20long0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x29.23, i64 %i.df
  %switch.load330 = load i16, ptr %switch.gep329, align 2
  %switch.ext = zext i16 %switch.load330 to i32
  %i.dg = zext i32 %i.dc to i64                   ; 4 uses
  %.val114.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dh = getelementptr inbounds nuw i8, ptr %.val114.i, i64 %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  store i32 0, ptr %i.di, align 1
  %.val124.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dj = getelementptr inbounds nuw i8, ptr %.val124.i, i64 %i.dg
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  store i64 %switch.load, ptr %i.dk, align 1
  %.val113.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dl = getelementptr inbounds nuw i8, ptr %.val113.i, i64 %i.dg
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store i32 3, ptr %i.dm, align 1
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dn = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.dg
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store i32 %switch.ext, ptr %i.do, align 1
  %i.dp = add i32 %i.db, -40
  %i.dq = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseRangeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %i.dp) #7
  br label %w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AraiseOnError0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Abigint0x3A0x3AOperationStatus0x29.exit

w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AraiseOnError0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Abigint0x3A0x3AOperationStatus0x29.exit: ; preds = %bb.g, %switch.lookup
  %.0.i = phi i32 [ 1, %bb.g ], [ %i.dq, %switch.lookup ]
  %i.dr = zext i32 %1 to i64
  %.val280 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ds = getelementptr inbounds nuw i8, ptr %.val280, i64 %i.dr
  store i32 %.0.i, ptr %i.ds, align 1
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.dt = zext i32 %1 to i64                      ; 2 uses
  %.val279 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.du = getelementptr inbounds nuw i8, ptr %.val279, i64 %i.dt
  store i32 1, ptr %i.du, align 1
  %i.dv = or disjoint i64 %i.bn, -562949953421312
  %.val303 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dw = getelementptr inbounds nuw i8, ptr %.val303, i64 %i.dt
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store i64 %i.dv, ptr %i.dx, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AraiseOnError0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Abigint0x3A0x3AOperationStatus0x29.exit, %bb.d
  store i32 %i.b, ptr %i.a, align 8, !tbaa !7
  ret void
}

declare i32 @w2c_hermes_hermes0x3A0x3Abigint0x3A0x3Asubtract0x28hermes0x3A0x3Abigint0x3A0x3AMutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AsignedRightShift0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  %i.c = add i32 %i.b, -112                       ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 61 uses
  %i.e = zext i32 %3 to i64                       ; 2 uses
  %.val435 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val435, i64 %i.e
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %i.g = zext i32 %.0.copyload.i to i64
  %.val434 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val434, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.0.copyload.i480 = load i32, ptr %i.i, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i480) #7, !srcloc !19
  %i.j = zext i32 %i.c to i64                     ; 22 uses
  %.val454 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %.val454, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  store i32 %.0.copyload.i480, ptr %i.l, align 1
  %i.m = add i32 %.0.copyload.i, 8
  %i.n = add nuw nsw i64 %i.j, 48                 ; 2 uses
  %.val453 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %.val453, i64 %i.n
  store i32 %i.m, ptr %i.o, align 1
  %i.p = zext i32 %4 to i64                       ; 2 uses
  %.val433 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %.val433, i64 %i.p
  %.0.copyload.i481 = load i32, ptr %i.q, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i481) #7, !srcloc !19
  %i.r = zext i32 %.0.copyload.i481 to i64
  %.val432 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %.val432, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.0.copyload.i482 = load i32, ptr %i.t, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i482) #7, !srcloc !19
  %.val452 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.val452, i64 %i.j
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 44
  store i32 %.0.copyload.i482, ptr %i.v, align 1
  %i.w = add i32 %.0.copyload.i481, 8
  %i.x = add nuw nsw i64 %i.j, 40                 ; 2 uses
  %.val451 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %.val451, i64 %i.x
  store i32 %i.w, ptr %i.y, align 1
  %.val467 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %.val467, i64 %i.n
  %.0.copyload.i483 = load i64, ptr %i.z, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i483) #7, !srcloc !22
  %.val479 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %.val479, i64 %i.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store i64 %.0.copyload.i483, ptr %i.ab, align 1
  %.val466 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.val466, i64 %i.x
  %.0.copyload.i484 = load i64, ptr %i.ac, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i484) #7, !srcloc !22
  %i.ad = add nuw nsw i64 %i.j, 24                ; 2 uses
  %.val478 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %.val478, i64 %i.ad
  store i64 %.0.copyload.i484, ptr %i.ae, align 1
  %i.af = load i32, ptr %i.a, align 8, !tbaa !7   ; 4 uses
  %i.ag = add i32 %i.af, -16                      ; 2 uses
  store i32 %i.ag, ptr %i.a, align 8, !tbaa !7
  %.val465 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %.val465, i64 %i.ad
  %.0.copyload.i485 = load i64, ptr %i.ah, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i485) #7, !srcloc !22
  %i.ai = lshr i64 %.0.copyload.i485, 32          ; 4 uses
  %.not = icmp eq i64 %i.ai, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aj = trunc i64 %.0.copyload.i485 to i32      ; 2 uses
  %i.ak = shl nuw nsw i64 %i.ai, 3
  %i.al = add i64 %.0.copyload.i485, 4294967288
  %i.am = add i64 %i.al, %i.ak
  %i.an = and i64 %i.am, 4294967295               ; 4 uses
  %.val464 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %.val464, i64 %i.an
  %.0.copyload.i486 = load i64, ptr %i.ao, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i486) #7, !srcloc !22
  %i.ap = zext i32 %i.ag to i64
  %i.aq = add nuw nsw i64 %i.ap, 8                ; 3 uses
  %.val477 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %.val477, i64 %i.aq
  store i64 -65536, ptr %i.ar, align 1
  %i.as = lshr i64 %.0.copyload.i486, 63
  %i.at = trunc nuw nsw i64 %i.as to i32          ; 5 uses
  %.val463 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %.val463, i64 %i.an
  %.0.copyload.i487 = load i64, ptr %i.au, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i487) #7, !srcloc !22
  %i.av = icmp slt i64 %.0.copyload.i487, 0
  br i1 %i.av, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.not420 = icmp eq i64 %i.ai, 1
  br i1 %.not420, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.aw = add i32 %i.af, -8                       ; 2 uses
  %i.ax = tail call i32 @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AtcCompare0x28unsigned0x20long0x20long0x20const0x2A0x2C0x20unsigned0x20long0x20long0x20const0x2A0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.aj, i32 noundef %i.aw, i32 noundef 1) #7
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val476 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %.val476, i64 %i.aq
  store i64 65536, ptr %i.az, align 1
  %.val462 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ba = getelementptr inbounds nuw i8, ptr %.val462, i64 %i.an
  %.0.copyload.i488 = load i64, ptr %i.ba, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i488) #7, !srcloc !22
  %i.bb = icmp slt i64 %.0.copyload.i488, 0
  br i1 %i.bb, label %bb.i, label %bb.h

bb.f:                                             ; preds = %bb.b
  %.val475 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %.val475, i64 %i.aq
  store i64 65536, ptr %i.bc, align 1
  %.val461 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bd = getelementptr inbounds nuw i8, ptr %.val461, i64 %i.an
  %.0.copyload.i489 = load i64, ptr %i.bd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i489) #7, !srcloc !22
  %i.be = icmp slt i64 %.0.copyload.i489, 0
  br i1 %i.be, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bf = icmp eq i64 %i.ai, 1
  br i1 %i.bf, label %._crit_edge, label %bb.j

._crit_edge:                                      ; preds = %bb.g
  %.pre = add i32 %i.af, -8
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.e
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %i.aw, %bb.e ]
  %i.bg = tail call i32 @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AtcCompare0x28unsigned0x20long0x20long0x20const0x2A0x2C0x20unsigned0x20long0x20long0x20const0x2A0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.aj, i32 noundef %.pre-phi, i32 noundef 1) #7
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.e
  %i.bi = and i64 %.0.copyload.i485, 4294967295
  %.val460 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %.val460, i64 %i.bi
  %.0.copyload.i490 = load i64, ptr %i.bj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i490) #7, !srcloc !22
  %i.bk = sub i64 0, %.0.copyload.i490
  %i.bl = icmp slt i64 %.0.copyload.i486, 0
  %i.bm = select i1 %i.bl, i64 %i.bk, i64 %.0.copyload.i490
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = add i32 %i.bn, 63
  %i.bp = lshr i32 %i.bo, 6
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.d, %bb.c, %bb.a, %bb.i
  %.0415 = phi i32 [ 0, %bb.a ], [ %i.at, %bb.c ], [ %i.at, %bb.d ], [ %i.at, %bb.i ], [ %i.at, %bb.h ], [ %i.at, %bb.g ]
  %.0 = phi i32 [ 0, %bb.a ], [ 129, %bb.c ], [ 129, %bb.d ], [ %i.bp, %bb.i ], [ 129, %bb.h ], [ 129, %bb.g ]
  %.val431 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %.val431, i64 %i.j
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 36
  %.0.copyload.i491 = load i32, ptr %i.br, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i491) #7, !srcloc !19
  store i32 %i.af, ptr %i.a, align 8, !tbaa !7
  %.0415.fr = freeze i32 %.0415
  %.not421 = icmp eq i32 %.0415.fr, 0
  %spec.select = select i1 %.not421, i32 0, i32 %.0
  %i.bs = add i32 %.0.copyload.i491, %spec.select ; 3 uses
  %i.bt = icmp ult i32 %i.bs, 1025
  br i1 %i.bt, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bu = shl nuw nsw i32 %i.bs, 3
  %i.bv = add nuw nsw i32 %i.bu, 8                ; 4 uses
  %i.bw = add i32 %2, 1376
  %i.bx = zext i32 %i.bw to i64
  %.val430 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.by = getelementptr inbounds nuw i8, ptr %.val430, i64 %i.bx
  %.0.copyload.i492 = load i32, ptr %i.by, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i492) #7, !srcloc !19
  %i.bz = add i32 %2, 1372
  %i.ca = zext i32 %i.bz to i64
  %.val429 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cb = getelementptr inbounds nuw i8, ptr %.val429, i64 %i.ca
  %.0.copyload.i493 = load i32, ptr %i.cb, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i493) #7, !srcloc !19
  %i.cc = sub i32 %.0.copyload.i492, %.0.copyload.i493
  %.not422 = icmp ugt i32 %i.bv, %i.cc
  br i1 %.not422, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cd = add i32 %2, 816
  %i.ce = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AallocSlow0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.cd, i32 noundef %i.bv) #7
  br label %bb.o

bb.m:                                             ; preds = %bb.j
  %.val450 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cf = getelementptr inbounds nuw i8, ptr %.val450, i64 %i.j
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 104
  store i32 0, ptr %i.cg, align 1
  %.val474 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ch = getelementptr inbounds nuw i8, ptr %.val474, i64 %i.j
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 96
  store i64 120259084289, ptr %i.ci, align 1
  %.val449 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cj = getelementptr inbounds nuw i8, ptr %.val449, i64 %i.j
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 80
  store i32 3, ptr %i.ck, align 1
  %.val448 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cl = getelementptr inbounds nuw i8, ptr %.val448, i64 %i.j
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  store i32 55442, ptr %i.cm, align 1
  %i.cn = add i32 %i.b, -40
  %i.co = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseRangeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %i.cn) #7 ; 0 uses
  %i.cp = zext i32 %1 to i64
  %.val447 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cq = getelementptr inbounds nuw i8, ptr %.val447, i64 %i.cp
  store i32 0, ptr %i.cq, align 1
  br label %bb.r

bb.n:                                             ; preds = %bb.k
  %i.cr = add i32 %.0.copyload.i493, %i.bv
  %i.cs = zext i32 %2 to i64
  %.val446 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %.val446, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 1372
  store i32 %i.cr, ptr %i.cu, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %.0416 = phi i32 [ %.0.copyload.i493, %bb.n ], [ %i.ce, %bb.l ] ; 3 uses
  %i.cv = zext i32 %.0416 to i64                  ; 3 uses
  %.val445 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cw = getelementptr inbounds nuw i8, ptr %.val445, i64 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  store i32 %i.bs, ptr %i.cx, align 1
  %i.cy = or disjoint i32 %i.bv, 1291845632
  %.val444 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cz = getelementptr inbounds nuw i8, ptr %.val444, i64 %i.cv
  store i32 %i.cy, ptr %i.cz, align 1
  %i.da = add i32 %.0416, 4
  %.val443 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.db = getelementptr inbounds nuw i8, ptr %.val443, i64 %i.j
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 76
  store i32 %i.da, ptr %i.dc, align 1
  %i.dd = add i32 %.0416, 8
  %i.de = add nuw nsw i64 %i.j, 72                ; 2 uses
  %.val442 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.df = getelementptr inbounds nuw i8, ptr %.val442, i64 %i.de
  store i32 %i.dd, ptr %i.df, align 1
  %.val428 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dg = getelementptr inbounds nuw i8, ptr %.val428, i64 %i.e
  %.0.copyload.i494 = load i32, ptr %i.dg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i494) #7, !srcloc !19
  %i.dh = zext i32 %.0.copyload.i494 to i64
  %.val427 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.di = getelementptr inbounds nuw i8, ptr %.val427, i64 %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %.0.copyload.i495 = load i32, ptr %i.dj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i495) #7, !srcloc !19
  %.val441 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dk = getelementptr inbounds nuw i8, ptr %.val441, i64 %i.j
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 68
  store i32 %.0.copyload.i495, ptr %i.dl, align 1
  %i.dm = add i32 %.0.copyload.i494, 8
  %i.dn = add nuw nsw i64 %i.j, 64                ; 2 uses
  %.val440 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.do = getelementptr inbounds nuw i8, ptr %.val440, i64 %i.dn
  store i32 %i.dm, ptr %i.do, align 1
  %.val426 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dp = getelementptr inbounds nuw i8, ptr %.val426, i64 %i.p
  %.0.copyload.i496 = load i32, ptr %i.dp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i496) #7, !srcloc !19
  %i.dq = zext i32 %.0.copyload.i496 to i64
  %.val425 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dr = getelementptr inbounds nuw i8, ptr %.val425, i64 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %.0.copyload.i497 = load i32, ptr %i.ds, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i497) #7, !srcloc !19
  %.val439 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dt = getelementptr inbounds nuw i8, ptr %.val439, i64 %i.j
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 60
  store i32 %.0.copyload.i497, ptr %i.du, align 1
  %i.dv = add i32 %.0.copyload.i496, 8
  %i.dw = add nuw nsw i64 %i.j, 56                ; 2 uses
  %.val438 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dx = getelementptr inbounds nuw i8, ptr %.val438, i64 %i.dw
  store i32 %i.dv, ptr %i.dx, align 1
  %.val459 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dy = getelementptr inbounds nuw i8, ptr %.val459, i64 %i.de
  %.0.copyload.i498 = load i64, ptr %i.dy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i498) #7, !srcloc !22
  %i.dz = add nuw nsw i64 %i.j, 16                ; 2 uses
  %.val473 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ea = getelementptr inbounds nuw i8, ptr %.val473, i64 %i.dz
  store i64 %.0.copyload.i498, ptr %i.ea, align 1
  %.val458 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eb = getelementptr inbounds nuw i8, ptr %.val458, i64 %i.dn
  %.0.copyload.i499 = load i64, ptr %i.eb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i499) #7, !srcloc !22
  %i.ec = add nuw nsw i64 %i.j, 8                 ; 2 uses
  %.val472 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ed = getelementptr inbounds nuw i8, ptr %.val472, i64 %i.ec
  store i64 %.0.copyload.i499, ptr %i.ed, align 1
  %.val457 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ee = getelementptr inbounds nuw i8, ptr %.val457, i64 %i.dw
  %.0.copyload.i500 = load i64, ptr %i.ee, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i500) #7, !srcloc !22
  %.val471 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ef = getelementptr inbounds nuw i8, ptr %.val471, i64 %i.j
  store i64 %.0.copyload.i500, ptr %i.ef, align 1
  %i.eg = load i32, ptr %i.a, align 8, !tbaa !7   ; 3 uses
  %i.eh = add i32 %i.eg, -16                      ; 3 uses
  store i32 %i.eh, ptr %i.a, align 8, !tbaa !7
  %.val424 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ei = getelementptr inbounds nuw i8, ptr %.val424, i64 %i.j
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 20
  %.0.copyload.i501 = load i32, ptr %i.ej, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i501) #7, !srcloc !19
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ek = getelementptr inbounds nuw i8, ptr %.val, i64 %i.dz
  %.0.copyload.i502 = load i32, ptr %i.ek, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i502) #7, !srcloc !19
  %.val456 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.el = getelementptr inbounds nuw i8, ptr %.val456, i64 %i.ec
  %.0.copyload.i503 = load i64, ptr %i.el, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i503) #7, !srcloc !22
  %i.em = zext i32 %i.eh to i64                   ; 2 uses
  %.val470 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.en = getelementptr inbounds nuw i8, ptr %.val470, i64 %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store i64 %.0.copyload.i503, ptr %i.eo, align 1
  %.val455 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ep = getelementptr inbounds nuw i8, ptr %.val455, i64 %i.j
  %.0.copyload.i504 = load i64, ptr %i.ep, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i504) #7, !srcloc !22
  %.val469 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eq = getelementptr inbounds nuw i8, ptr %.val469, i64 %i.em
  store i64 %.0.copyload.i503, ptr %i.eq, align 1
  %i.er = tail call i32 @w2c_hermes_hermes0x3A0x3Abigint0x3A0x3A0x28anonymous0x20namespace0x290x3A0x3AshiftImpl0x28hermes0x3A0x3Abigint0x3A0x3A0x28anonymous0x20namespace0x290x3A0x3AShiftOpIs0x2C0x20hermes0x3A0x3Abigint0x3A0x3AMutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x29(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %.0.copyload.i502, i32 noundef %.0.copyload.i501, i32 noundef %i.eh, i64 noundef %.0.copyload.i504) #7 ; 3 uses
  %.not423 = icmp eq i32 %i.er, 0
  br i1 %.not423, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.es = add i32 %i.eg, -48                      ; 2 uses
  store i32 %i.es, ptr %i.a, align 8, !tbaa !7
  %i.et = icmp ult i32 %i.er, 5
  br i1 %i.et, label %switch.lookup, label %w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AraiseOnError0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Abigint0x3A0x3AOperationStatus0x29.exit

switch.lookup:                                    ; preds = %bb.p
  %switch.tableidx = add i32 %i.er, -1            ; 2 uses
  %i.eu = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AasIntN0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20long0x20long0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x29, i64 %i.eu
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.ev = zext nneg i32 %switch.tableidx to i64
  %switch.gep509 = getelementptr inbounds nuw [2 x i8], ptr @switch.table.w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AasIntN0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20long0x20long0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x29.23, i64 %i.ev
  %switch.load510 = load i16, ptr %switch.gep509, align 2
  %switch.ext = zext i16 %switch.load510 to i32
  %i.ew = zext i32 %i.es to i64                   ; 4 uses
  %.val114.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ex = getelementptr inbounds nuw i8, ptr %.val114.i, i64 %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 40
  store i32 0, ptr %i.ey, align 1
  %.val124.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ez = getelementptr inbounds nuw i8, ptr %.val124.i, i64 %i.ew
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  store i64 %switch.load, ptr %i.fa, align 1
  %.val113.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fb = getelementptr inbounds nuw i8, ptr %.val113.i, i64 %i.ew
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store i32 3, ptr %i.fc, align 1
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fd = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ew
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store i32 %switch.ext, ptr %i.fe, align 1
  %i.ff = add i32 %i.eg, -40
  %i.fg = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseRangeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %i.ff) #7
  br label %w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AraiseOnError0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Abigint0x3A0x3AOperationStatus0x29.exit

w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AraiseOnError0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Abigint0x3A0x3AOperationStatus0x29.exit: ; preds = %bb.p, %switch.lookup
  %.0.i = phi i32 [ 1, %bb.p ], [ %i.fg, %switch.lookup ]
  %i.fh = zext i32 %1 to i64
  %.val437 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fi = getelementptr inbounds nuw i8, ptr %.val437, i64 %i.fh
  store i32 %.0.i, ptr %i.fi, align 1
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.fj = zext i32 %1 to i64                      ; 2 uses
  %.val436 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fk = getelementptr inbounds nuw i8, ptr %.val436, i64 %i.fj
  store i32 1, ptr %i.fk, align 1
  %i.fl = or disjoint i64 %i.cv, -562949953421312
  %.val468 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fm = getelementptr inbounds nuw i8, ptr %.val468, i64 %i.fj
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store i64 %i.fl, ptr %i.fn, align 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AraiseOnError0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Abigint0x3A0x3AOperationStatus0x29.exit, %bb.m
  store i32 %i.b, ptr %i.a, align 8, !tbaa !7
  ret void
}

declare i32 @w2c_hermes_hermes0x3A0x3Abigint0x3A0x3A0x28anonymous0x20namespace0x290x3A0x3AshiftImpl0x28hermes0x3A0x3Abigint0x3A0x3A0x28anonymous0x20namespace0x290x3A0x3AShiftOpIs0x2C0x20hermes0x3A0x3Abigint0x3A0x3AMutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3Aremainder0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  %i.c = add i32 %i.b, -112                       ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 56 uses
  %i.e = zext i32 %3 to i64                       ; 2 uses
  %.val338 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val338, i64 %i.e
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %i.g = zext i32 %.0.copyload.i to i64
  %.val337 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val337, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.0.copyload.i377 = load i32, ptr %i.i, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i377) #7, !srcloc !19
  %i.j = zext i32 %i.c to i64                     ; 23 uses
  %.val358 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %.val358, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  store i32 %.0.copyload.i377, ptr %i.l, align 1
  %i.m = add i32 %.0.copyload.i, 8
  %i.n = add nuw nsw i64 %i.j, 48                 ; 2 uses
  %.val357 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %.val357, i64 %i.n
  store i32 %i.m, ptr %i.o, align 1
  %i.p = zext i32 %4 to i64                       ; 2 uses
  %.val336 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %.val336, i64 %i.p
  %.0.copyload.i378 = load i32, ptr %i.q, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i378) #7, !srcloc !19
  %i.r = zext i32 %.0.copyload.i378 to i64
  %.val335 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %.val335, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.0.copyload.i379 = load i32, ptr %i.t, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i379) #7, !srcloc !19
  %.val356 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.val356, i64 %i.j
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 44
  store i32 %.0.copyload.i379, ptr %i.v, align 1
  %i.w = add i32 %.0.copyload.i378, 8
  %i.x = add nuw nsw i64 %i.j, 40                 ; 2 uses
  %.val355 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %.val355, i64 %i.x
  store i32 %i.w, ptr %i.y, align 1
  %.val365 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %.val365, i64 %i.n
  %.0.copyload.i380 = load i64, ptr %i.z, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i380) #7, !srcloc !22
  %.val376 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %.val376, i64 %i.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store i64 %.0.copyload.i380, ptr %i.ab, align 1
  %.val364 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.val364, i64 %i.x
  %.0.copyload.i381 = load i64, ptr %i.ac, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i381) #7, !srcloc !22
  %.val375 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %.val375, i64 %i.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i64 %.0.copyload.i381, ptr %i.ae, align 1
  %.val334 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %.val334, i64 %i.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 36
  %.0.copyload.i382 = load i32, ptr %i.ag, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i382) #7, !srcloc !19
  %.val333 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %.val333, i64 %i.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  %.0.copyload.i383 = load i32, ptr %i.ai, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i383) #7, !srcloc !19
  %i.aj = tail call i32 @llvm.umax.i32(i32 %.0.copyload.i382, i32 %.0.copyload.i383)
  %i.ak = add i32 %i.aj, 1                        ; 3 uses
  %i.al = icmp ult i32 %i.ak, 1025
  br i1 %i.al, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.am = shl nuw nsw i32 %i.ak, 3
  %i.an = add nuw nsw i32 %i.am, 8                ; 4 uses
  %i.ao = add i32 %2, 1376
  %i.ap = zext i32 %i.ao to i64
  %.val332 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %.val332, i64 %i.ap
  %.0.copyload.i384 = load i32, ptr %i.aq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i384) #7, !srcloc !19
  %i.ar = add i32 %2, 1372
  %i.as = zext i32 %i.ar to i64
  %.val331 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %.val331, i64 %i.as
  %.0.copyload.i385 = load i32, ptr %i.at, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i385) #7, !srcloc !19
  %i.au = sub i32 %.0.copyload.i384, %.0.copyload.i385
  %.not = icmp ugt i32 %i.an, %i.au
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.av = add i32 %2, 816
  %i.aw = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AallocSlow0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.av, i32 noundef %i.an) #7
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %.val354 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %.val354, i64 %i.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 104
  store i32 0, ptr %i.ay, align 1
  %.val374 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %.val374, i64 %i.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 96
  store i64 120259084289, ptr %i.ba, align 1
  %.val353 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bb = getelementptr inbounds nuw i8, ptr %.val353, i64 %i.j
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  store i32 3, ptr %i.bc, align 1
  %.val352 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bd = getelementptr inbounds nuw i8, ptr %.val352, i64 %i.j
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  store i32 55442, ptr %i.be, align 1
  %i.bf = add i32 %i.b, -40
  %i.bg = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseRangeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %i.bf) #7 ; 0 uses
  %i.bh = zext i32 %1 to i64
  %.val351 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %.val351, i64 %i.bh
  store i32 0, ptr %i.bi, align 1
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.bj = add i32 %.0.copyload.i385, %i.an
  %i.bk = zext i32 %2 to i64
  %.val350 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %.val350, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1372
  store i32 %i.bj, ptr %i.bm, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.0 = phi i32 [ %.0.copyload.i385, %bb.e ], [ %i.aw, %bb.c ] ; 3 uses
  %i.bn = zext i32 %.0 to i64                     ; 3 uses
  %.val349 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %.val349, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store i32 %i.ak, ptr %i.bp, align 1
  %i.bq = or disjoint i32 %i.an, 1291845632
  %.val348 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.br = getelementptr inbounds nuw i8, ptr %.val348, i64 %i.bn
  store i32 %i.bq, ptr %i.br, align 1
  %i.bs = add i32 %.0, 4
  %.val347 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bt = getelementptr inbounds nuw i8, ptr %.val347, i64 %i.j
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 76
  store i32 %i.bs, ptr %i.bu, align 1
  %i.bv = add i32 %.0, 8
  %i.bw = add nuw nsw i64 %i.j, 72                ; 2 uses
  %.val346 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bx = getelementptr inbounds nuw i8, ptr %.val346, i64 %i.bw
  store i32 %i.bv, ptr %i.bx, align 1
  %.val330 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.by = getelementptr inbounds nuw i8, ptr %.val330, i64 %i.e
  %.0.copyload.i386 = load i32, ptr %i.by, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i386) #7, !srcloc !19
  %i.bz = zext i32 %.0.copyload.i386 to i64
  %.val329 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ca = getelementptr inbounds nuw i8, ptr %.val329, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %.0.copyload.i387 = load i32, ptr %i.cb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i387) #7, !srcloc !19
  %.val345 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cc = getelementptr inbounds nuw i8, ptr %.val345, i64 %i.j
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 68
  store i32 %.0.copyload.i387, ptr %i.cd, align 1
  %i.ce = add i32 %.0.copyload.i386, 8
  %i.cf = add nuw nsw i64 %i.j, 64                ; 2 uses
  %.val344 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cg = getelementptr inbounds nuw i8, ptr %.val344, i64 %i.cf
  store i32 %i.ce, ptr %i.cg, align 1
  %.val328 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ch = getelementptr inbounds nuw i8, ptr %.val328, i64 %i.p
  %.0.copyload.i388 = load i32, ptr %i.ch, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i388) #7, !srcloc !19
  %i.ci = zext i32 %.0.copyload.i388 to i64
  %.val327 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cj = getelementptr inbounds nuw i8, ptr %.val327, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %.0.copyload.i389 = load i32, ptr %i.ck, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i389) #7, !srcloc !19
  %.val343 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cl = getelementptr inbounds nuw i8, ptr %.val343, i64 %i.j
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 60
  store i32 %.0.copyload.i389, ptr %i.cm, align 1
  %i.cn = add i32 %.0.copyload.i388, 8
  %i.co = add nuw nsw i64 %i.j, 56                ; 2 uses
  %.val342 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cp = getelementptr inbounds nuw i8, ptr %.val342, i64 %i.co
  store i32 %i.cn, ptr %i.cp, align 1
  %.val363 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cq = getelementptr inbounds nuw i8, ptr %.val363, i64 %i.bw
  %.0.copyload.i390 = load i64, ptr %i.cq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i390) #7, !srcloc !22
  %i.cr = add nuw nsw i64 %i.j, 16                ; 2 uses
  %.val373 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cs = getelementptr inbounds nuw i8, ptr %.val373, i64 %i.cr
  store i64 %.0.copyload.i390, ptr %i.cs, align 1
  %.val362 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %.val362, i64 %i.cf
  %.0.copyload.i391 = load i64, ptr %i.ct, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i391) #7, !srcloc !22
  %i.cu = add nuw nsw i64 %i.j, 8                 ; 2 uses
  %.val372 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cv = getelementptr inbounds nuw i8, ptr %.val372, i64 %i.cu
  store i64 %.0.copyload.i391, ptr %i.cv, align 1
  %.val361 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cw = getelementptr inbounds nuw i8, ptr %.val361, i64 %i.co
  %.0.copyload.i392 = load i64, ptr %i.cw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i392) #7, !srcloc !22
  %.val371 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cx = getelementptr inbounds nuw i8, ptr %.val371, i64 %i.j
  store i64 %.0.copyload.i392, ptr %i.cx, align 1
  %i.cy = load i32, ptr %i.a, align 8, !tbaa !7   ; 4 uses
  %i.cz = add i32 %i.cy, -48                      ; 3 uses
  store i32 %i.cz, ptr %i.a, align 8, !tbaa !7
  %i.da = zext i32 %i.cz to i64                   ; 9 uses
  %.val341 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.db = getelementptr inbounds nuw i8, ptr %.val341, i64 %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 44
  store i32 0, ptr %i.dc, align 1
  %.val326 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dd = getelementptr inbounds nuw i8, ptr %.val326, i64 %i.j
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 20
  %.0.copyload.i393 = load i32, ptr %i.de, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i393) #7, !srcloc !19
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.df = getelementptr inbounds nuw i8, ptr %.val, i64 %i.cr
  %.0.copyload.i394 = load i32, ptr %i.df, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i394) #7, !srcloc !19
  %.val360 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dg = getelementptr inbounds nuw i8, ptr %.val360, i64 %i.cu
  %.0.copyload.i395 = load i64, ptr %i.dg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i395) #7, !srcloc !22
  %.val370 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dh = getelementptr inbounds nuw i8, ptr %.val370, i64 %i.da
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  store i64 %.0.copyload.i395, ptr %i.di, align 1
  %.val359 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dj = getelementptr inbounds nuw i8, ptr %.val359, i64 %i.j
  %.0.copyload.i396 = load i64, ptr %i.dj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i396) #7, !srcloc !22
  %.val369 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dk = getelementptr inbounds nuw i8, ptr %.val369, i64 %i.da
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  store i64 %.0.copyload.i396, ptr %i.dl, align 1
  %.val368 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dm = getelementptr inbounds nuw i8, ptr %.val368, i64 %i.da
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store i64 %.0.copyload.i395, ptr %i.dn, align 1
  %.val367 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.do = getelementptr inbounds nuw i8, ptr %.val367, i64 %i.da
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store i64 %.0.copyload.i396, ptr %i.dp, align 1
  %i.dq = add i32 %i.cy, -4
  %i.dr = add i32 %i.cy, -32
  %i.ds = add i32 %i.cy, -40                      ; 2 uses
  %i.dt = tail call i32 @w2c_hermes_hermes0x3A0x3Abigint0x3A0x3A0x28anonymous0x20namespace0x290x3A0x3Adiv_rem0x3A0x3Acompute0x28hermes0x3A0x3Abigint0x3A0x3AMutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AMutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x29(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %i.dq, i32 noundef %.0.copyload.i394, i32 noundef %.0.copyload.i393, i32 noundef %i.dr, i32 noundef %i.ds) #7 ; 3 uses
  %.not325 = icmp eq i32 %i.dt, 0
  br i1 %.not325, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.cz, ptr %i.a, align 8, !tbaa !7
  %i.du = icmp ult i32 %i.dt, 5
  br i1 %i.du, label %switch.lookup, label %w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AraiseOnError0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Abigint0x3A0x3AOperationStatus0x29.exit

switch.lookup:                                    ; preds = %bb.g
  %switch.tableidx = add i32 %i.dt, -1            ; 2 uses
  %i.dv = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AasIntN0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20long0x20long0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x29, i64 %i.dv
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.dw = zext nneg i32 %switch.tableidx to i64
  %switch.gep400 = getelementptr inbounds nuw [2 x i8], ptr @switch.table.w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AasIntN0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20long0x20long0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x29.23, i64 %i.dw
  %switch.load401 = load i16, ptr %switch.gep400, align 2
  %switch.ext = zext i16 %switch.load401 to i32
  %.val114.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dx = getelementptr inbounds nuw i8, ptr %.val114.i, i64 %i.da
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 40
  store i32 0, ptr %i.dy, align 1
  %.val124.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dz = getelementptr inbounds nuw i8, ptr %.val124.i, i64 %i.da
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  store i64 %switch.load, ptr %i.ea, align 1
  %.val113.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eb = getelementptr inbounds nuw i8, ptr %.val113.i, i64 %i.da
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store i32 3, ptr %i.ec, align 1
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ed = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.da
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store i32 %switch.ext, ptr %i.ee, align 1
  %i.ef = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseRangeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %i.ds) #7
  br label %w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AraiseOnError0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Abigint0x3A0x3AOperationStatus0x29.exit

w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AraiseOnError0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Abigint0x3A0x3AOperationStatus0x29.exit: ; preds = %bb.g, %switch.lookup
  %.0.i = phi i32 [ 1, %bb.g ], [ %i.ef, %switch.lookup ]
  %i.eg = zext i32 %1 to i64
  %.val340 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eh = getelementptr inbounds nuw i8, ptr %.val340, i64 %i.eg
  store i32 %.0.i, ptr %i.eh, align 1
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ei = zext i32 %1 to i64                      ; 2 uses
  %.val339 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ej = getelementptr inbounds nuw i8, ptr %.val339, i64 %i.ei
  store i32 1, ptr %i.ej, align 1
  %i.ek = or disjoint i64 %i.bn, -562949953421312
  %.val366 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.el = getelementptr inbounds nuw i8, ptr %.val366, i64 %i.ei
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store i64 %i.ek, ptr %i.em, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AraiseOnError0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Abigint0x3A0x3AOperationStatus0x29.exit, %bb.d
  store i32 %i.b, ptr %i.a, align 8, !tbaa !7
  ret void
}

declare i32 @w2c_hermes_hermes0x3A0x3Abigint0x3A0x3A0x28anonymous0x20namespace0x290x3A0x3Adiv_rem0x3A0x3Acompute0x28hermes0x3A0x3Abigint0x3A0x3AMutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AMutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3Amultiply0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 5 uses
  %i.c = add i32 %i.b, -112                       ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 47 uses
  %i.e = zext i32 %3 to i64                       ; 2 uses
  %.val283 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val283, i64 %i.e
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %i.g = zext i32 %.0.copyload.i to i64
  %.val282 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val282, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.0.copyload.i315 = load i32, ptr %i.i, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i315) #7, !srcloc !19
  %i.j = zext i32 %i.c to i64                     ; 21 uses
  %.val302 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %.val302, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  store i32 %.0.copyload.i315, ptr %i.l, align 1
  %i.m = add i32 %.0.copyload.i, 8
  %i.n = add nuw nsw i64 %i.j, 48                 ; 2 uses
  %.val301 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %.val301, i64 %i.n
  store i32 %i.m, ptr %i.o, align 1
  %i.p = zext i32 %4 to i64                       ; 2 uses
  %.val281 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %.val281, i64 %i.p
  %.0.copyload.i316 = load i32, ptr %i.q, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i316) #7, !srcloc !19
  %i.r = zext i32 %.0.copyload.i316 to i64
  %.val280 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %.val280, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.0.copyload.i317 = load i32, ptr %i.t, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i317) #7, !srcloc !19
  %.val300 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.val300, i64 %i.j
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 44
  store i32 %.0.copyload.i317, ptr %i.v, align 1
  %i.w = add i32 %.0.copyload.i316, 8
  %i.x = add nuw nsw i64 %i.j, 40                 ; 2 uses
  %.val299 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %.val299, i64 %i.x
  store i32 %i.w, ptr %i.y, align 1
  %.val307 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %.val307, i64 %i.n
  %.0.copyload.i318 = load i64, ptr %i.z, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i318) #7, !srcloc !22
  %.val314 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %.val314, i64 %i.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store i64 %.0.copyload.i318, ptr %i.ab, align 1
  %.val306 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.val306, i64 %i.x
  %.0.copyload.i319 = load i64, ptr %i.ac, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i319) #7, !srcloc !22
  %.val313 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %.val313, i64 %i.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i64 %.0.copyload.i319, ptr %i.ae, align 1
  %.val279 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %.val279, i64 %i.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 36
  %.0.copyload.i320 = load i32, ptr %i.ag, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i320) #7, !srcloc !19
  %.val278 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %.val278, i64 %i.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  %.0.copyload.i321 = load i32, ptr %i.ai, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i321) #7, !srcloc !19
  %i.aj = add i32 %.0.copyload.i320, 1
  %i.ak = add i32 %i.aj, %.0.copyload.i321
  %.not = icmp eq i32 %.0.copyload.i321, 0
  %.not270 = icmp eq i32 %.0.copyload.i320, 0
  %i.al = select i1 %.not270, i1 true, i1 %.not
  %i.am = select i1 %i.al, i32 0, i32 %i.ak       ; 3 uses
  %i.an = icmp ult i32 %i.am, 1025
  br i1 %i.an, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.ao = shl nuw nsw i32 %i.am, 3
  %i.ap = add nuw nsw i32 %i.ao, 8                ; 4 uses
  %i.aq = add i32 %2, 1376
  %i.ar = zext i32 %i.aq to i64
  %.val277 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %.val277, i64 %i.ar
  %.0.copyload.i322 = load i32, ptr %i.as, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i322) #7, !srcloc !19
  %i.at = add i32 %2, 1372
  %i.au = zext i32 %i.at to i64
  %.val276 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %.val276, i64 %i.au
  %.0.copyload.i323 = load i32, ptr %i.av, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i323) #7, !srcloc !19
  %i.aw = sub i32 %.0.copyload.i322, %.0.copyload.i323
  %.not271 = icmp ugt i32 %i.ap, %i.aw
  br i1 %.not271, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ax = add i32 %2, 816
  %i.ay = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AallocSlow0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.ax, i32 noundef %i.ap) #7
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %.val298 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %.val298, i64 %i.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 104
  store i32 0, ptr %i.ba, align 1
  %.val312 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bb = getelementptr inbounds nuw i8, ptr %.val312, i64 %i.j
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 96
  store i64 120259084289, ptr %i.bc, align 1
  %.val297 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bd = getelementptr inbounds nuw i8, ptr %.val297, i64 %i.j
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  store i32 3, ptr %i.be, align 1
  %.val296 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %.val296, i64 %i.j
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  store i32 55442, ptr %i.bg, align 1
  %i.bh = add i32 %i.b, -40
  %i.bi = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseRangeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %i.bh) #7 ; 0 uses
  %i.bj = zext i32 %1 to i64
  %.val295 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %.val295, i64 %i.bj
  store i32 0, ptr %i.bk, align 1
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.bl = add i32 %.0.copyload.i323, %i.ap
  %i.bm = zext i32 %2 to i64
  %.val294 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bn = getelementptr inbounds nuw i8, ptr %.val294, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1372
  store i32 %i.bl, ptr %i.bo, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.0 = phi i32 [ %.0.copyload.i323, %bb.e ], [ %i.ay, %bb.c ] ; 3 uses
  %i.bp = zext i32 %.0 to i64                     ; 3 uses
  %.val293 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %.val293, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  store i32 %i.am, ptr %i.br, align 1
  %i.bs = or disjoint i32 %i.ap, 1291845632
  %.val292 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bt = getelementptr inbounds nuw i8, ptr %.val292, i64 %i.bp
  store i32 %i.bs, ptr %i.bt, align 1
  %i.bu = add i32 %.0, 4
  %.val291 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bv = getelementptr inbounds nuw i8, ptr %.val291, i64 %i.j
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 76
  store i32 %i.bu, ptr %i.bw, align 1
  %i.bx = add i32 %.0, 8
  %i.by = add nuw nsw i64 %i.j, 72                ; 2 uses
  %.val290 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bz = getelementptr inbounds nuw i8, ptr %.val290, i64 %i.by
  store i32 %i.bx, ptr %i.bz, align 1
  %.val275 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ca = getelementptr inbounds nuw i8, ptr %.val275, i64 %i.e
  %.0.copyload.i324 = load i32, ptr %i.ca, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i324) #7, !srcloc !19
  %i.cb = zext i32 %.0.copyload.i324 to i64
  %.val274 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cc = getelementptr inbounds nuw i8, ptr %.val274, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %.0.copyload.i325 = load i32, ptr %i.cd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i325) #7, !srcloc !19
  %.val289 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ce = getelementptr inbounds nuw i8, ptr %.val289, i64 %i.j
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 68
  store i32 %.0.copyload.i325, ptr %i.cf, align 1
  %i.cg = add i32 %.0.copyload.i324, 8
  %i.ch = add nuw nsw i64 %i.j, 64                ; 2 uses
  %.val288 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ci = getelementptr inbounds nuw i8, ptr %.val288, i64 %i.ch
  store i32 %i.cg, ptr %i.ci, align 1
  %.val273 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cj = getelementptr inbounds nuw i8, ptr %.val273, i64 %i.p
  %.0.copyload.i326 = load i32, ptr %i.cj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i326) #7, !srcloc !19
  %i.ck = zext i32 %.0.copyload.i326 to i64
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cl = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %.0.copyload.i327 = load i32, ptr %i.cm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i327) #7, !srcloc !19
  %.val287 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cn = getelementptr inbounds nuw i8, ptr %.val287, i64 %i.j
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 60
  store i32 %.0.copyload.i327, ptr %i.co, align 1
  %i.cp = add i32 %.0.copyload.i326, 8
  %i.cq = add nuw nsw i64 %i.j, 56                ; 2 uses
  %.val286 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cr = getelementptr inbounds nuw i8, ptr %.val286, i64 %i.cq
  store i32 %i.cp, ptr %i.cr, align 1
  %.val305 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cs = getelementptr inbounds nuw i8, ptr %.val305, i64 %i.by
  %.0.copyload.i328 = load i64, ptr %i.cs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i328) #7, !srcloc !22
  %.val311 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %.val311, i64 %i.j
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store i64 %.0.copyload.i328, ptr %i.cu, align 1
  %.val304 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cv = getelementptr inbounds nuw i8, ptr %.val304, i64 %i.ch
  %.0.copyload.i329 = load i64, ptr %i.cv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i329) #7, !srcloc !22
  %.val310 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cw = getelementptr inbounds nuw i8, ptr %.val310, i64 %i.j
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i64 %.0.copyload.i329, ptr %i.cx, align 1
  %.val303 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cy = getelementptr inbounds nuw i8, ptr %.val303, i64 %i.cq
  %.0.copyload.i330 = load i64, ptr %i.cy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i330) #7, !srcloc !22
  %.val309 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cz = getelementptr inbounds nuw i8, ptr %.val309, i64 %i.j
  store i64 %.0.copyload.i330, ptr %i.cz, align 1
  %i.da = add i32 %i.b, -96
  %i.db = add i32 %i.b, -104
  %i.dc = tail call i32 @w2c_hermes_hermes0x3A0x3Abigint0x3A0x3Amultiply0x28hermes0x3A0x3Abigint0x3A0x3AMutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x29(ptr noundef nonnull %0, i32 noundef %i.da, i32 noundef %i.db, i32 noundef %i.c) #7 ; 3 uses
  %.not272 = icmp eq i32 %i.dc, 0
  br i1 %.not272, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dd = load i32, ptr %i.a, align 8, !tbaa !7   ; 2 uses
  %i.de = add i32 %i.dd, -48                      ; 2 uses
  store i32 %i.de, ptr %i.a, align 8, !tbaa !7
  %i.df = icmp ult i32 %i.dc, 5
  br i1 %i.df, label %switch.lookup, label %w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AraiseOnError0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Abigint0x3A0x3AOperationStatus0x29.exit

switch.lookup:                                    ; preds = %bb.g
  %switch.tableidx = add i32 %i.dc, -1            ; 2 uses
  %i.dg = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AasIntN0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20long0x20long0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x29, i64 %i.dg
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.dh = zext nneg i32 %switch.tableidx to i64
  %switch.gep334 = getelementptr inbounds nuw [2 x i8], ptr @switch.table.w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AasIntN0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20long0x20long0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x29.23, i64 %i.dh
  %switch.load335 = load i16, ptr %switch.gep334, align 2
  %switch.ext = zext i16 %switch.load335 to i32
  %i.di = zext i32 %i.de to i64                   ; 4 uses
  %.val114.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dj = getelementptr inbounds nuw i8, ptr %.val114.i, i64 %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  store i32 0, ptr %i.dk, align 1
  %.val124.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dl = getelementptr inbounds nuw i8, ptr %.val124.i, i64 %i.di
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  store i64 %switch.load, ptr %i.dm, align 1
  %.val113.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dn = getelementptr inbounds nuw i8, ptr %.val113.i, i64 %i.di
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store i32 3, ptr %i.do, align 1
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dp = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.di
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store i32 %switch.ext, ptr %i.dq, align 1
  %i.dr = add i32 %i.dd, -40
  %i.ds = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseRangeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %i.dr) #7
  br label %w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AraiseOnError0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Abigint0x3A0x3AOperationStatus0x29.exit

w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AraiseOnError0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Abigint0x3A0x3AOperationStatus0x29.exit: ; preds = %bb.g, %switch.lookup
  %.0.i = phi i32 [ 1, %bb.g ], [ %i.ds, %switch.lookup ]
  %i.dt = zext i32 %1 to i64
  %.val285 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.du = getelementptr inbounds nuw i8, ptr %.val285, i64 %i.dt
  store i32 %.0.i, ptr %i.du, align 1
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.dv = zext i32 %1 to i64                      ; 2 uses
  %.val284 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dw = getelementptr inbounds nuw i8, ptr %.val284, i64 %i.dv
  store i32 1, ptr %i.dw, align 1
  %i.dx = or disjoint i64 %i.bp, -562949953421312
  %.val308 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dy = getelementptr inbounds nuw i8, ptr %.val308, i64 %i.dv
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store i64 %i.dx, ptr %i.dz, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AraiseOnError0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Abigint0x3A0x3AOperationStatus0x29.exit, %bb.d
  store i32 %i.b, ptr %i.a, align 8, !tbaa !7
  ret void
}

declare i32 @w2c_hermes_hermes0x3A0x3Abigint0x3A0x3Amultiply0x28hermes0x3A0x3Abigint0x3A0x3AMutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AleftShift0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  %i.c = add i32 %i.b, -112                       ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 61 uses
  %i.e = zext i32 %3 to i64                       ; 2 uses
  %.val435 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val435, i64 %i.e
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %i.g = zext i32 %.0.copyload.i to i64
  %.val434 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val434, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.0.copyload.i480 = load i32, ptr %i.i, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i480) #7, !srcloc !19
  %i.j = zext i32 %i.c to i64                     ; 22 uses
  %.val454 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %.val454, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  store i32 %.0.copyload.i480, ptr %i.l, align 1
  %i.m = add i32 %.0.copyload.i, 8
  %i.n = add nuw nsw i64 %i.j, 48                 ; 2 uses
  %.val453 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %.val453, i64 %i.n
  store i32 %i.m, ptr %i.o, align 1
  %i.p = zext i32 %4 to i64                       ; 2 uses
  %.val433 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %.val433, i64 %i.p
  %.0.copyload.i481 = load i32, ptr %i.q, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i481) #7, !srcloc !19
  %i.r = zext i32 %.0.copyload.i481 to i64
  %.val432 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %.val432, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.0.copyload.i482 = load i32, ptr %i.t, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i482) #7, !srcloc !19
  %.val452 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.val452, i64 %i.j
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 44
  store i32 %.0.copyload.i482, ptr %i.v, align 1
  %i.w = add i32 %.0.copyload.i481, 8
  %i.x = add nuw nsw i64 %i.j, 40                 ; 2 uses
  %.val451 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %.val451, i64 %i.x
  store i32 %i.w, ptr %i.y, align 1
  %.val467 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %.val467, i64 %i.n
  %.0.copyload.i483 = load i64, ptr %i.z, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i483) #7, !srcloc !22
  %.val479 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %.val479, i64 %i.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store i64 %.0.copyload.i483, ptr %i.ab, align 1
  %.val466 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.val466, i64 %i.x
  %.0.copyload.i484 = load i64, ptr %i.ac, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i484) #7, !srcloc !22
  %i.ad = add nuw nsw i64 %i.j, 24                ; 2 uses
  %.val478 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %.val478, i64 %i.ad
  store i64 %.0.copyload.i484, ptr %i.ae, align 1
  %i.af = load i32, ptr %i.a, align 8, !tbaa !7   ; 4 uses
  %i.ag = add i32 %i.af, -16                      ; 2 uses
  store i32 %i.ag, ptr %i.a, align 8, !tbaa !7
  %.val465 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %.val465, i64 %i.ad
  %.0.copyload.i485 = load i64, ptr %i.ah, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i485) #7, !srcloc !22
  %i.ai = lshr i64 %.0.copyload.i485, 32          ; 4 uses
  %.not = icmp eq i64 %i.ai, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aj = trunc i64 %.0.copyload.i485 to i32      ; 2 uses
  %i.ak = shl nuw nsw i64 %i.ai, 3
  %i.al = add i64 %.0.copyload.i485, 4294967288
  %i.am = add i64 %i.al, %i.ak
  %i.an = and i64 %i.am, 4294967295               ; 4 uses
  %.val464 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %.val464, i64 %i.an
  %.0.copyload.i486 = load i64, ptr %i.ao, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i486) #7, !srcloc !22
  %i.ap = zext i32 %i.ag to i64
  %i.aq = add nuw nsw i64 %i.ap, 8                ; 3 uses
  %.val477 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %.val477, i64 %i.aq
  store i64 -65536, ptr %i.ar, align 1
  %i.as = lshr i64 %.0.copyload.i486, 63
  %i.at = trunc nuw nsw i64 %i.as to i32          ; 5 uses
  %.val463 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %.val463, i64 %i.an
  %.0.copyload.i487 = load i64, ptr %i.au, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i487) #7, !srcloc !22
  %i.av = icmp slt i64 %.0.copyload.i487, 0
  br i1 %i.av, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.not420 = icmp eq i64 %i.ai, 1
  br i1 %.not420, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.aw = add i32 %i.af, -8                       ; 2 uses
  %i.ax = tail call i32 @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AtcCompare0x28unsigned0x20long0x20long0x20const0x2A0x2C0x20unsigned0x20long0x20long0x20const0x2A0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.aj, i32 noundef %i.aw, i32 noundef 1) #7
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val476 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %.val476, i64 %i.aq
  store i64 65536, ptr %i.az, align 1
  %.val462 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ba = getelementptr inbounds nuw i8, ptr %.val462, i64 %i.an
  %.0.copyload.i488 = load i64, ptr %i.ba, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i488) #7, !srcloc !22
  %i.bb = icmp slt i64 %.0.copyload.i488, 0
  br i1 %i.bb, label %bb.i, label %bb.h

bb.f:                                             ; preds = %bb.b
  %.val475 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %.val475, i64 %i.aq
  store i64 65536, ptr %i.bc, align 1
  %.val461 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bd = getelementptr inbounds nuw i8, ptr %.val461, i64 %i.an
  %.0.copyload.i489 = load i64, ptr %i.bd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i489) #7, !srcloc !22
  %i.be = icmp slt i64 %.0.copyload.i489, 0
  br i1 %i.be, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bf = icmp eq i64 %i.ai, 1
  br i1 %i.bf, label %._crit_edge, label %bb.j

._crit_edge:                                      ; preds = %bb.g
  %.pre = add i32 %i.af, -8
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.e
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %i.aw, %bb.e ]
  %i.bg = tail call i32 @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AtcCompare0x28unsigned0x20long0x20long0x20const0x2A0x2C0x20unsigned0x20long0x20long0x20const0x2A0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.aj, i32 noundef %.pre-phi, i32 noundef 1) #7
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.e
  %i.bi = and i64 %.0.copyload.i485, 4294967295
  %.val460 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %.val460, i64 %i.bi
  %.0.copyload.i490 = load i64, ptr %i.bj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i490) #7, !srcloc !22
  %i.bk = sub i64 0, %.0.copyload.i490
  %i.bl = icmp slt i64 %.0.copyload.i486, 0
  %i.bm = select i1 %i.bl, i64 %i.bk, i64 %.0.copyload.i490
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = add i32 %i.bn, 63
  %i.bp = lshr i32 %i.bo, 6
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.d, %bb.c, %bb.a, %bb.i
  %.0415 = phi i32 [ 0, %bb.a ], [ %i.at, %bb.c ], [ %i.at, %bb.d ], [ %i.at, %bb.i ], [ %i.at, %bb.h ], [ %i.at, %bb.g ]
  %.0 = phi i32 [ 0, %bb.a ], [ 129, %bb.c ], [ 129, %bb.d ], [ %i.bp, %bb.i ], [ 129, %bb.h ], [ 129, %bb.g ]
  %.val431 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %.val431, i64 %i.j
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 36
  %.0.copyload.i491 = load i32, ptr %i.br, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i491) #7, !srcloc !19
  store i32 %i.af, ptr %i.a, align 8, !tbaa !7
  %.0415.fr = freeze i32 %.0415
  %.not421 = icmp eq i32 %.0415.fr, 0
  %spec.select = select i1 %.not421, i32 %.0, i32 0
  %i.bs = add i32 %.0.copyload.i491, %spec.select ; 3 uses
  %i.bt = icmp ult i32 %i.bs, 1025
  br i1 %i.bt, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bu = shl nuw nsw i32 %i.bs, 3
  %i.bv = add nuw nsw i32 %i.bu, 8                ; 4 uses
  %i.bw = add i32 %2, 1376
  %i.bx = zext i32 %i.bw to i64
  %.val430 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.by = getelementptr inbounds nuw i8, ptr %.val430, i64 %i.bx
  %.0.copyload.i492 = load i32, ptr %i.by, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i492) #7, !srcloc !19
  %i.bz = add i32 %2, 1372
  %i.ca = zext i32 %i.bz to i64
  %.val429 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cb = getelementptr inbounds nuw i8, ptr %.val429, i64 %i.ca
  %.0.copyload.i493 = load i32, ptr %i.cb, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i493) #7, !srcloc !19
  %i.cc = sub i32 %.0.copyload.i492, %.0.copyload.i493
  %.not422 = icmp ugt i32 %i.bv, %i.cc
  br i1 %.not422, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cd = add i32 %2, 816
  %i.ce = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AallocSlow0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.cd, i32 noundef %i.bv) #7
  br label %bb.o

bb.m:                                             ; preds = %bb.j
  %.val450 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cf = getelementptr inbounds nuw i8, ptr %.val450, i64 %i.j
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 104
  store i32 0, ptr %i.cg, align 1
  %.val474 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ch = getelementptr inbounds nuw i8, ptr %.val474, i64 %i.j
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 96
  store i64 120259084289, ptr %i.ci, align 1
  %.val449 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cj = getelementptr inbounds nuw i8, ptr %.val449, i64 %i.j
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 80
  store i32 3, ptr %i.ck, align 1
  %.val448 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cl = getelementptr inbounds nuw i8, ptr %.val448, i64 %i.j
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  store i32 55442, ptr %i.cm, align 1
  %i.cn = add i32 %i.b, -40
  %i.co = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseRangeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %i.cn) #7 ; 0 uses
  %i.cp = zext i32 %1 to i64
  %.val447 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cq = getelementptr inbounds nuw i8, ptr %.val447, i64 %i.cp
  store i32 0, ptr %i.cq, align 1
  br label %bb.r

bb.n:                                             ; preds = %bb.k
  %i.cr = add i32 %.0.copyload.i493, %i.bv
  %i.cs = zext i32 %2 to i64
  %.val446 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %.val446, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 1372
  store i32 %i.cr, ptr %i.cu, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %.0416 = phi i32 [ %.0.copyload.i493, %bb.n ], [ %i.ce, %bb.l ] ; 3 uses
  %i.cv = zext i32 %.0416 to i64                  ; 3 uses
  %.val445 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cw = getelementptr inbounds nuw i8, ptr %.val445, i64 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  store i32 %i.bs, ptr %i.cx, align 1
  %i.cy = or disjoint i32 %i.bv, 1291845632
  %.val444 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cz = getelementptr inbounds nuw i8, ptr %.val444, i64 %i.cv
  store i32 %i.cy, ptr %i.cz, align 1
  %i.da = add i32 %.0416, 4
  %.val443 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.db = getelementptr inbounds nuw i8, ptr %.val443, i64 %i.j
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 76
  store i32 %i.da, ptr %i.dc, align 1
  %i.dd = add i32 %.0416, 8
  %i.de = add nuw nsw i64 %i.j, 72                ; 2 uses
  %.val442 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.df = getelementptr inbounds nuw i8, ptr %.val442, i64 %i.de
  store i32 %i.dd, ptr %i.df, align 1
  %.val428 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dg = getelementptr inbounds nuw i8, ptr %.val428, i64 %i.e
  %.0.copyload.i494 = load i32, ptr %i.dg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i494) #7, !srcloc !19
  %i.dh = zext i32 %.0.copyload.i494 to i64
  %.val427 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.di = getelementptr inbounds nuw i8, ptr %.val427, i64 %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %.0.copyload.i495 = load i32, ptr %i.dj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i495) #7, !srcloc !19
  %.val441 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dk = getelementptr inbounds nuw i8, ptr %.val441, i64 %i.j
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 68
  store i32 %.0.copyload.i495, ptr %i.dl, align 1
  %i.dm = add i32 %.0.copyload.i494, 8
  %i.dn = add nuw nsw i64 %i.j, 64                ; 2 uses
  %.val440 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.do = getelementptr inbounds nuw i8, ptr %.val440, i64 %i.dn
  store i32 %i.dm, ptr %i.do, align 1
  %.val426 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dp = getelementptr inbounds nuw i8, ptr %.val426, i64 %i.p
  %.0.copyload.i496 = load i32, ptr %i.dp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i496) #7, !srcloc !19
  %i.dq = zext i32 %.0.copyload.i496 to i64
  %.val425 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dr = getelementptr inbounds nuw i8, ptr %.val425, i64 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %.0.copyload.i497 = load i32, ptr %i.ds, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i497) #7, !srcloc !19
  %.val439 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dt = getelementptr inbounds nuw i8, ptr %.val439, i64 %i.j
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 60
  store i32 %.0.copyload.i497, ptr %i.du, align 1
  %i.dv = add i32 %.0.copyload.i496, 8
  %i.dw = add nuw nsw i64 %i.j, 56                ; 2 uses
  %.val438 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dx = getelementptr inbounds nuw i8, ptr %.val438, i64 %i.dw
  store i32 %i.dv, ptr %i.dx, align 1
  %.val459 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dy = getelementptr inbounds nuw i8, ptr %.val459, i64 %i.de
  %.0.copyload.i498 = load i64, ptr %i.dy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i498) #7, !srcloc !22
  %i.dz = add nuw nsw i64 %i.j, 16                ; 2 uses
  %.val473 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ea = getelementptr inbounds nuw i8, ptr %.val473, i64 %i.dz
  store i64 %.0.copyload.i498, ptr %i.ea, align 1
  %.val458 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eb = getelementptr inbounds nuw i8, ptr %.val458, i64 %i.dn
  %.0.copyload.i499 = load i64, ptr %i.eb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i499) #7, !srcloc !22
  %i.ec = add nuw nsw i64 %i.j, 8                 ; 2 uses
  %.val472 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ed = getelementptr inbounds nuw i8, ptr %.val472, i64 %i.ec
  store i64 %.0.copyload.i499, ptr %i.ed, align 1
  %.val457 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ee = getelementptr inbounds nuw i8, ptr %.val457, i64 %i.dw
  %.0.copyload.i500 = load i64, ptr %i.ee, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i500) #7, !srcloc !22
  %.val471 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ef = getelementptr inbounds nuw i8, ptr %.val471, i64 %i.j
  store i64 %.0.copyload.i500, ptr %i.ef, align 1
  %i.eg = load i32, ptr %i.a, align 8, !tbaa !7   ; 3 uses
  %i.eh = add i32 %i.eg, -16                      ; 3 uses
  store i32 %i.eh, ptr %i.a, align 8, !tbaa !7
  %.val424 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ei = getelementptr inbounds nuw i8, ptr %.val424, i64 %i.j
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 20
  %.0.copyload.i501 = load i32, ptr %i.ej, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i501) #7, !srcloc !19
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ek = getelementptr inbounds nuw i8, ptr %.val, i64 %i.dz
  %.0.copyload.i502 = load i32, ptr %i.ek, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i502) #7, !srcloc !19
  %.val456 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.el = getelementptr inbounds nuw i8, ptr %.val456, i64 %i.ec
  %.0.copyload.i503 = load i64, ptr %i.el, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i503) #7, !srcloc !22
  %i.em = zext i32 %i.eh to i64                   ; 2 uses
  %.val470 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.en = getelementptr inbounds nuw i8, ptr %.val470, i64 %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store i64 %.0.copyload.i503, ptr %i.eo, align 1
  %.val455 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ep = getelementptr inbounds nuw i8, ptr %.val455, i64 %i.j
  %.0.copyload.i504 = load i64, ptr %i.ep, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i504) #7, !srcloc !22
  %.val469 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eq = getelementptr inbounds nuw i8, ptr %.val469, i64 %i.em
  store i64 %.0.copyload.i503, ptr %i.eq, align 1
  %i.er = tail call i32 @w2c_hermes_hermes0x3A0x3Abigint0x3A0x3A0x28anonymous0x20namespace0x290x3A0x3AshiftImpl0x28hermes0x3A0x3Abigint0x3A0x3A0x28anonymous0x20namespace0x290x3A0x3AShiftOpIs0x2C0x20hermes0x3A0x3Abigint0x3A0x3AMutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x29(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %.0.copyload.i502, i32 noundef %.0.copyload.i501, i32 noundef %i.eh, i64 noundef %.0.copyload.i504) #7 ; 3 uses
  %.not423 = icmp eq i32 %i.er, 0
  br i1 %.not423, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.es = add i32 %i.eg, -48                      ; 2 uses
  store i32 %i.es, ptr %i.a, align 8, !tbaa !7
  %i.et = icmp ult i32 %i.er, 5
  br i1 %i.et, label %switch.lookup, label %w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AraiseOnError0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Abigint0x3A0x3AOperationStatus0x29.exit

switch.lookup:                                    ; preds = %bb.p
  %switch.tableidx = add i32 %i.er, -1            ; 2 uses
  %i.eu = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AasIntN0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20long0x20long0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x29, i64 %i.eu
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.ev = zext nneg i32 %switch.tableidx to i64
  %switch.gep509 = getelementptr inbounds nuw [2 x i8], ptr @switch.table.w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AasIntN0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20long0x20long0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x29.23, i64 %i.ev
  %switch.load510 = load i16, ptr %switch.gep509, align 2
  %switch.ext = zext i16 %switch.load510 to i32
  %i.ew = zext i32 %i.es to i64                   ; 4 uses
  %.val114.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ex = getelementptr inbounds nuw i8, ptr %.val114.i, i64 %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 40
  store i32 0, ptr %i.ey, align 1
  %.val124.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ez = getelementptr inbounds nuw i8, ptr %.val124.i, i64 %i.ew
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  store i64 %switch.load, ptr %i.fa, align 1
  %.val113.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fb = getelementptr inbounds nuw i8, ptr %.val113.i, i64 %i.ew
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store i32 3, ptr %i.fc, align 1
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fd = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ew
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store i32 %switch.ext, ptr %i.fe, align 1
  %i.ff = add i32 %i.eg, -40
  %i.fg = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseRangeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %i.ff) #7
  br label %w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AraiseOnError0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Abigint0x3A0x3AOperationStatus0x29.exit

w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AraiseOnError0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Abigint0x3A0x3AOperationStatus0x29.exit: ; preds = %bb.p, %switch.lookup
  %.0.i = phi i32 [ 1, %bb.p ], [ %i.fg, %switch.lookup ]
  %i.fh = zext i32 %1 to i64
  %.val437 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fi = getelementptr inbounds nuw i8, ptr %.val437, i64 %i.fh
  store i32 %.0.i, ptr %i.fi, align 1
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.fj = zext i32 %1 to i64                      ; 2 uses
  %.val436 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fk = getelementptr inbounds nuw i8, ptr %.val436, i64 %i.fj
  store i32 1, ptr %i.fk, align 1
  %i.fl = or disjoint i64 %i.cv, -562949953421312
  %.val468 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fm = getelementptr inbounds nuw i8, ptr %.val468, i64 %i.fj
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store i64 %i.fl, ptr %i.fn, align 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AraiseOnError0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Abigint0x3A0x3AOperationStatus0x29.exit, %bb.m
  store i32 %i.b, ptr %i.a, align 8, !tbaa !7
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3Adivide0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  %i.c = add i32 %i.b, -112                       ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 56 uses
  %i.e = zext i32 %3 to i64                       ; 2 uses
  %.val338 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val338, i64 %i.e
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %i.g = zext i32 %.0.copyload.i to i64
  %.val337 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val337, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.0.copyload.i377 = load i32, ptr %i.i, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i377) #7, !srcloc !19
  %i.j = zext i32 %i.c to i64                     ; 23 uses
  %.val358 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %.val358, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  store i32 %.0.copyload.i377, ptr %i.l, align 1
  %i.m = add i32 %.0.copyload.i, 8
  %i.n = add nuw nsw i64 %i.j, 48                 ; 2 uses
  %.val357 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %.val357, i64 %i.n
  store i32 %i.m, ptr %i.o, align 1
  %i.p = zext i32 %4 to i64                       ; 2 uses
  %.val336 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %.val336, i64 %i.p
  %.0.copyload.i378 = load i32, ptr %i.q, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i378) #7, !srcloc !19
  %i.r = zext i32 %.0.copyload.i378 to i64
  %.val335 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %.val335, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.0.copyload.i379 = load i32, ptr %i.t, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i379) #7, !srcloc !19
  %.val356 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.val356, i64 %i.j
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 44
  store i32 %.0.copyload.i379, ptr %i.v, align 1
  %i.w = add i32 %.0.copyload.i378, 8
  %i.x = add nuw nsw i64 %i.j, 40                 ; 2 uses
  %.val355 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %.val355, i64 %i.x
  store i32 %i.w, ptr %i.y, align 1
  %.val365 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %.val365, i64 %i.n
  %.0.copyload.i380 = load i64, ptr %i.z, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i380) #7, !srcloc !22
  %.val376 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %.val376, i64 %i.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store i64 %.0.copyload.i380, ptr %i.ab, align 1
  %.val364 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.val364, i64 %i.x
  %.0.copyload.i381 = load i64, ptr %i.ac, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i381) #7, !srcloc !22
  %.val375 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %.val375, i64 %i.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i64 %.0.copyload.i381, ptr %i.ae, align 1
  %.val334 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %.val334, i64 %i.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 36
  %.0.copyload.i382 = load i32, ptr %i.ag, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i382) #7, !srcloc !19
  %.val333 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %.val333, i64 %i.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  %.0.copyload.i383 = load i32, ptr %i.ai, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i383) #7, !srcloc !19
  %i.aj = tail call i32 @llvm.umax.i32(i32 %.0.copyload.i382, i32 %.0.copyload.i383)
  %i.ak = add i32 %i.aj, 1                        ; 3 uses
  %i.al = icmp ult i32 %i.ak, 1025
  br i1 %i.al, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.am = shl nuw nsw i32 %i.ak, 3
  %i.an = add nuw nsw i32 %i.am, 8                ; 4 uses
  %i.ao = add i32 %2, 1376
  %i.ap = zext i32 %i.ao to i64
  %.val332 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %.val332, i64 %i.ap
  %.0.copyload.i384 = load i32, ptr %i.aq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i384) #7, !srcloc !19
  %i.ar = add i32 %2, 1372
  %i.as = zext i32 %i.ar to i64
  %.val331 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %.val331, i64 %i.as
  %.0.copyload.i385 = load i32, ptr %i.at, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i385) #7, !srcloc !19
  %i.au = sub i32 %.0.copyload.i384, %.0.copyload.i385
  %.not = icmp ugt i32 %i.an, %i.au
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.av = add i32 %2, 816
  %i.aw = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AallocSlow0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.av, i32 noundef %i.an) #7
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %.val354 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %.val354, i64 %i.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 104
  store i32 0, ptr %i.ay, align 1
  %.val374 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %.val374, i64 %i.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 96
  store i64 120259084289, ptr %i.ba, align 1
  %.val353 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bb = getelementptr inbounds nuw i8, ptr %.val353, i64 %i.j
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  store i32 3, ptr %i.bc, align 1
  %.val352 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bd = getelementptr inbounds nuw i8, ptr %.val352, i64 %i.j
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  store i32 55442, ptr %i.be, align 1
  %i.bf = add i32 %i.b, -40
  %i.bg = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseRangeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %i.bf) #7 ; 0 uses
  %i.bh = zext i32 %1 to i64
  %.val351 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %.val351, i64 %i.bh
  store i32 0, ptr %i.bi, align 1
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.bj = add i32 %.0.copyload.i385, %i.an
  %i.bk = zext i32 %2 to i64
  %.val350 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %.val350, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1372
  store i32 %i.bj, ptr %i.bm, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.0 = phi i32 [ %.0.copyload.i385, %bb.e ], [ %i.aw, %bb.c ] ; 3 uses
  %i.bn = zext i32 %.0 to i64                     ; 3 uses
  %.val349 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %.val349, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store i32 %i.ak, ptr %i.bp, align 1
  %i.bq = or disjoint i32 %i.an, 1291845632
  %.val348 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.br = getelementptr inbounds nuw i8, ptr %.val348, i64 %i.bn
  store i32 %i.bq, ptr %i.br, align 1
  %i.bs = add i32 %.0, 4
  %.val347 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bt = getelementptr inbounds nuw i8, ptr %.val347, i64 %i.j
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 76
  store i32 %i.bs, ptr %i.bu, align 1
  %i.bv = add i32 %.0, 8
  %i.bw = add nuw nsw i64 %i.j, 72                ; 2 uses
  %.val346 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bx = getelementptr inbounds nuw i8, ptr %.val346, i64 %i.bw
  store i32 %i.bv, ptr %i.bx, align 1
  %.val330 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.by = getelementptr inbounds nuw i8, ptr %.val330, i64 %i.e
  %.0.copyload.i386 = load i32, ptr %i.by, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i386) #7, !srcloc !19
  %i.bz = zext i32 %.0.copyload.i386 to i64
  %.val329 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ca = getelementptr inbounds nuw i8, ptr %.val329, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %.0.copyload.i387 = load i32, ptr %i.cb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i387) #7, !srcloc !19
  %.val345 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cc = getelementptr inbounds nuw i8, ptr %.val345, i64 %i.j
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 68
  store i32 %.0.copyload.i387, ptr %i.cd, align 1
  %i.ce = add i32 %.0.copyload.i386, 8
  %i.cf = add nuw nsw i64 %i.j, 64                ; 2 uses
  %.val344 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cg = getelementptr inbounds nuw i8, ptr %.val344, i64 %i.cf
  store i32 %i.ce, ptr %i.cg, align 1
  %.val328 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ch = getelementptr inbounds nuw i8, ptr %.val328, i64 %i.p
  %.0.copyload.i388 = load i32, ptr %i.ch, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i388) #7, !srcloc !19
  %i.ci = zext i32 %.0.copyload.i388 to i64
  %.val327 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cj = getelementptr inbounds nuw i8, ptr %.val327, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %.0.copyload.i389 = load i32, ptr %i.ck, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i389) #7, !srcloc !19
  %.val343 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cl = getelementptr inbounds nuw i8, ptr %.val343, i64 %i.j
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 60
  store i32 %.0.copyload.i389, ptr %i.cm, align 1
  %i.cn = add i32 %.0.copyload.i388, 8
  %i.co = add nuw nsw i64 %i.j, 56                ; 2 uses
  %.val342 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cp = getelementptr inbounds nuw i8, ptr %.val342, i64 %i.co
  store i32 %i.cn, ptr %i.cp, align 1
  %.val363 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cq = getelementptr inbounds nuw i8, ptr %.val363, i64 %i.bw
  %.0.copyload.i390 = load i64, ptr %i.cq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i390) #7, !srcloc !22
  %i.cr = add nuw nsw i64 %i.j, 16                ; 2 uses
  %.val373 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cs = getelementptr inbounds nuw i8, ptr %.val373, i64 %i.cr
  store i64 %.0.copyload.i390, ptr %i.cs, align 1
  %.val362 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %.val362, i64 %i.cf
  %.0.copyload.i391 = load i64, ptr %i.ct, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i391) #7, !srcloc !22
  %i.cu = add nuw nsw i64 %i.j, 8                 ; 2 uses
  %.val372 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cv = getelementptr inbounds nuw i8, ptr %.val372, i64 %i.cu
  store i64 %.0.copyload.i391, ptr %i.cv, align 1
  %.val361 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cw = getelementptr inbounds nuw i8, ptr %.val361, i64 %i.co
  %.0.copyload.i392 = load i64, ptr %i.cw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i392) #7, !srcloc !22
  %.val371 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cx = getelementptr inbounds nuw i8, ptr %.val371, i64 %i.j
  store i64 %.0.copyload.i392, ptr %i.cx, align 1
  %i.cy = load i32, ptr %i.a, align 8, !tbaa !7   ; 4 uses
  %i.cz = add i32 %i.cy, -48                      ; 3 uses
  store i32 %i.cz, ptr %i.a, align 8, !tbaa !7
  %i.da = zext i32 %i.cz to i64                   ; 9 uses
  %.val341 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.db = getelementptr inbounds nuw i8, ptr %.val341, i64 %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 44
  store i32 0, ptr %i.dc, align 1
  %.val326 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dd = getelementptr inbounds nuw i8, ptr %.val326, i64 %i.j
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 20
  %.0.copyload.i393 = load i32, ptr %i.de, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i393) #7, !srcloc !19
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.df = getelementptr inbounds nuw i8, ptr %.val, i64 %i.cr
  %.0.copyload.i394 = load i32, ptr %i.df, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i394) #7, !srcloc !19
  %.val360 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dg = getelementptr inbounds nuw i8, ptr %.val360, i64 %i.cu
  %.0.copyload.i395 = load i64, ptr %i.dg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i395) #7, !srcloc !22
  %.val370 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dh = getelementptr inbounds nuw i8, ptr %.val370, i64 %i.da
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  store i64 %.0.copyload.i395, ptr %i.di, align 1
  %.val359 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dj = getelementptr inbounds nuw i8, ptr %.val359, i64 %i.j
  %.0.copyload.i396 = load i64, ptr %i.dj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i396) #7, !srcloc !22
  %.val369 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dk = getelementptr inbounds nuw i8, ptr %.val369, i64 %i.da
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  store i64 %.0.copyload.i396, ptr %i.dl, align 1
  %.val368 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dm = getelementptr inbounds nuw i8, ptr %.val368, i64 %i.da
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store i64 %.0.copyload.i395, ptr %i.dn, align 1
  %.val367 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.do = getelementptr inbounds nuw i8, ptr %.val367, i64 %i.da
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store i64 %.0.copyload.i396, ptr %i.dp, align 1
  %i.dq = add i32 %i.cy, -4
  %i.dr = add i32 %i.cy, -32
  %i.ds = add i32 %i.cy, -40                      ; 2 uses
  %i.dt = tail call i32 @w2c_hermes_hermes0x3A0x3Abigint0x3A0x3A0x28anonymous0x20namespace0x290x3A0x3Adiv_rem0x3A0x3Acompute0x28hermes0x3A0x3Abigint0x3A0x3AMutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AMutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i394, i32 noundef %.0.copyload.i393, i32 noundef 0, i32 noundef %i.dq, i32 noundef %i.dr, i32 noundef %i.ds) #7 ; 3 uses
  %.not325 = icmp eq i32 %i.dt, 0
  br i1 %.not325, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.cz, ptr %i.a, align 8, !tbaa !7
  %i.du = icmp ult i32 %i.dt, 5
  br i1 %i.du, label %switch.lookup, label %w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AraiseOnError0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Abigint0x3A0x3AOperationStatus0x29.exit

switch.lookup:                                    ; preds = %bb.g
  %switch.tableidx = add i32 %i.dt, -1            ; 2 uses
  %i.dv = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AasIntN0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20long0x20long0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x29, i64 %i.dv
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.dw = zext nneg i32 %switch.tableidx to i64
  %switch.gep400 = getelementptr inbounds nuw [2 x i8], ptr @switch.table.w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AasIntN0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20long0x20long0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x29.23, i64 %i.dw
  %switch.load401 = load i16, ptr %switch.gep400, align 2
  %switch.ext = zext i16 %switch.load401 to i32
  %.val114.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dx = getelementptr inbounds nuw i8, ptr %.val114.i, i64 %i.da
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 40
  store i32 0, ptr %i.dy, align 1
  %.val124.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dz = getelementptr inbounds nuw i8, ptr %.val124.i, i64 %i.da
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  store i64 %switch.load, ptr %i.ea, align 1
  %.val113.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eb = getelementptr inbounds nuw i8, ptr %.val113.i, i64 %i.da
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store i32 3, ptr %i.ec, align 1
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ed = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.da
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store i32 %switch.ext, ptr %i.ee, align 1
  %i.ef = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseRangeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %i.ds) #7
  br label %w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AraiseOnError0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Abigint0x3A0x3AOperationStatus0x29.exit

w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AraiseOnError0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Abigint0x3A0x3AOperationStatus0x29.exit: ; preds = %bb.g, %switch.lookup
  %.0.i = phi i32 [ 1, %bb.g ], [ %i.ef, %switch.lookup ]
  %i.eg = zext i32 %1 to i64
  %.val340 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eh = getelementptr inbounds nuw i8, ptr %.val340, i64 %i.eg
  store i32 %.0.i, ptr %i.eh, align 1
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ei = zext i32 %1 to i64                      ; 2 uses
  %.val339 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ej = getelementptr inbounds nuw i8, ptr %.val339, i64 %i.ei
  store i32 1, ptr %i.ej, align 1
  %i.ek = or disjoint i64 %i.bn, -562949953421312
  %.val366 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.el = getelementptr inbounds nuw i8, ptr %.val366, i64 %i.ei
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store i64 %i.ek, ptr %i.em, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AraiseOnError0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Abigint0x3A0x3AOperationStatus0x29.exit, %bb.d
  store i32 %i.b, ptr %i.a, align 8, !tbaa !7
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AbitwiseXOR0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  %i.c = add i32 %i.b, -112                       ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 75 uses
  %i.e = zext i32 %3 to i64                       ; 2 uses
  %.val657 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val657, i64 %i.e
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %i.g = zext i32 %.0.copyload.i to i64
  %.val656 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val656, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.0.copyload.i712 = load i32, ptr %i.i, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i712) #7, !srcloc !19
  %i.j = zext i32 %i.c to i64                     ; 24 uses
  %.val680 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %.val680, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  store i32 %.0.copyload.i712, ptr %i.l, align 1
  %i.m = add i32 %.0.copyload.i, 8
  %i.n = add nuw nsw i64 %i.j, 48                 ; 2 uses
  %.val679 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %.val679, i64 %i.n
  store i32 %i.m, ptr %i.o, align 1
  %i.p = zext i32 %4 to i64                       ; 2 uses
  %.val655 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %.val655, i64 %i.p
  %.0.copyload.i713 = load i32, ptr %i.q, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i713) #7, !srcloc !19
  %i.r = zext i32 %.0.copyload.i713 to i64
  %.val654 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %.val654, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.0.copyload.i714 = load i32, ptr %i.t, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i714) #7, !srcloc !19
  %.val678 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.val678, i64 %i.j
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 44
  store i32 %.0.copyload.i714, ptr %i.v, align 1
  %i.w = add i32 %.0.copyload.i713, 8
  %i.x = add nuw nsw i64 %i.j, 40                 ; 2 uses
  %.val677 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %.val677, i64 %i.x
  store i32 %i.w, ptr %i.y, align 1
  %.val699 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %.val699, i64 %i.n
  %.0.copyload.i715 = load i64, ptr %i.z, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i715) #7, !srcloc !22
  %.val711 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %.val711, i64 %i.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store i64 %.0.copyload.i715, ptr %i.ab, align 1
  %.val698 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.val698, i64 %i.x
  %.0.copyload.i716 = load i64, ptr %i.ac, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i716) #7, !srcloc !22
  %.val710 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %.val710, i64 %i.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i64 %.0.copyload.i716, ptr %i.ae, align 1
  %.val653 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %.val653, i64 %i.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 36
  %.0.copyload.i717 = load i32, ptr %i.ag, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i717) #7, !srcloc !19
  %.val652 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %.val652, i64 %i.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  %.0.copyload.i718 = load i32, ptr %i.ai, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i718) #7, !srcloc !19
  %i.aj = tail call i32 @llvm.umax.i32(i32 %.0.copyload.i717, i32 %.0.copyload.i718) ; 3 uses
  %i.ak = icmp ult i32 %i.aj, 1025
  br i1 %i.ak, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.al = shl nuw nsw i32 %i.aj, 3
  %i.am = add nuw nsw i32 %i.al, 8                ; 4 uses
  %i.an = add i32 %2, 1376
  %i.ao = zext i32 %i.an to i64
  %.val651 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %.val651, i64 %i.ao
  %.0.copyload.i719 = load i32, ptr %i.ap, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i719) #7, !srcloc !19
  %i.aq = add i32 %2, 1372
  %i.ar = zext i32 %i.aq to i64
  %.val650 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %.val650, i64 %i.ar
  %.0.copyload.i720 = load i32, ptr %i.as, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i720) #7, !srcloc !19
  %i.at = sub i32 %.0.copyload.i719, %.0.copyload.i720
  %.not = icmp ugt i32 %i.am, %i.at
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.au = add i32 %2, 816
  %i.av = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AallocSlow0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.au, i32 noundef %i.am) #7
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %.val676 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %.val676, i64 %i.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 104
  store i32 0, ptr %i.ax, align 1
  %.val709 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %.val709, i64 %i.j
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 96
  store i64 120259084289, ptr %i.az, align 1
  %.val675 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ba = getelementptr inbounds nuw i8, ptr %.val675, i64 %i.j
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 80
  store i32 3, ptr %i.bb, align 1
  %.val674 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %.val674, i64 %i.j
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 72
  store i32 55442, ptr %i.bd, align 1
  %i.be = add i32 %i.b, -40
  %i.bf = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseRangeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %i.be) #7 ; 0 uses
  %i.bg = zext i32 %1 to i64
  %.val673 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bh = getelementptr inbounds nuw i8, ptr %.val673, i64 %i.bg
  store i32 0, ptr %i.bh, align 1
  br label %bb.v

bb.e:                                             ; preds = %bb.b
  %i.bi = add i32 %.0.copyload.i720, %i.am
  %i.bj = zext i32 %2 to i64
  %.val672 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %.val672, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1372
  store i32 %i.bi, ptr %i.bl, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.0615 = phi i32 [ %.0.copyload.i720, %bb.e ], [ %i.av, %bb.c ] ; 3 uses
  %i.bm = zext i32 %.0615 to i64                  ; 3 uses
  %.val671 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bn = getelementptr inbounds nuw i8, ptr %.val671, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store i32 %i.aj, ptr %i.bo, align 1
  %i.bp = or disjoint i32 %i.am, 1291845632
  %.val670 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %.val670, i64 %i.bm
  store i32 %i.bp, ptr %i.bq, align 1
  %i.br = add i32 %.0615, 4
  %.val669 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %.val669, i64 %i.j
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 76
  store i32 %i.br, ptr %i.bt, align 1
  %i.bu = add i32 %.0615, 8
  %i.bv = add nuw nsw i64 %i.j, 72                ; 2 uses
  %.val668 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bw = getelementptr inbounds nuw i8, ptr %.val668, i64 %i.bv
  store i32 %i.bu, ptr %i.bw, align 1
  %.val649 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bx = getelementptr inbounds nuw i8, ptr %.val649, i64 %i.e
  %.0.copyload.i721 = load i32, ptr %i.bx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i721) #7, !srcloc !19
  %i.by = zext i32 %.0.copyload.i721 to i64
  %.val648 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bz = getelementptr inbounds nuw i8, ptr %.val648, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %.0.copyload.i722 = load i32, ptr %i.ca, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i722) #7, !srcloc !19
  %.val667 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cb = getelementptr inbounds nuw i8, ptr %.val667, i64 %i.j
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 68
  store i32 %.0.copyload.i722, ptr %i.cc, align 1
end_hunk_4
begin_hunk_5_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AasIntN0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20long0x20long0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x29:bb.a
  %i.p = add i32 %i.b, -88
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AfromBytes0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20llvh0x3A0x3AArrayRef0x3Cunsigned0x20char0x3E0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.p)
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.q = zext i32 %4 to i64                       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val338, i64 %i.q
  %.0.copyload.i357 = load i32, ptr %i.r, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i357) #7, !srcloc !19
  %i.s = zext i32 %.0.copyload.i357 to i64
  %.val323 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %.val323, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %.0.copyload.i358 = load i32, ptr %i.u, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i358) #7, !srcloc !19
  %i.v = zext i32 %i.c to i64                     ; 12 uses
  %.val335 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %.val335, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 44
  store i32 %.0.copyload.i358, ptr %i.x, align 1
  %i.y = add i32 %.0.copyload.i357, 8
  %i.z = add nuw nsw i64 %i.v, 40                 ; 2 uses
  %.val334 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %.val334, i64 %i.z
  store i32 %i.y, ptr %i.aa, align 1
  %.val341 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %.val341, i64 %i.z
  %.0.copyload.i359 = load i64, ptr %i.ab, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i359) #7, !srcloc !22
  %.val353 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.val353, i64 %i.v
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store i64 %.0.copyload.i359, ptr %i.ad, align 1
  %i.ae = add i64 %3, 63
  %i.af = lshr i64 %i.ae, 6
  %i.ag = and i64 %i.af, 67108863                 ; 2 uses
  %.val356 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %.val356, i64 %i.v
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 36
  %.0.copyload.i360 = load i32, ptr %i.ai, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i360) #7, !srcloc !40
  %i.aj = zext i32 %.0.copyload.i360 to i64
  %i.ak = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.aj) ; 2 uses
  %i.al = trunc nuw nsw i64 %i.ak to i32          ; 2 uses
  %i.am = icmp samesign ult i64 %i.ak, 1025
  br i1 %i.am, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.an = shl nuw nsw i32 %i.al, 3
  %i.ao = add nuw nsw i32 %i.an, 8                ; 4 uses
  %i.ap = add i32 %2, 1376
  %i.aq = zext i32 %i.ap to i64
  %.val322 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %.val322, i64 %i.aq
  %.0.copyload.i361 = load i32, ptr %i.ar, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i361) #7, !srcloc !19
  %i.as = add i32 %2, 1372
  %i.at = zext i32 %i.as to i64
  %.val321 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %.val321, i64 %i.at
  %.0.copyload.i362 = load i32, ptr %i.au, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i362) #7, !srcloc !19
  %i.av = sub i32 %.0.copyload.i361, %.0.copyload.i362
  %.not319 = icmp ugt i32 %i.ao, %i.av
  br i1 %.not319, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.aw = add i32 %2, 816
  %i.ax = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AallocSlow0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.aw, i32 noundef %i.ao) #7
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %.val333 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %.val333, i64 %i.v
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 80
  store i32 0, ptr %i.az, align 1
  %.val352 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ba = getelementptr inbounds nuw i8, ptr %.val352, i64 %i.v
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  store i64 120259084289, ptr %i.bb, align 1
  %.val332 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %.val332, i64 %i.v
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  store i32 3, ptr %i.bd, align 1
  %.val331 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %.val331, i64 %i.v
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  store i32 55442, ptr %i.bf, align 1
  %i.bg = add i32 %i.b, -48
  %i.bh = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseRangeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %i.bg) #7 ; 0 uses
  %i.bi = zext i32 %1 to i64
  %.val330 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %.val330, i64 %i.bi
  store i32 0, ptr %i.bj, align 1
  br label %bb.k

bb.g:                                             ; preds = %bb.d
  %i.bk = add i32 %.0.copyload.i362, %i.ao
  %i.bl = zext i32 %2 to i64
  %.val329 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bm = getelementptr inbounds nuw i8, ptr %.val329, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1372
  store i32 %i.bk, ptr %i.bn, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.0 = phi i32 [ %.0.copyload.i362, %bb.g ], [ %i.ax, %bb.e ] ; 3 uses
  %i.bo = zext i32 %.0 to i64                     ; 3 uses
  %.val328 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bp = getelementptr inbounds nuw i8, ptr %.val328, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  store i32 %i.al, ptr %i.bq, align 1
  %i.br = or disjoint i32 %i.ao, 1291845632
  %.val327 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %.val327, i64 %i.bo
  store i32 %i.br, ptr %i.bs, align 1
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bt = getelementptr inbounds nuw i8, ptr %.val, i64 %i.q
  %.0.copyload.i363 = load i32, ptr %i.bt, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i363) #7, !srcloc !19
  %i.bu = zext i32 %.0.copyload.i363 to i64
  %.val355 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bv = getelementptr inbounds nuw i8, ptr %.val355, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %.0.copyload.i364 = load i32, ptr %i.bw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i364) #7, !srcloc !40
  %i.bx = zext i32 %.0.copyload.i364 to i64
  %i.by = add i32 %.0, 8
  %i.bz = zext i32 %i.by to i64
  %i.ca = add i32 %.0, 4
  %i.cb = zext i32 %i.ca to i64
  %i.cc = shl nuw i64 %i.cb, 32
  %i.cd = or disjoint i64 %i.cc, %i.bz            ; 2 uses
  %i.ce = add nuw nsw i64 %i.v, 24                ; 2 uses
  %.val351 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cf = getelementptr inbounds nuw i8, ptr %.val351, i64 %i.ce
  store i64 %i.cd, ptr %i.cf, align 1
  %.val350 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cg = getelementptr inbounds nuw i8, ptr %.val350, i64 %i.v
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  store i64 %i.cd, ptr %i.ch, align 1
  %i.ci = add i32 %.0.copyload.i363, 8
  %i.cj = zext i32 %i.ci to i64
  %i.ck = shl nuw i64 %i.bx, 32
  %i.cl = or disjoint i64 %i.ck, %i.cj            ; 2 uses
  %.val349 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cm = getelementptr inbounds nuw i8, ptr %.val349, i64 %i.v
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 88
  store i64 %i.cl, ptr %i.cn, align 1
  %i.co = add nuw nsw i64 %i.v, 16                ; 2 uses
  %.val348 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cp = getelementptr inbounds nuw i8, ptr %.val348, i64 %i.co
  store i64 %i.cl, ptr %i.cp, align 1
  %i.cq = load i32, ptr %i.a, align 8, !tbaa !7   ; 4 uses
  %i.cr = add i32 %i.cq, -32                      ; 3 uses
  store i32 %i.cr, ptr %i.a, align 8, !tbaa !7
  %.val340 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cs = getelementptr inbounds nuw i8, ptr %.val340, i64 %i.ce
  %.0.copyload.i365 = load i64, ptr %i.cs, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i365) #7, !srcloc !22
  %.val339 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %.val339, i64 %i.co
  %.0.copyload.i366 = load i64, ptr %i.ct, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i366) #7, !srcloc !22
  %i.cu = zext i32 %i.cr to i64                   ; 4 uses
  %.val347 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cv = getelementptr inbounds nuw i8, ptr %.val347, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store i64 %.0.copyload.i366, ptr %i.cw, align 1
  %.val346 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cx = getelementptr inbounds nuw i8, ptr %.val346, i64 %i.cu
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  store i64 %.0.copyload.i365, ptr %i.cy, align 1
  %.val345 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cz = getelementptr inbounds nuw i8, ptr %.val345, i64 %i.cu
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i64 %.0.copyload.i365, ptr %i.da, align 1
  %.val344 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.db = getelementptr inbounds nuw i8, ptr %.val344, i64 %i.cu
  store i64 %.0.copyload.i366, ptr %i.db, align 1
  %i.dc = add i32 %i.cq, -24
  %i.dd = lshr i64 %.0.copyload.i366, 32
  %i.de = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.dd)
  %i.df = trunc nuw nsw i64 %i.de to i32
  %i.dg = tail call i32 @w2c_hermes_hermes0x3A0x3Abigint0x3A0x3A0x28anonymous0x20namespace0x290x3A0x3AbigintAsImpl0x28hermes0x3A0x3Abigint0x3A0x3AMutableBigIntRef0x2C0x20unsigned0x20int0x2C0x20unsigned0x20long0x20long0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3A0x28anonymous0x20namespace0x290x3A0x3ABigIntAs0x29(ptr noundef nonnull %0, i32 noundef %i.dc, i32 noundef %i.df, i64 noundef %3, i32 noundef %i.cr, i32 noundef 0) #7 ; 3 uses
  %.not320 = icmp eq i32 %i.dg, 0
  br i1 %.not320, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dh = add i32 %i.cq, -48                      ; 2 uses
  store i32 %i.dh, ptr %i.a, align 8, !tbaa !7
  %i.di = icmp ult i32 %i.dg, 5
  br i1 %i.di, label %switch.lookup, label %w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AraiseOnError0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Abigint0x3A0x3AOperationStatus0x29.exit

switch.lookup:                                    ; preds = %bb.i
  %switch.tableidx = add i32 %i.dg, -1            ; 2 uses
  %i.dj = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AasIntN0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20long0x20long0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x29, i64 %i.dj
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.dk = zext nneg i32 %switch.tableidx to i64
  %switch.gep370 = getelementptr inbounds nuw [2 x i8], ptr @switch.table.w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AasIntN0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20long0x20long0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x29.23, i64 %i.dk
  %switch.load371 = load i16, ptr %switch.gep370, align 2
  %switch.ext = zext i16 %switch.load371 to i32
  %i.dl = zext i32 %i.dh to i64                   ; 4 uses
  %.val114.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dm = getelementptr inbounds nuw i8, ptr %.val114.i, i64 %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  store i32 0, ptr %i.dn, align 1
  %.val124.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.do = getelementptr inbounds nuw i8, ptr %.val124.i, i64 %i.dl
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  store i64 %switch.load, ptr %i.dp, align 1
  %.val113.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dq = getelementptr inbounds nuw i8, ptr %.val113.i, i64 %i.dl
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store i32 3, ptr %i.dr, align 1
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ds = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.dl
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store i32 %switch.ext, ptr %i.dt, align 1
  %i.du = add i32 %i.cq, -40
  %i.dv = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseRangeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %i.du) #7
  br label %w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AraiseOnError0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Abigint0x3A0x3AOperationStatus0x29.exit

w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AraiseOnError0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Abigint0x3A0x3AOperationStatus0x29.exit: ; preds = %bb.i, %switch.lookup
  %.0.i = phi i32 [ 1, %bb.i ], [ %i.dv, %switch.lookup ]
  %i.dw = zext i32 %1 to i64
  %.val326 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dx = getelementptr inbounds nuw i8, ptr %.val326, i64 %i.dw
  store i32 %.0.i, ptr %i.dx, align 1
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.dy = zext i32 %1 to i64                      ; 2 uses
  %.val325 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dz = getelementptr inbounds nuw i8, ptr %.val325, i64 %i.dy
  store i32 1, ptr %i.dz, align 1
  %i.ea = or disjoint i64 %i.bo, -562949953421312
  %.val343 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eb = getelementptr inbounds nuw i8, ptr %.val343, i64 %i.dy
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store i64 %i.ea, ptr %i.ec, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AraiseOnError0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Abigint0x3A0x3AOperationStatus0x29.exit, %bb.f, %bb.b
  store i32 %i.b, ptr %i.a, align 8, !tbaa !7
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AArrayImpl0x3A0x3A_haveOwnIndexedImpl0x28hermes0x3A0x3Avm0x3A0x3AJSObject0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20int0x29(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.b = zext i32 %1 to i64                       ; 3 uses
  %.val72 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %.val72, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %i.e = icmp ugt i32 %.0.copyload.i, %3
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val71 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val71, i64 %i.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.0.copyload.i73 = load i32, ptr %i.g, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i73) #7, !srcloc !19
  %.not = icmp ugt i32 %.0.copyload.i73, %3
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %.val70 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val70, i64 %i.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %.0.copyload.i74 = load i32, ptr %i.i, align 1  ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i74) #7, !srcloc !19
  %i.j = sub i32 %3, %.0.copyload.i               ; 4 uses
  %i.k = icmp ult i32 %i.j, 4096
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = shl nuw nsw i32 %i.j, 2
  %i.m = add i32 %.0.copyload.i74, %i.l
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = add i32 %i.j, -4096
  %i.o = lshr i32 %i.n, 8
  %i.p = and i32 %i.o, 16777212
  %i.q = add nuw nsw i32 %i.p, 16392
  %i.r = add i32 %i.q, %.0.copyload.i74
  %i.s = zext i32 %i.r to i64
  %.val69 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %.val69, i64 %i.s
  %.0.copyload.i75 = load i32, ptr %i.t, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i75) #7, !srcloc !19
  %i.u = shl i32 %i.j, 2
  %i.v = and i32 %i.u, 4092
  %i.w = add i32 %.0.copyload.i75, %i.v
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.in = phi i32 [ %i.m, %bb.d ], [ %i.w, %bb.e ]
  %.0 = add i32 %.0.in, 8
  %i.x = zext i32 %.0 to i64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 %i.x
  %.0.copyload.i76 = load i32, ptr %i.y, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i76) #7, !srcloc !19
  %i.z = icmp ne i32 %.0.copyload.i76, 7
  %i.aa = zext i1 %i.z to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.a, %bb.f
  %.065 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.aa, %bb.f ]
  ret i32 %.065
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AArrayImpl0x3A0x3A_getOwnIndexedRangeImpl0x28hermes0x3A0x3Avm0x3A0x3AJSObject0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x29(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = zext i32 %2 to i64                       ; 2 uses
  %.val13 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %.val13, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %i.e = zext i32 %1 to i64                       ; 2 uses
  %.val15 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val15, i64 %i.e
  store i32 %.0.copyload.i, ptr %i.f, align 1
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 %i.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.0.copyload.i16 = load i32, ptr %i.h, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i16) #7, !srcloc !19
  %.val14 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %.val14, i64 %i.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 %.0.copyload.i16, ptr %i.j, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AArrayImpl0x3A0x3A_getOwnIndexedPropertyFlagsImpl0x28hermes0x3A0x3Avm0x3A0x3AJSObject0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20int0x29(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.b = zext i32 %2 to i64                       ; 4 uses
  %.val102 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %.val102, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %i.e = icmp ugt i32 %.0.copyload.i, %4
  br i1 %i.e, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val101 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val101, i64 %i.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.0.copyload.i104 = load i32, ptr %i.g, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i104) #7, !srcloc !19
  %.not = icmp ugt i32 %.0.copyload.i104, %4
  br i1 %.not, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %.val100 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val100, i64 %i.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %.0.copyload.i105 = load i32, ptr %i.i, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i105) #7, !srcloc !19
  %i.j = sub i32 %4, %.0.copyload.i               ; 4 uses
  %i.k = icmp ult i32 %i.j, 4096
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = shl nuw nsw i32 %i.j, 2
  %i.m = add i32 %.0.copyload.i105, %i.l
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = add i32 %i.j, -4096
  %i.o = lshr i32 %i.n, 8
  %i.p = and i32 %i.o, 16777212
  %i.q = add nuw nsw i32 %i.p, 16392
  %i.r = add i32 %i.q, %.0.copyload.i105
  %i.s = zext i32 %i.r to i64
  %.val99 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %.val99, i64 %i.s
  %.0.copyload.i106 = load i32, ptr %i.t, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i106) #7, !srcloc !19
  %i.u = shl i32 %i.j, 2
  %i.v = and i32 %i.u, 4092
  %i.w = add i32 %.0.copyload.i106, %i.v
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.in = phi i32 [ %i.m, %bb.d ], [ %i.w, %bb.e ]
  %.0 = add i32 %.0.in, 8
  %i.x = zext i32 %.0 to i64
  %.val98 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %.val98, i64 %i.x
  %.0.copyload.i107 = load i32, ptr %i.y, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i107) #7, !srcloc !19
  %i.z = icmp eq i32 %.0.copyload.i107, 7
  br i1 %i.z, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val97 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %.val97, i64 %i.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %.0.copyload.i108 = load i32, ptr %i.ab, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i108) #7, !srcloc !19
  %i.ac = and i32 %.0.copyload.i108, 2
  %.not95 = icmp eq i32 %i.ac, 0
  br i1 %.not95, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
end_hunk_5
