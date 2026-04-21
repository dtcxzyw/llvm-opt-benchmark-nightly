inline.NumInlined: 17
inline.NumDeleted: 5
begin_hunk_0_@CRYPTO_ocb128_setiv:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ag ; 11 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.aj = and i8 %i.ad, 7                         ; 3 uses
  %i.ak = zext nneg i8 %i.aj to i16               ; 9 uses
  %i.al = sub nuw nsw i16 8, %i.ak                ; 9 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 15
  %i.an = load i8, ptr %i.am, align 1, !tbaa !21  ; 2 uses
end_hunk_0
begin_hunk_1_@CRYPTO_ocb128_setiv:bb.a
  %i.df = trunc nuw nsw <8 x i16> %i.db to <8 x i8>
  %i.dg = or <8 x i8> %i.de, %i.df
  store <8 x i8> %i.dg, ptr %i.ai, align 8, !tbaa !21
  %4 = lshr exact i16 -256, %i.ak
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !21
  %i.dj = zext i8 %i.di to i16
  %5 = and i16 %4, %i.dj
  %i.dk = lshr i16 %5, %i.al
  %i.dl = load i8, ptr %i.ar, align 1, !tbaa !21
  %i.dm = trunc nuw nsw i16 %i.dk to i8
  %i.dn = or i8 %i.dl, %i.dm
end_hunk_1
