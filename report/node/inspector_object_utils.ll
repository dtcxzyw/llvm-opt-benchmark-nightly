inline.NumInlined: 92
inline.NumDeleted: 60
begin_hunk_0_@_ZN4node9inspector23ObjectGetProtocolStringB5cxx11EN2v85LocalINS1_7ContextEEENS2_INS1_6ObjectEEENS2_INS1_6StringEEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9, !noalias !8
  call void @_ZN4node9Utf8ValueC1EPN2v87IsolateENS1_5LocalINS1_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(1048) %4, ptr noundef %i.z, ptr nonnull %i.m) #9, !noalias !8
  call void @llvm.experimental.noalias.scope.decl(metadata !11)
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !14 ; 6 uses
  %i.ac = load i64, ptr %4, align 8, !noalias !14 ; 9 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.ad, ptr %6, align 8, !alias.scope !14
end_hunk_0
begin_hunk_1_@_ZN4node9inspector23ObjectGetProtocolStringB5cxx11EN2v85LocalINS1_7ContextEEENS2_INS1_6ObjectEEENS2_INS1_6StringEEE:bb.a
  store i64 %i.ac, ptr %i.an, align 8, !alias.scope !14
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ac
  store i8 0, ptr %i.ao, align 1
  %i.ap = icmp ne ptr %i.ab, null
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ar = icmp ne ptr %i.ab, %i.aq
  %i.as = select i1 %i.ap, i1 %i.ar, i1 false
  br i1 %i.as, label %bb.l, label %_ZN4node9inspector16ToProtocolStringB5cxx11EPN2v87IsolateENS1_5LocalINS1_5ValueEEE.exit

bb.l:                                             ; preds = %_ZNK4node16MaybeStackBufferIcLm1024EE8ToStringB5cxx11Ev.exit.i
  call void @free(ptr noundef nonnull %i.ab) #9
  br label %_ZN4node9inspector16ToProtocolStringB5cxx11EPN2v87IsolateENS1_5LocalINS1_5ValueEEE.exit

_ZN4node9inspector16ToProtocolStringB5cxx11EPN2v87IsolateENS1_5LocalINS1_5ValueEEE.exit: ; preds = %_ZNK4node16MaybeStackBufferIcLm1024EE8ToStringB5cxx11Ev.exit.i, %bb.l
end_hunk_1
