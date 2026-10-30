Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/option?download=true
inline.NumInlined: 2261
inline.NumDeleted: 967
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4bzla6option7Options3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_b:bb.a
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.162) #30
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %.critedge.i.i, %bb.r
  %i.dn = landingpad { ptr, i32 }
          cleanup
  %i.do = load i32, ptr %i.di, align 4, !tbaa !235
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.u, label %_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i

bb.u:                                             ; preds = %bb.t
  store i32 %i.dj, ptr %i.di, align 4, !tbaa !235
  br label %_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i

_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i: ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  resume { ptr, i32 } %i.dn

bb.v:                                             ; preds = %bb.q
  %i.dq = load i32, ptr %i.di, align 4, !tbaa !235
  switch i32 %i.dq, label %_ZNSt7__cxx115stollERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi.exit [
    i32 34, label %.critedge.i.i
    i32 0, label %bb.x
  ]

.critedge.i.i:                                    ; preds = %bb.v
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.162) #30
          to label %bb.w unwind label %bb.t

bb.w:                                             ; preds = %.critedge.i.i
  unreachable

bb.x:                                             ; preds = %bb.v
  store i32 %i.dj, ptr %i.di, align 4, !tbaa !235
  br label %_ZNSt7__cxx115stollERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi.exit

_ZNSt7__cxx115stollERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi.exit: ; preds = %bb.v, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.dr = call noundef ptr @_ZN4bzla6option7Options4dataENS0_6OptionE(ptr noundef nonnull align 8 dereferenceable(3712) %0, i32 noundef %i.dg) ; 2 uses
  %i.ds = zext i1 %3 to i8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 40
  store i64 %i.dk, ptr %i.dt, align 8, !tbaa !90
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 33
  store i8 %i.ds, ptr %i.du, align 1, !tbaa !42
  br label %bb.z

