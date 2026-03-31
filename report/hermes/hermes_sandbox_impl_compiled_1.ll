begin_hunk_0

bb.asl:                                           ; preds = %.preheader54638, %bb.ask
  %.1843147 = phi i32 [ %.0.copyload.i52773, %bb.ask ], [ %.0.copyload.i52771, %.preheader54638 ]
  %i.klg = add i32 %.1843147, 31                  ; 3 uses
  %i.klh = icmp ult i32 %i.klg, 32
  br i1 %i.klh, label %.loopexit54587, label %bb.asm

bb.asm:                                           ; preds = %bb.asl
  %i.kli = lshr i32 %i.klg, 5                     ; 2 uses
  %i.klj = and i32 %i.kli, 3                      ; 2 uses
  %.val48065 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.klk = getelementptr inbounds nuw i8, ptr %.val48065, i64 %i.kky
end_hunk_0
begin_hunk_1
  %i.kln = getelementptr inbounds nuw i8, ptr %i.klm, i64 4
  %.0.copyload.i52775 = load i32, ptr %i.kln, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52775) #8, !srcloc !19
  %6 = icmp ugt i32 %i.klg, 127
  br i1 %6, label %bb.asn, label %.loopexit54588

bb.asn:                                           ; preds = %bb.asm
  %i.klo = and i32 %i.kli, 134217724              ; 2 uses
end_hunk_1
begin_hunk_2
bb.awu:                                           ; preds = %bb.avz, %bb.awt
  %.122 = phi i32 [ %.4644043, %bb.awt ], [ %.121, %bb.avz ]
  %.2243151 = phi i32 [ %.0.copyload.i52906, %bb.awt ], [ %.0.copyload.i52889, %bb.avz ]
  %i.lpz = add i32 %.2243151, 31                  ; 3 uses
  %i.lqa = icmp ult i32 %i.lpz, 32
  br i1 %i.lqa, label %.loopexit54520, label %bb.awv

bb.awv:                                           ; preds = %bb.awu
  %i.lqb = lshr i32 %i.lpz, 5                     ; 2 uses
  %i.lqc = and i32 %i.lqb, 3                      ; 2 uses
  %.val47934 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lqd = getelementptr inbounds nuw i8, ptr %.val47934, i64 %.pre-phi55801
end_hunk_2
begin_hunk_3
  %i.lqg = getelementptr inbounds nuw i8, ptr %i.lqf, i64 4
  %.0.copyload.i52908 = load i32, ptr %i.lqg, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52908) #8, !srcloc !19
  %7 = icmp ugt i32 %i.lpz, 127
  br i1 %7, label %bb.aww, label %.loopexit54521

bb.aww:                                           ; preds = %bb.awv
  %i.lqh = and i32 %i.lqb, 134217724              ; 2 uses
end_hunk_3
