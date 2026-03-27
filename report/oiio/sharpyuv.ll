begin_hunk_0
  %i.wf = add i32 %i.we, %i.cz
  %i.wg = ashr i32 %i.wf, %i.ut                   ; 2 uses
  %i.wh = trunc i32 %i.wg to i16                  ; 2 uses
  %16 = icmp ugt i16 %i.wh, 255
  %i.wi = trunc i32 %i.wg to i8
  %i.wj = icmp sgt i16 %i.wh, -1
  %i.wk = sext i1 %i.wj to i8
  %i.wl = select i1 %16, i8 %i.wk, i8 %i.wi
  %i.wm = getelementptr inbounds nuw i8, ptr %.092.us.i.i, i64 %indvars.iv128.i.i
  store i8 %i.wl, ptr %i.wm, align 1, !tbaa !25
  %indvars.iv.next129.i.i = add nuw nsw i64 %indvars.iv128.i.i, 1 ; 2 uses
end_hunk_0
begin_hunk_1
  %i.abz = add <8 x i32> %i.aby, %broadcast.splat249
  %i.aca = ashr <8 x i32> %i.abz, %broadcast.splat241 ; 2 uses
  %i.acb = trunc <8 x i32> %i.abs to <8 x i16>    ; 2 uses
  %17 = icmp ugt <8 x i16> %i.acb, splat (i16 255)
  %i.acc = trunc <8 x i32> %i.abs to <8 x i8>
  %i.acd = icmp sgt <8 x i16> %i.acb, splat (i16 -1)
  %i.ace = sext <8 x i1> %i.acd to <8 x i8>
  %i.acf = select <8 x i1> %17, <8 x i8> %i.ace, <8 x i8> %i.acc
  %i.acg = getelementptr inbounds nuw i8, ptr %.093.us.i.i, i64 %index251
  store <8 x i8> %i.acf, ptr %i.acg, align 1, !tbaa !25, !alias.scope !30, !noalias !33
  %i.ach = trunc <8 x i32> %i.aca to <8 x i16>    ; 2 uses
  %18 = icmp ugt <8 x i16> %i.ach, splat (i16 255)
  %i.aci = trunc <8 x i32> %i.aca to <8 x i8>
  %i.acj = icmp sgt <8 x i16> %i.ach, splat (i16 -1)
  %i.ack = sext <8 x i1> %i.acj to <8 x i8>
  %i.acl = select <8 x i1> %18, <8 x i8> %i.ack, <8 x i8> %i.aci
  %i.acm = getelementptr inbounds nuw i8, ptr %.094.us.i.i, i64 %index251
  store <8 x i8> %i.acl, ptr %i.acm, align 1, !tbaa !25, !alias.scope !33
  %index.next255 = add nuw i64 %index251, 8       ; 2 uses
end_hunk_1
begin_hunk_2
  %i.adj = add i32 %i.adi, %i.dj
  %i.adk = ashr i32 %i.adj, %i.ut                 ; 2 uses
  %i.adl = trunc i32 %i.adc to i16                ; 2 uses
  %19 = icmp ugt i16 %i.adl, 255
  %i.adm = trunc i32 %i.adc to i8
  %i.adn = icmp sgt i16 %i.adl, -1
  %i.ado = sext i1 %i.adn to i8
  %i.adp = select i1 %19, i8 %i.ado, i8 %i.adm
  %i.adq = getelementptr inbounds nuw i8, ptr %.093.us.i.i, i64 %indvars.iv144.i.i
  store i8 %i.adp, ptr %i.adq, align 1, !tbaa !25
  %i.adr = trunc i32 %i.adk to i16                ; 2 uses
  %20 = icmp ugt i16 %i.adr, 255
  %i.ads = trunc i32 %i.adk to i8
  %i.adt = icmp sgt i16 %i.adr, -1
  %i.adu = sext i1 %i.adt to i8
  %i.adv = select i1 %20, i8 %i.adu, i8 %i.ads
  %i.adw = getelementptr inbounds nuw i8, ptr %.094.us.i.i, i64 %indvars.iv144.i.i
  store i8 %i.adv, ptr %i.adw, align 1, !tbaa !25
  %indvars.iv.next145.i.i = add nuw nsw i64 %indvars.iv144.i.i, 1 ; 2 uses
end_hunk_2
