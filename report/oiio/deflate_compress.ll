inline.NumInlined: 62
inline.NumDeleted: 31
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon.5 = type { [257 x i8], i8 }
%struct.deflate_output_bitstream = type { i64, i32, ptr, ptr }
%struct.deflate_sequence = type { i32, i16, i16 }

@deflate_length_slot = internal unnamed_addr constant [259 x i8] c"\00\00\00\00\01\02\03\04\05\06\07\08\08\09\09\0A\0A\0B\0B\0C\0C\0C\0C\0D\0D\0D\0D\0E\0E\0E\0E\0F\0F\0F\0F\10\10\10\10\10\10\10\10\11\11\11\11\11\11\11\11\12\12\12\12\12\12\12\12\13\13\13\13\13\13\13\13\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1C", align 16
@deflate_offset_slot = internal unnamed_addr constant [512 x i8] c"\00\00\01\02\03\04\04\05\05\06\06\06\06\07\07\07\07\08\08\08\08\08\08\08\08\09\09\09\09\09\09\09\09\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\00\10\11\12\12\13\13\14\14\14\14\15\15\15\15\16\16\16\16\16\16\16\16\17\17\17\17\17\17\17\17\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D", align 16
@bitreverse_tab = internal unnamed_addr constant [256 x i8] c"\00\80@\C0 \A0`\E0\10\90P\D00\B0p\F0\08\88H\C8(\A8h\E8\18\98X\D88\B8x\F8\04\84D\C4$\A4d\E4\14\94T\D44\B4t\F4\0C\8CL\CC,\ACl\EC\1C\9C\\\DC<\BC|\FC\02\82B\C2\22\A2b\E2\12\92R\D22\B2r\F2\0A\8AJ\CA*\AAj\EA\1A\9AZ\DA:\BAz\FA\06\86F\C6&\A6f\E6\16\96V\D66\B6v\F6\0E\8EN\CE.\AEn\EE\1E\9E^\DE>\BE~\FE\01\81A\C1!\A1a\E1\11\91Q\D11\B1q\F1\09\89I\C9)\A9i\E9\19\99Y\D99\B9y\F9\05\85E\C5%\A5e\E5\15\95U\D55\B5u\F5\0D\8DM\CD-\ADm\ED\1D\9D]\DD=\BD}\FD\03\83C\C3#\A3c\E3\13\93S\D33\B3s\F3\0B\8BK\CB+\ABk\EB\1B\9B[\DB;\BB{\FB\07\87G\C7'\A7g\E7\17\97W\D77\B7w\F7\0F\8FO\CF/\AFo\EF\1F\9F_\DF?\BF\7F\FF", align 16
@deflate_extra_precode_bits = internal unnamed_addr constant [19 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\03\07", align 16
@deflate_extra_length_bits = internal unnamed_addr constant [29 x i8] c"\00\00\00\00\00\00\00\00\01\01\01\01\02\02\02\02\03\03\03\03\04\04\04\04\05\05\05\05\00", align 16
@deflate_extra_offset_bits = internal unnamed_addr constant [30 x i8] c"\00\00\00\00\01\01\02\02\03\03\04\04\05\05\06\06\07\07\08\08\09\09\0A\0A\0B\0B\0C\0C\0D\0D", align 16
@deflate_precode_lens_permutation = internal unnamed_addr constant [19 x i8] c"\10\11\12\00\08\07\09\06\0A\05\0B\04\0C\03\0D\02\0E\01\0F", align 16
@deflate_offset_slot_base = internal unnamed_addr constant [30 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 7, i32 9, i32 13, i32 17, i32 25, i32 33, i32 49, i32 65, i32 97, i32 129, i32 193, i32 257, i32 385, i32 513, i32 769, i32 1025, i32 1537, i32 2049, i32 3073, i32 4097, i32 6145, i32 8193, i32 12289, i32 16385, i32 24577], align 16
@deflate_length_slot_base = internal unnamed_addr constant [29 x i32] [i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 13, i32 15, i32 17, i32 19, i32 23, i32 27, i32 31, i32 35, i32 43, i32 51, i32 59, i32 67, i32 83, i32 99, i32 115, i32 131, i32 163, i32 195, i32 227, i32 258], align 16
@choose_min_match_len.min_lens = internal unnamed_addr constant [80 x i8] c"\09\09\09\09\09\09\08\08\07\07\06\06\06\06\06\06\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04", align 16
@default_litlen_costs = internal unnamed_addr constant [3 x %struct.anon.5] [%struct.anon.5 { [257 x i8] c"\06\06\16 &+0369;=@ACEFHIJKLMOPPQRSTUUVWXXYYZ[[\\\\]]^__```aabbcccddeeefffgghhhiiiijjjkkkllllmmmmnnnoooopppppqqqqrrrrrssssstttttuuuuuvvvvvvwwwwwxxxxxxyyyyyyyzzzzzz{{{{{{{|||||||}}}}}}}}~~~~~~~\7F\7F\7F\7F\7F\7F\7F\7F\80\80\80\80\80\80\80\80\80\81\81\81\81\81\81\81\81\81\82\82\82\82\82\82\82\82\82\83\83\83\83\83\83\83\83\83\83\84\84\84\84\84\84\84\84\84\84\85\85\85\85\85\85\85\85\85\85\86\86\86\86\86\86\86\86", i8 109 }, %struct.anon.5 { [257 x i8] c"\10\10 )059<@BEGIKLNPQRSUVWXYZ[\\\\]^_``abbccdeeffgghhiijjkklllmmnnnoopppqqqrrrsssstttuuuvvvvwwwwxxxxyyyyzzzzz{{{{|||||}}}}}~~~~~\7F\7F\7F\7F\7F\80\80\80\80\80\80\81\81\81\81\81\81\82\82\82\82\82\82\83\83\83\83\83\83\83\84\84\84\84\84\84\85\85\85\85\85\85\85\86\86\86\86\86\86\86\86\87\87\87\87\87\87\87\87\88\88\88\88\88\88\88\88\89\89\89\89\89\89\89\89\8A\8A\8A\8A\8A\8A\8A\8A\8A\8B\8B\8B\8B\8B\8B\8B\8B\8B\8C\8C\8C\8C\8C\8C\8C\8C\8C\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\90", i8 93 }, %struct.anon.5 { [257 x i8] c"  09@EILPRUWY[\\^`abcefghijkllmnoppqrrsstuuvvwwxxyyzz{{|||}}~~~\7F\7F\80\80\80\81\81\81\82\82\82\83\83\83\83\84\84\84\85\85\85\86\86\86\86\87\87\87\87\88\88\88\88\89\89\89\89\8A\8A\8A\8A\8A\8B\8B\8B\8B\8C\8C\8C\8C\8C\8D\8D\8D\8D\8D\8E\8E\8E\8E\8E\8F\8F\8F\8F\8F\90\90\90\90\90\90\91\91\91\91\91\91\92\92\92\92\92\92\93\93\93\93\93\93\93\94\94\94\94\94\94\95\95\95\95\95\95\95\96\96\96\96\96\96\96\96\97\97\97\97\97\97\97\97\98\98\98\98\98\98\98\98\99\99\99\99\99\99\99\99\9A\9A\9A\9A\9A\9A\9A\9A\9A\9B\9B\9B\9B\9B\9B\9B\9B\9B\9C\9C\9C\9C\9C\9C\9C\9C\9C\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\A0", i8 84 }], align 16

; Function Attrs: nounwind uwtable
define hidden ptr @libdeflate_alloc_compressor(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %or.cond = icmp ugt i32 %0, 12
  br i1 %or.cond, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp samesign ugt i32 %0, 9
  br i1 %i.a, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = icmp samesign ugt i32 %0, 1
  br i1 %i.b, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = icmp eq i32 %0, 1
  %spec.select = select i1 %i.c, i64 202720, i64 6080
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi i64 [ %spec.select, %bb.d ], [ 9011712, %bb.b ], [ 668256, %bb.c ]
  %i.d = tail call ptr @libdeflate_aligned_malloc(i64 noundef 32, i64 noundef %.0) #16 ; 136 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.t, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %0, ptr %i.e, align 8, !tbaa !7
  %i.f = shl nuw nsw i32 %0, 2
  %i.g = sub nuw nsw i32 55, %i.f
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 %i.h, ptr %i.i, align 16, !tbaa !16
  switch i32 %0, label %bb.s [
    i32 0, label %bb.g
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.j
    i32 4, label %bb.k
    i32 5, label %bb.l
    i32 6, label %bb.m
    i32 7, label %bb.n
    i32 8, label %bb.o
    i32 9, label %bb.p
    i32 10, label %bb.q
    i32 11, label %bb.r
  ]

bb.g:                                             ; preds = %bb.f
  store i64 -1, ptr %i.i, align 16, !tbaa !16
  store ptr null, ptr %i.d, align 32, !tbaa !17
  br label %deflate_init_offset_slot_full.exit

bb.h:                                             ; preds = %bb.f
  store ptr @deflate_compress_fastest, ptr %i.d, align 32, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 32, ptr %i.j, align 4, !tbaa !18
  br label %deflate_init_offset_slot_full.exit

bb.i:                                             ; preds = %bb.f
  store ptr @deflate_compress_greedy, ptr %i.d, align 32, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 6, ptr %i.k, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 10, ptr %i.l, align 4, !tbaa !18
  br label %deflate_init_offset_slot_full.exit

bb.j:                                             ; preds = %bb.f
  store ptr @deflate_compress_greedy, ptr %i.d, align 32, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 12, ptr %i.m, align 8, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 14, ptr %i.n, align 4, !tbaa !18
  br label %deflate_init_offset_slot_full.exit

bb.k:                                             ; preds = %bb.f
  store ptr @deflate_compress_greedy, ptr %i.d, align 32, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 16, ptr %i.o, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 30, ptr %i.p, align 4, !tbaa !18
  br label %deflate_init_offset_slot_full.exit

bb.l:                                             ; preds = %bb.f
  store ptr @deflate_compress_lazy, ptr %i.d, align 32, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 16, ptr %i.q, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 30, ptr %i.r, align 4, !tbaa !18
  br label %deflate_init_offset_slot_full.exit

bb.m:                                             ; preds = %bb.f
  store ptr @deflate_compress_lazy, ptr %i.d, align 32, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 35, ptr %i.s, align 8, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 65, ptr %i.t, align 4, !tbaa !18
  br label %deflate_init_offset_slot_full.exit

bb.n:                                             ; preds = %bb.f
  store ptr @deflate_compress_lazy, ptr %i.d, align 32, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 100, ptr %i.u, align 8, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 130, ptr %i.v, align 4, !tbaa !18
  br label %deflate_init_offset_slot_full.exit

bb.o:                                             ; preds = %bb.f
  store ptr @deflate_compress_lazy2, ptr %i.d, align 32, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 300, ptr %i.w, align 8, !tbaa !19
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 258, ptr %i.x, align 4, !tbaa !18
  br label %deflate_init_offset_slot_full.exit

bb.p:                                             ; preds = %bb.f
  store ptr @deflate_compress_lazy2, ptr %i.d, align 32, !tbaa !17
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 600, ptr %i.y, align 8, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 258, ptr %i.z, align 4, !tbaa !18
  br label %deflate_init_offset_slot_full.exit

bb.q:                                             ; preds = %bb.f
  store ptr @deflate_compress_near_optimal, ptr %i.d, align 32, !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 35, ptr %i.aa, align 8, !tbaa !19
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 75, ptr %i.ab, align 4, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 9011684
  store i32 2, ptr %i.ac, align 4, !tbaa !20
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 9011688
  store i32 32, ptr %i.ad, align 8, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 9011692
  store i32 32, ptr %i.ae, align 4, !tbaa !20
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 8976796 ; 11 uses
  br label %iter.check119

iter.check119:                                    ; preds = %middle.block116, %bb.q
  %indvars.iv.i = phi i64 [ 0, %bb.q ], [ %indvars.iv.next.i, %middle.block116 ] ; 8 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr @deflate_offset_slot_base, i64 %indvars.iv.i
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3  ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr @deflate_extra_offset_bits, i64 %indvars.iv.i
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !20
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = shl nuw i32 1, %i.ak                    ; 5 uses
  %i.am = add i32 %i.al, %i.ah
  %i.an = trunc i64 %indvars.iv.i to i8           ; 11 uses
  %min.iters.check105 = icmp samesign ult i64 %indvars.iv.i, 6
  %i.ao = sub i32 0, %i.al
  %i.ap = icmp ugt i32 %i.ah, %i.ao
  %or.cond177 = select i1 %min.iters.check105, i1 true, i1 %i.ap
  br i1 %or.cond177, label %vec.epilog.scalar.ph120.preheader, label %vector.main.loop.iter.check106

vec.epilog.scalar.ph120.preheader:                ; preds = %iter.check119
  %xtraiter190 = and i32 %i.al, 7
  %i.aq = add nsw i64 %indvars.iv.i, -8
  %lcmp.mod191.not = icmp ult i64 %i.aq, 22
  br i1 %lcmp.mod191.not, label %vec.epilog.scalar.ph120.prol.loopexit, label %vec.epilog.scalar.ph120.prol

vec.epilog.scalar.ph120.prol:                     ; preds = %vec.epilog.scalar.ph120.preheader, %vec.epilog.scalar.ph120.prol
  %.09.i.prol = phi i32 [ %i.at, %vec.epilog.scalar.ph120.prol ], [ %i.ah, %vec.epilog.scalar.ph120.preheader ] ; 2 uses
  %prol.iter192 = phi i32 [ %prol.iter192.next, %vec.epilog.scalar.ph120.prol ], [ 0, %vec.epilog.scalar.ph120.preheader ]
  %i.ar = zext i32 %.09.i.prol to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ar
  store i8 %i.an, ptr %i.as, align 1, !tbaa !20
  %i.at = add i32 %.09.i.prol, 1                  ; 2 uses
  %prol.iter192.next = add i32 %prol.iter192, 1   ; 2 uses
  %prol.iter192.cmp.not = icmp eq i32 %prol.iter192.next, %xtraiter190
  br i1 %prol.iter192.cmp.not, label %vec.epilog.scalar.ph120.prol.loopexit, label %vec.epilog.scalar.ph120.prol, !llvm.loop !21

vec.epilog.scalar.ph120.prol.loopexit:            ; preds = %vec.epilog.scalar.ph120.prol, %vec.epilog.scalar.ph120.preheader
  %.09.i.unr = phi i32 [ %i.ah, %vec.epilog.scalar.ph120.preheader ], [ %i.at, %vec.epilog.scalar.ph120.prol ]
  %i.au = icmp samesign ult i64 %indvars.iv.i, 8
  br i1 %i.au, label %middle.block116, label %vec.epilog.scalar.ph120

vector.main.loop.iter.check106:                   ; preds = %iter.check119
  %min.iters.check107 = icmp samesign ult i64 %indvars.iv.i, 12
  br i1 %min.iters.check107, label %vec.epilog.ph123, label %vector.ph108

vector.ph108:                                     ; preds = %vector.main.loop.iter.check106
  %n.vec110 = and i32 %i.al, -32
  %broadcast.splatinsert111 = insertelement <16 x i8> poison, i8 %i.an, i64 0
  %broadcast.splat112 = shufflevector <16 x i8> %broadcast.splatinsert111, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body113

vector.body113:                                   ; preds = %vector.body113, %vector.ph108
  %index114 = phi i32 [ 0, %vector.ph108 ], [ %index.next115, %vector.body113 ] ; 2 uses
  %i.av = add i32 %i.ah, %index114
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.aw ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <16 x i8> %broadcast.splat112, ptr %i.ax, align 1, !tbaa !20
  store <16 x i8> %broadcast.splat112, ptr %i.ay, align 1, !tbaa !20
  %index.next115 = add nuw i32 %index114, 32      ; 2 uses
  %i.az = icmp eq i32 %index.next115, %n.vec110
  br i1 %i.az, label %middle.block116, label %vector.body113, !llvm.loop !23

vec.epilog.ph123:                                 ; preds = %vector.main.loop.iter.check106
  %n.vec125 = and i32 %i.al, -4
  %broadcast.splatinsert126 = insertelement <4 x i8> poison, i8 %i.an, i64 0
  %broadcast.splat127 = shufflevector <4 x i8> %broadcast.splatinsert126, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body128

vec.epilog.vector.body128:                        ; preds = %vec.epilog.vector.body128, %vec.epilog.ph123
  %index129 = phi i32 [ 0, %vec.epilog.ph123 ], [ %index.next130, %vec.epilog.vector.body128 ] ; 2 uses
  %i.ba = add i32 %i.ah, %index129
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bb
  store <4 x i8> %broadcast.splat127, ptr %i.bc, align 1, !tbaa !20
  %index.next130 = add nuw i32 %index129, 4       ; 2 uses
  %i.bd = icmp eq i32 %index.next130, %n.vec125
  br i1 %i.bd, label %middle.block116, label %vec.epilog.vector.body128, !llvm.loop !27

vec.epilog.scalar.ph120:                          ; preds = %vec.epilog.scalar.ph120.prol.loopexit, %vec.epilog.scalar.ph120
  %.09.i = phi i32 [ %i.cb, %vec.epilog.scalar.ph120 ], [ %.09.i.unr, %vec.epilog.scalar.ph120.prol.loopexit ] ; 9 uses
  %i.be = zext i32 %.09.i to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.be
  store i8 %i.an, ptr %i.bf, align 1, !tbaa !20
  %i.bg = add i32 %.09.i, 1
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bh
  store i8 %i.an, ptr %i.bi, align 1, !tbaa !20
  %i.bj = add i32 %.09.i, 2
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bk
  store i8 %i.an, ptr %i.bl, align 1, !tbaa !20
  %i.bm = add i32 %.09.i, 3
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bn
  store i8 %i.an, ptr %i.bo, align 1, !tbaa !20
  %i.bp = add i32 %.09.i, 4
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bq
  store i8 %i.an, ptr %i.br, align 1, !tbaa !20
  %i.bs = add i32 %.09.i, 5
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bt
  store i8 %i.an, ptr %i.bu, align 1, !tbaa !20
  %i.bv = add i32 %.09.i, 6
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bw
  store i8 %i.an, ptr %i.bx, align 1, !tbaa !20
  %i.by = add i32 %.09.i, 7
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bz
  store i8 %i.an, ptr %i.ca, align 1, !tbaa !20
  %i.cb = add i32 %.09.i, 8                       ; 2 uses
  %.not.i.7 = icmp eq i32 %i.cb, %i.am
  br i1 %.not.i.7, label %middle.block116, label %vec.epilog.scalar.ph120, !llvm.loop !28

middle.block116:                                  ; preds = %vector.body113, %vec.epilog.vector.body128, %vec.epilog.scalar.ph120.prol.loopexit, %vec.epilog.scalar.ph120
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 30
  br i1 %exitcond.not.i, label %deflate_init_offset_slot_full.exit, label %iter.check119, !llvm.loop !29

bb.r:                                             ; preds = %bb.f
  store ptr @deflate_compress_near_optimal, ptr %i.d, align 32, !tbaa !17
  %i.cc = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 100, ptr %i.cc, align 8, !tbaa !19
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 150, ptr %i.cd, align 4, !tbaa !18
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 9011684
  store i32 4, ptr %i.ce, align 4, !tbaa !20
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 9011688
  store i32 16, ptr %i.cf, align 8, !tbaa !20
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 9011692
  store i32 16, ptr %i.cg, align 4, !tbaa !20
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 8976796 ; 11 uses
  br label %iter.check

iter.check:                                       ; preds = %middle.block, %bb.r
  %indvars.iv.i70 = phi i64 [ 0, %bb.r ], [ %indvars.iv.next.i73, %middle.block ] ; 8 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr @deflate_offset_slot_base, i64 %indvars.iv.i70
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3  ; 6 uses
  %i.ck = getelementptr inbounds nuw i8, ptr @deflate_extra_offset_bits, i64 %indvars.iv.i70
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !20
  %i.cm = zext nneg i8 %i.cl to i32
  %i.cn = shl nuw i32 1, %i.cm                    ; 5 uses
  %i.co = add i32 %i.cn, %i.cj
  %i.cp = trunc i64 %indvars.iv.i70 to i8         ; 11 uses
  %min.iters.check = icmp samesign ult i64 %indvars.iv.i70, 6
  %i.cq = sub i32 0, %i.cn
  %i.cr = icmp ugt i32 %i.cj, %i.cq
  %or.cond179 = select i1 %min.iters.check, i1 true, i1 %i.cr
  br i1 %or.cond179, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check
  %xtraiter = and i32 %i.cn, 7
  %i.cs = add nsw i64 %indvars.iv.i70, -8
  %lcmp.mod.not = icmp ult i64 %i.cs, 22
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.09.i71.prol = phi i32 [ %i.cv, %vec.epilog.scalar.ph.prol ], [ %i.cj, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ct = zext i32 %.09.i71.prol to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ct
  store i8 %i.cp, ptr %i.cu, align 1, !tbaa !20
  %i.cv = add i32 %.09.i71.prol, 1                ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !30

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.09.i71.unr = phi i32 [ %i.cj, %vec.epilog.scalar.ph.preheader ], [ %i.cv, %vec.epilog.scalar.ph.prol ]
  %i.cw = icmp samesign ult i64 %indvars.iv.i70, 8
  br i1 %i.cw, label %middle.block, label %vec.epilog.scalar.ph

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check95 = icmp samesign ult i64 %indvars.iv.i70, 12
  br i1 %min.iters.check95, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i32 %i.cn, -32
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.cp, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cx = add i32 %i.cj, %index
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cy ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store <16 x i8> %broadcast.splat, ptr %i.cz, align 1, !tbaa !20
  store <16 x i8> %broadcast.splat, ptr %i.da, align 1, !tbaa !20
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.db = icmp eq i32 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !31

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %n.vec97 = and i32 %i.cn, -4
  %broadcast.splatinsert98 = insertelement <4 x i8> poison, i8 %i.cp, i64 0
  %broadcast.splat99 = shufflevector <4 x i8> %broadcast.splatinsert98, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index100 = phi i32 [ 0, %vec.epilog.ph ], [ %index.next101, %vec.epilog.vector.body ] ; 2 uses
  %i.dc = add i32 %i.cj, %index100
  %i.dd = zext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.dd
  store <4 x i8> %broadcast.splat99, ptr %i.de, align 1, !tbaa !20
  %index.next101 = add nuw i32 %index100, 4       ; 2 uses
  %i.df = icmp eq i32 %index.next101, %n.vec97
  br i1 %i.df, label %middle.block, label %vec.epilog.vector.body, !llvm.loop !32

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.09.i71 = phi i32 [ %i.ed, %vec.epilog.scalar.ph ], [ %.09.i71.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.dg = zext i32 %.09.i71 to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.dg
  store i8 %i.cp, ptr %i.dh, align 1, !tbaa !20
  %i.di = add i32 %.09.i71, 1
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.dj
  store i8 %i.cp, ptr %i.dk, align 1, !tbaa !20
  %i.dl = add i32 %.09.i71, 2
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.dm
  store i8 %i.cp, ptr %i.dn, align 1, !tbaa !20
  %i.do = add i32 %.09.i71, 3
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.dp
  store i8 %i.cp, ptr %i.dq, align 1, !tbaa !20
  %i.dr = add i32 %.09.i71, 4
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ds
  store i8 %i.cp, ptr %i.dt, align 1, !tbaa !20
  %i.du = add i32 %.09.i71, 5
  %i.dv = zext i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.dv
  store i8 %i.cp, ptr %i.dw, align 1, !tbaa !20
  %i.dx = add i32 %.09.i71, 6
  %i.dy = zext i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.dy
  store i8 %i.cp, ptr %i.dz, align 1, !tbaa !20
  %i.ea = add i32 %.09.i71, 7
  %i.eb = zext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.eb
  store i8 %i.cp, ptr %i.ec, align 1, !tbaa !20
  %i.ed = add i32 %.09.i71, 8                     ; 2 uses
  %.not.i72.7 = icmp eq i32 %i.ed, %i.co
  br i1 %.not.i72.7, label %middle.block, label %vec.epilog.scalar.ph, !llvm.loop !33

middle.block:                                     ; preds = %vector.body, %vec.epilog.vector.body, %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.next.i73 = add nuw nsw i64 %indvars.iv.i70, 1 ; 2 uses
  %exitcond.not.i74 = icmp eq i64 %indvars.iv.next.i73, 30
  br i1 %exitcond.not.i74, label %deflate_init_offset_slot_full.exit, label %iter.check, !llvm.loop !29

bb.s:                                             ; preds = %bb.f
  store ptr @deflate_compress_near_optimal, ptr %i.d, align 32, !tbaa !17
  %i.ee = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 300, ptr %i.ee, align 8, !tbaa !19
  %i.ef = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 258, ptr %i.ef, align 4, !tbaa !18
  %i.eg = getelementptr inbounds nuw i8, ptr %i.d, i64 9011684
  store i32 10, ptr %i.eg, align 4, !tbaa !20
  %i.eh = getelementptr inbounds nuw i8, ptr %i.d, i64 9011688
  store i32 1, ptr %i.eh, align 8, !tbaa !20
  %i.ei = getelementptr inbounds nuw i8, ptr %i.d, i64 9011692
  store i32 1, ptr %i.ei, align 4, !tbaa !20
  %i.ej = getelementptr inbounds nuw i8, ptr %i.d, i64 8976796 ; 11 uses
  br label %iter.check149

iter.check149:                                    ; preds = %middle.block146, %bb.s
  %indvars.iv.i76 = phi i64 [ 0, %bb.s ], [ %indvars.iv.next.i79, %middle.block146 ] ; 8 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr @deflate_offset_slot_base, i64 %indvars.iv.i76
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !3  ; 6 uses
  %i.em = getelementptr inbounds nuw i8, ptr @deflate_extra_offset_bits, i64 %indvars.iv.i76
  %i.en = load i8, ptr %i.em, align 1, !tbaa !20
  %i.eo = zext nneg i8 %i.en to i32
  %i.ep = shl nuw i32 1, %i.eo                    ; 5 uses
  %i.eq = add i32 %i.ep, %i.el
  %i.er = trunc i64 %indvars.iv.i76 to i8         ; 11 uses
  %min.iters.check135 = icmp samesign ult i64 %indvars.iv.i76, 6
  %i.es = sub i32 0, %i.ep
  %i.et = icmp ugt i32 %i.el, %i.es
  %or.cond181 = select i1 %min.iters.check135, i1 true, i1 %i.et
  br i1 %or.cond181, label %vec.epilog.scalar.ph150.preheader, label %vector.main.loop.iter.check136

vec.epilog.scalar.ph150.preheader:                ; preds = %iter.check149
  %xtraiter193 = and i32 %i.ep, 7
  %i.eu = add nsw i64 %indvars.iv.i76, -8
  %lcmp.mod194.not = icmp ult i64 %i.eu, 22
  br i1 %lcmp.mod194.not, label %vec.epilog.scalar.ph150.prol.loopexit, label %vec.epilog.scalar.ph150.prol

vec.epilog.scalar.ph150.prol:                     ; preds = %vec.epilog.scalar.ph150.preheader, %vec.epilog.scalar.ph150.prol
  %.09.i77.prol = phi i32 [ %i.ex, %vec.epilog.scalar.ph150.prol ], [ %i.el, %vec.epilog.scalar.ph150.preheader ] ; 2 uses
  %prol.iter195 = phi i32 [ %prol.iter195.next, %vec.epilog.scalar.ph150.prol ], [ 0, %vec.epilog.scalar.ph150.preheader ]
  %i.ev = zext i32 %.09.i77.prol to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ev
  store i8 %i.er, ptr %i.ew, align 1, !tbaa !20
  %i.ex = add i32 %.09.i77.prol, 1                ; 2 uses
  %prol.iter195.next = add i32 %prol.iter195, 1   ; 2 uses
  %prol.iter195.cmp.not = icmp eq i32 %prol.iter195.next, %xtraiter193
  br i1 %prol.iter195.cmp.not, label %vec.epilog.scalar.ph150.prol.loopexit, label %vec.epilog.scalar.ph150.prol, !llvm.loop !34

vec.epilog.scalar.ph150.prol.loopexit:            ; preds = %vec.epilog.scalar.ph150.prol, %vec.epilog.scalar.ph150.preheader
  %.09.i77.unr = phi i32 [ %i.el, %vec.epilog.scalar.ph150.preheader ], [ %i.ex, %vec.epilog.scalar.ph150.prol ]
  %i.ey = icmp samesign ult i64 %indvars.iv.i76, 8
  br i1 %i.ey, label %middle.block146, label %vec.epilog.scalar.ph150

vector.main.loop.iter.check136:                   ; preds = %iter.check149
  %min.iters.check137 = icmp samesign ult i64 %indvars.iv.i76, 12
  br i1 %min.iters.check137, label %vec.epilog.ph153, label %vector.ph138

vector.ph138:                                     ; preds = %vector.main.loop.iter.check136
  %n.vec140 = and i32 %i.ep, -32
  %broadcast.splatinsert141 = insertelement <16 x i8> poison, i8 %i.er, i64 0
  %broadcast.splat142 = shufflevector <16 x i8> %broadcast.splatinsert141, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph138
  %index144 = phi i32 [ 0, %vector.ph138 ], [ %index.next145, %vector.body143 ] ; 2 uses
  %i.ez = add i32 %i.el, %index144
  %i.fa = zext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.fa ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store <16 x i8> %broadcast.splat142, ptr %i.fb, align 1, !tbaa !20
  store <16 x i8> %broadcast.splat142, ptr %i.fc, align 1, !tbaa !20
  %index.next145 = add nuw i32 %index144, 32      ; 2 uses
  %i.fd = icmp eq i32 %index.next145, %n.vec140
  br i1 %i.fd, label %middle.block146, label %vector.body143, !llvm.loop !35

vec.epilog.ph153:                                 ; preds = %vector.main.loop.iter.check136
  %n.vec155 = and i32 %i.ep, -4
  %broadcast.splatinsert156 = insertelement <4 x i8> poison, i8 %i.er, i64 0
  %broadcast.splat157 = shufflevector <4 x i8> %broadcast.splatinsert156, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body158

vec.epilog.vector.body158:                        ; preds = %vec.epilog.vector.body158, %vec.epilog.ph153
  %index159 = phi i32 [ 0, %vec.epilog.ph153 ], [ %index.next160, %vec.epilog.vector.body158 ] ; 2 uses
  %i.fe = add i32 %i.el, %index159
  %i.ff = zext i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ff
  store <4 x i8> %broadcast.splat157, ptr %i.fg, align 1, !tbaa !20
  %index.next160 = add nuw i32 %index159, 4       ; 2 uses
  %i.fh = icmp eq i32 %index.next160, %n.vec155
  br i1 %i.fh, label %middle.block146, label %vec.epilog.vector.body158, !llvm.loop !36

vec.epilog.scalar.ph150:                          ; preds = %vec.epilog.scalar.ph150.prol.loopexit, %vec.epilog.scalar.ph150
  %.09.i77 = phi i32 [ %i.gf, %vec.epilog.scalar.ph150 ], [ %.09.i77.unr, %vec.epilog.scalar.ph150.prol.loopexit ] ; 9 uses
  %i.fi = zext i32 %.09.i77 to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.fi
  store i8 %i.er, ptr %i.fj, align 1, !tbaa !20
  %i.fk = add i32 %.09.i77, 1
  %i.fl = zext i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.fl
  store i8 %i.er, ptr %i.fm, align 1, !tbaa !20
  %i.fn = add i32 %.09.i77, 2
  %i.fo = zext i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.fo
  store i8 %i.er, ptr %i.fp, align 1, !tbaa !20
  %i.fq = add i32 %.09.i77, 3
  %i.fr = zext i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.fr
  store i8 %i.er, ptr %i.fs, align 1, !tbaa !20
  %i.ft = add i32 %.09.i77, 4
  %i.fu = zext i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.fu
  store i8 %i.er, ptr %i.fv, align 1, !tbaa !20
  %i.fw = add i32 %.09.i77, 5
  %i.fx = zext i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.fx
  store i8 %i.er, ptr %i.fy, align 1, !tbaa !20
  %i.fz = add i32 %.09.i77, 6
  %i.ga = zext i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ga
  store i8 %i.er, ptr %i.gb, align 1, !tbaa !20
  %i.gc = add i32 %.09.i77, 7
  %i.gd = zext i32 %i.gc to i64
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.gd
  store i8 %i.er, ptr %i.ge, align 1, !tbaa !20
  %i.gf = add i32 %.09.i77, 8                     ; 2 uses
  %.not.i78.7 = icmp eq i32 %i.gf, %i.eq
  br i1 %.not.i78.7, label %middle.block146, label %vec.epilog.scalar.ph150, !llvm.loop !37

middle.block146:                                  ; preds = %vector.body143, %vec.epilog.vector.body158, %vec.epilog.scalar.ph150.prol.loopexit, %vec.epilog.scalar.ph150
  %indvars.iv.next.i79 = add nuw nsw i64 %indvars.iv.i76, 1 ; 2 uses
  %exitcond.not.i80 = icmp eq i64 %indvars.iv.next.i79, 30
  br i1 %exitcond.not.i80, label %deflate_init_offset_slot_full.exit, label %iter.check149, !llvm.loop !29

deflate_init_offset_slot_full.exit:               ; preds = %middle.block, %middle.block116, %middle.block146, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %i.gg = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store <4 x i32> splat (i32 2), ptr %i.gg, align 16, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.gh, align 16, !tbaa !3
  %i.gi = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.gj = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store <4 x i32> splat (i32 2), ptr %i.gi, align 16, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.gj, align 16, !tbaa !3
  %i.gk = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.gl = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store <4 x i32> splat (i32 2), ptr %i.gk, align 16, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.gl, align 16, !tbaa !3
  %i.gm = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.gn = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store <4 x i32> splat (i32 2), ptr %i.gm, align 16, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.gn, align 16, !tbaa !3
  %i.go = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.gp = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  store <4 x i32> splat (i32 2), ptr %i.go, align 16, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.gp, align 16, !tbaa !3
  %i.gq = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.gr = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  store <4 x i32> splat (i32 2), ptr %i.gq, align 16, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.gr, align 16, !tbaa !3
  %i.gs = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.gt = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  store <4 x i32> splat (i32 2), ptr %i.gs, align 16, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.gt, align 16, !tbaa !3
  %i.gu = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.gv = getelementptr inbounds nuw i8, ptr %i.d, i64 272
  store <4 x i32> splat (i32 2), ptr %i.gu, align 16, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.gv, align 16, !tbaa !3
  %i.gw = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %i.gx = getelementptr inbounds nuw i8, ptr %i.d, i64 304
  store <4 x i32> splat (i32 2), ptr %i.gw, align 16, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.gx, align 16, !tbaa !3
  %i.gy = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  %i.gz = getelementptr inbounds nuw i8, ptr %i.d, i64 336
  store <4 x i32> splat (i32 2), ptr %i.gy, align 16, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.gz, align 16, !tbaa !3
  %i.ha = getelementptr inbounds nuw i8, ptr %i.d, i64 352
  %i.hb = getelementptr inbounds nuw i8, ptr %i.d, i64 368
  store <4 x i32> splat (i32 2), ptr %i.ha, align 16, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.hb, align 16, !tbaa !3
  %i.hc = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  %i.hd = getelementptr inbounds nuw i8, ptr %i.d, i64 400
  store <4 x i32> splat (i32 2), ptr %i.hc, align 16, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.hd, align 16, !tbaa !3
  %i.he = getelementptr inbounds nuw i8, ptr %i.d, i64 416
  %i.hf = getelementptr inbounds nuw i8, ptr %i.d, i64 432
  store <4 x i32> splat (i32 2), ptr %i.he, align 16, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.hf, align 16, !tbaa !3
  %i.hg = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  %i.hh = getelementptr inbounds nuw i8, ptr %i.d, i64 464
  store <4 x i32> splat (i32 2), ptr %i.hg, align 16, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.hh, align 16, !tbaa !3
  %i.hi = getelementptr inbounds nuw i8, ptr %i.d, i64 480
  %i.hj = getelementptr inbounds nuw i8, ptr %i.d, i64 496
  store <4 x i32> splat (i32 2), ptr %i.hi, align 16, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.hj, align 16, !tbaa !3
  %i.hk = getelementptr inbounds nuw i8, ptr %i.d, i64 512
  %i.hl = getelementptr inbounds nuw i8, ptr %i.d, i64 528
  store <4 x i32> splat (i32 2), ptr %i.hk, align 16, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.hl, align 16, !tbaa !3
  %i.hm = getelementptr inbounds nuw i8, ptr %i.d, i64 544
  %i.hn = getelementptr inbounds nuw i8, ptr %i.d, i64 560
  store <4 x i32> splat (i32 2), ptr %i.hm, align 16, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.hn, align 16, !tbaa !3
  %i.ho = getelementptr inbounds nuw i8, ptr %i.d, i64 576
  %i.hp = getelementptr inbounds nuw i8, ptr %i.d, i64 592
  store <4 x i32> splat (i32 2), ptr %i.ho, align 16, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.hp, align 16, !tbaa !3
  %i.hq = getelementptr i8, ptr %i.d, i64 608
  %i.hr = getelementptr i8, ptr %i.d, i64 624
  store <4 x i32> splat (i32 1), ptr %i.hq, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.hr, align 16, !tbaa !3
  %i.hs = getelementptr i8, ptr %i.d, i64 640
  %i.ht = getelementptr i8, ptr %i.d, i64 656
  store <4 x i32> splat (i32 1), ptr %i.hs, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.ht, align 16, !tbaa !3
  %i.hu = getelementptr i8, ptr %i.d, i64 672
  %i.hv = getelementptr i8, ptr %i.d, i64 688
  store <4 x i32> splat (i32 1), ptr %i.hu, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.hv, align 16, !tbaa !3
  %i.hw = getelementptr i8, ptr %i.d, i64 704
  %i.hx = getelementptr i8, ptr %i.d, i64 720
  store <4 x i32> splat (i32 1), ptr %i.hw, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.hx, align 16, !tbaa !3
  %i.hy = getelementptr i8, ptr %i.d, i64 736
  %i.hz = getelementptr i8, ptr %i.d, i64 752
  store <4 x i32> splat (i32 1), ptr %i.hy, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.hz, align 16, !tbaa !3
  %i.ia = getelementptr i8, ptr %i.d, i64 768
  %i.ib = getelementptr i8, ptr %i.d, i64 784
  store <4 x i32> splat (i32 1), ptr %i.ia, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.ib, align 16, !tbaa !3
  %i.ic = getelementptr i8, ptr %i.d, i64 800
  %i.id = getelementptr i8, ptr %i.d, i64 816
  store <4 x i32> splat (i32 1), ptr %i.ic, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.id, align 16, !tbaa !3
  %i.ie = getelementptr i8, ptr %i.d, i64 832
  %i.if = getelementptr i8, ptr %i.d, i64 848
  store <4 x i32> splat (i32 1), ptr %i.ie, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.if, align 16, !tbaa !3
  %i.ig = getelementptr i8, ptr %i.d, i64 864
  %i.ih = getelementptr i8, ptr %i.d, i64 880
  store <4 x i32> splat (i32 1), ptr %i.ig, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.ih, align 16, !tbaa !3
  %i.ii = getelementptr i8, ptr %i.d, i64 896
  %i.ij = getelementptr i8, ptr %i.d, i64 912
  store <4 x i32> splat (i32 1), ptr %i.ii, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.ij, align 16, !tbaa !3
  %i.ik = getelementptr i8, ptr %i.d, i64 928
  %i.il = getelementptr i8, ptr %i.d, i64 944
  store <4 x i32> splat (i32 1), ptr %i.ik, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.il, align 16, !tbaa !3
  %i.im = getelementptr i8, ptr %i.d, i64 960
  %i.in = getelementptr i8, ptr %i.d, i64 976
  store <4 x i32> splat (i32 1), ptr %i.im, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.in, align 16, !tbaa !3
  %i.io = getelementptr i8, ptr %i.d, i64 992
  %i.ip = getelementptr i8, ptr %i.d, i64 1008
  store <4 x i32> splat (i32 1), ptr %i.io, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.ip, align 16, !tbaa !3
  %i.iq = getelementptr i8, ptr %i.d, i64 1024
  %i.ir = getelementptr i8, ptr %i.d, i64 1040
  store <4 x i32> splat (i32 1), ptr %i.iq, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.ir, align 16, !tbaa !3
  %i.is = getelementptr inbounds nuw i8, ptr %i.d, i64 1056
  store <4 x i32> splat (i32 4), ptr %i.is, align 16, !tbaa !3
  %i.it = getelementptr inbounds nuw i8, ptr %i.d, i64 1072
  store <4 x i32> splat (i32 4), ptr %i.it, align 16, !tbaa !3
  %i.iu = getelementptr inbounds nuw i8, ptr %i.d, i64 1088
  store <4 x i32> splat (i32 4), ptr %i.iu, align 16, !tbaa !3
  %i.iv = getelementptr inbounds nuw i8, ptr %i.d, i64 1104
  store <4 x i32> splat (i32 4), ptr %i.iv, align 16, !tbaa !3
  %i.iw = getelementptr inbounds nuw i8, ptr %i.d, i64 1120
  store <4 x i32> splat (i32 4), ptr %i.iw, align 16, !tbaa !3
  %i.ix = getelementptr inbounds nuw i8, ptr %i.d, i64 1136
  store <4 x i32> splat (i32 4), ptr %i.ix, align 16, !tbaa !3
  %i.iy = getelementptr inbounds nuw i8, ptr %i.d, i64 1152
  store <4 x i32> splat (i32 2), ptr %i.iy, align 16, !tbaa !3
  %i.iz = getelementptr inbounds nuw i8, ptr %i.d, i64 1168
  store <4 x i32> splat (i32 2), ptr %i.iz, align 16, !tbaa !3
  %i.ja = getelementptr inbounds nuw i8, ptr %i.d, i64 1184 ; 2 uses
  store <4 x i32> splat (i32 1), ptr %i.ja, align 16, !tbaa !3
  %i.jb = getelementptr inbounds nuw i8, ptr %i.d, i64 1200
  store <4 x i32> splat (i32 1), ptr %i.jb, align 16, !tbaa !3
  %i.jc = getelementptr inbounds nuw i8, ptr %i.d, i64 1216
  store <4 x i32> splat (i32 1), ptr %i.jc, align 16, !tbaa !3
  %i.jd = getelementptr inbounds nuw i8, ptr %i.d, i64 1232
  store <4 x i32> splat (i32 1), ptr %i.jd, align 16, !tbaa !3
  %i.je = getelementptr inbounds nuw i8, ptr %i.d, i64 1248
  store <4 x i32> splat (i32 1), ptr %i.je, align 16, !tbaa !3
end_hunk_0