bb.y:                                             ; preds = %bb.p
  tail call void @_ZN4bzla6option7Options3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvNS0_6OptionERKT_b(ptr noundef nonnull align 8 dereferenceable(3712) %0, i32 noundef %i.dg, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3)
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt7__cxx115stollERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi.exit, %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 1 dereferenceable(1) ptr @_ZN4bzla6option7Options3getIbEERKT_NS0_6OptionE(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(3712) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN4bzla6option7Options4dataENS0_6OptionE(ptr noundef nonnull align 8 dereferenceable(3712) %0, i32 noundef %1)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla6option7Options3getImEERKT_NS0_6OptionE(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(3712) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN4bzla6option7Options4dataENS0_6OptionE(ptr noundef nonnull align 8 dereferenceable(3712) %0, i32 noundef %1)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZN4bzla6option7Options3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_NS0_6OptionE(ptr noundef nonnull align 8 dereferenceable(3712) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN4bzla6option7Options4dataENS0_6OptionE(ptr noundef nonnull align 8 dereferenceable(3712) %0, i32 noundef %1) ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(34) %i.a)
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef nonnull align 8 dereferenceable(32) ptr %i.h(ptr noundef nonnull align 8 dereferenceable(34) %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 1 dereferenceable(1) ptr @_ZN4bzla6option7Options4dfltIbEERKT_NS0_6OptionE(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(3712) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN4bzla6option7Options4dataENS0_6OptionE(ptr noundef nonnull align 8 dereferenceable(3712) %0, i32 noundef %1)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 35
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla6option7Options4dfltImEERKT_NS0_6OptionE(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(3712) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN4bzla6option7Options4dataENS0_6OptionE(ptr noundef nonnull align 8 dereferenceable(3712) %0, i32 noundef %1)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZN4bzla6option7Options4dfltINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_NS0_6OptionE(ptr noundef nonnull align 8 dereferenceable(3712) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN4bzla6option7Options4dataENS0_6OptionE(ptr noundef nonnull align 8 dereferenceable(3712) %0, i32 noundef %1) ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(34) %i.a)
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef nonnull align 8 dereferenceable(32) ptr %i.h(ptr noundef nonnull align 8 dereferenceable(34) %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla6option7Options3minImEERKT_NS0_6OptionE(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(3712) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN4bzla6option7Options4dataENS0_6OptionE(ptr noundef nonnull align 8 dereferenceable(3712) %0, i32 noundef %1)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla6option7Options3maxImEERKT_NS0_6OptionE(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(3712) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN4bzla6option7Options4dataENS0_6OptionE(ptr noundef nonnull align 8 dereferenceable(3712) %0, i32 noundef %1)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4bzla6option7Options8finalizeEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(3712) %0) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 218
  %i.b = load i8, ptr %i.a, align 2, !tbaa !153, !range !154, !noundef !155
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 258
  store i8 1, ptr %i.d, align 2, !tbaa !89
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 257
  store i8 0, ptr %i.e, align 1, !tbaa !42
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 298
  %i.g = load i8, ptr %i.f, align 2, !tbaa !153, !range !154, !noundef !155
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 900
  store i32 0, ptr %i.i, align 4, !tbaa !127
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2266
  store i8 0, ptr %i.j, align 2, !tbaa !89
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2265
  store i8 0, ptr %i.k, align 1, !tbaa !42
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 740
  %i.m = load i32, ptr %i.l, align 4, !tbaa !160
  %i.n = icmp eq i32 %i.m, 2
  br i1 %i.n, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1345 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !42, !range !154, !noundef !155
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i64 10000, ptr %i.r, align 8, !tbaa !90
  store i8 0, ptr %i.o, align 1, !tbaa !42
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1425 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !42, !range !154, !noundef !155
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1432
  store i64 2000000, ptr %i.v, align 8, !tbaa !90
  store i8 0, ptr %i.s, align 1, !tbaa !42
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3026
  %i.x = load i8, ptr %i.w, align 2, !tbaa !153, !range !154, !noundef !155
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.j
  %i.z = tail call noundef ptr @_ZN4bzla6option7Options4dataENS0_6OptionE(ptr noundef nonnull align 8 dereferenceable(3712) %0, i32 noundef 44) ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 33 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !42, !range !154, !noundef !155
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %.preheader.1, label %bb.k

bb.k:                                             ; preds = %.preheader.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 34
  store i8 0, ptr %i.ad, align 2, !tbaa !89
  store i8 0, ptr %i.aa, align 1, !tbaa !42
  br label %.preheader.1

.preheader.1:                                     ; preds = %bb.k, %.preheader.preheader
  %i.ae = tail call noundef ptr @_ZN4bzla6option7Options4dataENS0_6OptionE(ptr noundef nonnull align 8 dereferenceable(3712) %0, i32 noundef 45) ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 33 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !42, !range !154, !noundef !155
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %.preheader.2, label %bb.l

bb.l:                                             ; preds = %.preheader.1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 34
  store i8 0, ptr %i.ai, align 2, !tbaa !89
  store i8 0, ptr %i.af, align 1, !tbaa !42
  br label %.preheader.2

.preheader.2:                                     ; preds = %bb.l, %.preheader.1
  %i.aj = tail call noundef ptr @_ZN4bzla6option7Options4dataENS0_6OptionE(ptr noundef nonnull align 8 dereferenceable(3712) %0, i32 noundef 46) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 33 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !42, !range !154, !noundef !155
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %.preheader.3, label %bb.m

bb.m:                                             ; preds = %.preheader.2
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 34
  store i8 0, ptr %i.an, align 2, !tbaa !89
  store i8 0, ptr %i.ak, align 1, !tbaa !42
  br label %.preheader.3

.preheader.3:                                     ; preds = %bb.m, %.preheader.2
  %i.ao = tail call noundef ptr @_ZN4bzla6option7Options4dataENS0_6OptionE(ptr noundef nonnull align 8 dereferenceable(3712) %0, i32 noundef 47) ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 33 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !42, !range !154, !noundef !155
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %.preheader.4, label %bb.n

bb.n:                                             ; preds = %.preheader.3
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 34
  store i8 0, ptr %i.as, align 2, !tbaa !89
  store i8 0, ptr %i.ap, align 1, !tbaa !42
  br label %.preheader.4

.preheader.4:                                     ; preds = %bb.n, %.preheader.3
  %i.at = tail call noundef ptr @_ZN4bzla6option7Options4dataENS0_6OptionE(ptr noundef nonnull align 8 dereferenceable(3712) %0, i32 noundef 48) ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 33 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !42, !range !154, !noundef !155
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %.preheader.5, label %bb.o

bb.o:                                             ; preds = %.preheader.4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 34
  store i8 0, ptr %i.ax, align 2, !tbaa !89
  store i8 0, ptr %i.au, align 1, !tbaa !42
  br label %.preheader.5

.preheader.5:                                     ; preds = %bb.o, %.preheader.4
  %i.ay = tail call noundef ptr @_ZN4bzla6option7Options4dataENS0_6OptionE(ptr noundef nonnull align 8 dereferenceable(3712) %0, i32 noundef 49) ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 33 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !42, !range !154, !noundef !155
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %.preheader.6, label %bb.p

bb.p:                                             ; preds = %.preheader.5
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 34
  store i8 0, ptr %i.bc, align 2, !tbaa !89
  store i8 0, ptr %i.az, align 1, !tbaa !42
  br label %.preheader.6

.preheader.6:                                     ; preds = %bb.p, %.preheader.5
  %i.bd = tail call noundef ptr @_ZN4bzla6option7Options4dataENS0_6OptionE(ptr noundef nonnull align 8 dereferenceable(3712) %0, i32 noundef 50) ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 33 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !42, !range !154, !noundef !155
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %.preheader.7, label %bb.q

bb.q:                                             ; preds = %.preheader.6
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 34
  store i8 0, ptr %i.bh, align 2, !tbaa !89
  store i8 0, ptr %i.be, align 1, !tbaa !42
  br label %.preheader.7

.preheader.7:                                     ; preds = %bb.q, %.preheader.6
  %i.bi = tail call noundef ptr @_ZN4bzla6option7Options4dataENS0_6OptionE(ptr noundef nonnull align 8 dereferenceable(3712) %0, i32 noundef 51) ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 33 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !42, !range !154, !noundef !155
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %.preheader.7
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 34
  store i8 0, ptr %i.bm, align 2, !tbaa !89
  store i8 0, ptr %i.bj, align 1, !tbaa !42
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.7, %bb.r, %bb.j
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4bzla6option7Options28set_diagnostic_output_streamERSo(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(3712) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #14 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla6option7Options24diagnostic_output_streamEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(3712) %0) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !84
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZSt9to_stringB5cxx11N4bzla6option9SatSolverE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !93
  switch i32 %1, label %._crit_edge.i.i12 [
    i32 0, label %._crit_edge.i.i
    i32 1, label %._crit_edge.i.i4
    i32 3, label %._crit_edge.i.i8
  ]

._crit_edge.i.i:                                  ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.a, ptr noundef nonnull align 1 dereferenceable(7) @.str.44, i64 7, i1 false)
  br label %bb.b

._crit_edge.i.i4:                                 ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.a, ptr noundef nonnull align 1 dereferenceable(13) @.str.158, i64 13, i1 false)
  br label %bb.b

._crit_edge.i.i8:                                 ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.a, ptr noundef nonnull align 1 dereferenceable(6) @.str.47, i64 6, i1 false)
  br label %bb.b

._crit_edge.i.i12:                                ; preds = %bb.a
  store i32 1701736302, ptr %i.a, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i12, %._crit_edge.i.i8, %._crit_edge.i.i4, %._crit_edge.i.i
  %.sink = phi i64 [ 4, %._crit_edge.i.i12 ], [ 6, %._crit_edge.i.i8 ], [ 13, %._crit_edge.i.i4 ], [ 7, %._crit_edge.i.i ]
  %.sink19 = phi i64 [ 20, %._crit_edge.i.i12 ], [ 22, %._crit_edge.i.i8 ], [ 29, %._crit_edge.i.i4 ], [ 23, %._crit_edge.i.i ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink, ptr %i.b, align 8, !tbaa !94
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.sink19
  store i8 0, ptr %i.c, align 1, !tbaa !95
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN4bzla6option10OptionBase7is_boolEv(ptr noundef nonnull align 8 dereferenceable(34) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN4bzla6option10OptionBase10is_numericEv(ptr noundef nonnull align 8 dereferenceable(34) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN4bzla6option10OptionBase14is_numeric_incEv(ptr noundef nonnull align 8 dereferenceable(34) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN4bzla6option10OptionBase7is_modeEv(ptr noundef nonnull align 8 dereferenceable(34) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN4bzla6option10OptionBase6is_strEv(ptr noundef nonnull align 8 dereferenceable(34) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4bzla6option13OptionNumericD0Ev(ptr noundef nonnull align 8 dereferenceable(73) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN4bzla6option13OptionNumeric10is_numericEv(ptr noundef nonnull align 8 dereferenceable(73) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN4bzla6option13OptionNumeric14is_numeric_incEv(ptr noundef nonnull align 8 dereferenceable(73) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i8, ptr %i.a, align 8, !tbaa !88, !range !154, !noundef !155
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4bzla6option10OptionBoolD0Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN4bzla6option10OptionBool7is_boolEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableIN4bzla6option8BvSolverESt4pairIKS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96   ; 2 uses
  %.not5.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i, label %_ZNSt10_HashtableIN4bzla6option8BvSolverESt4pairIKS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla6option8BvSolverENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEEEE18_M_deallocate_nodeEPSE_.exit.i.i
  %.06.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla6option8BvSolverENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEEEE18_M_deallocate_nodeEPSE_.exit.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.c = load ptr, ptr %.06.i.i, align 8, !tbaa !97 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !98   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 32 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla6option8BvSolverENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEEEE18_M_deallocate_nodeEPSE_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !95
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #29
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla6option8BvSolverENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEEEE18_M_deallocate_nodeEPSE_.exit.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla6option8BvSolverENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEEEE18_M_deallocate_nodeEPSE_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i, i64 noundef 48) #29
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt10_HashtableIN4bzla6option8BvSolverESt4pairIKS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !0

_ZNSt10_HashtableIN4bzla6option8BvSolverESt4pairIKS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla6option8BvSolverENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEEEE18_M_deallocate_nodeEPSE_.exit.i.i, %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !100
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !101
  %i.m = shl i64 %i.l, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %i.m, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.n = load ptr, ptr %0, align 8, !tbaa !100    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt10_HashtableIN4bzla6option8BvSolverESt4pairIKS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIN4bzla6option8BvSolverESt4pairIKS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit
  %i.q = load i64, ptr %i.k, align 8, !tbaa !101
  %i.r = shl i64 %i.q, 3
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #29
  br label %_ZNSt10_HashtableIN4bzla6option8BvSolverESt4pairIKS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIN4bzla6option8BvSolverESt4pairIKS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %bb.b, %_ZNSt10_HashtableIN4bzla6option8BvSolverESt4pairIKS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableIN4bzla6option8BvSolverESt4pairIKS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96   ; 2 uses
  %.not5.i = icmp eq ptr %i.b, null
  br i1 %.not5.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla6option8BvSolverENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEEEE19_M_deallocate_nodesEPSE_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla6option8BvSolverENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEEEE18_M_deallocate_nodeEPSE_.exit.i
  %.06.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla6option8BvSolverENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEEEE18_M_deallocate_nodeEPSE_.exit.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.c = load ptr, ptr %.06.i, align 8, !tbaa !97 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !98   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i, i64 32 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla6option8BvSolverENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEEEE18_M_deallocate_nodeEPSE_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !95
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #29
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla6option8BvSolverENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEEEE18_M_deallocate_nodeEPSE_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla6option8BvSolverENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEEEE18_M_deallocate_nodeEPSE_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i, i64 noundef 48) #29
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla6option8BvSolverENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEEEE19_M_deallocate_nodesEPSE_.exit, label %.lr.ph.i, !llvm.loop !0

end_hunk_0
